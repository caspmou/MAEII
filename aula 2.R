# Vetores de dados
artista <- c("Rita Lee", "Titãs", "El Cuarteto de Nos", "Paralamas")
streams <- c(1200, 950, 870, 760) # reproduções no Spotify
albuns <- c(14, 7, 6, 7) # quantidade de álbuns lançados

# Data frame
musica <- data.frame(artista=artista, streams=streams, albuns=albuns, stringsAsFactors = TRUE)


# Visualização
musica

# Estatistica descritiva
media_streams <- mean(musica$streams)
mediana_streams <- median(musica$streams)
summary(musica)


# Plot
old_par <- par(no.readonly = TRUE)
par(mar = c(8, 4, 4, 1)) # Margens
bp <- barplot(
  musica$streams,
  names.arg = musica$artista,
  las = 1, # rótulo do eixo X na vertical
  main = "Streams no Spotify (milhões) - Rock Latino",
  ylab = "Milhões de reproduções",
  col = c("purple", "gold", "pink", "red"))