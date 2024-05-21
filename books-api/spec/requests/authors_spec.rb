require 'swagger_helper'

describe 'authors', type: :request do

  let(:author) { build(:author) }


  path '/authors' do

    get 'Returns all authors' do
      tags 'Authors'
      produces 'application/json'

      response '200', 'success' do
        schema type: :array, items: { '$ref': '#/components/schemas/author' }

        before do |example|
          allow(Author).to receive(:all).and_return([author])
          submit_request(example.metadata)
        end

        it 'returns all authors' do
          expect(response).to have_http_status(:success)
          expect(response.body).to eq([author].to_json)
        end
      end
    end

    post 'Creates an author' do
      tags 'Authors'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :request_attributes, in: :body, schema: { '$ref': '#/components/schemas/author' }

      let(:request_attributes) { attributes_for(:author) }

      response '201', 'created' do
        schema '$ref' => '#/components/schemas/author'

        before do |example|
          allow_any_instance_of(Author).to receive(:save).and_return(true)
          submit_request(example.metadata)
        end

        it 'returns created author' do
          expect(response).to have_http_status(:created)

          created_author = JSON.parse(response.body)
          expect(created_author["name"]).to eq(request_attributes[:name])
        end
      end
    end

  end

  path '/authors/{id}' do

    get 'Returns an author' do
      tags 'Authors'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      let(:id) { author.id }

      response '200', 'success' do
        schema '$ref' => '#/components/schemas/author'

        before do |example|
          allow(Author).to receive(:find).and_return(author)
          submit_request(example.metadata)
        end

        it 'returns an author' do
          expect(response).to have_http_status(:success)
          expect(response.body).to eq(author.to_json)
        end
      end
    end

    patch 'Updates an author' do
      tags 'Authors'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string
      parameter name: :request_attributes, in: :body, schema: { '$ref': '#/components/schemas/author' }

      let(:id) { author.id }
      let(:request_attributes) { attributes_for(:author) }

      response '200', 'success' do
        schema '$ref' => '#/components/schemas/author'

        before do |example|
          allow(Author).to receive(:find).and_return(author)
          allow_any_instance_of(Author).to receive(:update).and_return(true)
          submit_request(example.metadata)
        end

        it 'returns updated author' do
          expect(response).to have_http_status(:success)
          expect(response.body).to eq(author.to_json)
        end
      end
    end

    delete 'Deletes an author' do
      tags 'Authors'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      let(:id) { author.id }

      response '204', 'no content' do
        before do |example|
          allow(Author).to receive(:find).and_return(author)
          allow_any_instance_of(Author).to receive(:destroy).and_return(true)
          submit_request(example.metadata)
        end

        it 'returns no content' do
          expect(response).to have_http_status(:no_content)
        end
      end
    end

  end

end
