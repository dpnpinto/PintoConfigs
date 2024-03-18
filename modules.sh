#!/bin/bash
# Explained by https://dpnpinto.github.io
#
#   modules=($(awk '{print $1}' /proc/modules)):
#       Utiliza o comando awk para extrair a primeira coluna (coluna $1) da saida do arquivo /proc/modules.
#       Os módulos do kernel estão designados neste arquivo, e esta línha está extraindo os seus nomes e a colocar os nomes num array chamado modules.
#
#    for hw in $(hwdetect --show-modules | awk -F: '{gsub("-","_"); print $2}'); do:
#    Utiliza o comando hwdetect --show-modules para listar os módulos de hardware detetados.
#       awk -F: '{gsub("-","_"); print $2}': Divide cada línha de saida usando ":" como separador e logo de seguida com "-" e com "_" na segunda parte de cada línha (columna $2).
#       Isto é importante porque os nomes dos módulos do kernel generalmente usan traços por baixo e não traços.
#    for hw in $(...): faz a interação dos resultados obtidos é armazina cada um na variavel hw.
#
#    if ! grep -q "$hw" <(printf '%s\n' "${modules[@]}"); then:
#       Utiliza o comando grep para encontrar o valor de hw no array modules.
#       printf '%s\n' "${modules[@]}": Escreve cada elemento do array modules nuna nova línha.
#       grep -q "$hw" <(printf '%s\n' "${modules[@]}"): Econtar o valor de hw na lista de módulos e o resultado, e termina ("-q") para evitar a saida no monitor.
#       Se o módulo hw no se encontra na lista de módulos, executa-se o bloco de código dentro do if.
#
#    printf '%s\n' "$hw";:
#       Escreve o nome do módulo hw que no se encontrou na lista de módulos.
#
#    done:
#      Finaliza o ciclo for.
#
#    mkinitcpio -P:
#      Executa o comando mkinitcpio com a opcão -P, que regenera a imagen do kernel inicial.

modules=($(awk '{print $1}' /proc/modules))

for hw in $(hwdetect --show-modules | awk -F: '{gsub("-","_"); print $2}'); do
    if ! grep -q "$hw" <(printf '%s\n' "${modules[@]}"); then
        printf '%s\n' "$hw";
    fi
done

mkinitcpio -P
