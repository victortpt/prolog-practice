loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

% miembro(E,L) es cierto sii E es un elemento de la lista loves
miembro(Car, [Car|_]).
miembro(X,[_|Cdr]) :- miembro(X, Cdr).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% concat(L1,L2,R) es cierto sii R es el resultado de concatenar las
% listas L1 y L2.

concat([], X, X).
concat([Car|Cdr],L,[Car|T]) :- concat(Cdr, L, T).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% intercalar(L1,L2,R) es cierto sii R es la lista resultante de intercalar
% los elementos de las listas L1 y L2.
% Ej. La respuesta a la pregunta intercalar([1,2],[a],R) es R = [1, a, 2]
% Ej. La respuesta a la pregunta intercalar([1],[a,b],R) es R = [1, a]
% Ej. La respuesta a la pregunta intercalar([],[a],R) es R = []
% Ej. La respuesta a la pregunta intercalar([1],[],R) es R = [1


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% inv(L,I) es cierto sii I es la lista inversa de la lista L.

inv([],[]).
inv([Car|Cdr], R) :- inv(Cdr, T), concat(T, [Car],R).

% tambien puede hacerse mediante el uso de diferencias de listas


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% primero(L,E) es cierto sii E es el primero elemento de la lista L.

primero([Car|_], Car).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% segundo(L,E) es cierto sii E es el segundo elemento de la lista L.

segundo([_,X|_], X).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ultimo(L,E) es cierto sii E es el ultimo elemento de la lista L.

ultimo2(I,Car) :- inv([Car|_],I).

ultimo([Car], Car).
ultimo([_|Cdr], R) :- ultimo(Cdr, R).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% penultimo(L,E) es cierto sii E es el penultimo elemento de la lista L.

penultimo([Car,_], Car).
penultimo([_|Cdr],L) :- penultimo(Cdr,L).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% subconj(L1,L2) es cierto sii la lista L1 esta contenida en la lista L2.

subconj([],_).
subconj([Car|Cdr], C) :- miembro(Car,C), subconj(Cdr,C).

% interseccion(L1,L2,I) es cierto sii I es la interseccion de las listas L1 y
% L2 (que supondremos no tienen elementos repetidos).

int([],_,[]).
int([Car|Cdr],C,[Car|T]) :- miembro(Car,C), !, int(Cdr,C,T).
int([_|Cdr],C,T) :- int(Cdr,C,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%