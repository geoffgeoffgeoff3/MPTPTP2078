%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:50 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 299 expanded)
%              Number of leaves         :   13 (  77 expanded)
%              Depth                    :   23
%              Number of atoms          :  184 ( 715 expanded)
%              Number of equality atoms :   16 (  60 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f318,plain,(
    $false ),
    inference(subsumption_resolution,[],[f317,f32])).

fof(f32,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f317,plain,(
    v1_xboole_0(k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f316,f162])).

fof(f162,plain,(
    r2_hidden(sK1,k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f143,f80])).

fof(f80,plain,(
    ! [X2,X1] :
      ( ~ r1_tarski(k1_zfmisc_1(X1),X2)
      | r2_hidden(X1,X2) ) ),
    inference(resolution,[],[f50,f66])).

fof(f66,plain,(
    ! [X0] : r2_hidden(X0,k1_zfmisc_1(X0)) ),
    inference(subsumption_resolution,[],[f62,f32])).

fof(f62,plain,(
    ! [X0] :
      ( r2_hidden(X0,k1_zfmisc_1(X0))
      | v1_xboole_0(k1_zfmisc_1(X0)) ) ),
    inference(resolution,[],[f40,f60])).

fof(f60,plain,(
    ! [X0] : m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(forward_demodulation,[],[f36,f33])).

fof(f33,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(f36,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,X0)
      | r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,X0)
      | r2_hidden(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

% (3880)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% (3875)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
fof(f143,plain,(
    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0)) ),
    inference(duplicate_literal_removal,[],[f140])).

fof(f140,plain,
    ( r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0))
    | r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f89,f120])).

fof(f120,plain,(
    ! [X7] :
      ( r1_tarski(sK3(k1_zfmisc_1(sK1),X7),sK0)
      | r1_tarski(k1_zfmisc_1(sK1),X7) ) ),
    inference(resolution,[],[f111,f99])).

fof(f99,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,sK1)
      | r1_tarski(X0,sK0) ) ),
    inference(resolution,[],[f98,f54])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1)
      | r1_tarski(X0,X2) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(f98,plain,(
    r1_tarski(sK1,sK0) ),
    inference(resolution,[],[f95,f29])).

fof(f29,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f17])).

fof(f17,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X0))
       => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
            & r1_tarski(X1,X2) )
         => k1_xboole_0 = X1 ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f15,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
          & r1_tarski(X1,X2) )
       => k1_xboole_0 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).

fof(f95,plain,(
    ! [X7] :
      ( ~ r1_tarski(X7,sK2)
      | r1_tarski(X7,sK0) ) ),
    inference(resolution,[],[f54,f68])).

fof(f68,plain,(
    r1_tarski(sK2,sK0) ),
    inference(forward_demodulation,[],[f67,f35])).

fof(f35,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).

fof(f67,plain,(
    r1_tarski(sK2,k3_tarski(k1_zfmisc_1(sK0))) ),
    inference(resolution,[],[f65,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | r1_tarski(X0,k3_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(X0,k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).

fof(f65,plain,(
    r2_hidden(sK2,k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f61,f32])).

fof(f61,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK0))
    | v1_xboole_0(k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f40,f28])).

fof(f28,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f18])).

fof(f111,plain,(
    ! [X0,X1] :
      ( r1_tarski(sK3(k1_zfmisc_1(X0),X1),X0)
      | r1_tarski(k1_zfmisc_1(X0),X1) ) ),
    inference(superposition,[],[f71,f35])).

fof(f71,plain,(
    ! [X0,X1] :
      ( r1_tarski(sK3(X0,X1),k3_tarski(X0))
      | r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f51,f41])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f89,plain,(
    ! [X6,X5] :
      ( ~ r1_tarski(sK3(X5,k1_zfmisc_1(X6)),X6)
      | r1_tarski(X5,k1_zfmisc_1(X6)) ) ),
    inference(resolution,[],[f85,f52])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK3(X0,X1),X1)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f85,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f80,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_zfmisc_1)).

fof(f316,plain,
    ( ~ r2_hidden(sK1,k1_zfmisc_1(sK0))
    | v1_xboole_0(k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f315,f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f315,plain,(
    ~ m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f312,f31])).

fof(f31,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f18])).

fof(f312,plain,
    ( k1_xboole_0 = sK1
    | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f311,f55])).

fof(f55,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,k3_subset_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f44,f34])).

fof(f34,plain,(
    ! [X0] : k1_subset_1(X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] : k1_subset_1(X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k1_subset_1(X0) = X1
      | ~ r1_tarski(X1,k3_subset_1(X0,X1)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X1,k3_subset_1(X0,X1))
      <=> k1_subset_1(X0) = X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( r1_tarski(X1,k3_subset_1(X0,X1))
      <=> k1_subset_1(X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_subset_1)).

fof(f311,plain,(
    r1_tarski(sK1,k3_subset_1(sK0,sK1)) ),
    inference(forward_demodulation,[],[f310,f35])).

fof(f310,plain,(
    r1_tarski(sK1,k3_tarski(k1_zfmisc_1(k3_subset_1(sK0,sK1)))) ),
    inference(resolution,[],[f306,f41])).

fof(f306,plain,(
    r2_hidden(sK1,k1_zfmisc_1(k3_subset_1(sK0,sK1))) ),
    inference(resolution,[],[f302,f262])).

fof(f262,plain,(
    ! [X0] :
      ( ~ r1_tarski(k3_subset_1(sK0,sK2),X0)
      | r2_hidden(sK1,k1_zfmisc_1(X0)) ) ),
    inference(resolution,[],[f187,f42])).

fof(f187,plain,(
    ! [X0] :
      ( ~ r1_tarski(k1_zfmisc_1(k3_subset_1(sK0,sK2)),X0)
      | r2_hidden(sK1,X0) ) ),
    inference(resolution,[],[f184,f50])).

fof(f184,plain,(
    r2_hidden(sK1,k1_zfmisc_1(k3_subset_1(sK0,sK2))) ),
    inference(resolution,[],[f142,f80])).

fof(f142,plain,(
    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2))) ),
    inference(duplicate_literal_removal,[],[f141])).

fof(f141,plain,
    ( r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2)))
    | r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2))) ),
    inference(resolution,[],[f89,f119])).

fof(f119,plain,(
    ! [X6] :
      ( r1_tarski(sK3(k1_zfmisc_1(sK1),X6),k3_subset_1(sK0,sK2))
      | r1_tarski(k1_zfmisc_1(sK1),X6) ) ),
    inference(resolution,[],[f111,f94])).

fof(f94,plain,(
    ! [X6] :
      ( ~ r1_tarski(X6,sK1)
      | r1_tarski(X6,k3_subset_1(sK0,sK2)) ) ),
    inference(resolution,[],[f54,f30])).

fof(f30,plain,(
    r1_tarski(sK1,k3_subset_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f18])).

fof(f302,plain,(
    r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,sK1)) ),
    inference(resolution,[],[f300,f29])).

fof(f300,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,sK2)
      | r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0)) ) ),
    inference(subsumption_resolution,[],[f299,f150])).

fof(f150,plain,(
    ! [X0] :
      ( r2_hidden(X0,k1_zfmisc_1(sK0))
      | ~ r1_tarski(X0,sK2) ) ),
    inference(resolution,[],[f144,f87])).

fof(f87,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(k1_zfmisc_1(X1),X2)
      | r2_hidden(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f85,f50])).

fof(f144,plain,(
    r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0)) ),
    inference(duplicate_literal_removal,[],[f139])).

fof(f139,plain,
    ( r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0))
    | r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f89,f122])).

fof(f122,plain,(
    ! [X9] :
      ( r1_tarski(sK3(k1_zfmisc_1(sK2),X9),sK0)
      | r1_tarski(k1_zfmisc_1(sK2),X9) ) ),
    inference(resolution,[],[f111,f95])).

fof(f299,plain,(
    ! [X0] :
      ( r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0))
      | ~ r1_tarski(X0,sK2)
      | ~ r2_hidden(X0,k1_zfmisc_1(sK0)) ) ),
    inference(subsumption_resolution,[],[f298,f32])).

fof(f298,plain,(
    ! [X0] :
      ( r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0))
      | ~ r1_tarski(X0,sK2)
      | ~ r2_hidden(X0,k1_zfmisc_1(sK0))
      | v1_xboole_0(k1_zfmisc_1(sK0)) ) ),
    inference(resolution,[],[f254,f39])).

fof(f254,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
      | r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0))
      | ~ r1_tarski(X0,sK2) ) ),
    inference(resolution,[],[f46,f28])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
      | ~ r1_tarski(X1,X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_subset_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n014.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 09:18:37 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.49  % (3866)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.22/0.49  % (3854)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.53  % (3857)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.53  % (3855)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.53  % (3856)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.53  % (3861)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.53  % (3870)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.22/0.54  % (3868)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.54  % (3882)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.22/0.54  % (3874)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.54  % (3863)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.54  % (3878)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.22/0.54  % (3881)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.22/0.54  % (3876)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.54  % (3879)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.22/0.55  % (3859)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.55  % (3871)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.22/0.55  % (3869)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.55  % (3858)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.55  % (3873)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.56  % (3877)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.56  % (3864)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.56  % (3860)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.56  % (3872)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.56  % (3853)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.57  % (3865)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.57  % (3859)Refutation found. Thanks to Tanya!
% 0.22/0.57  % SZS status Theorem for theBenchmark
% 0.22/0.57  % SZS output start Proof for theBenchmark
% 0.22/0.57  fof(f318,plain,(
% 0.22/0.57    $false),
% 0.22/0.57    inference(subsumption_resolution,[],[f317,f32])).
% 0.22/0.57  fof(f32,plain,(
% 0.22/0.57    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(cnf_transformation,[],[f12])).
% 0.22/0.57  fof(f12,axiom,(
% 0.22/0.57    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).
% 0.22/0.57  fof(f317,plain,(
% 0.22/0.57    v1_xboole_0(k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(subsumption_resolution,[],[f316,f162])).
% 0.22/0.57  fof(f162,plain,(
% 0.22/0.57    r2_hidden(sK1,k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f143,f80])).
% 0.22/0.57  fof(f80,plain,(
% 0.22/0.57    ( ! [X2,X1] : (~r1_tarski(k1_zfmisc_1(X1),X2) | r2_hidden(X1,X2)) )),
% 0.22/0.57    inference(resolution,[],[f50,f66])).
% 0.22/0.57  fof(f66,plain,(
% 0.22/0.57    ( ! [X0] : (r2_hidden(X0,k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(subsumption_resolution,[],[f62,f32])).
% 0.22/0.57  fof(f62,plain,(
% 0.22/0.57    ( ! [X0] : (r2_hidden(X0,k1_zfmisc_1(X0)) | v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(resolution,[],[f40,f60])).
% 0.22/0.57  fof(f60,plain,(
% 0.22/0.57    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(forward_demodulation,[],[f36,f33])).
% 0.22/0.57  fof(f33,plain,(
% 0.22/0.57    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 0.22/0.57    inference(cnf_transformation,[],[f10])).
% 0.22/0.57  fof(f10,axiom,(
% 0.22/0.57    ! [X0] : k2_subset_1(X0) = X0),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).
% 0.22/0.57  fof(f36,plain,(
% 0.22/0.57    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(cnf_transformation,[],[f11])).
% 0.22/0.57  fof(f11,axiom,(
% 0.22/0.57    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).
% 0.22/0.57  fof(f40,plain,(
% 0.22/0.57    ( ! [X0,X1] : (~m1_subset_1(X1,X0) | r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f19])).
% 0.22/0.57  fof(f19,plain,(
% 0.22/0.57    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 0.22/0.57    inference(ennf_transformation,[],[f8])).
% 0.22/0.57  fof(f8,axiom,(
% 0.22/0.57    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).
% 0.22/0.57  fof(f50,plain,(
% 0.22/0.57    ( ! [X2,X0,X1] : (~r2_hidden(X2,X0) | r2_hidden(X2,X1) | ~r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f24])).
% 0.22/0.57  fof(f24,plain,(
% 0.22/0.57    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.22/0.57    inference(ennf_transformation,[],[f1])).
% 0.22/0.57  fof(f1,axiom,(
% 0.22/0.57    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 0.22/0.57  % (3880)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.57  % (3875)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.57  fof(f143,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(duplicate_literal_removal,[],[f140])).
% 0.22/0.57  fof(f140,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0)) | r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f89,f120])).
% 0.22/0.57  fof(f120,plain,(
% 0.22/0.57    ( ! [X7] : (r1_tarski(sK3(k1_zfmisc_1(sK1),X7),sK0) | r1_tarski(k1_zfmisc_1(sK1),X7)) )),
% 0.22/0.57    inference(resolution,[],[f111,f99])).
% 0.22/0.57  fof(f99,plain,(
% 0.22/0.57    ( ! [X0] : (~r1_tarski(X0,sK1) | r1_tarski(X0,sK0)) )),
% 0.22/0.57    inference(resolution,[],[f98,f54])).
% 0.22/0.57  fof(f54,plain,(
% 0.22/0.57    ( ! [X2,X0,X1] : (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1) | r1_tarski(X0,X2)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f27])).
% 0.22/0.57  fof(f27,plain,(
% 0.22/0.57    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 0.22/0.57    inference(flattening,[],[f26])).
% 0.22/0.57  fof(f26,plain,(
% 0.22/0.57    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 0.22/0.57    inference(ennf_transformation,[],[f3])).
% 0.22/0.57  fof(f3,axiom,(
% 0.22/0.57    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).
% 0.22/0.57  fof(f98,plain,(
% 0.22/0.57    r1_tarski(sK1,sK0)),
% 0.22/0.57    inference(resolution,[],[f95,f29])).
% 0.22/0.57  fof(f29,plain,(
% 0.22/0.57    r1_tarski(sK1,sK2)),
% 0.22/0.57    inference(cnf_transformation,[],[f18])).
% 0.22/0.57  fof(f18,plain,(
% 0.22/0.57    ? [X0,X1,X2] : (k1_xboole_0 != X1 & r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.22/0.57    inference(flattening,[],[f17])).
% 0.22/0.57  fof(f17,plain,(
% 0.22/0.57    ? [X0,X1,X2] : ((k1_xboole_0 != X1 & (r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.22/0.57    inference(ennf_transformation,[],[f16])).
% 0.22/0.57  fof(f16,negated_conjecture,(
% 0.22/0.57    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 0.22/0.57    inference(negated_conjecture,[],[f15])).
% 0.22/0.57  fof(f15,conjecture,(
% 0.22/0.57    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).
% 0.22/0.57  fof(f95,plain,(
% 0.22/0.57    ( ! [X7] : (~r1_tarski(X7,sK2) | r1_tarski(X7,sK0)) )),
% 0.22/0.57    inference(resolution,[],[f54,f68])).
% 0.22/0.57  fof(f68,plain,(
% 0.22/0.57    r1_tarski(sK2,sK0)),
% 0.22/0.57    inference(forward_demodulation,[],[f67,f35])).
% 0.22/0.57  fof(f35,plain,(
% 0.22/0.57    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 0.22/0.57    inference(cnf_transformation,[],[f7])).
% 0.22/0.57  fof(f7,axiom,(
% 0.22/0.57    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).
% 0.22/0.57  fof(f67,plain,(
% 0.22/0.57    r1_tarski(sK2,k3_tarski(k1_zfmisc_1(sK0)))),
% 0.22/0.57    inference(resolution,[],[f65,f41])).
% 0.22/0.57  fof(f41,plain,(
% 0.22/0.57    ( ! [X0,X1] : (~r2_hidden(X0,X1) | r1_tarski(X0,k3_tarski(X1))) )),
% 0.22/0.57    inference(cnf_transformation,[],[f20])).
% 0.22/0.57  fof(f20,plain,(
% 0.22/0.57    ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1))),
% 0.22/0.57    inference(ennf_transformation,[],[f5])).
% 0.22/0.57  fof(f5,axiom,(
% 0.22/0.57    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(X0,k3_tarski(X1)))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).
% 0.22/0.57  fof(f65,plain,(
% 0.22/0.57    r2_hidden(sK2,k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(subsumption_resolution,[],[f61,f32])).
% 0.22/0.57  fof(f61,plain,(
% 0.22/0.57    r2_hidden(sK2,k1_zfmisc_1(sK0)) | v1_xboole_0(k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f40,f28])).
% 0.22/0.57  fof(f28,plain,(
% 0.22/0.57    m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(cnf_transformation,[],[f18])).
% 0.22/0.57  fof(f111,plain,(
% 0.22/0.57    ( ! [X0,X1] : (r1_tarski(sK3(k1_zfmisc_1(X0),X1),X0) | r1_tarski(k1_zfmisc_1(X0),X1)) )),
% 0.22/0.57    inference(superposition,[],[f71,f35])).
% 0.22/0.57  fof(f71,plain,(
% 0.22/0.57    ( ! [X0,X1] : (r1_tarski(sK3(X0,X1),k3_tarski(X0)) | r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(resolution,[],[f51,f41])).
% 0.22/0.57  fof(f51,plain,(
% 0.22/0.57    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f24])).
% 0.22/0.57  fof(f89,plain,(
% 0.22/0.57    ( ! [X6,X5] : (~r1_tarski(sK3(X5,k1_zfmisc_1(X6)),X6) | r1_tarski(X5,k1_zfmisc_1(X6))) )),
% 0.22/0.57    inference(resolution,[],[f85,f52])).
% 0.22/0.57  fof(f52,plain,(
% 0.22/0.57    ( ! [X0,X1] : (~r2_hidden(sK3(X0,X1),X1) | r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f24])).
% 0.22/0.57  fof(f85,plain,(
% 0.22/0.57    ( ! [X0,X1] : (r2_hidden(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(resolution,[],[f80,f42])).
% 0.22/0.57  fof(f42,plain,(
% 0.22/0.57    ( ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f21])).
% 0.22/0.57  fof(f21,plain,(
% 0.22/0.57    ! [X0,X1] : (r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1))),
% 0.22/0.57    inference(ennf_transformation,[],[f6])).
% 0.22/0.57  fof(f6,axiom,(
% 0.22/0.57    ! [X0,X1] : (r1_tarski(X0,X1) => r1_tarski(k1_zfmisc_1(X0),k1_zfmisc_1(X1)))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_zfmisc_1)).
% 0.22/0.57  fof(f316,plain,(
% 0.22/0.57    ~r2_hidden(sK1,k1_zfmisc_1(sK0)) | v1_xboole_0(k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f315,f39])).
% 0.22/0.57  fof(f39,plain,(
% 0.22/0.57    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f19])).
% 0.22/0.57  fof(f315,plain,(
% 0.22/0.57    ~m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(subsumption_resolution,[],[f312,f31])).
% 0.22/0.57  fof(f31,plain,(
% 0.22/0.57    k1_xboole_0 != sK1),
% 0.22/0.57    inference(cnf_transformation,[],[f18])).
% 0.22/0.57  fof(f312,plain,(
% 0.22/0.57    k1_xboole_0 = sK1 | ~m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f311,f55])).
% 0.22/0.57  fof(f55,plain,(
% 0.22/0.57    ( ! [X0,X1] : (~r1_tarski(X1,k3_subset_1(X0,X1)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(definition_unfolding,[],[f44,f34])).
% 0.22/0.57  fof(f34,plain,(
% 0.22/0.57    ( ! [X0] : (k1_subset_1(X0) = k1_xboole_0) )),
% 0.22/0.57    inference(cnf_transformation,[],[f9])).
% 0.22/0.57  fof(f9,axiom,(
% 0.22/0.57    ! [X0] : k1_subset_1(X0) = k1_xboole_0),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).
% 0.22/0.57  fof(f44,plain,(
% 0.22/0.57    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k1_subset_1(X0) = X1 | ~r1_tarski(X1,k3_subset_1(X0,X1))) )),
% 0.22/0.57    inference(cnf_transformation,[],[f22])).
% 0.22/0.57  fof(f22,plain,(
% 0.22/0.57    ! [X0,X1] : ((r1_tarski(X1,k3_subset_1(X0,X1)) <=> k1_subset_1(X0) = X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.57    inference(ennf_transformation,[],[f14])).
% 0.22/0.57  fof(f14,axiom,(
% 0.22/0.57    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(X1,k3_subset_1(X0,X1)) <=> k1_subset_1(X0) = X1))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_subset_1)).
% 0.22/0.57  fof(f311,plain,(
% 0.22/0.57    r1_tarski(sK1,k3_subset_1(sK0,sK1))),
% 0.22/0.57    inference(forward_demodulation,[],[f310,f35])).
% 0.22/0.57  fof(f310,plain,(
% 0.22/0.57    r1_tarski(sK1,k3_tarski(k1_zfmisc_1(k3_subset_1(sK0,sK1))))),
% 0.22/0.57    inference(resolution,[],[f306,f41])).
% 0.22/0.57  fof(f306,plain,(
% 0.22/0.57    r2_hidden(sK1,k1_zfmisc_1(k3_subset_1(sK0,sK1)))),
% 0.22/0.57    inference(resolution,[],[f302,f262])).
% 0.22/0.57  fof(f262,plain,(
% 0.22/0.57    ( ! [X0] : (~r1_tarski(k3_subset_1(sK0,sK2),X0) | r2_hidden(sK1,k1_zfmisc_1(X0))) )),
% 0.22/0.57    inference(resolution,[],[f187,f42])).
% 0.22/0.57  fof(f187,plain,(
% 0.22/0.57    ( ! [X0] : (~r1_tarski(k1_zfmisc_1(k3_subset_1(sK0,sK2)),X0) | r2_hidden(sK1,X0)) )),
% 0.22/0.57    inference(resolution,[],[f184,f50])).
% 0.22/0.57  fof(f184,plain,(
% 0.22/0.57    r2_hidden(sK1,k1_zfmisc_1(k3_subset_1(sK0,sK2)))),
% 0.22/0.57    inference(resolution,[],[f142,f80])).
% 0.22/0.57  fof(f142,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2)))),
% 0.22/0.57    inference(duplicate_literal_removal,[],[f141])).
% 0.22/0.57  fof(f141,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2))) | r1_tarski(k1_zfmisc_1(sK1),k1_zfmisc_1(k3_subset_1(sK0,sK2)))),
% 0.22/0.57    inference(resolution,[],[f89,f119])).
% 0.22/0.57  fof(f119,plain,(
% 0.22/0.57    ( ! [X6] : (r1_tarski(sK3(k1_zfmisc_1(sK1),X6),k3_subset_1(sK0,sK2)) | r1_tarski(k1_zfmisc_1(sK1),X6)) )),
% 0.22/0.57    inference(resolution,[],[f111,f94])).
% 0.22/0.57  fof(f94,plain,(
% 0.22/0.57    ( ! [X6] : (~r1_tarski(X6,sK1) | r1_tarski(X6,k3_subset_1(sK0,sK2))) )),
% 0.22/0.57    inference(resolution,[],[f54,f30])).
% 0.22/0.57  fof(f30,plain,(
% 0.22/0.57    r1_tarski(sK1,k3_subset_1(sK0,sK2))),
% 0.22/0.57    inference(cnf_transformation,[],[f18])).
% 0.22/0.57  fof(f302,plain,(
% 0.22/0.57    r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,sK1))),
% 0.22/0.57    inference(resolution,[],[f300,f29])).
% 0.22/0.57  fof(f300,plain,(
% 0.22/0.57    ( ! [X0] : (~r1_tarski(X0,sK2) | r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0))) )),
% 0.22/0.57    inference(subsumption_resolution,[],[f299,f150])).
% 0.22/0.57  fof(f150,plain,(
% 0.22/0.57    ( ! [X0] : (r2_hidden(X0,k1_zfmisc_1(sK0)) | ~r1_tarski(X0,sK2)) )),
% 0.22/0.57    inference(resolution,[],[f144,f87])).
% 0.22/0.57  fof(f87,plain,(
% 0.22/0.57    ( ! [X2,X0,X1] : (~r1_tarski(k1_zfmisc_1(X1),X2) | r2_hidden(X0,X2) | ~r1_tarski(X0,X1)) )),
% 0.22/0.57    inference(resolution,[],[f85,f50])).
% 0.22/0.57  fof(f144,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(duplicate_literal_removal,[],[f139])).
% 0.22/0.57  fof(f139,plain,(
% 0.22/0.57    r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0)) | r1_tarski(k1_zfmisc_1(sK2),k1_zfmisc_1(sK0))),
% 0.22/0.57    inference(resolution,[],[f89,f122])).
% 0.22/0.57  fof(f122,plain,(
% 0.22/0.57    ( ! [X9] : (r1_tarski(sK3(k1_zfmisc_1(sK2),X9),sK0) | r1_tarski(k1_zfmisc_1(sK2),X9)) )),
% 0.22/0.57    inference(resolution,[],[f111,f95])).
% 0.22/0.57  fof(f299,plain,(
% 0.22/0.57    ( ! [X0] : (r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0)) | ~r1_tarski(X0,sK2) | ~r2_hidden(X0,k1_zfmisc_1(sK0))) )),
% 0.22/0.57    inference(subsumption_resolution,[],[f298,f32])).
% 0.22/0.57  fof(f298,plain,(
% 0.22/0.57    ( ! [X0] : (r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0)) | ~r1_tarski(X0,sK2) | ~r2_hidden(X0,k1_zfmisc_1(sK0)) | v1_xboole_0(k1_zfmisc_1(sK0))) )),
% 0.22/0.57    inference(resolution,[],[f254,f39])).
% 0.22/0.57  fof(f254,plain,(
% 0.22/0.57    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(sK0)) | r1_tarski(k3_subset_1(sK0,sK2),k3_subset_1(sK0,X0)) | ~r1_tarski(X0,sK2)) )),
% 0.22/0.57    inference(resolution,[],[f46,f28])).
% 0.22/0.57  fof(f46,plain,(
% 0.22/0.57    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~r1_tarski(X1,X2)) )),
% 0.22/0.57    inference(cnf_transformation,[],[f23])).
% 0.22/0.57  fof(f23,plain,(
% 0.22/0.57    ! [X0,X1] : (! [X2] : ((r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.57    inference(ennf_transformation,[],[f13])).
% 0.22/0.57  fof(f13,axiom,(
% 0.22/0.57    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)))))),
% 0.22/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_subset_1)).
% 0.22/0.57  % SZS output end Proof for theBenchmark
% 0.22/0.57  % (3859)------------------------------
% 0.22/0.57  % (3859)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.57  % (3859)Termination reason: Refutation
% 0.22/0.57  
% 0.22/0.57  % (3859)Memory used [KB]: 6396
% 0.22/0.57  % (3859)Time elapsed: 0.119 s
% 0.22/0.57  % (3859)------------------------------
% 0.22/0.57  % (3859)------------------------------
% 0.22/0.57  % (3862)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.22/0.57  % (3867)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.58  % (3852)Success in time 0.214 s
%------------------------------------------------------------------------------
