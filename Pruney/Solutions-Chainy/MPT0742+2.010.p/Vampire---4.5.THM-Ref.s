%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:55:22 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 127 expanded)
%              Number of leaves         :   14 (  40 expanded)
%              Depth                    :   17
%              Number of atoms          :  280 ( 705 expanded)
%              Number of equality atoms :   27 (  74 expanded)
%              Maximal formula depth    :   14 (   6 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f381,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f158,f169,f380])).

fof(f380,plain,(
    ~ spl6_6 ),
    inference(avatar_contradiction_clause,[],[f379])).

fof(f379,plain,
    ( $false
    | ~ spl6_6 ),
    inference(subsumption_resolution,[],[f363,f32])).

fof(f32,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,
    ( ! [X2] :
        ( ( ~ r1_ordinal1(X2,sK2(X2))
          & r2_hidden(sK2(X2),sK0)
          & v3_ordinal1(sK2(X2)) )
        | ~ r2_hidden(X2,sK0)
        | ~ v3_ordinal1(X2) )
    & k1_xboole_0 != sK0
    & r1_tarski(sK0,sK1)
    & v3_ordinal1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f10,f19,f18])).

fof(f18,plain,
    ( ? [X0,X1] :
        ( ! [X2] :
            ( ? [X3] :
                ( ~ r1_ordinal1(X2,X3)
                & r2_hidden(X3,X0)
                & v3_ordinal1(X3) )
            | ~ r2_hidden(X2,X0)
            | ~ v3_ordinal1(X2) )
        & k1_xboole_0 != X0
        & r1_tarski(X0,X1)
        & v3_ordinal1(X1) )
   => ( ! [X2] :
          ( ? [X3] :
              ( ~ r1_ordinal1(X2,X3)
              & r2_hidden(X3,sK0)
              & v3_ordinal1(X3) )
          | ~ r2_hidden(X2,sK0)
          | ~ v3_ordinal1(X2) )
      & k1_xboole_0 != sK0
      & r1_tarski(sK0,sK1)
      & v3_ordinal1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    ! [X2] :
      ( ? [X3] :
          ( ~ r1_ordinal1(X2,X3)
          & r2_hidden(X3,sK0)
          & v3_ordinal1(X3) )
     => ( ~ r1_ordinal1(X2,sK2(X2))
        & r2_hidden(sK2(X2),sK0)
        & v3_ordinal1(sK2(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ? [X3] :
              ( ~ r1_ordinal1(X2,X3)
              & r2_hidden(X3,X0)
              & v3_ordinal1(X3) )
          | ~ r2_hidden(X2,X0)
          | ~ v3_ordinal1(X2) )
      & k1_xboole_0 != X0
      & r1_tarski(X0,X1)
      & v3_ordinal1(X1) ) ),
    inference(flattening,[],[f9])).

fof(f9,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ? [X3] :
              ( ~ r1_ordinal1(X2,X3)
              & r2_hidden(X3,X0)
              & v3_ordinal1(X3) )
          | ~ r2_hidden(X2,X0)
          | ~ v3_ordinal1(X2) )
      & k1_xboole_0 != X0
      & r1_tarski(X0,X1)
      & v3_ordinal1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v3_ordinal1(X1)
       => ~ ( ! [X2] :
                ( v3_ordinal1(X2)
               => ~ ( ! [X3] :
                        ( v3_ordinal1(X3)
                       => ( r2_hidden(X3,X0)
                         => r1_ordinal1(X2,X3) ) )
                    & r2_hidden(X2,X0) ) )
            & k1_xboole_0 != X0
            & r1_tarski(X0,X1) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f7,conjecture,(
    ! [X0,X1] :
      ( v3_ordinal1(X1)
     => ~ ( ! [X2] :
              ( v3_ordinal1(X2)
             => ~ ( ! [X3] :
                      ( v3_ordinal1(X3)
                     => ( r2_hidden(X3,X0)
                       => r1_ordinal1(X2,X3) ) )
                  & r2_hidden(X2,X0) ) )
          & k1_xboole_0 != X0
          & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_ordinal1)).

fof(f363,plain,
    ( k1_xboole_0 = sK0
    | ~ spl6_6 ),
    inference(resolution,[],[f357,f37])).

fof(f37,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f13,f21])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK3(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f357,plain,
    ( ! [X2] : ~ r2_hidden(X2,sK0)
    | ~ spl6_6 ),
    inference(subsumption_resolution,[],[f356,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK4(X1),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( ! [X3] :
            ( ~ r2_hidden(X3,sK4(X1))
            | ~ r2_hidden(X3,X1) )
        & r2_hidden(sK4(X1),X1) )
      | ~ r2_hidden(X0,X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f17,f23])).

fof(f23,plain,(
    ! [X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1) )
          & r2_hidden(X2,X1) )
     => ( ! [X3] :
            ( ~ r2_hidden(X3,sK4(X1))
            | ~ r2_hidden(X3,X1) )
        & r2_hidden(sK4(X1),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1) )
          & r2_hidden(X2,X1) )
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ~ ( ! [X2] :
            ~ ( ! [X3] :
                  ~ ( r2_hidden(X3,X2)
                    & r2_hidden(X3,X1) )
              & r2_hidden(X2,X1) )
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_tarski)).

fof(f356,plain,
    ( ! [X2] :
        ( ~ r2_hidden(X2,sK0)
        | ~ r2_hidden(sK4(sK0),sK0) )
    | ~ spl6_6 ),
    inference(subsumption_resolution,[],[f354,f234])).

fof(f234,plain,
    ( v3_ordinal1(sK4(sK0))
    | ~ spl6_6 ),
    inference(subsumption_resolution,[],[f230,f30])).

fof(f30,plain,(
    v3_ordinal1(sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f230,plain,
    ( v3_ordinal1(sK4(sK0))
    | ~ v3_ordinal1(sK1)
    | ~ spl6_6 ),
    inference(resolution,[],[f157,f38])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | v3_ordinal1(X0)
      | ~ v3_ordinal1(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( v3_ordinal1(X0)
      | ~ r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( v3_ordinal1(X0)
      | ~ r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v3_ordinal1(X1)
     => ( r2_hidden(X0,X1)
       => v3_ordinal1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t23_ordinal1)).

fof(f157,plain,
    ( r2_hidden(sK4(sK0),sK1)
    | ~ spl6_6 ),
    inference(avatar_component_clause,[],[f156])).

fof(f156,plain,
    ( spl6_6
  <=> r2_hidden(sK4(sK0),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_6])])).

fof(f354,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK0)
      | ~ v3_ordinal1(sK4(sK0))
      | ~ r2_hidden(sK4(sK0),sK0) ) ),
    inference(duplicate_literal_removal,[],[f350])).

fof(f350,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK0)
      | ~ v3_ordinal1(sK4(sK0))
      | ~ r2_hidden(sK4(sK0),sK0)
      | ~ r2_hidden(sK4(sK0),sK0)
      | ~ v3_ordinal1(sK4(sK0)) ) ),
    inference(resolution,[],[f90,f34])).

fof(f34,plain,(
    ! [X2] :
      ( r2_hidden(sK2(X2),sK0)
      | ~ r2_hidden(X2,sK0)
      | ~ v3_ordinal1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f90,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK2(sK4(X0)),X0)
      | ~ r2_hidden(X1,X0)
      | ~ v3_ordinal1(sK4(X0))
      | ~ r2_hidden(sK4(X0),sK0) ) ),
    inference(resolution,[],[f41,f84])).

fof(f84,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | ~ v3_ordinal1(X0)
      | ~ r2_hidden(X0,sK0) ) ),
    inference(subsumption_resolution,[],[f83,f33])).

fof(f33,plain,(
    ! [X2] :
      ( ~ r2_hidden(X2,sK0)
      | v3_ordinal1(sK2(X2))
      | ~ v3_ordinal1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f83,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | ~ v3_ordinal1(sK2(X0))
      | ~ v3_ordinal1(X0)
      | ~ r2_hidden(X0,sK0) ) ),
    inference(duplicate_literal_removal,[],[f82])).

fof(f82,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | ~ v3_ordinal1(sK2(X0))
      | ~ v3_ordinal1(X0)
      | ~ r2_hidden(X0,sK0)
      | ~ v3_ordinal1(X0) ) ),
    inference(resolution,[],[f36,f35])).

fof(f35,plain,(
    ! [X2] :
      ( ~ r1_ordinal1(X2,sK2(X2))
      | ~ r2_hidden(X2,sK0)
      | ~ v3_ordinal1(X2) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_ordinal1(X0,X1)
      | r2_hidden(X1,X0)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | r1_ordinal1(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X1,X0)
            | r1_ordinal1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t26_ordinal1)).

fof(f41,plain,(
    ! [X0,X3,X1] :
      ( ~ r2_hidden(X3,sK4(X1))
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f169,plain,(
    ~ spl6_5 ),
    inference(avatar_contradiction_clause,[],[f168])).

fof(f168,plain,
    ( $false
    | ~ spl6_5 ),
    inference(subsumption_resolution,[],[f164,f32])).

fof(f164,plain,
    ( k1_xboole_0 = sK0
    | ~ spl6_5 ),
    inference(resolution,[],[f74,f37])).

fof(f74,plain,
    ( ! [X0] : ~ r2_hidden(X0,sK0)
    | ~ spl6_5 ),
    inference(avatar_component_clause,[],[f73])).

fof(f73,plain,
    ( spl6_5
  <=> ! [X0] : ~ r2_hidden(X0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_5])])).

fof(f158,plain,
    ( spl6_5
    | spl6_6 ),
    inference(avatar_split_clause,[],[f151,f156,f73])).

fof(f151,plain,(
    ! [X4] :
      ( r2_hidden(sK4(sK0),sK1)
      | ~ r2_hidden(X4,sK0) ) ),
    inference(resolution,[],[f144,f40])).

fof(f144,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK0)
      | r2_hidden(X0,sK1) ) ),
    inference(resolution,[],[f78,f31])).

fof(f31,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(superposition,[],[f49,f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f49,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,k3_xboole_0(X0,X1))
      | r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f43])).

fof(f43,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ( ( ~ r2_hidden(sK5(X0,X1,X2),X1)
            | ~ r2_hidden(sK5(X0,X1,X2),X0)
            | ~ r2_hidden(sK5(X0,X1,X2),X2) )
          & ( ( r2_hidden(sK5(X0,X1,X2),X1)
              & r2_hidden(sK5(X0,X1,X2),X0) )
            | r2_hidden(sK5(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f27,f28])).

fof(f28,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(sK5(X0,X1,X2),X1)
          | ~ r2_hidden(sK5(X0,X1,X2),X0)
          | ~ r2_hidden(sK5(X0,X1,X2),X2) )
        & ( ( r2_hidden(sK5(X0,X1,X2),X1)
            & r2_hidden(sK5(X0,X1,X2),X0) )
          | r2_hidden(sK5(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_xboole_0)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:42:34 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.21/0.47  % (15417)lrs+10_4_add=off:afp=100000:afq=2.0:anc=none:bd=off:er=known:gs=on:gsem=off:irw=on:lcm=reverse:nm=4:newcnf=on:nwc=2.5:sas=z3:stl=30:sac=on:urr=ec_only:updr=off_3 on theBenchmark
% 0.21/0.47  % (15427)ott+1_8:1_av=off:bd=preordered:bsr=on:lma=on:nm=64:newcnf=on:nwc=1.2:uhcvi=on_180 on theBenchmark
% 0.21/0.47  % (15412)dis+1011_5:4_acc=model:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=off:ccuc=small_ones:cond=fast:fde=unused:gs=on:nm=2:newcnf=on:nwc=1:nicw=on:sos=on:sac=on:sp=occurrence:updr=off_9 on theBenchmark
% 0.21/0.47  % (15409)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_2 on theBenchmark
% 0.21/0.48  % (15411)lrs+1010_2:1_aac=none:afr=on:afp=10000:afq=1.4:amm=sco:anc=none:gs=on:gsem=off:irw=on:nm=16:nwc=3:stl=30_7 on theBenchmark
% 0.21/0.49  % (15414)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.49  % (15420)lrs+10_50_add=large:afp=40000:afq=1.2:amm=sco:anc=none:br=off:cond=on:fsr=off:gsp=input_only:gs=on:irw=on:lma=on:nm=64:nwc=1:stl=30:sos=all:sp=reverse_arity:urr=on_21 on theBenchmark
% 0.21/0.49  % (15413)lrs+1011_3:1_av=off:cond=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sos=all:updr=off_11 on theBenchmark
% 0.21/0.49  % (15416)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.49  % (15423)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_129 on theBenchmark
% 0.21/0.49  % (15415)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_38 on theBenchmark
% 0.21/0.49  % (15410)lrs+1002_8_add=large:afp=40000:afq=1.0:amm=off:anc=none:cond=on:gs=on:irw=on:nm=16:newcnf=on:nwc=1:stl=30:sos=on:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.49  % (15411)Refutation found. Thanks to Tanya!
% 0.21/0.49  % SZS status Theorem for theBenchmark
% 0.21/0.49  % SZS output start Proof for theBenchmark
% 0.21/0.49  fof(f381,plain,(
% 0.21/0.49    $false),
% 0.21/0.49    inference(avatar_sat_refutation,[],[f158,f169,f380])).
% 0.21/0.49  fof(f380,plain,(
% 0.21/0.49    ~spl6_6),
% 0.21/0.49    inference(avatar_contradiction_clause,[],[f379])).
% 0.21/0.49  fof(f379,plain,(
% 0.21/0.49    $false | ~spl6_6),
% 0.21/0.49    inference(subsumption_resolution,[],[f363,f32])).
% 0.21/0.49  fof(f32,plain,(
% 0.21/0.49    k1_xboole_0 != sK0),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f20,plain,(
% 0.21/0.49    ! [X2] : ((~r1_ordinal1(X2,sK2(X2)) & r2_hidden(sK2(X2),sK0) & v3_ordinal1(sK2(X2))) | ~r2_hidden(X2,sK0) | ~v3_ordinal1(X2)) & k1_xboole_0 != sK0 & r1_tarski(sK0,sK1) & v3_ordinal1(sK1)),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f10,f19,f18])).
% 0.21/0.49  fof(f18,plain,(
% 0.21/0.49    ? [X0,X1] : (! [X2] : (? [X3] : (~r1_ordinal1(X2,X3) & r2_hidden(X3,X0) & v3_ordinal1(X3)) | ~r2_hidden(X2,X0) | ~v3_ordinal1(X2)) & k1_xboole_0 != X0 & r1_tarski(X0,X1) & v3_ordinal1(X1)) => (! [X2] : (? [X3] : (~r1_ordinal1(X2,X3) & r2_hidden(X3,sK0) & v3_ordinal1(X3)) | ~r2_hidden(X2,sK0) | ~v3_ordinal1(X2)) & k1_xboole_0 != sK0 & r1_tarski(sK0,sK1) & v3_ordinal1(sK1))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f19,plain,(
% 0.21/0.49    ! [X2] : (? [X3] : (~r1_ordinal1(X2,X3) & r2_hidden(X3,sK0) & v3_ordinal1(X3)) => (~r1_ordinal1(X2,sK2(X2)) & r2_hidden(sK2(X2),sK0) & v3_ordinal1(sK2(X2))))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f10,plain,(
% 0.21/0.49    ? [X0,X1] : (! [X2] : (? [X3] : (~r1_ordinal1(X2,X3) & r2_hidden(X3,X0) & v3_ordinal1(X3)) | ~r2_hidden(X2,X0) | ~v3_ordinal1(X2)) & k1_xboole_0 != X0 & r1_tarski(X0,X1) & v3_ordinal1(X1))),
% 0.21/0.49    inference(flattening,[],[f9])).
% 0.21/0.49  fof(f9,plain,(
% 0.21/0.49    ? [X0,X1] : ((! [X2] : ((? [X3] : ((~r1_ordinal1(X2,X3) & r2_hidden(X3,X0)) & v3_ordinal1(X3)) | ~r2_hidden(X2,X0)) | ~v3_ordinal1(X2)) & k1_xboole_0 != X0 & r1_tarski(X0,X1)) & v3_ordinal1(X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f8])).
% 0.21/0.49  fof(f8,negated_conjecture,(
% 0.21/0.49    ~! [X0,X1] : (v3_ordinal1(X1) => ~(! [X2] : (v3_ordinal1(X2) => ~(! [X3] : (v3_ordinal1(X3) => (r2_hidden(X3,X0) => r1_ordinal1(X2,X3))) & r2_hidden(X2,X0))) & k1_xboole_0 != X0 & r1_tarski(X0,X1)))),
% 0.21/0.49    inference(negated_conjecture,[],[f7])).
% 0.21/0.49  fof(f7,conjecture,(
% 0.21/0.49    ! [X0,X1] : (v3_ordinal1(X1) => ~(! [X2] : (v3_ordinal1(X2) => ~(! [X3] : (v3_ordinal1(X3) => (r2_hidden(X3,X0) => r1_ordinal1(X2,X3))) & r2_hidden(X2,X0))) & k1_xboole_0 != X0 & r1_tarski(X0,X1)))),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_ordinal1)).
% 0.21/0.49  fof(f363,plain,(
% 0.21/0.49    k1_xboole_0 = sK0 | ~spl6_6),
% 0.21/0.49    inference(resolution,[],[f357,f37])).
% 0.21/0.49  fof(f37,plain,(
% 0.21/0.49    ( ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0) )),
% 0.21/0.49    inference(cnf_transformation,[],[f22])).
% 0.21/0.49  fof(f22,plain,(
% 0.21/0.49    ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0)),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f13,f21])).
% 0.21/0.49  fof(f21,plain,(
% 0.21/0.49    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK3(X0),X0))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f13,plain,(
% 0.21/0.49    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.21/0.49    inference(ennf_transformation,[],[f2])).
% 0.21/0.49  fof(f2,axiom,(
% 0.21/0.49    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).
% 0.21/0.49  fof(f357,plain,(
% 0.21/0.49    ( ! [X2] : (~r2_hidden(X2,sK0)) ) | ~spl6_6),
% 0.21/0.49    inference(subsumption_resolution,[],[f356,f40])).
% 0.21/0.49  fof(f40,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r2_hidden(sK4(X1),X1) | ~r2_hidden(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f24])).
% 0.21/0.49  fof(f24,plain,(
% 0.21/0.49    ! [X0,X1] : ((! [X3] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1)) & r2_hidden(sK4(X1),X1)) | ~r2_hidden(X0,X1))),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f17,f23])).
% 0.21/0.49  fof(f23,plain,(
% 0.21/0.49    ! [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & r2_hidden(X2,X1)) => (! [X3] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1)) & r2_hidden(sK4(X1),X1)))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f17,plain,(
% 0.21/0.49    ! [X0,X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & r2_hidden(X2,X1)) | ~r2_hidden(X0,X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f4])).
% 0.21/0.49  fof(f4,axiom,(
% 0.21/0.49    ! [X0,X1] : ~(! [X2] : ~(! [X3] : ~(r2_hidden(X3,X2) & r2_hidden(X3,X1)) & r2_hidden(X2,X1)) & r2_hidden(X0,X1))),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_tarski)).
% 0.21/0.49  fof(f356,plain,(
% 0.21/0.49    ( ! [X2] : (~r2_hidden(X2,sK0) | ~r2_hidden(sK4(sK0),sK0)) ) | ~spl6_6),
% 0.21/0.49    inference(subsumption_resolution,[],[f354,f234])).
% 0.21/0.49  fof(f234,plain,(
% 0.21/0.49    v3_ordinal1(sK4(sK0)) | ~spl6_6),
% 0.21/0.49    inference(subsumption_resolution,[],[f230,f30])).
% 0.21/0.49  fof(f30,plain,(
% 0.21/0.49    v3_ordinal1(sK1)),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f230,plain,(
% 0.21/0.49    v3_ordinal1(sK4(sK0)) | ~v3_ordinal1(sK1) | ~spl6_6),
% 0.21/0.49    inference(resolution,[],[f157,f38])).
% 0.21/0.49  fof(f38,plain,(
% 0.21/0.49    ( ! [X0,X1] : (~r2_hidden(X0,X1) | v3_ordinal1(X0) | ~v3_ordinal1(X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f15])).
% 0.21/0.49  fof(f15,plain,(
% 0.21/0.49    ! [X0,X1] : (v3_ordinal1(X0) | ~r2_hidden(X0,X1) | ~v3_ordinal1(X1))),
% 0.21/0.49    inference(flattening,[],[f14])).
% 0.21/0.49  fof(f14,plain,(
% 0.21/0.49    ! [X0,X1] : ((v3_ordinal1(X0) | ~r2_hidden(X0,X1)) | ~v3_ordinal1(X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f5])).
% 0.21/0.49  fof(f5,axiom,(
% 0.21/0.49    ! [X0,X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) => v3_ordinal1(X0)))),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t23_ordinal1)).
% 0.21/0.49  fof(f157,plain,(
% 0.21/0.49    r2_hidden(sK4(sK0),sK1) | ~spl6_6),
% 0.21/0.49    inference(avatar_component_clause,[],[f156])).
% 0.21/0.49  fof(f156,plain,(
% 0.21/0.49    spl6_6 <=> r2_hidden(sK4(sK0),sK1)),
% 0.21/0.49    introduced(avatar_definition,[new_symbols(naming,[spl6_6])])).
% 0.21/0.49  fof(f354,plain,(
% 0.21/0.49    ( ! [X2] : (~r2_hidden(X2,sK0) | ~v3_ordinal1(sK4(sK0)) | ~r2_hidden(sK4(sK0),sK0)) )),
% 0.21/0.49    inference(duplicate_literal_removal,[],[f350])).
% 0.21/0.49  fof(f350,plain,(
% 0.21/0.49    ( ! [X2] : (~r2_hidden(X2,sK0) | ~v3_ordinal1(sK4(sK0)) | ~r2_hidden(sK4(sK0),sK0) | ~r2_hidden(sK4(sK0),sK0) | ~v3_ordinal1(sK4(sK0))) )),
% 0.21/0.49    inference(resolution,[],[f90,f34])).
% 0.21/0.49  fof(f34,plain,(
% 0.21/0.49    ( ! [X2] : (r2_hidden(sK2(X2),sK0) | ~r2_hidden(X2,sK0) | ~v3_ordinal1(X2)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f90,plain,(
% 0.21/0.49    ( ! [X0,X1] : (~r2_hidden(sK2(sK4(X0)),X0) | ~r2_hidden(X1,X0) | ~v3_ordinal1(sK4(X0)) | ~r2_hidden(sK4(X0),sK0)) )),
% 0.21/0.49    inference(resolution,[],[f41,f84])).
% 0.21/0.49  fof(f84,plain,(
% 0.21/0.49    ( ! [X0] : (r2_hidden(sK2(X0),X0) | ~v3_ordinal1(X0) | ~r2_hidden(X0,sK0)) )),
% 0.21/0.49    inference(subsumption_resolution,[],[f83,f33])).
% 0.21/0.49  fof(f33,plain,(
% 0.21/0.49    ( ! [X2] : (~r2_hidden(X2,sK0) | v3_ordinal1(sK2(X2)) | ~v3_ordinal1(X2)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f83,plain,(
% 0.21/0.49    ( ! [X0] : (r2_hidden(sK2(X0),X0) | ~v3_ordinal1(sK2(X0)) | ~v3_ordinal1(X0) | ~r2_hidden(X0,sK0)) )),
% 0.21/0.49    inference(duplicate_literal_removal,[],[f82])).
% 0.21/0.49  fof(f82,plain,(
% 0.21/0.49    ( ! [X0] : (r2_hidden(sK2(X0),X0) | ~v3_ordinal1(sK2(X0)) | ~v3_ordinal1(X0) | ~r2_hidden(X0,sK0) | ~v3_ordinal1(X0)) )),
% 0.21/0.49    inference(resolution,[],[f36,f35])).
% 0.21/0.49  fof(f35,plain,(
% 0.21/0.49    ( ! [X2] : (~r1_ordinal1(X2,sK2(X2)) | ~r2_hidden(X2,sK0) | ~v3_ordinal1(X2)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f36,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r1_ordinal1(X0,X1) | r2_hidden(X1,X0) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f12])).
% 0.21/0.49  fof(f12,plain,(
% 0.21/0.49    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | r1_ordinal1(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 0.21/0.49    inference(flattening,[],[f11])).
% 0.21/0.49  fof(f11,plain,(
% 0.21/0.49    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | r1_ordinal1(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 0.21/0.49    inference(ennf_transformation,[],[f6])).
% 0.21/0.49  fof(f6,axiom,(
% 0.21/0.49    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X1,X0) | r1_ordinal1(X0,X1))))),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t26_ordinal1)).
% 0.21/0.49  fof(f41,plain,(
% 0.21/0.49    ( ! [X0,X3,X1] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1) | ~r2_hidden(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f24])).
% 0.21/0.49  fof(f169,plain,(
% 0.21/0.49    ~spl6_5),
% 0.21/0.49    inference(avatar_contradiction_clause,[],[f168])).
% 0.21/0.49  fof(f168,plain,(
% 0.21/0.49    $false | ~spl6_5),
% 0.21/0.49    inference(subsumption_resolution,[],[f164,f32])).
% 0.21/0.49  fof(f164,plain,(
% 0.21/0.49    k1_xboole_0 = sK0 | ~spl6_5),
% 0.21/0.49    inference(resolution,[],[f74,f37])).
% 0.21/0.49  fof(f74,plain,(
% 0.21/0.49    ( ! [X0] : (~r2_hidden(X0,sK0)) ) | ~spl6_5),
% 0.21/0.49    inference(avatar_component_clause,[],[f73])).
% 0.21/0.49  fof(f73,plain,(
% 0.21/0.49    spl6_5 <=> ! [X0] : ~r2_hidden(X0,sK0)),
% 0.21/0.49    introduced(avatar_definition,[new_symbols(naming,[spl6_5])])).
% 0.21/0.49  fof(f158,plain,(
% 0.21/0.49    spl6_5 | spl6_6),
% 0.21/0.49    inference(avatar_split_clause,[],[f151,f156,f73])).
% 0.21/0.49  fof(f151,plain,(
% 0.21/0.49    ( ! [X4] : (r2_hidden(sK4(sK0),sK1) | ~r2_hidden(X4,sK0)) )),
% 0.21/0.49    inference(resolution,[],[f144,f40])).
% 0.21/0.49  fof(f144,plain,(
% 0.21/0.49    ( ! [X0] : (~r2_hidden(X0,sK0) | r2_hidden(X0,sK1)) )),
% 0.21/0.49    inference(resolution,[],[f78,f31])).
% 0.21/0.49  fof(f31,plain,(
% 0.21/0.49    r1_tarski(sK0,sK1)),
% 0.21/0.49    inference(cnf_transformation,[],[f20])).
% 0.21/0.49  fof(f78,plain,(
% 0.21/0.49    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 0.21/0.49    inference(superposition,[],[f49,f39])).
% 0.21/0.49  fof(f39,plain,(
% 0.21/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f16])).
% 0.21/0.49  fof(f16,plain,(
% 0.21/0.49    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f3])).
% 0.21/0.49  fof(f3,axiom,(
% 0.21/0.49    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.21/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.21/0.49  fof(f49,plain,(
% 0.21/0.49    ( ! [X4,X0,X1] : (~r2_hidden(X4,k3_xboole_0(X0,X1)) | r2_hidden(X4,X1)) )),
% 0.21/0.49    inference(equality_resolution,[],[f43])).
% 0.21/0.49  fof(f43,plain,(
% 0.21/0.49    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 0.21/0.49    inference(cnf_transformation,[],[f29])).
% 0.21/0.49  fof(f29,plain,(
% 0.21/0.49    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK5(X0,X1,X2),X1) | ~r2_hidden(sK5(X0,X1,X2),X0) | ~r2_hidden(sK5(X0,X1,X2),X2)) & ((r2_hidden(sK5(X0,X1,X2),X1) & r2_hidden(sK5(X0,X1,X2),X0)) | r2_hidden(sK5(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f27,f28])).
% 0.21/0.49  fof(f28,plain,(
% 0.21/0.49    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK5(X0,X1,X2),X1) | ~r2_hidden(sK5(X0,X1,X2),X0) | ~r2_hidden(sK5(X0,X1,X2),X2)) & ((r2_hidden(sK5(X0,X1,X2),X1) & r2_hidden(sK5(X0,X1,X2),X0)) | r2_hidden(sK5(X0,X1,X2),X2))))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f27,plain,(
% 0.21/0.49    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.21/0.49    inference(rectify,[],[f26])).
% 0.21/0.49  fof(f26,plain,(
% 0.21/0.49    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.21/0.49    inference(flattening,[],[f25])).
% 0.21/0.50  fof(f25,plain,(
% 0.21/0.50    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.21/0.50    inference(nnf_transformation,[],[f1])).
% 0.21/0.50  fof(f1,axiom,(
% 0.21/0.50    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 0.21/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_xboole_0)).
% 0.21/0.50  % SZS output end Proof for theBenchmark
% 0.21/0.50  % (15411)------------------------------
% 0.21/0.50  % (15411)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.50  % (15411)Termination reason: Refutation
% 0.21/0.50  
% 0.21/0.50  % (15411)Memory used [KB]: 11001
% 0.21/0.50  % (15411)Time elapsed: 0.078 s
% 0.21/0.50  % (15411)------------------------------
% 0.21/0.50  % (15411)------------------------------
% 0.21/0.50  % (15421)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.50  % (15426)ott+1002_7_acc=on:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bs=unit_only:gsp=input_only:gs=on:nm=2:nwc=10:sos=theory:sp=reverse_arity:urr=on:updr=off_45 on theBenchmark
% 0.21/0.50  % (15425)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.50  % (15430)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_3 on theBenchmark
% 0.21/0.50  % (15403)Success in time 0.149 s
%------------------------------------------------------------------------------
