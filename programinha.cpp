#include <iostream>
using namespace std;
//Exemplo
int main()
{
	int r, i;
	cout<<"\nEsse programa exibe os quadrados dos n�meros pares e os cubos dos n�meros �mpares entre 1 e 10.";
	//
	for(i=1; i<=10; i++)
	{
		r=i%2;
		if(r==0) {
			cout<<"\n";
			cout<<"\nQuadrado: "<<i*i;
		} //Fim do bloco
		if(r==1) {
			cout<<"\n";
			cout<<"\nCubo: "<<i*i*i;
		}
	}
	cout<<"\n\n\n";
	system("pause");
	return 0;
}; //fim do bloco

