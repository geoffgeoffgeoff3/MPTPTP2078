%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:13:23 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 116 expanded)
%              Number of leaves         :   13 (  31 expanded)
%              Depth                    :   13
%              Number of atoms          :  149 ( 290 expanded)
%              Number of equality atoms :   49 ( 125 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f444,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f94,f334,f443])).

fof(f443,plain,(
    ~ spl2_4 ),
    inference(avatar_contradiction_clause,[],[f442])).

fof(f442,plain,
    ( $false
    | ~ spl2_4 ),
    inference(subsumption_resolution,[],[f441,f29])).

fof(f29,plain,(
    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,
    ( k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1))
    & k1_xboole_0 != sK1
    & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f13,f21])).

fof(f21,plain,
    ( ? [X0,X1] :
        ( k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1))
        & k1_xboole_0 != X1
        & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) )
   => ( k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1))
      & k1_xboole_0 != sK1
      & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ? [X0,X1] :
      ( k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1))
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f12])).

fof(f12,plain,(
    ? [X0,X1] :
      ( k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1))
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
       => ( k1_xboole_0 != X1
         => k5_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k6_setfam_1(X0,X1)) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f10,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( k1_xboole_0 != X1
       => k5_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k6_setfam_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_tops_2)).

fof(f441,plain,
    ( k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) = k3_subset_1(sK0,k6_setfam_1(sK0,sK1))
    | ~ spl2_4 ),
    inference(superposition,[],[f161,f93])).

fof(f93,plain,
    ( k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)))
    | ~ spl2_4 ),
    inference(avatar_component_clause,[],[f91])).

fof(f91,plain,
    ( spl2_4
  <=> k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_4])])).

fof(f161,plain,(
    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) = k3_subset_1(sK0,k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)))) ),
    inference(resolution,[],[f82,f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).

fof(f82,plain,(
    m1_subset_1(k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)),k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f64,f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k5_setfam_1)).

fof(f64,plain,(
    m1_subset_1(k7_setfam_1(sK0,sK1),k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(resolution,[],[f34,f27])).

fof(f27,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f22])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_setfam_1)).

fof(f334,plain,(
    ~ spl2_3 ),
    inference(avatar_contradiction_clause,[],[f333])).

fof(f333,plain,
    ( $false
    | ~ spl2_3 ),
    inference(subsumption_resolution,[],[f332,f30])).

fof(f30,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f332,plain,
    ( ~ r1_tarski(k1_xboole_0,sK1)
    | ~ spl2_3 ),
    inference(subsumption_resolution,[],[f328,f28])).

fof(f28,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f22])).

fof(f328,plain,
    ( k1_xboole_0 = sK1
    | ~ r1_tarski(k1_xboole_0,sK1)
    | ~ spl2_3 ),
    inference(resolution,[],[f279,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

% (598)dis+10_1_add=off:afp=4000:afq=1.2:anc=none:br=off:cond=on:gs=on:irw=on:lcm=reverse:nwc=10:sd=10:ss=axioms:sos=theory:sac=on:sp=occurrence:urr=on_2 on theBenchmark
fof(f279,plain,
    ( r1_tarski(sK1,k1_xboole_0)
    | ~ spl2_3 ),
    inference(superposition,[],[f122,f144])).

fof(f144,plain,
    ( sK1 = k7_setfam_1(sK0,k1_xboole_0)
    | ~ spl2_3 ),
    inference(superposition,[],[f63,f89])).

fof(f89,plain,
    ( k1_xboole_0 = k7_setfam_1(sK0,sK1)
    | ~ spl2_3 ),
    inference(avatar_component_clause,[],[f87])).

fof(f87,plain,
    ( spl2_3
  <=> k1_xboole_0 = k7_setfam_1(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).

fof(f63,plain,(
    sK1 = k7_setfam_1(sK0,k7_setfam_1(sK0,sK1)) ),
    inference(resolution,[],[f33,f27])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k7_setfam_1)).

fof(f122,plain,(
    ! [X1] : r1_tarski(k7_setfam_1(X1,k1_xboole_0),k1_xboole_0) ),
    inference(resolution,[],[f71,f46])).

fof(f46,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(resolution,[],[f42,f30])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(f71,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | r1_tarski(k7_setfam_1(X0,k1_xboole_0),X1) ) ),
    inference(subsumption_resolution,[],[f69,f46])).

fof(f69,plain,(
    ! [X0,X1] :
      ( r1_tarski(k7_setfam_1(X0,k1_xboole_0),X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(resolution,[],[f37,f30])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X1,k7_setfam_1(X0,X2))
      | r1_tarski(k7_setfam_1(X0,X1),X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_tarski(k7_setfam_1(X0,X1),X2)
              | ~ r1_tarski(X1,k7_setfam_1(X0,X2)) )
            & ( r1_tarski(X1,k7_setfam_1(X0,X2))
              | ~ r1_tarski(k7_setfam_1(X0,X1),X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_tarski(k7_setfam_1(X0,X1),X2)
          <=> r1_tarski(X1,k7_setfam_1(X0,X2)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
         => ( r1_tarski(k7_setfam_1(X0,X1),X2)
          <=> r1_tarski(X1,k7_setfam_1(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_setfam_1)).

fof(f94,plain,
    ( spl2_3
    | spl2_4 ),
    inference(avatar_split_clause,[],[f85,f91,f87])).

fof(f85,plain,
    ( k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)))
    | k1_xboole_0 = k7_setfam_1(sK0,sK1) ),
    inference(forward_demodulation,[],[f79,f63])).

fof(f79,plain,
    ( k1_xboole_0 = k7_setfam_1(sK0,sK1)
    | k6_setfam_1(sK0,k7_setfam_1(sK0,k7_setfam_1(sK0,sK1))) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1))) ),
    inference(resolution,[],[f64,f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
      | k1_xboole_0 = X1
      | k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( k1_xboole_0 != X1
       => k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_tops_2)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n003.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:37:42 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.21/0.48  % (600)dis+11_1_acc=on:afp=1000:afq=1.4:amm=sco:anc=all_dependent:bs=on:ccuc=small_ones:cond=fast:fde=none:gsp=input_only:nm=64:nwc=1:sac=on:urr=ec_only:updr=off:uhcvi=on_105 on theBenchmark
% 0.21/0.49  % (609)lrs+1_5:1_afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:fde=none:gs=on:gsaa=full_model:gsem=on:irw=on:lwlo=on:nm=0:nwc=2.5:stl=30:sp=occurrence:uhcvi=on_42 on theBenchmark
% 0.21/0.49  % (614)lrs-2_6_acc=on:afp=40000:afq=1.2:amm=sco:anc=none:bs=on:bsr=on:cond=on:fsr=off:fde=none:lcm=reverse:lma=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sp=reverse_arity:urr=ec_only_162 on theBenchmark
% 0.21/0.49  % (603)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_7 on theBenchmark
% 0.21/0.49  % (606)lrs+4_3_av=off:br=off:nm=0:newcnf=on:nwc=1:stl=30:sp=occurrence:urr=on_32 on theBenchmark
% 0.21/0.50  % (604)lrs+1_4:1_awrs=converge:awrsf=128:av=off:cond=fast:fde=none:gsp=input_only:gs=on:gsem=on:lcm=predicate:lwlo=on:nm=4:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:s2a=on:st=2.0:sos=on_27 on theBenchmark
% 0.21/0.50  % (611)ott+4_32_av=off:bsr=on:cond=on:er=known:fsr=off:gsp=input_only:gs=on:gsem=on:irw=on:lma=on:nm=4:nwc=1.2:sos=theory_197 on theBenchmark
% 0.21/0.50  % (619)dis+1010_5_add=large:afp=10000:afq=1.2:amm=off:bs=unit_only:bsr=on:bce=on:cond=fast:fsr=off:fde=none:gsp=input_only:gs=on:irw=on:lma=on:nm=4:newcnf=on:nwc=1.3:nicw=on:sos=all:sac=on:updr=off_34 on theBenchmark
% 0.21/0.50  % (617)dis+1010_3:1_av=off:gsp=input_only:nm=6:nwc=1:sos=all:sp=occurrence_48 on theBenchmark
% 0.21/0.50  % (602)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_92 on theBenchmark
% 0.21/0.50  % (621)lrs+3_64_add=large:afp=40000:afq=1.4:anc=none:bd=preordered:bsr=on:fde=unused:gs=on:gsaa=from_current:gsem=on:irw=on:lcm=predicate:lma=on:lwlo=on:nm=16:newcnf=on:nwc=1.2:stl=90:sos=theory_285 on theBenchmark
% 0.21/0.50  % (616)lrs+1002_1_add=large:afr=on:afp=1000:afq=1.1:amm=sco:anc=none:er=known:fsr=off:gs=on:gsem=off:lma=on:nm=2:newcnf=on:nwc=2:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sp=reverse_arity:updr=off_145 on theBenchmark
% 0.21/0.51  % (609)Refutation found. Thanks to Tanya!
% 0.21/0.51  % SZS status Theorem for theBenchmark
% 0.21/0.51  % (610)lrs+1011_2:3_add=large:afr=on:afp=100000:afq=1.2:anc=none:gs=on:gsem=off:irw=on:nm=64:nwc=1:stl=30:sd=3:ss=axioms:sos=all:sp=reverse_arity_48 on theBenchmark
% 0.21/0.51  % (622)ott+11_8:1_acc=model:afp=1000:afq=1.0:anc=none:bd=off:bsr=on:cond=on:gs=on:gsem=off:irw=on:lma=on:nm=16:nwc=1.5:sac=on:sp=occurrence:urr=on_104 on theBenchmark
% 0.21/0.51  % (620)dis+11_1024_av=off:bd=off:bs=on:cond=on:gs=on:lma=on:nm=16:nwc=1:sp=occurrence:updr=off_98 on theBenchmark
% 0.21/0.51  % (608)lrs+1002_4:1_aac=none:add=off:afr=on:afp=40000:afq=1.0:amm=off:anc=none:cond=on:fsr=off:fde=none:gs=on:gsaa=full_model:lma=on:nm=16:nwc=1:sas=z3:stl=30:sd=7:ss=axioms:sos=on:sp=occurrence:updr=off:uhcvi=on_85 on theBenchmark
% 0.21/0.51  % SZS output start Proof for theBenchmark
% 0.21/0.51  fof(f444,plain,(
% 0.21/0.51    $false),
% 0.21/0.51    inference(avatar_sat_refutation,[],[f94,f334,f443])).
% 0.21/0.51  fof(f443,plain,(
% 0.21/0.51    ~spl2_4),
% 0.21/0.51    inference(avatar_contradiction_clause,[],[f442])).
% 0.21/0.51  fof(f442,plain,(
% 0.21/0.51    $false | ~spl2_4),
% 0.21/0.51    inference(subsumption_resolution,[],[f441,f29])).
% 0.21/0.51  fof(f29,plain,(
% 0.21/0.51    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1))),
% 0.21/0.51    inference(cnf_transformation,[],[f22])).
% 0.21/0.51  fof(f22,plain,(
% 0.21/0.51    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1)) & k1_xboole_0 != sK1 & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 0.21/0.51    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f13,f21])).
% 0.21/0.51  fof(f21,plain,(
% 0.21/0.51    ? [X0,X1] : (k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) != k3_subset_1(sK0,k6_setfam_1(sK0,sK1)) & k1_xboole_0 != sK1 & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))))),
% 0.21/0.51    introduced(choice_axiom,[])).
% 0.21/0.51  fof(f13,plain,(
% 0.21/0.51    ? [X0,X1] : (k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    inference(flattening,[],[f12])).
% 0.21/0.51  fof(f12,plain,(
% 0.21/0.51    ? [X0,X1] : ((k5_setfam_1(X0,k7_setfam_1(X0,X1)) != k3_subset_1(X0,k6_setfam_1(X0,X1)) & k1_xboole_0 != X1) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    inference(ennf_transformation,[],[f11])).
% 0.21/0.51  fof(f11,negated_conjecture,(
% 0.21/0.51    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k5_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k6_setfam_1(X0,X1))))),
% 0.21/0.51    inference(negated_conjecture,[],[f10])).
% 0.21/0.51  fof(f10,conjecture,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k5_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k6_setfam_1(X0,X1))))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_tops_2)).
% 0.21/0.51  fof(f441,plain,(
% 0.21/0.51    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) = k3_subset_1(sK0,k6_setfam_1(sK0,sK1)) | ~spl2_4),
% 0.21/0.51    inference(superposition,[],[f161,f93])).
% 0.21/0.51  fof(f93,plain,(
% 0.21/0.51    k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1))) | ~spl2_4),
% 0.21/0.51    inference(avatar_component_clause,[],[f91])).
% 0.21/0.51  fof(f91,plain,(
% 0.21/0.51    spl2_4 <=> k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)))),
% 0.21/0.51    introduced(avatar_definition,[new_symbols(naming,[spl2_4])])).
% 0.21/0.51  fof(f161,plain,(
% 0.21/0.51    k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)) = k3_subset_1(sK0,k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1))))),
% 0.21/0.51    inference(resolution,[],[f82,f31])).
% 0.21/0.51  fof(f31,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k3_subset_1(X0,k3_subset_1(X0,X1)) = X1) )),
% 0.21/0.51    inference(cnf_transformation,[],[f14])).
% 0.21/0.51  fof(f14,plain,(
% 0.21/0.51    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.21/0.51    inference(ennf_transformation,[],[f3])).
% 0.21/0.51  fof(f3,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).
% 0.21/0.51  fof(f82,plain,(
% 0.21/0.51    m1_subset_1(k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)),k1_zfmisc_1(sK0))),
% 0.21/0.51    inference(resolution,[],[f64,f32])).
% 0.21/0.51  fof(f32,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0))) )),
% 0.21/0.51    inference(cnf_transformation,[],[f15])).
% 0.21/0.51  fof(f15,plain,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    inference(ennf_transformation,[],[f4])).
% 0.21/0.51  fof(f4,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k5_setfam_1)).
% 0.21/0.51  fof(f64,plain,(
% 0.21/0.51    m1_subset_1(k7_setfam_1(sK0,sK1),k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 0.21/0.51    inference(resolution,[],[f34,f27])).
% 0.21/0.51  fof(f27,plain,(
% 0.21/0.51    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 0.21/0.51    inference(cnf_transformation,[],[f22])).
% 0.21/0.51  fof(f34,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 0.21/0.51    inference(cnf_transformation,[],[f17])).
% 0.21/0.51  fof(f17,plain,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    inference(ennf_transformation,[],[f5])).
% 0.21/0.51  fof(f5,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_setfam_1)).
% 0.21/0.51  fof(f334,plain,(
% 0.21/0.51    ~spl2_3),
% 0.21/0.51    inference(avatar_contradiction_clause,[],[f333])).
% 0.21/0.51  fof(f333,plain,(
% 0.21/0.51    $false | ~spl2_3),
% 0.21/0.51    inference(subsumption_resolution,[],[f332,f30])).
% 0.21/0.51  fof(f30,plain,(
% 0.21/0.51    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f2])).
% 0.21/0.51  fof(f2,axiom,(
% 0.21/0.51    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).
% 0.21/0.51  fof(f332,plain,(
% 0.21/0.51    ~r1_tarski(k1_xboole_0,sK1) | ~spl2_3),
% 0.21/0.51    inference(subsumption_resolution,[],[f328,f28])).
% 0.21/0.51  fof(f28,plain,(
% 0.21/0.51    k1_xboole_0 != sK1),
% 0.21/0.51    inference(cnf_transformation,[],[f22])).
% 0.21/0.51  fof(f328,plain,(
% 0.21/0.51    k1_xboole_0 = sK1 | ~r1_tarski(k1_xboole_0,sK1) | ~spl2_3),
% 0.21/0.51    inference(resolution,[],[f279,f40])).
% 0.21/0.51  fof(f40,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~r1_tarski(X1,X0) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 0.21/0.51    inference(cnf_transformation,[],[f25])).
% 0.21/0.51  fof(f25,plain,(
% 0.21/0.51    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.21/0.51    inference(flattening,[],[f24])).
% 0.21/0.51  fof(f24,plain,(
% 0.21/0.51    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.21/0.51    inference(nnf_transformation,[],[f1])).
% 0.21/0.51  fof(f1,axiom,(
% 0.21/0.51    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.21/0.51  % (598)dis+10_1_add=off:afp=4000:afq=1.2:anc=none:br=off:cond=on:gs=on:irw=on:lcm=reverse:nwc=10:sd=10:ss=axioms:sos=theory:sac=on:sp=occurrence:urr=on_2 on theBenchmark
% 0.21/0.51  fof(f279,plain,(
% 0.21/0.51    r1_tarski(sK1,k1_xboole_0) | ~spl2_3),
% 0.21/0.51    inference(superposition,[],[f122,f144])).
% 0.21/0.51  fof(f144,plain,(
% 0.21/0.51    sK1 = k7_setfam_1(sK0,k1_xboole_0) | ~spl2_3),
% 0.21/0.51    inference(superposition,[],[f63,f89])).
% 0.21/0.51  fof(f89,plain,(
% 0.21/0.51    k1_xboole_0 = k7_setfam_1(sK0,sK1) | ~spl2_3),
% 0.21/0.51    inference(avatar_component_clause,[],[f87])).
% 0.21/0.51  fof(f87,plain,(
% 0.21/0.51    spl2_3 <=> k1_xboole_0 = k7_setfam_1(sK0,sK1)),
% 0.21/0.51    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).
% 0.21/0.51  fof(f63,plain,(
% 0.21/0.51    sK1 = k7_setfam_1(sK0,k7_setfam_1(sK0,sK1))),
% 0.21/0.51    inference(resolution,[],[f33,f27])).
% 0.21/0.51  fof(f33,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1) )),
% 0.21/0.51    inference(cnf_transformation,[],[f16])).
% 0.21/0.51  fof(f16,plain,(
% 0.21/0.51    ! [X0,X1] : (k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.51    inference(ennf_transformation,[],[f6])).
% 0.21/0.51  fof(f6,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1)),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k7_setfam_1)).
% 0.21/0.51  fof(f122,plain,(
% 0.21/0.51    ( ! [X1] : (r1_tarski(k7_setfam_1(X1,k1_xboole_0),k1_xboole_0)) )),
% 0.21/0.51    inference(resolution,[],[f71,f46])).
% 0.21/0.51  fof(f46,plain,(
% 0.21/0.51    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 0.21/0.51    inference(resolution,[],[f42,f30])).
% 0.21/0.51  fof(f42,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 0.21/0.51    inference(cnf_transformation,[],[f26])).
% 0.21/0.51  fof(f26,plain,(
% 0.21/0.51    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 0.21/0.51    inference(nnf_transformation,[],[f7])).
% 0.21/0.51  fof(f7,axiom,(
% 0.21/0.51    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 0.21/0.51    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).
% 0.21/0.51  fof(f71,plain,(
% 0.21/0.51    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | r1_tarski(k7_setfam_1(X0,k1_xboole_0),X1)) )),
% 0.21/0.51    inference(subsumption_resolution,[],[f69,f46])).
% 0.21/0.51  fof(f69,plain,(
% 0.21/0.51    ( ! [X0,X1] : (r1_tarski(k7_setfam_1(X0,k1_xboole_0),X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 0.21/0.51    inference(resolution,[],[f37,f30])).
% 0.21/0.52  fof(f37,plain,(
% 0.21/0.52    ( ! [X2,X0,X1] : (~r1_tarski(X1,k7_setfam_1(X0,X2)) | r1_tarski(k7_setfam_1(X0,X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 0.21/0.52    inference(cnf_transformation,[],[f23])).
% 0.21/0.52  fof(f23,plain,(
% 0.21/0.52    ! [X0,X1] : (! [X2] : (((r1_tarski(k7_setfam_1(X0,X1),X2) | ~r1_tarski(X1,k7_setfam_1(X0,X2))) & (r1_tarski(X1,k7_setfam_1(X0,X2)) | ~r1_tarski(k7_setfam_1(X0,X1),X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.52    inference(nnf_transformation,[],[f20])).
% 0.21/0.52  fof(f20,plain,(
% 0.21/0.52    ! [X0,X1] : (! [X2] : ((r1_tarski(k7_setfam_1(X0,X1),X2) <=> r1_tarski(X1,k7_setfam_1(X0,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.52    inference(ennf_transformation,[],[f8])).
% 0.21/0.52  fof(f8,axiom,(
% 0.21/0.52    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (r1_tarski(k7_setfam_1(X0,X1),X2) <=> r1_tarski(X1,k7_setfam_1(X0,X2)))))),
% 0.21/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_setfam_1)).
% 0.21/0.52  fof(f94,plain,(
% 0.21/0.52    spl2_3 | spl2_4),
% 0.21/0.52    inference(avatar_split_clause,[],[f85,f91,f87])).
% 0.21/0.52  fof(f85,plain,(
% 0.21/0.52    k6_setfam_1(sK0,sK1) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1))) | k1_xboole_0 = k7_setfam_1(sK0,sK1)),
% 0.21/0.52    inference(forward_demodulation,[],[f79,f63])).
% 0.21/0.52  fof(f79,plain,(
% 0.21/0.52    k1_xboole_0 = k7_setfam_1(sK0,sK1) | k6_setfam_1(sK0,k7_setfam_1(sK0,k7_setfam_1(sK0,sK1))) = k3_subset_1(sK0,k5_setfam_1(sK0,k7_setfam_1(sK0,sK1)))),
% 0.21/0.52    inference(resolution,[],[f64,f35])).
% 0.21/0.52  fof(f35,plain,(
% 0.21/0.52    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) | k1_xboole_0 = X1 | k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))) )),
% 0.21/0.52    inference(cnf_transformation,[],[f19])).
% 0.21/0.52  fof(f19,plain,(
% 0.21/0.52    ! [X0,X1] : (k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.52    inference(flattening,[],[f18])).
% 0.21/0.52  fof(f18,plain,(
% 0.21/0.52    ! [X0,X1] : ((k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1)) | k1_xboole_0 = X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.21/0.52    inference(ennf_transformation,[],[f9])).
% 0.21/0.52  fof(f9,axiom,(
% 0.21/0.52    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))))),
% 0.21/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_tops_2)).
% 0.21/0.52  % SZS output end Proof for theBenchmark
% 0.21/0.52  % (609)------------------------------
% 0.21/0.52  % (609)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (618)lrs+4_24_av=off:bd=preordered:bsr=on:irw=on:lma=on:lwlo=on:nm=64:newcnf=on:nwc=1.1:stl=30:sos=theory:updr=off:uhcvi=on_220 on theBenchmark
% 0.21/0.52  % (609)Termination reason: Refutation
% 0.21/0.52  
% 0.21/0.52  % (609)Memory used [KB]: 10746
% 0.21/0.52  % (609)Time elapsed: 0.109 s
% 0.21/0.52  % (609)------------------------------
% 0.21/0.52  % (609)------------------------------
% 0.21/0.52  % (612)ott-3_4:1_awrs=converge:awrsf=2:acc=model:add=large:afr=on:afp=40000:afq=1.2:anc=none:ccuc=small_ones:fde=unused:gsp=input_only:irw=on:nm=0:nwc=4:sd=4:ss=axioms:s2a=on:st=1.2:sos=on:urr=on:updr=off:uhcvi=on_2 on theBenchmark
% 0.21/0.52  % (595)Success in time 0.16 s
%------------------------------------------------------------------------------
