#include <iostream>
using namespace std;
//Exemplo
int main()
{
	float r, i;

	cout<<"\nEsse programa exibe o somatorio dos numeros de 1/1 a 1/10";
//
	r=0;
	for(i=1; i<=10; i++)
	{
		r=r+(1/i);
	}
	cout<<"\n\n\n"<<r;
	system("pause");
	return 0;
}; //fim do bloco
