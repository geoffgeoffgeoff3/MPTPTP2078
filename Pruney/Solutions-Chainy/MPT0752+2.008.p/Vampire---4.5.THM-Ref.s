%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:55:44 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   43 (  45 expanded)
%              Number of leaves         :   12 (  13 expanded)
%              Depth                    :   10
%              Number of atoms          :  105 ( 107 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f46,plain,(
    $false ),
    inference(subsumption_resolution,[],[f45,f41])).

fof(f41,plain,(
    ~ v1_relat_1(k1_xboole_0) ),
    inference(subsumption_resolution,[],[f40,f27])).

fof(f27,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(f40,plain,
    ( ~ v1_xboole_0(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(resolution,[],[f31,f39])).

fof(f39,plain,
    ( ~ v1_funct_1(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(subsumption_resolution,[],[f38,f27])).

fof(f38,plain,
    ( ~ v1_xboole_0(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(resolution,[],[f30,f37])).

fof(f37,plain,
    ( ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(resolution,[],[f34,f26])).

fof(f26,plain,
    ( ~ v5_relat_1(k1_xboole_0,sK0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,
    ( ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v5_relat_1(k1_xboole_0,sK0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f19])).

fof(f19,plain,
    ( ? [X0] :
        ( ~ v5_ordinal1(k1_xboole_0)
        | ~ v1_funct_1(k1_xboole_0)
        | ~ v5_relat_1(k1_xboole_0,X0)
        | ~ v1_relat_1(k1_xboole_0) )
   => ( ~ v5_ordinal1(k1_xboole_0)
      | ~ v1_funct_1(k1_xboole_0)
      | ~ v5_relat_1(k1_xboole_0,sK0)
      | ~ v1_relat_1(k1_xboole_0) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0] :
      ( ~ v5_ordinal1(k1_xboole_0)
      | ~ v1_funct_1(k1_xboole_0)
      | ~ v5_relat_1(k1_xboole_0,X0)
      | ~ v1_relat_1(k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( v5_ordinal1(k1_xboole_0)
        & v1_funct_1(k1_xboole_0)
        & v5_relat_1(k1_xboole_0,X0)
        & v1_relat_1(k1_xboole_0) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f9,conjecture,(
    ! [X0] :
      ( v5_ordinal1(k1_xboole_0)
      & v1_funct_1(k1_xboole_0)
      & v5_relat_1(k1_xboole_0,X0)
      & v1_relat_1(k1_xboole_0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_ordinal1)).

fof(f34,plain,(
    ! [X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(rectify,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(pure_predicate_removal,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v5_relat_1(k1_xboole_0,X1)
      & v4_relat_1(k1_xboole_0,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l222_relat_1)).

fof(f30,plain,(
    ! [X0] :
      ( v5_ordinal1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( v5_ordinal1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v5_ordinal1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc4_ordinal1)).

fof(f31,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_funct_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_funct_1)).

fof(f45,plain,(
    v1_relat_1(k1_xboole_0) ),
    inference(resolution,[],[f44,f32])).

fof(f32,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ( ! [X2,X3] : k4_tarski(X2,X3) != sK1(X0)
        & r2_hidden(sK1(X0),X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f17,f21])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] : k4_tarski(X2,X3) != X1
          & r2_hidden(X1,X0) )
     => ( ! [X3,X2] : k4_tarski(X2,X3) != sK1(X0)
        & r2_hidden(sK1(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ? [X1] :
          ( ! [X2,X3] : k4_tarski(X2,X3) != X1
          & r2_hidden(X1,X0) ) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ~ ( ! [X2,X3] : k4_tarski(X2,X3) != X1
            & r2_hidden(X1,X0) )
     => v1_relat_1(X0) ) ),
    inference(unused_predicate_definition_removal,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
    <=> ! [X1] :
          ~ ( ! [X2,X3] : k4_tarski(X2,X3) != X1
            & r2_hidden(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_relat_1)).

fof(f44,plain,(
    ! [X1] : ~ r2_hidden(X1,k1_xboole_0) ),
    inference(subsumption_resolution,[],[f43,f28])).

fof(f28,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_xboole_1)).

fof(f43,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,k1_xboole_0)
      | ~ r1_xboole_0(X0,k1_xboole_0) ) ),
    inference(superposition,[],[f36,f29])).

fof(f29,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,k3_xboole_0(X0,X1))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f18,f24])).

fof(f24,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_0)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 19:40:51 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.47  % (8531)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_81 on theBenchmark
% 0.22/0.48  % (8536)lrs+1002_16_av=off:cond=on:nwc=3:stl=30_83 on theBenchmark
% 0.22/0.48  % (8531)Refutation not found, incomplete strategy% (8531)------------------------------
% 0.22/0.48  % (8531)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.48  % (8531)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.48  
% 0.22/0.48  % (8531)Memory used [KB]: 1535
% 0.22/0.48  % (8531)Time elapsed: 0.059 s
% 0.22/0.48  % (8531)------------------------------
% 0.22/0.48  % (8531)------------------------------
% 0.22/0.48  % (8536)Refutation found. Thanks to Tanya!
% 0.22/0.48  % SZS status Theorem for theBenchmark
% 0.22/0.48  % SZS output start Proof for theBenchmark
% 0.22/0.48  fof(f46,plain,(
% 0.22/0.48    $false),
% 0.22/0.48    inference(subsumption_resolution,[],[f45,f41])).
% 0.22/0.48  fof(f41,plain,(
% 0.22/0.48    ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(subsumption_resolution,[],[f40,f27])).
% 0.22/0.48  fof(f27,plain,(
% 0.22/0.48    v1_xboole_0(k1_xboole_0)),
% 0.22/0.48    inference(cnf_transformation,[],[f1])).
% 0.22/0.48  fof(f1,axiom,(
% 0.22/0.48    v1_xboole_0(k1_xboole_0)),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).
% 0.22/0.48  fof(f40,plain,(
% 0.22/0.48    ~v1_xboole_0(k1_xboole_0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(resolution,[],[f31,f39])).
% 0.22/0.48  fof(f39,plain,(
% 0.22/0.48    ~v1_funct_1(k1_xboole_0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(subsumption_resolution,[],[f38,f27])).
% 0.22/0.48  fof(f38,plain,(
% 0.22/0.48    ~v1_xboole_0(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(resolution,[],[f30,f37])).
% 0.22/0.48  fof(f37,plain,(
% 0.22/0.48    ~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(resolution,[],[f34,f26])).
% 0.22/0.48  fof(f26,plain,(
% 0.22/0.48    ~v5_relat_1(k1_xboole_0,sK0) | ~v1_funct_1(k1_xboole_0) | ~v5_ordinal1(k1_xboole_0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(cnf_transformation,[],[f20])).
% 0.22/0.48  fof(f20,plain,(
% 0.22/0.48    ~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,sK0) | ~v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f19])).
% 0.22/0.48  fof(f19,plain,(
% 0.22/0.48    ? [X0] : (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,X0) | ~v1_relat_1(k1_xboole_0)) => (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,sK0) | ~v1_relat_1(k1_xboole_0))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f14,plain,(
% 0.22/0.48    ? [X0] : (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,X0) | ~v1_relat_1(k1_xboole_0))),
% 0.22/0.48    inference(ennf_transformation,[],[f10])).
% 0.22/0.48  fof(f10,negated_conjecture,(
% 0.22/0.48    ~! [X0] : (v5_ordinal1(k1_xboole_0) & v1_funct_1(k1_xboole_0) & v5_relat_1(k1_xboole_0,X0) & v1_relat_1(k1_xboole_0))),
% 0.22/0.48    inference(negated_conjecture,[],[f9])).
% 0.22/0.48  fof(f9,conjecture,(
% 0.22/0.48    ! [X0] : (v5_ordinal1(k1_xboole_0) & v1_funct_1(k1_xboole_0) & v5_relat_1(k1_xboole_0,X0) & v1_relat_1(k1_xboole_0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_ordinal1)).
% 0.22/0.48  fof(f34,plain,(
% 0.22/0.48    ( ! [X1] : (v5_relat_1(k1_xboole_0,X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f23])).
% 0.22/0.48  fof(f23,plain,(
% 0.22/0.48    ! [X1] : v5_relat_1(k1_xboole_0,X1)),
% 0.22/0.48    inference(rectify,[],[f13])).
% 0.22/0.48  fof(f13,plain,(
% 0.22/0.48    ! [X0,X1] : v5_relat_1(k1_xboole_0,X1)),
% 0.22/0.48    inference(pure_predicate_removal,[],[f6])).
% 0.22/0.48  fof(f6,axiom,(
% 0.22/0.48    ! [X0,X1] : (v5_relat_1(k1_xboole_0,X1) & v4_relat_1(k1_xboole_0,X0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l222_relat_1)).
% 0.22/0.48  fof(f30,plain,(
% 0.22/0.48    ( ! [X0] : (v5_ordinal1(X0) | ~v1_xboole_0(X0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f15])).
% 0.22/0.48  fof(f15,plain,(
% 0.22/0.48    ! [X0] : (v5_ordinal1(X0) | ~v1_xboole_0(X0))),
% 0.22/0.48    inference(ennf_transformation,[],[f8])).
% 0.22/0.48  fof(f8,axiom,(
% 0.22/0.48    ! [X0] : (v1_xboole_0(X0) => v5_ordinal1(X0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc4_ordinal1)).
% 0.22/0.48  fof(f31,plain,(
% 0.22/0.48    ( ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f16])).
% 0.22/0.48  fof(f16,plain,(
% 0.22/0.48    ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0))),
% 0.22/0.48    inference(ennf_transformation,[],[f7])).
% 0.22/0.48  fof(f7,axiom,(
% 0.22/0.48    ! [X0] : (v1_xboole_0(X0) => v1_funct_1(X0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_funct_1)).
% 0.22/0.48  fof(f45,plain,(
% 0.22/0.48    v1_relat_1(k1_xboole_0)),
% 0.22/0.48    inference(resolution,[],[f44,f32])).
% 0.22/0.48  fof(f32,plain,(
% 0.22/0.48    ( ! [X0] : (r2_hidden(sK1(X0),X0) | v1_relat_1(X0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f22])).
% 0.22/0.48  fof(f22,plain,(
% 0.22/0.48    ! [X0] : (v1_relat_1(X0) | (! [X2,X3] : k4_tarski(X2,X3) != sK1(X0) & r2_hidden(sK1(X0),X0)))),
% 0.22/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f17,f21])).
% 0.22/0.48  fof(f21,plain,(
% 0.22/0.48    ! [X0] : (? [X1] : (! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)) => (! [X3,X2] : k4_tarski(X2,X3) != sK1(X0) & r2_hidden(sK1(X0),X0)))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f17,plain,(
% 0.22/0.48    ! [X0] : (v1_relat_1(X0) | ? [X1] : (! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)))),
% 0.22/0.48    inference(ennf_transformation,[],[f12])).
% 0.22/0.48  fof(f12,plain,(
% 0.22/0.48    ! [X0] : (! [X1] : ~(! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)) => v1_relat_1(X0))),
% 0.22/0.48    inference(unused_predicate_definition_removal,[],[f5])).
% 0.22/0.48  fof(f5,axiom,(
% 0.22/0.48    ! [X0] : (v1_relat_1(X0) <=> ! [X1] : ~(! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_relat_1)).
% 0.22/0.48  fof(f44,plain,(
% 0.22/0.48    ( ! [X1] : (~r2_hidden(X1,k1_xboole_0)) )),
% 0.22/0.48    inference(subsumption_resolution,[],[f43,f28])).
% 0.22/0.48  fof(f28,plain,(
% 0.22/0.48    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f4])).
% 0.22/0.48  fof(f4,axiom,(
% 0.22/0.48    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_xboole_1)).
% 0.22/0.48  fof(f43,plain,(
% 0.22/0.48    ( ! [X0,X1] : (~r2_hidden(X1,k1_xboole_0) | ~r1_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.48    inference(superposition,[],[f36,f29])).
% 0.22/0.48  fof(f29,plain,(
% 0.22/0.48    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f3])).
% 0.22/0.48  fof(f3,axiom,(
% 0.22/0.48    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).
% 0.22/0.48  fof(f36,plain,(
% 0.22/0.48    ( ! [X2,X0,X1] : (~r2_hidden(X2,k3_xboole_0(X0,X1)) | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f25])).
% 0.22/0.48  fof(f25,plain,(
% 0.22/0.48    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 0.22/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f18,f24])).
% 0.22/0.48  fof(f24,plain,(
% 0.22/0.48    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f18,plain,(
% 0.22/0.48    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 0.22/0.48    inference(ennf_transformation,[],[f11])).
% 0.22/0.48  fof(f11,plain,(
% 0.22/0.48    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.22/0.48    inference(rectify,[],[f2])).
% 0.22/0.48  fof(f2,axiom,(
% 0.22/0.48    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_0)).
% 0.22/0.48  % SZS output end Proof for theBenchmark
% 0.22/0.48  % (8536)------------------------------
% 0.22/0.48  % (8536)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.48  % (8536)Termination reason: Refutation
% 0.22/0.48  
% 0.22/0.48  % (8536)Memory used [KB]: 1535
% 0.22/0.48  % (8536)Time elapsed: 0.063 s
% 0.22/0.48  % (8536)------------------------------
% 0.22/0.48  % (8536)------------------------------
% 0.22/0.49  % (8517)Success in time 0.122 s
%------------------------------------------------------------------------------
