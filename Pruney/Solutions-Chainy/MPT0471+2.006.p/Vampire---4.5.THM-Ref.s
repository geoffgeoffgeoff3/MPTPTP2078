%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:48:05 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   54 (  72 expanded)
%              Number of leaves         :   16 (  23 expanded)
%              Depth                    :   15
%              Number of atoms          :   63 (  82 expanded)
%              Number of equality atoms :   48 (  67 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f54,plain,(
    $false ),
    inference(subsumption_resolution,[],[f53,f21])).

fof(f21,plain,(
    k1_xboole_0 != k3_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    k1_xboole_0 != k3_relat_1(k1_xboole_0) ),
    inference(flattening,[],[f17])).

fof(f17,negated_conjecture,(
    k1_xboole_0 != k3_relat_1(k1_xboole_0) ),
    inference(negated_conjecture,[],[f16])).

fof(f16,conjecture,(
    k1_xboole_0 = k3_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_relat_1)).

fof(f53,plain,(
    k1_xboole_0 = k3_relat_1(k1_xboole_0) ),
    inference(forward_demodulation,[],[f52,f27])).

fof(f27,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).

fof(f52,plain,(
    k3_relat_1(k1_xboole_0) = k3_tarski(k1_zfmisc_1(k1_xboole_0)) ),
    inference(forward_demodulation,[],[f51,f45])).

fof(f45,plain,(
    k1_zfmisc_1(k1_xboole_0) = k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(definition_unfolding,[],[f22,f43])).

fof(f43,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f28,f42])).

fof(f42,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f32,f41])).

fof(f41,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f33,f40])).

fof(f40,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f34,f39])).

fof(f39,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f35,f38])).

fof(f38,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f36,f37])).

fof(f37,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t75_enumset1)).

fof(f36,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_enumset1)).

fof(f35,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).

fof(f34,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(f33,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f32,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f28,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(f22,plain,(
    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_zfmisc_1)).

fof(f51,plain,(
    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f50,f23])).

fof(f23,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(f50,plain,(
    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_xboole_0)) ),
    inference(forward_demodulation,[],[f49,f24])).

fof(f24,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f15])).

fof(f49,plain,(
    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k2_relat_1(k1_xboole_0))) ),
    inference(resolution,[],[f48,f46])).

fof(f46,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(definition_unfolding,[],[f25,f26])).

fof(f26,plain,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).

fof(f25,plain,(
    ! [X0] : v1_xboole_0(k1_subset_1(X0)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] : v1_xboole_0(k1_subset_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc13_subset_1)).

fof(f48,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | k3_relat_1(X0) = k3_tarski(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0))) ) ),
    inference(resolution,[],[f47,f29])).

fof(f29,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_relat_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

fof(f47,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k3_relat_1(X0) = k3_tarski(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0))) ) ),
    inference(definition_unfolding,[],[f30,f44])).

fof(f44,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f31,f42])).

fof(f31,plain,(
    ! [X0,X1] : k3_tarski(k2_tarski(X0,X1)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k3_tarski(k2_tarski(X0,X1)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t93_zfmisc_1)).

fof(f30,plain,(
    ! [X0] :
      ( k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_relat_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:52:15 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.21/0.46  % (27422)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 0.21/0.46  % (27419)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.21/0.46  % (27419)Refutation found. Thanks to Tanya!
% 0.21/0.46  % SZS status Theorem for theBenchmark
% 0.21/0.46  % SZS output start Proof for theBenchmark
% 0.21/0.46  fof(f54,plain,(
% 0.21/0.46    $false),
% 0.21/0.46    inference(subsumption_resolution,[],[f53,f21])).
% 0.21/0.46  fof(f21,plain,(
% 0.21/0.46    k1_xboole_0 != k3_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(cnf_transformation,[],[f18])).
% 0.21/0.46  fof(f18,plain,(
% 0.21/0.46    k1_xboole_0 != k3_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(flattening,[],[f17])).
% 0.21/0.46  fof(f17,negated_conjecture,(
% 0.21/0.46    ~k1_xboole_0 = k3_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(negated_conjecture,[],[f16])).
% 0.21/0.46  fof(f16,conjecture,(
% 0.21/0.46    k1_xboole_0 = k3_relat_1(k1_xboole_0)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_relat_1)).
% 0.21/0.46  fof(f53,plain,(
% 0.21/0.46    k1_xboole_0 = k3_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(forward_demodulation,[],[f52,f27])).
% 0.21/0.46  fof(f27,plain,(
% 0.21/0.46    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 0.21/0.46    inference(cnf_transformation,[],[f10])).
% 0.21/0.46  fof(f10,axiom,(
% 0.21/0.46    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).
% 0.21/0.46  fof(f52,plain,(
% 0.21/0.46    k3_relat_1(k1_xboole_0) = k3_tarski(k1_zfmisc_1(k1_xboole_0))),
% 0.21/0.46    inference(forward_demodulation,[],[f51,f45])).
% 0.21/0.46  fof(f45,plain,(
% 0.21/0.46    k1_zfmisc_1(k1_xboole_0) = k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)),
% 0.21/0.46    inference(definition_unfolding,[],[f22,f43])).
% 0.21/0.46  fof(f43,plain,(
% 0.21/0.46    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f28,f42])).
% 0.21/0.46  fof(f42,plain,(
% 0.21/0.46    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f32,f41])).
% 0.21/0.46  fof(f41,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f33,f40])).
% 0.21/0.46  fof(f40,plain,(
% 0.21/0.46    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f34,f39])).
% 0.21/0.46  fof(f39,plain,(
% 0.21/0.46    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f35,f38])).
% 0.21/0.46  fof(f38,plain,(
% 0.21/0.46    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 0.21/0.46    inference(definition_unfolding,[],[f36,f37])).
% 0.21/0.46  fof(f37,plain,(
% 0.21/0.46    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f7])).
% 0.21/0.46  fof(f7,axiom,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t75_enumset1)).
% 0.21/0.46  fof(f36,plain,(
% 0.21/0.46    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f6])).
% 0.21/0.46  fof(f6,axiom,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_enumset1)).
% 0.21/0.46  fof(f35,plain,(
% 0.21/0.46    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f5])).
% 0.21/0.46  fof(f5,axiom,(
% 0.21/0.46    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).
% 0.21/0.46  fof(f34,plain,(
% 0.21/0.46    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f4])).
% 0.21/0.46  fof(f4,axiom,(
% 0.21/0.46    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).
% 0.21/0.46  fof(f33,plain,(
% 0.21/0.46    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f3])).
% 0.21/0.46  fof(f3,axiom,(
% 0.21/0.46    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 0.21/0.46  fof(f32,plain,(
% 0.21/0.46    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f2])).
% 0.21/0.46  fof(f2,axiom,(
% 0.21/0.46    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.21/0.46  fof(f28,plain,(
% 0.21/0.46    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f1])).
% 0.21/0.46  fof(f1,axiom,(
% 0.21/0.46    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).
% 0.21/0.46  fof(f22,plain,(
% 0.21/0.46    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0)),
% 0.21/0.46    inference(cnf_transformation,[],[f8])).
% 0.21/0.46  fof(f8,axiom,(
% 0.21/0.46    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_zfmisc_1)).
% 0.21/0.46  fof(f51,plain,(
% 0.21/0.46    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0))),
% 0.21/0.46    inference(forward_demodulation,[],[f50,f23])).
% 0.21/0.46  fof(f23,plain,(
% 0.21/0.46    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(cnf_transformation,[],[f15])).
% 0.21/0.46  fof(f15,axiom,(
% 0.21/0.46    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).
% 0.21/0.46  fof(f50,plain,(
% 0.21/0.46    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_xboole_0))),
% 0.21/0.46    inference(forward_demodulation,[],[f49,f24])).
% 0.21/0.46  fof(f24,plain,(
% 0.21/0.46    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 0.21/0.46    inference(cnf_transformation,[],[f15])).
% 0.21/0.46  fof(f49,plain,(
% 0.21/0.46    k3_relat_1(k1_xboole_0) = k3_tarski(k6_enumset1(k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k1_relat_1(k1_xboole_0),k2_relat_1(k1_xboole_0)))),
% 0.21/0.46    inference(resolution,[],[f48,f46])).
% 0.21/0.46  fof(f46,plain,(
% 0.21/0.46    v1_xboole_0(k1_xboole_0)),
% 0.21/0.46    inference(definition_unfolding,[],[f25,f26])).
% 0.21/0.46  fof(f26,plain,(
% 0.21/0.46    ( ! [X0] : (k1_xboole_0 = k1_subset_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f11])).
% 0.21/0.46  fof(f11,axiom,(
% 0.21/0.46    ! [X0] : k1_xboole_0 = k1_subset_1(X0)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).
% 0.21/0.46  fof(f25,plain,(
% 0.21/0.46    ( ! [X0] : (v1_xboole_0(k1_subset_1(X0))) )),
% 0.21/0.46    inference(cnf_transformation,[],[f12])).
% 0.21/0.46  fof(f12,axiom,(
% 0.21/0.46    ! [X0] : v1_xboole_0(k1_subset_1(X0))),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc13_subset_1)).
% 0.21/0.46  fof(f48,plain,(
% 0.21/0.46    ( ! [X0] : (~v1_xboole_0(X0) | k3_relat_1(X0) = k3_tarski(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0)))) )),
% 0.21/0.46    inference(resolution,[],[f47,f29])).
% 0.21/0.46  fof(f29,plain,(
% 0.21/0.46    ( ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f19])).
% 0.21/0.46  fof(f19,plain,(
% 0.21/0.46    ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0))),
% 0.21/0.46    inference(ennf_transformation,[],[f13])).
% 0.21/0.46  fof(f13,axiom,(
% 0.21/0.46    ! [X0] : (v1_xboole_0(X0) => v1_relat_1(X0))),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).
% 0.21/0.46  fof(f47,plain,(
% 0.21/0.46    ( ! [X0] : (~v1_relat_1(X0) | k3_relat_1(X0) = k3_tarski(k6_enumset1(k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k1_relat_1(X0),k2_relat_1(X0)))) )),
% 0.21/0.46    inference(definition_unfolding,[],[f30,f44])).
% 0.21/0.46  fof(f44,plain,(
% 0.21/0.46    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 0.21/0.46    inference(definition_unfolding,[],[f31,f42])).
% 0.21/0.46  fof(f31,plain,(
% 0.21/0.46    ( ! [X0,X1] : (k3_tarski(k2_tarski(X0,X1)) = k2_xboole_0(X0,X1)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f9])).
% 0.21/0.46  fof(f9,axiom,(
% 0.21/0.46    ! [X0,X1] : k3_tarski(k2_tarski(X0,X1)) = k2_xboole_0(X0,X1)),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t93_zfmisc_1)).
% 0.21/0.46  fof(f30,plain,(
% 0.21/0.46    ( ! [X0] : (k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 0.21/0.46    inference(cnf_transformation,[],[f20])).
% 0.21/0.46  fof(f20,plain,(
% 0.21/0.46    ! [X0] : (k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 0.21/0.46    inference(ennf_transformation,[],[f14])).
% 0.21/0.46  fof(f14,axiom,(
% 0.21/0.46    ! [X0] : (v1_relat_1(X0) => k3_relat_1(X0) = k2_xboole_0(k1_relat_1(X0),k2_relat_1(X0)))),
% 0.21/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_relat_1)).
% 0.21/0.47  % SZS output end Proof for theBenchmark
% 0.21/0.47  % (27419)------------------------------
% 0.21/0.47  % (27419)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.47  % (27419)Termination reason: Refutation
% 0.21/0.47  
% 0.21/0.47  % (27419)Memory used [KB]: 6012
% 0.21/0.47  % (27419)Time elapsed: 0.042 s
% 0.21/0.47  % (27419)------------------------------
% 0.21/0.47  % (27419)------------------------------
% 0.21/0.47  % (27402)Success in time 0.111 s
%------------------------------------------------------------------------------
