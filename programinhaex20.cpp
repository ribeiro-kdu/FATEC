#include <iostream>
using namespace std;
//Exemplo
int main()
{
	int sexo, idade, idades_homens_soma, idades_mulheres_soma, homens, mulheres, i, faltam;
	float media_homens, media_mulheres;

	cout<<"\nEsse programa calcula a quantidade de homens e mulheres e a media de suas respectivas idades.";
//
	homens=0;
	mulheres=0;
	idades_homens_soma=0;
	idades_mulheres_soma=0;
	
	for(i=1; i<=20; i++)
	{
		faltam=(20-i);
		cout<<"\n\nDigite o sexo, [1] para homem ou [2] para mulher, do funcionario "<<i<<"(faltam "<<faltam<<")...\n";
		cin>>sexo;
		if(sexo==1) {
			cout<<"Digite a idade em anos do funcionario "<<i<<"\n";
			cin>>idade;
		}
		
		if(sexo==2) {
			cout<<"Digite a idade em anos da funcionaria "<<i<<"\n";
			cin>>idade;
		}
		
		if(sexo==1) {
			homens++;
			idades_homens_soma=idades_homens_soma+idade;
		}
		if(sexo==2) {
			mulheres++;
			idades_mulheres_soma=idades_mulheres_soma+idade;
		}
	}
	
	media_homens=idades_homens_soma/homens;
	media_mulheres=idades_mulheres_soma/mulheres;
	
	cout<<"\n\n\n";
	cout<<"Quantidade de homens: "<<homens;
	cout<<"\nQuantidade de mulheres: "<<mulheres;
	cout<<"\nMedia da idade dos homens: "<<media_homens;
	cout<<"\nMedia da idade das mulheres: "<<media_mulheres;
	
	system("pause");
	return 0;
}; //fim do bloco
