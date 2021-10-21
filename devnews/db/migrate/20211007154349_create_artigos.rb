class CreateArtigos < ActiveRecord::Migration[6.1]
  def change
    create_table :artigos do |t|        # Vai gerar e gerenciar o id automaticamente
      t.string :titulo
      t.text :corpo

      t.timestamps # Vai criar mais duas colunas. Log de registro e altaração.
    end
  end
end
