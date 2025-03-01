%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:46:51 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 179 expanded)
%              Number of leaves         :   17 (  72 expanded)
%              Depth                    :   11
%              Number of atoms          :  258 ( 942 expanded)
%              Number of equality atoms :   33 ( 130 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f173,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f56,f60,f79,f96,f128,f129,f145,f170,f172])).

fof(f172,plain,
    ( ~ spl7_8
    | spl7_1 ),
    inference(avatar_split_clause,[],[f63,f49,f125])).

fof(f125,plain,
    ( spl7_8
  <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_8])])).

fof(f49,plain,
    ( spl7_1
  <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_1])])).

fof(f63,plain,
    ( ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1))
    | spl7_1 ),
    inference(resolution,[],[f50,f35])).

fof(f35,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k2_xboole_0(X0,X1))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f29])).

fof(f29,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK5(X0,X1,X2),X1)
              & ~ r2_hidden(sK5(X0,X1,X2),X0) )
            | ~ r2_hidden(sK5(X0,X1,X2),X2) )
          & ( r2_hidden(sK5(X0,X1,X2),X1)
            | r2_hidden(sK5(X0,X1,X2),X0)
            | r2_hidden(sK5(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f17,f18])).

fof(f18,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK5(X0,X1,X2),X1)
            & ~ r2_hidden(sK5(X0,X1,X2),X0) )
          | ~ r2_hidden(sK5(X0,X1,X2),X2) )
        & ( r2_hidden(sK5(X0,X1,X2),X1)
          | r2_hidden(sK5(X0,X1,X2),X0)
          | r2_hidden(sK5(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).

fof(f50,plain,
    ( ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))
    | spl7_1 ),
    inference(avatar_component_clause,[],[f49])).

fof(f170,plain,
    ( spl7_8
    | ~ spl7_5 ),
    inference(avatar_split_clause,[],[f167,f76,f125])).

fof(f76,plain,
    ( spl7_5
  <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_5])])).

fof(f167,plain,
    ( r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1))
    | ~ spl7_5 ),
    inference(resolution,[],[f78,f33])).

fof(f33,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k1_relat_1(X0))
      | ~ r2_hidden(k4_tarski(X5,X6),X0) ) ),
    inference(equality_resolution,[],[f24])).

fof(f24,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(k4_tarski(X5,X6),X0)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f10,f13,f12,f11])).

fof(f11,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f12,plain,(
    ! [X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0)
     => r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
     => r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f9])).

fof(f9,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_relat_1)).

fof(f78,plain,
    ( r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1)
    | ~ spl7_5 ),
    inference(avatar_component_clause,[],[f76])).

fof(f145,plain,
    ( ~ spl7_8
    | ~ spl7_3 ),
    inference(avatar_split_clause,[],[f142,f58,f125])).

fof(f58,plain,
    ( spl7_3
  <=> ! [X0] : ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_3])])).

fof(f142,plain,
    ( ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1))
    | ~ spl7_3 ),
    inference(resolution,[],[f112,f34])).

fof(f34,plain,(
    ! [X0,X5] :
      ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
      | ~ r2_hidden(X5,k1_relat_1(X0)) ) ),
    inference(equality_resolution,[],[f23])).

fof(f23,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
      | ~ r2_hidden(X5,X1)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f112,plain,
    ( ! [X1] : ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X1),sK1)
    | ~ spl7_3 ),
    inference(resolution,[],[f59,f35])).

fof(f59,plain,
    ( ! [X0] : ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1))
    | ~ spl7_3 ),
    inference(avatar_component_clause,[],[f58])).

fof(f129,plain,
    ( ~ spl7_7
    | ~ spl7_3 ),
    inference(avatar_split_clause,[],[f116,f58,f121])).

fof(f121,plain,
    ( spl7_7
  <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_7])])).

fof(f116,plain,
    ( ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0))
    | ~ spl7_3 ),
    inference(resolution,[],[f111,f34])).

fof(f111,plain,
    ( ! [X0] : ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),sK0)
    | ~ spl7_3 ),
    inference(resolution,[],[f59,f36])).

fof(f36,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k2_xboole_0(X0,X1))
      | ~ r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f28])).

fof(f28,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X0)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f128,plain,
    ( spl7_7
    | spl7_8
    | ~ spl7_1 ),
    inference(avatar_split_clause,[],[f103,f49,f125,f121])).

fof(f103,plain,
    ( r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1))
    | r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0))
    | ~ spl7_1 ),
    inference(resolution,[],[f51,f37])).

fof(f37,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k2_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f27])).

fof(f27,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f51,plain,
    ( r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))
    | ~ spl7_1 ),
    inference(avatar_component_clause,[],[f49])).

fof(f96,plain,
    ( spl7_1
    | ~ spl7_4 ),
    inference(avatar_contradiction_clause,[],[f92])).

fof(f92,plain,
    ( $false
    | spl7_1
    | ~ spl7_4 ),
    inference(resolution,[],[f74,f80])).

fof(f80,plain,
    ( ! [X0] : ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),sK0)
    | spl7_1 ),
    inference(resolution,[],[f62,f33])).

fof(f62,plain,
    ( ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0))
    | spl7_1 ),
    inference(resolution,[],[f50,f36])).

fof(f74,plain,
    ( r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0)
    | ~ spl7_4 ),
    inference(avatar_component_clause,[],[f72])).

fof(f72,plain,
    ( spl7_4
  <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_4])])).

fof(f79,plain,
    ( spl7_4
    | spl7_5
    | ~ spl7_2 ),
    inference(avatar_split_clause,[],[f68,f53,f76,f72])).

fof(f53,plain,
    ( spl7_2
  <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl7_2])])).

fof(f68,plain,
    ( r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1)
    | r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0)
    | ~ spl7_2 ),
    inference(resolution,[],[f55,f37])).

fof(f55,plain,
    ( r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1))
    | ~ spl7_2 ),
    inference(avatar_component_clause,[],[f53])).

fof(f60,plain,
    ( ~ spl7_1
    | spl7_3 ),
    inference(avatar_split_clause,[],[f47,f58,f49])).

fof(f47,plain,(
    ! [X0] :
      ( ~ r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1))
      | ~ r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) ) ),
    inference(resolution,[],[f39,f40])).

fof(f40,plain,(
    ! [X0,X3,X1] :
      ( sQ6_eqProxy(k1_relat_1(X0),X1)
      | ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
      | ~ r2_hidden(sK2(X0,X1),X1) ) ),
    inference(equality_proxy_replacement,[],[f26,f38])).

fof(f38,plain,(
    ! [X1,X0] :
      ( sQ6_eqProxy(X0,X1)
    <=> X0 = X1 ) ),
    introduced(equality_proxy_definition,[new_symbols(naming,[sQ6_eqProxy])])).

fof(f26,plain,(
    ! [X0,X3,X1] :
      ( k1_relat_1(X0) = X1
      | ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
      | ~ r2_hidden(sK2(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f39,plain,(
    ~ sQ6_eqProxy(k1_relat_1(k2_xboole_0(sK0,sK1)),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) ),
    inference(equality_proxy_replacement,[],[f22,f38])).

fof(f22,plain,(
    k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,
    ( k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))
    & v1_relat_1(sK1)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f5,f7,f6])).

fof(f6,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k1_relat_1(k2_xboole_0(X0,X1)) != k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1))
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( k1_relat_1(k2_xboole_0(sK0,X1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(X1))
          & v1_relat_1(X1) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f7,plain,
    ( ? [X1] :
        ( k1_relat_1(k2_xboole_0(sK0,X1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(X1))
        & v1_relat_1(X1) )
   => ( k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f5,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k1_relat_1(k2_xboole_0(X0,X1)) != k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1))
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => k1_relat_1(k2_xboole_0(X0,X1)) = k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1)) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f3,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k1_relat_1(k2_xboole_0(X0,X1)) = k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t13_relat_1)).

fof(f56,plain,
    ( spl7_1
    | spl7_2 ),
    inference(avatar_split_clause,[],[f46,f53,f49])).

fof(f46,plain,
    ( r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1))
    | r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) ),
    inference(resolution,[],[f39,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( sQ6_eqProxy(k1_relat_1(X0),X1)
      | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
      | r2_hidden(sK2(X0,X1),X1) ) ),
    inference(equality_proxy_replacement,[],[f25,f38])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
      | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
      | r2_hidden(sK2(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f14])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:17:14 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.21/0.41  % (26796)lrs+10_50_add=large:afp=40000:afq=1.2:amm=sco:anc=none:br=off:cond=on:fsr=off:gsp=input_only:gs=on:irw=on:lma=on:nm=64:nwc=1:stl=30:sos=all:sp=reverse_arity:urr=on_21 on theBenchmark
% 0.21/0.41  % (26796)Refutation not found, incomplete strategy% (26796)------------------------------
% 0.21/0.41  % (26796)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.41  % (26796)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.41  
% 0.21/0.41  % (26796)Memory used [KB]: 10618
% 0.21/0.41  % (26796)Time elapsed: 0.003 s
% 0.21/0.41  % (26796)------------------------------
% 0.21/0.41  % (26796)------------------------------
% 0.21/0.45  % (26791)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_38 on theBenchmark
% 0.21/0.46  % (26788)dis+1011_5:4_acc=model:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=off:ccuc=small_ones:cond=fast:fde=unused:gs=on:nm=2:newcnf=on:nwc=1:nicw=on:sos=on:sac=on:sp=occurrence:updr=off_9 on theBenchmark
% 0.21/0.46  % (26788)Refutation not found, incomplete strategy% (26788)------------------------------
% 0.21/0.46  % (26788)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.46  % (26788)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.46  
% 0.21/0.46  % (26788)Memory used [KB]: 10618
% 0.21/0.46  % (26788)Time elapsed: 0.054 s
% 0.21/0.46  % (26788)------------------------------
% 0.21/0.46  % (26788)------------------------------
% 0.21/0.46  % (26789)lrs+1011_3:1_av=off:cond=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sos=all:updr=off_11 on theBenchmark
% 0.21/0.46  % (26800)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.46  % (26800)Refutation not found, incomplete strategy% (26800)------------------------------
% 0.21/0.46  % (26800)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.46  % (26800)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.46  
% 0.21/0.46  % (26800)Memory used [KB]: 6140
% 0.21/0.46  % (26800)Time elapsed: 0.052 s
% 0.21/0.46  % (26800)------------------------------
% 0.21/0.46  % (26800)------------------------------
% 0.21/0.47  % (26804)lrs+1002_16_av=off:cond=on:nwc=3:stl=30_83 on theBenchmark
% 0.21/0.50  % (26807)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_3 on theBenchmark
% 0.21/0.50  % (26807)Refutation not found, incomplete strategy% (26807)------------------------------
% 0.21/0.50  % (26807)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.50  % (26807)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.50  
% 0.21/0.50  % (26807)Memory used [KB]: 10490
% 0.21/0.50  % (26807)Time elapsed: 0.081 s
% 0.21/0.50  % (26807)------------------------------
% 0.21/0.50  % (26807)------------------------------
% 0.21/0.50  % (26784)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_2 on theBenchmark
% 0.21/0.51  % (26784)Refutation not found, incomplete strategy% (26784)------------------------------
% 0.21/0.51  % (26784)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (26784)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (26784)Memory used [KB]: 6140
% 0.21/0.51  % (26784)Time elapsed: 0.084 s
% 0.21/0.51  % (26784)------------------------------
% 0.21/0.51  % (26784)------------------------------
% 0.21/0.51  % (26790)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.51  % (26795)dis+11_2:1_add=large:afp=4000:afq=1.4:amm=sco:anc=none:fsr=off:nm=16:nwc=1:sd=3:ss=axioms:st=1.2:sos=all:urr=ec_only:updr=off_2 on theBenchmark
% 0.21/0.51  % (26787)lrs+1010_2:1_aac=none:afr=on:afp=10000:afq=1.4:amm=sco:anc=none:gs=on:gsem=off:irw=on:nm=16:nwc=3:stl=30_7 on theBenchmark
% 0.21/0.51  % (26792)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.51  % (26793)lrs+10_4_add=off:afp=100000:afq=2.0:anc=none:bd=off:er=known:gs=on:gsem=off:irw=on:lcm=reverse:nm=4:newcnf=on:nwc=2.5:sas=z3:stl=30:sac=on:urr=ec_only:updr=off_3 on theBenchmark
% 0.21/0.52  % (26794)lrs+1011_3:2_aac=none:afp=10000:afq=1.2:amm=off:anc=all:cond=on:fde=none:gs=on:gsem=on:irw=on:lma=on:nm=32:newcnf=on:nwc=3:nicw=on:stl=30:sac=on:sp=reverse_arity:urr=ec_only:updr=off:uhcvi=on_5 on theBenchmark
% 0.21/0.53  % (26802)ott+1002_7_acc=on:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bs=unit_only:gsp=input_only:gs=on:nm=2:nwc=10:sos=theory:sp=reverse_arity:urr=on:updr=off_45 on theBenchmark
% 0.21/0.53  % (26799)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_129 on theBenchmark
% 0.21/0.53  % (26798)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_81 on theBenchmark
% 0.21/0.53  % (26798)Refutation not found, incomplete strategy% (26798)------------------------------
% 0.21/0.53  % (26798)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (26798)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (26798)Memory used [KB]: 1535
% 0.21/0.53  % (26798)Time elapsed: 0.107 s
% 0.21/0.53  % (26798)------------------------------
% 0.21/0.53  % (26798)------------------------------
% 0.21/0.53  % (26799)Refutation not found, incomplete strategy% (26799)------------------------------
% 0.21/0.53  % (26799)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (26799)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (26799)Memory used [KB]: 10618
% 0.21/0.53  % (26799)Time elapsed: 0.130 s
% 0.21/0.53  % (26799)------------------------------
% 0.21/0.53  % (26799)------------------------------
% 0.21/0.53  % (26785)lrs+1002_8_add=large:afp=40000:afq=1.0:amm=off:anc=none:cond=on:gs=on:irw=on:nm=16:newcnf=on:nwc=1:stl=30:sos=on:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.53  % (26797)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.53  % (26785)Refutation not found, incomplete strategy% (26785)------------------------------
% 0.21/0.53  % (26785)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (26785)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (26785)Memory used [KB]: 10490
% 0.21/0.53  % (26785)Time elapsed: 0.125 s
% 0.21/0.53  % (26785)------------------------------
% 0.21/0.53  % (26785)------------------------------
% 0.21/0.53  % (26797)Refutation found. Thanks to Tanya!
% 0.21/0.53  % SZS status Theorem for theBenchmark
% 0.21/0.53  % SZS output start Proof for theBenchmark
% 0.21/0.53  fof(f173,plain,(
% 0.21/0.53    $false),
% 0.21/0.53    inference(avatar_sat_refutation,[],[f56,f60,f79,f96,f128,f129,f145,f170,f172])).
% 0.21/0.53  fof(f172,plain,(
% 0.21/0.53    ~spl7_8 | spl7_1),
% 0.21/0.53    inference(avatar_split_clause,[],[f63,f49,f125])).
% 0.21/0.53  fof(f125,plain,(
% 0.21/0.53    spl7_8 <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1))),
% 0.21/0.53    introduced(avatar_definition,[new_symbols(naming,[spl7_8])])).
% 0.21/0.53  fof(f49,plain,(
% 0.21/0.53    spl7_1 <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),
% 0.21/0.53    introduced(avatar_definition,[new_symbols(naming,[spl7_1])])).
% 0.21/0.53  fof(f63,plain,(
% 0.21/0.53    ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1)) | spl7_1),
% 0.21/0.53    inference(resolution,[],[f50,f35])).
% 0.21/0.54  fof(f35,plain,(
% 0.21/0.54    ( ! [X4,X0,X1] : (r2_hidden(X4,k2_xboole_0(X0,X1)) | ~r2_hidden(X4,X1)) )),
% 0.21/0.54    inference(equality_resolution,[],[f29])).
% 0.21/0.54  fof(f29,plain,(
% 0.21/0.54    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 0.21/0.54    inference(cnf_transformation,[],[f19])).
% 0.21/0.54  fof(f19,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK5(X0,X1,X2),X1) & ~r2_hidden(sK5(X0,X1,X2),X0)) | ~r2_hidden(sK5(X0,X1,X2),X2)) & (r2_hidden(sK5(X0,X1,X2),X1) | r2_hidden(sK5(X0,X1,X2),X0) | r2_hidden(sK5(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f17,f18])).
% 0.21/0.54  fof(f18,plain,(
% 0.21/0.54    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK5(X0,X1,X2),X1) & ~r2_hidden(sK5(X0,X1,X2),X0)) | ~r2_hidden(sK5(X0,X1,X2),X2)) & (r2_hidden(sK5(X0,X1,X2),X1) | r2_hidden(sK5(X0,X1,X2),X0) | r2_hidden(sK5(X0,X1,X2),X2))))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f17,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.21/0.54    inference(rectify,[],[f16])).
% 0.21/0.54  fof(f16,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.21/0.54    inference(flattening,[],[f15])).
% 0.21/0.54  fof(f15,plain,(
% 0.21/0.54    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.21/0.54    inference(nnf_transformation,[],[f1])).
% 0.21/0.54  fof(f1,axiom,(
% 0.21/0.54    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).
% 0.21/0.54  fof(f50,plain,(
% 0.21/0.54    ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) | spl7_1),
% 0.21/0.54    inference(avatar_component_clause,[],[f49])).
% 0.21/0.54  fof(f170,plain,(
% 0.21/0.54    spl7_8 | ~spl7_5),
% 0.21/0.54    inference(avatar_split_clause,[],[f167,f76,f125])).
% 0.21/0.54  fof(f76,plain,(
% 0.21/0.54    spl7_5 <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1)),
% 0.21/0.54    introduced(avatar_definition,[new_symbols(naming,[spl7_5])])).
% 0.21/0.54  fof(f167,plain,(
% 0.21/0.54    r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1)) | ~spl7_5),
% 0.21/0.54    inference(resolution,[],[f78,f33])).
% 0.21/0.54  fof(f33,plain,(
% 0.21/0.54    ( ! [X6,X0,X5] : (r2_hidden(X5,k1_relat_1(X0)) | ~r2_hidden(k4_tarski(X5,X6),X0)) )),
% 0.21/0.54    inference(equality_resolution,[],[f24])).
% 0.21/0.54  fof(f24,plain,(
% 0.21/0.54    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X5,X6),X0) | k1_relat_1(X0) != X1) )),
% 0.21/0.54    inference(cnf_transformation,[],[f14])).
% 0.21/0.54  fof(f14,plain,(
% 0.21/0.54    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ((! [X3] : ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f10,f13,f12,f11])).
% 0.21/0.54  fof(f11,plain,(
% 0.21/0.54    ! [X1,X0] : (? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1))) => ((! [X3] : ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f12,plain,(
% 0.21/0.54    ! [X1,X0] : (? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0) => r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f13,plain,(
% 0.21/0.54    ! [X5,X0] : (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) => r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f10,plain,(
% 0.21/0.54    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.21/0.54    inference(rectify,[],[f9])).
% 0.21/0.54  fof(f9,plain,(
% 0.21/0.54    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1))) | k1_relat_1(X0) != X1))),
% 0.21/0.54    inference(nnf_transformation,[],[f2])).
% 0.21/0.54  fof(f2,axiom,(
% 0.21/0.54    ! [X0,X1] : (k1_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_relat_1)).
% 0.21/0.54  fof(f78,plain,(
% 0.21/0.54    r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1) | ~spl7_5),
% 0.21/0.54    inference(avatar_component_clause,[],[f76])).
% 0.21/0.54  fof(f145,plain,(
% 0.21/0.54    ~spl7_8 | ~spl7_3),
% 0.21/0.54    inference(avatar_split_clause,[],[f142,f58,f125])).
% 0.21/0.54  fof(f58,plain,(
% 0.21/0.54    spl7_3 <=> ! [X0] : ~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1))),
% 0.21/0.54    introduced(avatar_definition,[new_symbols(naming,[spl7_3])])).
% 0.21/0.54  fof(f142,plain,(
% 0.21/0.54    ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1)) | ~spl7_3),
% 0.21/0.54    inference(resolution,[],[f112,f34])).
% 0.21/0.54  fof(f34,plain,(
% 0.21/0.54    ( ! [X0,X5] : (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,k1_relat_1(X0))) )),
% 0.21/0.54    inference(equality_resolution,[],[f23])).
% 0.21/0.54  fof(f23,plain,(
% 0.21/0.54    ( ! [X0,X5,X1] : (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,X1) | k1_relat_1(X0) != X1) )),
% 0.21/0.54    inference(cnf_transformation,[],[f14])).
% 0.21/0.54  fof(f112,plain,(
% 0.21/0.54    ( ! [X1] : (~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X1),sK1)) ) | ~spl7_3),
% 0.21/0.54    inference(resolution,[],[f59,f35])).
% 0.21/0.54  fof(f59,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1))) ) | ~spl7_3),
% 0.21/0.54    inference(avatar_component_clause,[],[f58])).
% 0.21/0.54  fof(f129,plain,(
% 0.21/0.54    ~spl7_7 | ~spl7_3),
% 0.21/0.54    inference(avatar_split_clause,[],[f116,f58,f121])).
% 0.21/0.54  fof(f121,plain,(
% 0.21/0.54    spl7_7 <=> r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0))),
% 0.21/0.54    introduced(avatar_definition,[new_symbols(naming,[spl7_7])])).
% 0.21/0.54  fof(f116,plain,(
% 0.21/0.54    ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0)) | ~spl7_3),
% 0.21/0.54    inference(resolution,[],[f111,f34])).
% 0.21/0.54  fof(f111,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),sK0)) ) | ~spl7_3),
% 0.21/0.54    inference(resolution,[],[f59,f36])).
% 0.21/0.54  fof(f36,plain,(
% 0.21/0.54    ( ! [X4,X0,X1] : (r2_hidden(X4,k2_xboole_0(X0,X1)) | ~r2_hidden(X4,X0)) )),
% 0.21/0.54    inference(equality_resolution,[],[f28])).
% 0.21/0.54  fof(f28,plain,(
% 0.21/0.54    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X0) | k2_xboole_0(X0,X1) != X2) )),
% 0.21/0.54    inference(cnf_transformation,[],[f19])).
% 0.21/0.54  fof(f128,plain,(
% 0.21/0.54    spl7_7 | spl7_8 | ~spl7_1),
% 0.21/0.54    inference(avatar_split_clause,[],[f103,f49,f125,f121])).
% 0.21/0.54  fof(f103,plain,(
% 0.21/0.54    r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK1)) | r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0)) | ~spl7_1),
% 0.21/0.54    inference(resolution,[],[f51,f37])).
% 0.21/0.54  fof(f37,plain,(
% 0.21/0.54    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,k2_xboole_0(X0,X1))) )),
% 0.21/0.54    inference(equality_resolution,[],[f27])).
% 0.21/0.54  fof(f27,plain,(
% 0.21/0.54    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k2_xboole_0(X0,X1) != X2) )),
% 0.21/0.54    inference(cnf_transformation,[],[f19])).
% 0.21/0.54  fof(f51,plain,(
% 0.21/0.54    r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))) | ~spl7_1),
% 0.21/0.54    inference(avatar_component_clause,[],[f49])).
% 0.21/0.54  fof(f96,plain,(
% 0.21/0.54    spl7_1 | ~spl7_4),
% 0.21/0.54    inference(avatar_contradiction_clause,[],[f92])).
% 0.21/0.54  fof(f92,plain,(
% 0.21/0.54    $false | (spl7_1 | ~spl7_4)),
% 0.21/0.54    inference(resolution,[],[f74,f80])).
% 0.21/0.54  fof(f80,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),sK0)) ) | spl7_1),
% 0.21/0.54    inference(resolution,[],[f62,f33])).
% 0.21/0.54  fof(f62,plain,(
% 0.21/0.54    ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k1_relat_1(sK0)) | spl7_1),
% 0.21/0.54    inference(resolution,[],[f50,f36])).
% 0.21/0.54  fof(f74,plain,(
% 0.21/0.54    r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0) | ~spl7_4),
% 0.21/0.54    inference(avatar_component_clause,[],[f72])).
% 0.21/0.54  fof(f72,plain,(
% 0.21/0.54    spl7_4 <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0)),
% 0.21/0.54    introduced(avatar_definition,[new_symbols(naming,[spl7_4])])).
% 0.21/0.54  fof(f79,plain,(
% 0.21/0.54    spl7_4 | spl7_5 | ~spl7_2),
% 0.21/0.54    inference(avatar_split_clause,[],[f68,f53,f76,f72])).
% 0.21/0.54  fof(f53,plain,(
% 0.21/0.54    spl7_2 <=> r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1))),
% 0.21/0.54    introduced(avatar_definition,[new_symbols(naming,[spl7_2])])).
% 0.21/0.54  fof(f68,plain,(
% 0.21/0.54    r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK1) | r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),sK0) | ~spl7_2),
% 0.21/0.54    inference(resolution,[],[f55,f37])).
% 0.21/0.54  fof(f55,plain,(
% 0.21/0.54    r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1)) | ~spl7_2),
% 0.21/0.54    inference(avatar_component_clause,[],[f53])).
% 0.21/0.54  fof(f60,plain,(
% 0.21/0.54    ~spl7_1 | spl7_3),
% 0.21/0.54    inference(avatar_split_clause,[],[f47,f58,f49])).
% 0.21/0.54  fof(f47,plain,(
% 0.21/0.54    ( ! [X0] : (~r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),X0),k2_xboole_0(sK0,sK1)) | ~r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))) )),
% 0.21/0.54    inference(resolution,[],[f39,f40])).
% 0.21/0.54  fof(f40,plain,(
% 0.21/0.54    ( ! [X0,X3,X1] : (sQ6_eqProxy(k1_relat_1(X0),X1) | ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) )),
% 0.21/0.54    inference(equality_proxy_replacement,[],[f26,f38])).
% 0.21/0.54  fof(f38,plain,(
% 0.21/0.54    ! [X1,X0] : (sQ6_eqProxy(X0,X1) <=> X0 = X1)),
% 0.21/0.54    introduced(equality_proxy_definition,[new_symbols(naming,[sQ6_eqProxy])])).
% 0.21/0.54  fof(f26,plain,(
% 0.21/0.54    ( ! [X0,X3,X1] : (k1_relat_1(X0) = X1 | ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f14])).
% 0.21/0.54  fof(f39,plain,(
% 0.21/0.54    ~sQ6_eqProxy(k1_relat_1(k2_xboole_0(sK0,sK1)),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),
% 0.21/0.54    inference(equality_proxy_replacement,[],[f22,f38])).
% 0.21/0.54  fof(f22,plain,(
% 0.21/0.54    k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),
% 0.21/0.54    inference(cnf_transformation,[],[f8])).
% 0.21/0.54  fof(f8,plain,(
% 0.21/0.54    (k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)) & v1_relat_1(sK1)) & v1_relat_1(sK0)),
% 0.21/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f5,f7,f6])).
% 0.21/0.54  fof(f6,plain,(
% 0.21/0.54    ? [X0] : (? [X1] : (k1_relat_1(k2_xboole_0(X0,X1)) != k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (k1_relat_1(k2_xboole_0(sK0,X1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(X1)) & v1_relat_1(X1)) & v1_relat_1(sK0))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f7,plain,(
% 0.21/0.54    ? [X1] : (k1_relat_1(k2_xboole_0(sK0,X1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(X1)) & v1_relat_1(X1)) => (k1_relat_1(k2_xboole_0(sK0,sK1)) != k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)) & v1_relat_1(sK1))),
% 0.21/0.54    introduced(choice_axiom,[])).
% 0.21/0.54  fof(f5,plain,(
% 0.21/0.54    ? [X0] : (? [X1] : (k1_relat_1(k2_xboole_0(X0,X1)) != k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 0.21/0.54    inference(ennf_transformation,[],[f4])).
% 0.21/0.54  fof(f4,negated_conjecture,(
% 0.21/0.54    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k1_relat_1(k2_xboole_0(X0,X1)) = k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1))))),
% 0.21/0.54    inference(negated_conjecture,[],[f3])).
% 0.21/0.54  fof(f3,conjecture,(
% 0.21/0.54    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k1_relat_1(k2_xboole_0(X0,X1)) = k2_xboole_0(k1_relat_1(X0),k1_relat_1(X1))))),
% 0.21/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t13_relat_1)).
% 0.21/0.54  fof(f56,plain,(
% 0.21/0.54    spl7_1 | spl7_2),
% 0.21/0.54    inference(avatar_split_clause,[],[f46,f53,f49])).
% 0.21/0.54  fof(f46,plain,(
% 0.21/0.54    r2_hidden(k4_tarski(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),sK3(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),k2_xboole_0(sK0,sK1)) | r2_hidden(sK2(k2_xboole_0(sK0,sK1),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1))),k2_xboole_0(k1_relat_1(sK0),k1_relat_1(sK1)))),
% 0.21/0.54    inference(resolution,[],[f39,f41])).
% 0.21/0.54  fof(f41,plain,(
% 0.21/0.54    ( ! [X0,X1] : (sQ6_eqProxy(k1_relat_1(X0),X1) | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)) )),
% 0.21/0.54    inference(equality_proxy_replacement,[],[f25,f38])).
% 0.21/0.54  fof(f25,plain,(
% 0.21/0.54    ( ! [X0,X1] : (k1_relat_1(X0) = X1 | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)) )),
% 0.21/0.54    inference(cnf_transformation,[],[f14])).
% 0.21/0.54  % SZS output end Proof for theBenchmark
% 0.21/0.54  % (26797)------------------------------
% 0.21/0.54  % (26797)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.54  % (26797)Termination reason: Refutation
% 0.21/0.54  
% 0.21/0.54  % (26797)Memory used [KB]: 6140
% 0.21/0.54  % (26797)Time elapsed: 0.071 s
% 0.21/0.54  % (26797)------------------------------
% 0.21/0.54  % (26797)------------------------------
% 0.21/0.54  % (26782)Success in time 0.183 s
%------------------------------------------------------------------------------
