%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:56 EST 2020

% Result     : Theorem 1.45s
% Output     : Refutation 1.45s
% Verified   : 
% Statistics : Number of formulae       :   81 (1180 expanded)
%              Number of leaves         :   10 ( 381 expanded)
%              Depth                    :   22
%              Number of atoms          :  149 (1972 expanded)
%              Number of equality atoms :   54 (1167 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f700,plain,(
    $false ),
    inference(subsumption_resolution,[],[f699,f21])).

fof(f21,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f12])).

fof(f12,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X0))
       => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
            & r1_tarski(X1,X2) )
         => k1_xboole_0 = X1 ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f10,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
          & r1_tarski(X1,X2) )
       => k1_xboole_0 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).

fof(f699,plain,(
    k1_xboole_0 = sK1 ),
    inference(forward_demodulation,[],[f688,f469])).

fof(f469,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    inference(backward_demodulation,[],[f409,f468])).

fof(f468,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(forward_demodulation,[],[f467,f408])).

fof(f408,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(backward_demodulation,[],[f39,f406])).

fof(f406,plain,(
    ! [X2] : k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0) ),
    inference(duplicate_literal_removal,[],[f405])).

fof(f405,plain,(
    ! [X2] :
      ( k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0)
      | k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0) ) ),
    inference(resolution,[],[f391,f336])).

fof(f336,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X0,X1),X1)
      | k3_xboole_0(X0,k1_xboole_0) = X1 ) ),
    inference(forward_demodulation,[],[f335,f70])).

fof(f70,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k3_xboole_0(X0,X0)) ),
    inference(superposition,[],[f38,f39])).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) ),
    inference(definition_unfolding,[],[f24,f25,f25])).

fof(f25,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f24,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f335,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X0,X1),X1)
      | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1 ) ),
    inference(duplicate_literal_removal,[],[f321])).

fof(f321,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X0,X1),X1)
      | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1
      | r2_hidden(sK3(X0,X0,X1),X1)
      | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1 ) ),
    inference(resolution,[],[f50,f49])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(sK3(X0,X1,X2),X1)
      | r2_hidden(sK3(X0,X1,X2),X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2 ) ),
    inference(definition_unfolding,[],[f34,f25])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(sK3(X0,X1,X2),X1)
      | r2_hidden(sK3(X0,X1,X2),X2)
      | k4_xboole_0(X0,X1) = X2 ) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK3(X0,X1,X2),X0)
      | r2_hidden(sK3(X0,X1,X2),X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2 ) ),
    inference(definition_unfolding,[],[f33,f25])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK3(X0,X1,X2),X0)
      | r2_hidden(sK3(X0,X1,X2),X2)
      | k4_xboole_0(X0,X1) = X2 ) ),
    inference(cnf_transformation,[],[f1])).

fof(f391,plain,(
    ! [X12,X13] :
      ( ~ r2_hidden(sK3(X13,X13,k1_xboole_0),X12)
      | k1_xboole_0 = k3_xboole_0(X13,k1_xboole_0) ) ),
    inference(superposition,[],[f339,f39])).

fof(f339,plain,(
    ! [X6,X4,X5] :
      ( ~ r2_hidden(sK3(X4,X4,X5),k5_xboole_0(X6,k3_xboole_0(X6,X5)))
      | k3_xboole_0(X4,k1_xboole_0) = X5 ) ),
    inference(resolution,[],[f336,f53])).

fof(f53,plain,(
    ! [X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | ~ r2_hidden(X3,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f47])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f36,f25])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0] : k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f23,f25])).

fof(f23,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(f467,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = k5_xboole_0(X0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f410,f406])).

fof(f410,plain,(
    ! [X0] : k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = k3_xboole_0(X0,X0) ),
    inference(backward_demodulation,[],[f152,f406])).

fof(f152,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = k5_xboole_0(X0,k3_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) ),
    inference(superposition,[],[f38,f70])).

fof(f409,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X0)) ),
    inference(backward_demodulation,[],[f70,f406])).

fof(f688,plain,(
    sK1 = k5_xboole_0(sK1,sK1) ),
    inference(superposition,[],[f547,f468])).

fof(f547,plain,(
    ! [X3] : sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,X3)) ),
    inference(resolution,[],[f538,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ) ),
    inference(definition_unfolding,[],[f28,f25])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(f538,plain,(
    ! [X0] : r1_xboole_0(sK1,X0) ),
    inference(resolution,[],[f513,f63])).

fof(f63,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,k1_xboole_0)
      | r1_xboole_0(X1,X0) ) ),
    inference(superposition,[],[f43,f58])).

fof(f58,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) ),
    inference(resolution,[],[f56,f41])).

fof(f56,plain,(
    ! [X0] : r1_xboole_0(k1_xboole_0,X0) ),
    inference(resolution,[],[f43,f22])).

fof(f22,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2)))
      | r1_xboole_0(X0,X2) ) ),
    inference(definition_unfolding,[],[f30,f25])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
      | r1_xboole_0(X0,X2) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t106_xboole_1)).

fof(f513,plain,(
    r1_tarski(sK1,k1_xboole_0) ),
    inference(forward_demodulation,[],[f512,f406])).

fof(f512,plain,(
    r1_tarski(sK1,k3_xboole_0(sK2,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f511,f408])).

fof(f511,plain,(
    r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0)) ),
    inference(forward_demodulation,[],[f510,f406])).

fof(f510,plain,(
    r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0))) ),
    inference(subsumption_resolution,[],[f453,f468])).

fof(f453,plain,
    ( r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0)))
    | sK1 != k3_xboole_0(sK1,sK1) ),
    inference(backward_demodulation,[],[f261,f406])).

fof(f261,plain,
    ( sK1 != k3_xboole_0(sK1,sK1)
    | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(sK1,k1_xboole_0)))) ),
    inference(superposition,[],[f190,f152])).

fof(f190,plain,(
    ! [X0] :
      ( sK1 != k5_xboole_0(sK1,k3_xboole_0(sK1,X0))
      | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),X0))) ) ),
    inference(resolution,[],[f139,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X0 ) ),
    inference(definition_unfolding,[],[f27,f25])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) != X0
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f139,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(sK1,X0)
      | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),X0))) ) ),
    inference(resolution,[],[f136,f45])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_xboole_0(X0,X2)
      | r1_tarski(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) ) ),
    inference(definition_unfolding,[],[f31,f25])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_xboole_0(X0,X2)
      | r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_xboole_1)).

fof(f136,plain,(
    r1_tarski(sK1,k3_xboole_0(sK2,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f131,f70])).

fof(f131,plain,(
    r1_tarski(sK1,k5_xboole_0(sK2,k3_xboole_0(sK2,sK2))) ),
    inference(resolution,[],[f126,f99])).

fof(f99,plain,(
    r1_xboole_0(sK1,sK2) ),
    inference(resolution,[],[f95,f20])).

fof(f20,plain,(
    r1_tarski(sK1,k3_subset_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f13])).

fof(f95,plain,(
    ! [X2] :
      ( ~ r1_tarski(X2,k3_subset_1(sK0,sK2))
      | r1_xboole_0(X2,sK2) ) ),
    inference(superposition,[],[f43,f80])).

fof(f80,plain,(
    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,k3_xboole_0(sK0,sK2)) ),
    inference(resolution,[],[f40,f18])).

fof(f18,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1) ) ),
    inference(definition_unfolding,[],[f26,f25])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(f126,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(sK1,X0)
      | r1_tarski(sK1,k5_xboole_0(sK2,k3_xboole_0(sK2,X0))) ) ),
    inference(resolution,[],[f45,f19])).

fof(f19,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f13])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n018.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 17:27:42 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.51  % (31088)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.51  % (31090)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.52  % (31085)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.53  % (31098)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.53  % (31093)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.53  % (31084)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.53  % (31096)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.53  % (31087)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.53  % (31104)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.53  % (31086)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.53  % (31104)Refutation not found, incomplete strategy% (31104)------------------------------
% 0.22/0.53  % (31104)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (31104)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (31104)Memory used [KB]: 10618
% 0.22/0.53  % (31104)Time elapsed: 0.110 s
% 0.22/0.53  % (31104)------------------------------
% 0.22/0.53  % (31104)------------------------------
% 0.22/0.53  % (31106)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.54  % (31095)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.22/0.54  % (31094)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.54  % (31093)Refutation not found, incomplete strategy% (31093)------------------------------
% 0.22/0.54  % (31093)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (31093)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (31093)Memory used [KB]: 10618
% 0.22/0.54  % (31093)Time elapsed: 0.132 s
% 0.22/0.54  % (31093)------------------------------
% 0.22/0.54  % (31093)------------------------------
% 0.22/0.54  % (31097)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.54  % (31097)Refutation not found, incomplete strategy% (31097)------------------------------
% 0.22/0.54  % (31097)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (31097)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (31097)Memory used [KB]: 6140
% 0.22/0.54  % (31097)Time elapsed: 0.002 s
% 0.22/0.54  % (31097)------------------------------
% 0.22/0.54  % (31097)------------------------------
% 0.22/0.54  % (31101)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.54  % (31099)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.22/0.54  % (31108)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.22/0.54  % (31099)Refutation not found, incomplete strategy% (31099)------------------------------
% 0.22/0.54  % (31099)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (31099)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (31099)Memory used [KB]: 10618
% 0.22/0.54  % (31099)Time elapsed: 0.091 s
% 0.22/0.54  % (31099)------------------------------
% 0.22/0.54  % (31099)------------------------------
% 0.22/0.54  % (31082)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.54  % (31082)Refutation not found, incomplete strategy% (31082)------------------------------
% 0.22/0.54  % (31082)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (31082)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (31082)Memory used [KB]: 1663
% 0.22/0.54  % (31082)Time elapsed: 0.123 s
% 0.22/0.54  % (31082)------------------------------
% 0.22/0.54  % (31082)------------------------------
% 0.22/0.54  % (31109)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.55  % (31092)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.55  % (31083)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.55  % (31103)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.55  % (31092)Refutation not found, incomplete strategy% (31092)------------------------------
% 0.22/0.55  % (31092)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.55  % (31092)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.55  % (31092)Memory used [KB]: 10618
% 0.22/0.55  % (31092)Time elapsed: 0.137 s
% 0.22/0.55  % (31092)------------------------------
% 0.22/0.55  % (31092)------------------------------
% 0.22/0.55  % (31105)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 1.45/0.55  % (31089)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 1.45/0.55  % (31091)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.45/0.55  % (31091)Refutation not found, incomplete strategy% (31091)------------------------------
% 1.45/0.55  % (31091)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.45/0.55  % (31091)Termination reason: Refutation not found, incomplete strategy
% 1.45/0.55  
% 1.45/0.55  % (31091)Memory used [KB]: 10618
% 1.45/0.55  % (31091)Time elapsed: 0.102 s
% 1.45/0.55  % (31091)------------------------------
% 1.45/0.55  % (31091)------------------------------
% 1.45/0.55  % (31102)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 1.45/0.56  % (31110)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.45/0.56  % (31107)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 1.45/0.56  % (31088)Refutation found. Thanks to Tanya!
% 1.45/0.56  % SZS status Theorem for theBenchmark
% 1.45/0.56  % SZS output start Proof for theBenchmark
% 1.45/0.56  fof(f700,plain,(
% 1.45/0.56    $false),
% 1.45/0.56    inference(subsumption_resolution,[],[f699,f21])).
% 1.45/0.56  fof(f21,plain,(
% 1.45/0.56    k1_xboole_0 != sK1),
% 1.45/0.56    inference(cnf_transformation,[],[f13])).
% 1.45/0.56  fof(f13,plain,(
% 1.45/0.56    ? [X0,X1,X2] : (k1_xboole_0 != X1 & r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 1.45/0.56    inference(flattening,[],[f12])).
% 1.45/0.56  fof(f12,plain,(
% 1.45/0.56    ? [X0,X1,X2] : ((k1_xboole_0 != X1 & (r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 1.45/0.56    inference(ennf_transformation,[],[f11])).
% 1.45/0.56  fof(f11,negated_conjecture,(
% 1.45/0.56    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 1.45/0.56    inference(negated_conjecture,[],[f10])).
% 1.45/0.56  fof(f10,conjecture,(
% 1.45/0.56    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).
% 1.45/0.56  fof(f699,plain,(
% 1.45/0.56    k1_xboole_0 = sK1),
% 1.45/0.56    inference(forward_demodulation,[],[f688,f469])).
% 1.45/0.56  fof(f469,plain,(
% 1.45/0.56    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,X0)) )),
% 1.45/0.56    inference(backward_demodulation,[],[f409,f468])).
% 1.45/0.56  fof(f468,plain,(
% 1.45/0.56    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 1.45/0.56    inference(forward_demodulation,[],[f467,f408])).
% 1.45/0.56  fof(f408,plain,(
% 1.45/0.56    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.45/0.56    inference(backward_demodulation,[],[f39,f406])).
% 1.45/0.56  fof(f406,plain,(
% 1.45/0.56    ( ! [X2] : (k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0)) )),
% 1.45/0.56    inference(duplicate_literal_removal,[],[f405])).
% 1.45/0.56  fof(f405,plain,(
% 1.45/0.56    ( ! [X2] : (k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0) | k1_xboole_0 = k3_xboole_0(X2,k1_xboole_0)) )),
% 1.45/0.56    inference(resolution,[],[f391,f336])).
% 1.45/0.56  fof(f336,plain,(
% 1.45/0.56    ( ! [X0,X1] : (r2_hidden(sK3(X0,X0,X1),X1) | k3_xboole_0(X0,k1_xboole_0) = X1) )),
% 1.45/0.56    inference(forward_demodulation,[],[f335,f70])).
% 1.45/0.56  fof(f70,plain,(
% 1.45/0.56    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k3_xboole_0(X0,X0))) )),
% 1.45/0.56    inference(superposition,[],[f38,f39])).
% 1.45/0.56  fof(f38,plain,(
% 1.45/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1))))) )),
% 1.45/0.56    inference(definition_unfolding,[],[f24,f25,f25])).
% 1.45/0.56  fof(f25,plain,(
% 1.45/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.45/0.56    inference(cnf_transformation,[],[f2])).
% 1.45/0.56  fof(f2,axiom,(
% 1.45/0.56    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.45/0.56  fof(f24,plain,(
% 1.45/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.45/0.56    inference(cnf_transformation,[],[f6])).
% 1.45/0.56  fof(f6,axiom,(
% 1.45/0.56    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.45/0.56  fof(f335,plain,(
% 1.45/0.56    ( ! [X0,X1] : (r2_hidden(sK3(X0,X0,X1),X1) | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1) )),
% 1.45/0.56    inference(duplicate_literal_removal,[],[f321])).
% 1.45/0.56  fof(f321,plain,(
% 1.45/0.56    ( ! [X0,X1] : (r2_hidden(sK3(X0,X0,X1),X1) | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1 | r2_hidden(sK3(X0,X0,X1),X1) | k5_xboole_0(X0,k3_xboole_0(X0,X0)) = X1) )),
% 1.45/0.56    inference(resolution,[],[f50,f49])).
% 1.45/0.56  fof(f49,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r2_hidden(sK3(X0,X1,X2),X1) | r2_hidden(sK3(X0,X1,X2),X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2) )),
% 1.45/0.56    inference(definition_unfolding,[],[f34,f25])).
% 1.45/0.56  fof(f34,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r2_hidden(sK3(X0,X1,X2),X1) | r2_hidden(sK3(X0,X1,X2),X2) | k4_xboole_0(X0,X1) = X2) )),
% 1.45/0.56    inference(cnf_transformation,[],[f1])).
% 1.45/0.56  fof(f1,axiom,(
% 1.45/0.56    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).
% 1.45/0.56  fof(f50,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (r2_hidden(sK3(X0,X1,X2),X0) | r2_hidden(sK3(X0,X1,X2),X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2) )),
% 1.45/0.56    inference(definition_unfolding,[],[f33,f25])).
% 1.45/0.56  fof(f33,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (r2_hidden(sK3(X0,X1,X2),X0) | r2_hidden(sK3(X0,X1,X2),X2) | k4_xboole_0(X0,X1) = X2) )),
% 1.45/0.56    inference(cnf_transformation,[],[f1])).
% 1.45/0.56  fof(f391,plain,(
% 1.45/0.56    ( ! [X12,X13] : (~r2_hidden(sK3(X13,X13,k1_xboole_0),X12) | k1_xboole_0 = k3_xboole_0(X13,k1_xboole_0)) )),
% 1.45/0.56    inference(superposition,[],[f339,f39])).
% 1.45/0.56  fof(f339,plain,(
% 1.45/0.56    ( ! [X6,X4,X5] : (~r2_hidden(sK3(X4,X4,X5),k5_xboole_0(X6,k3_xboole_0(X6,X5))) | k3_xboole_0(X4,k1_xboole_0) = X5) )),
% 1.45/0.56    inference(resolution,[],[f336,f53])).
% 1.45/0.56  fof(f53,plain,(
% 1.45/0.56    ( ! [X0,X3,X1] : (~r2_hidden(X3,X1) | ~r2_hidden(X3,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) )),
% 1.45/0.56    inference(equality_resolution,[],[f47])).
% 1.45/0.56  fof(f47,plain,(
% 1.45/0.56    ( ! [X2,X0,X3,X1] : (~r2_hidden(X3,X1) | ~r2_hidden(X3,X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2) )),
% 1.45/0.56    inference(definition_unfolding,[],[f36,f25])).
% 1.45/0.56  fof(f36,plain,(
% 1.45/0.56    ( ! [X2,X0,X3,X1] : (~r2_hidden(X3,X1) | ~r2_hidden(X3,X2) | k4_xboole_0(X0,X1) != X2) )),
% 1.45/0.56    inference(cnf_transformation,[],[f1])).
% 1.45/0.56  fof(f39,plain,(
% 1.45/0.56    ( ! [X0] : (k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0) )),
% 1.45/0.56    inference(definition_unfolding,[],[f23,f25])).
% 1.45/0.56  fof(f23,plain,(
% 1.45/0.56    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.45/0.56    inference(cnf_transformation,[],[f5])).
% 1.45/0.56  fof(f5,axiom,(
% 1.45/0.56    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).
% 1.45/0.56  fof(f467,plain,(
% 1.45/0.56    ( ! [X0] : (k3_xboole_0(X0,X0) = k5_xboole_0(X0,k1_xboole_0)) )),
% 1.45/0.56    inference(forward_demodulation,[],[f410,f406])).
% 1.45/0.56  fof(f410,plain,(
% 1.45/0.56    ( ! [X0] : (k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = k3_xboole_0(X0,X0)) )),
% 1.45/0.56    inference(backward_demodulation,[],[f152,f406])).
% 1.45/0.56  fof(f152,plain,(
% 1.45/0.56    ( ! [X0] : (k3_xboole_0(X0,X0) = k5_xboole_0(X0,k3_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)))) )),
% 1.45/0.56    inference(superposition,[],[f38,f70])).
% 1.45/0.56  fof(f409,plain,(
% 1.45/0.56    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X0))) )),
% 1.45/0.56    inference(backward_demodulation,[],[f70,f406])).
% 1.45/0.56  fof(f688,plain,(
% 1.45/0.56    sK1 = k5_xboole_0(sK1,sK1)),
% 1.45/0.56    inference(superposition,[],[f547,f468])).
% 1.45/0.56  fof(f547,plain,(
% 1.45/0.56    ( ! [X3] : (sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,X3))) )),
% 1.45/0.56    inference(resolution,[],[f538,f41])).
% 1.45/0.56  fof(f41,plain,(
% 1.45/0.56    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0) )),
% 1.45/0.56    inference(definition_unfolding,[],[f28,f25])).
% 1.45/0.56  fof(f28,plain,(
% 1.45/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 1.45/0.56    inference(cnf_transformation,[],[f7])).
% 1.45/0.56  fof(f7,axiom,(
% 1.45/0.56    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).
% 1.45/0.56  fof(f538,plain,(
% 1.45/0.56    ( ! [X0] : (r1_xboole_0(sK1,X0)) )),
% 1.45/0.56    inference(resolution,[],[f513,f63])).
% 1.45/0.56  fof(f63,plain,(
% 1.45/0.56    ( ! [X0,X1] : (~r1_tarski(X1,k1_xboole_0) | r1_xboole_0(X1,X0)) )),
% 1.45/0.56    inference(superposition,[],[f43,f58])).
% 1.45/0.56  fof(f58,plain,(
% 1.45/0.56    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0))) )),
% 1.45/0.56    inference(resolution,[],[f56,f41])).
% 1.45/0.56  fof(f56,plain,(
% 1.45/0.56    ( ! [X0] : (r1_xboole_0(k1_xboole_0,X0)) )),
% 1.45/0.56    inference(resolution,[],[f43,f22])).
% 1.45/0.56  fof(f22,plain,(
% 1.45/0.56    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.45/0.56    inference(cnf_transformation,[],[f4])).
% 1.45/0.56  fof(f4,axiom,(
% 1.45/0.56    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).
% 1.45/0.56  fof(f43,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r1_tarski(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) | r1_xboole_0(X0,X2)) )),
% 1.45/0.56    inference(definition_unfolding,[],[f30,f25])).
% 1.45/0.56  fof(f30,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r1_tarski(X0,k4_xboole_0(X1,X2)) | r1_xboole_0(X0,X2)) )),
% 1.45/0.56    inference(cnf_transformation,[],[f15])).
% 1.45/0.56  fof(f15,plain,(
% 1.45/0.56    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.45/0.56    inference(ennf_transformation,[],[f3])).
% 1.45/0.56  fof(f3,axiom,(
% 1.45/0.56    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t106_xboole_1)).
% 1.45/0.56  fof(f513,plain,(
% 1.45/0.56    r1_tarski(sK1,k1_xboole_0)),
% 1.45/0.56    inference(forward_demodulation,[],[f512,f406])).
% 1.45/0.56  fof(f512,plain,(
% 1.45/0.56    r1_tarski(sK1,k3_xboole_0(sK2,k1_xboole_0))),
% 1.45/0.56    inference(forward_demodulation,[],[f511,f408])).
% 1.45/0.56  fof(f511,plain,(
% 1.45/0.56    r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0))),
% 1.45/0.56    inference(forward_demodulation,[],[f510,f406])).
% 1.45/0.56  fof(f510,plain,(
% 1.45/0.56    r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0)))),
% 1.45/0.56    inference(subsumption_resolution,[],[f453,f468])).
% 1.45/0.56  fof(f453,plain,(
% 1.45/0.56    r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k1_xboole_0))) | sK1 != k3_xboole_0(sK1,sK1)),
% 1.45/0.56    inference(backward_demodulation,[],[f261,f406])).
% 1.45/0.56  fof(f261,plain,(
% 1.45/0.56    sK1 != k3_xboole_0(sK1,sK1) | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(sK1,k1_xboole_0))))),
% 1.45/0.56    inference(superposition,[],[f190,f152])).
% 1.45/0.56  fof(f190,plain,(
% 1.45/0.56    ( ! [X0] : (sK1 != k5_xboole_0(sK1,k3_xboole_0(sK1,X0)) | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),X0)))) )),
% 1.45/0.56    inference(resolution,[],[f139,f42])).
% 1.45/0.56  fof(f42,plain,(
% 1.45/0.56    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X0) )),
% 1.45/0.56    inference(definition_unfolding,[],[f27,f25])).
% 1.45/0.56  fof(f27,plain,(
% 1.45/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) != X0 | r1_xboole_0(X0,X1)) )),
% 1.45/0.56    inference(cnf_transformation,[],[f7])).
% 1.45/0.56  fof(f139,plain,(
% 1.45/0.56    ( ! [X0] : (~r1_xboole_0(sK1,X0) | r1_tarski(sK1,k5_xboole_0(k3_xboole_0(sK2,k1_xboole_0),k3_xboole_0(k3_xboole_0(sK2,k1_xboole_0),X0)))) )),
% 1.45/0.56    inference(resolution,[],[f136,f45])).
% 1.45/0.56  fof(f45,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | ~r1_xboole_0(X0,X2) | r1_tarski(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2)))) )),
% 1.45/0.56    inference(definition_unfolding,[],[f31,f25])).
% 1.45/0.56  fof(f31,plain,(
% 1.45/0.56    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | ~r1_xboole_0(X0,X2) | r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 1.45/0.56    inference(cnf_transformation,[],[f17])).
% 1.45/0.56  fof(f17,plain,(
% 1.45/0.56    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | ~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1))),
% 1.45/0.56    inference(flattening,[],[f16])).
% 1.45/0.56  fof(f16,plain,(
% 1.45/0.56    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | (~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)))),
% 1.45/0.56    inference(ennf_transformation,[],[f8])).
% 1.45/0.56  fof(f8,axiom,(
% 1.45/0.56    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_xboole_1)).
% 1.45/0.56  fof(f136,plain,(
% 1.45/0.56    r1_tarski(sK1,k3_xboole_0(sK2,k1_xboole_0))),
% 1.45/0.56    inference(forward_demodulation,[],[f131,f70])).
% 1.45/0.56  fof(f131,plain,(
% 1.45/0.56    r1_tarski(sK1,k5_xboole_0(sK2,k3_xboole_0(sK2,sK2)))),
% 1.45/0.56    inference(resolution,[],[f126,f99])).
% 1.45/0.56  fof(f99,plain,(
% 1.45/0.56    r1_xboole_0(sK1,sK2)),
% 1.45/0.56    inference(resolution,[],[f95,f20])).
% 1.45/0.56  fof(f20,plain,(
% 1.45/0.56    r1_tarski(sK1,k3_subset_1(sK0,sK2))),
% 1.45/0.56    inference(cnf_transformation,[],[f13])).
% 1.45/0.56  fof(f95,plain,(
% 1.45/0.56    ( ! [X2] : (~r1_tarski(X2,k3_subset_1(sK0,sK2)) | r1_xboole_0(X2,sK2)) )),
% 1.45/0.56    inference(superposition,[],[f43,f80])).
% 1.45/0.56  fof(f80,plain,(
% 1.45/0.56    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,k3_xboole_0(sK0,sK2))),
% 1.45/0.56    inference(resolution,[],[f40,f18])).
% 1.45/0.56  fof(f18,plain,(
% 1.45/0.56    m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 1.45/0.56    inference(cnf_transformation,[],[f13])).
% 1.45/0.56  fof(f40,plain,(
% 1.45/0.56    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)) )),
% 1.45/0.56    inference(definition_unfolding,[],[f26,f25])).
% 1.45/0.56  fof(f26,plain,(
% 1.45/0.56    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)) )),
% 1.45/0.56    inference(cnf_transformation,[],[f14])).
% 1.45/0.56  fof(f14,plain,(
% 1.45/0.56    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.45/0.56    inference(ennf_transformation,[],[f9])).
% 1.45/0.56  fof(f9,axiom,(
% 1.45/0.56    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 1.45/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).
% 1.45/0.56  fof(f126,plain,(
% 1.45/0.56    ( ! [X0] : (~r1_xboole_0(sK1,X0) | r1_tarski(sK1,k5_xboole_0(sK2,k3_xboole_0(sK2,X0)))) )),
% 1.45/0.56    inference(resolution,[],[f45,f19])).
% 1.45/0.56  fof(f19,plain,(
% 1.45/0.56    r1_tarski(sK1,sK2)),
% 1.45/0.56    inference(cnf_transformation,[],[f13])).
% 1.45/0.56  % SZS output end Proof for theBenchmark
% 1.45/0.56  % (31088)------------------------------
% 1.45/0.56  % (31088)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.45/0.56  % (31088)Termination reason: Refutation
% 1.45/0.56  
% 1.45/0.56  % (31088)Memory used [KB]: 6652
% 1.45/0.56  % (31088)Time elapsed: 0.111 s
% 1.45/0.56  % (31088)------------------------------
% 1.45/0.56  % (31088)------------------------------
% 1.45/0.56  % (31100)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.45/0.56  % (31081)Success in time 0.184 s
%------------------------------------------------------------------------------
