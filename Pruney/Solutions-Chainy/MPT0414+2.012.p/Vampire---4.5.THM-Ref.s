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
% DateTime   : Thu Dec  3 12:46:20 EST 2020

% Result     : Theorem 1.55s
% Output     : Refutation 1.89s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 807 expanded)
%              Number of leaves         :    8 ( 164 expanded)
%              Depth                    :   24
%              Number of atoms          :  184 (2748 expanded)
%              Number of equality atoms :   27 ( 335 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f398,plain,(
    $false ),
    inference(subsumption_resolution,[],[f397,f335])).

fof(f335,plain,(
    k1_xboole_0 != sK1 ),
    inference(backward_demodulation,[],[f25,f327])).

fof(f327,plain,(
    k1_xboole_0 = sK2 ),
    inference(resolution,[],[f326,f73])).

fof(f73,plain,
    ( r2_hidden(sK3(sK2),sK1)
    | k1_xboole_0 = sK2 ),
    inference(subsumption_resolution,[],[f69,f28])).

fof(f28,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f69,plain,
    ( k1_xboole_0 = sK2
    | ~ r2_hidden(sK3(sK2),sK2)
    | r2_hidden(sK3(sK2),sK1) ),
    inference(resolution,[],[f64,f22])).

fof(f22,plain,(
    ! [X3] :
      ( ~ m1_subset_1(X3,k1_zfmisc_1(sK0))
      | ~ r2_hidden(X3,sK2)
      | r2_hidden(X3,sK1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( r2_hidden(X3,X1)
              <=> r2_hidden(X3,X2) )
              | ~ m1_subset_1(X3,k1_zfmisc_1(X0)) )
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( r2_hidden(X3,X1)
              <=> r2_hidden(X3,X2) )
              | ~ m1_subset_1(X3,k1_zfmisc_1(X0)) )
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
           => ( ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(X0))
                 => ( r2_hidden(X3,X1)
                  <=> r2_hidden(X3,X2) ) )
             => X1 = X2 ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
         => ( ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(X0))
               => ( r2_hidden(X3,X1)
                <=> r2_hidden(X3,X2) ) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_setfam_1)).

fof(f64,plain,
    ( m1_subset_1(sK3(sK2),k1_zfmisc_1(sK0))
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f60,f28])).

fof(f60,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK2)
      | m1_subset_1(X0,k1_zfmisc_1(sK0)) ) ),
    inference(resolution,[],[f37,f24])).

fof(f24,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f12])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1)
      | m1_subset_1(X0,X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset)).

fof(f326,plain,(
    ! [X0] : ~ r2_hidden(X0,sK1) ),
    inference(resolution,[],[f325,f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X0)
      | ~ r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] : ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f325,plain,(
    v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f323,f105])).

fof(f105,plain,(
    r1_tarski(sK2,sK1) ),
    inference(duplicate_literal_removal,[],[f103])).

fof(f103,plain,
    ( r1_tarski(sK2,sK1)
    | r1_tarski(sK2,sK1) ),
    inference(resolution,[],[f98,f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK5(X0,X1),X1)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(f98,plain,(
    ! [X1] :
      ( r2_hidden(sK5(sK2,X1),sK1)
      | r1_tarski(sK2,X1) ) ),
    inference(subsumption_resolution,[],[f94,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK5(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f94,plain,(
    ! [X1] :
      ( r1_tarski(sK2,X1)
      | ~ r2_hidden(sK5(sK2,X1),sK2)
      | r2_hidden(sK5(sK2,X1),sK1) ) ),
    inference(resolution,[],[f65,f22])).

fof(f65,plain,(
    ! [X0] :
      ( m1_subset_1(sK5(sK2,X0),k1_zfmisc_1(sK0))
      | r1_tarski(sK2,X0) ) ),
    inference(resolution,[],[f60,f33])).

fof(f323,plain,
    ( v1_xboole_0(sK1)
    | ~ r1_tarski(sK2,sK1) ),
    inference(resolution,[],[f322,f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(f322,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(sK1))
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f317,f25])).

fof(f317,plain,
    ( v1_xboole_0(sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(sK1))
    | sK1 = sK2 ),
    inference(resolution,[],[f311,f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK4(X0,X1),X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & m1_subset_1(X2,X0) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & m1_subset_1(X2,X0) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( ! [X2] :
            ( m1_subset_1(X2,X0)
           => r2_hidden(X2,X1) )
       => X0 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_subset_1)).

fof(f311,plain,
    ( r2_hidden(sK4(sK1,sK2),sK2)
    | v1_xboole_0(sK1) ),
    inference(resolution,[],[f307,f127])).

fof(f127,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK1)
      | r2_hidden(X0,sK2) ) ),
    inference(resolution,[],[f125,f32])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f125,plain,(
    r1_tarski(sK1,sK2) ),
    inference(duplicate_literal_removal,[],[f122])).

fof(f122,plain,
    ( r1_tarski(sK1,sK2)
    | r1_tarski(sK1,sK2) ),
    inference(resolution,[],[f117,f34])).

fof(f117,plain,(
    ! [X0] :
      ( r2_hidden(sK5(sK1,X0),sK2)
      | r1_tarski(sK1,X0) ) ),
    inference(subsumption_resolution,[],[f112,f33])).

fof(f112,plain,(
    ! [X0] :
      ( r1_tarski(sK1,X0)
      | r2_hidden(sK5(sK1,X0),sK2)
      | ~ r2_hidden(sK5(sK1,X0),sK1) ) ),
    inference(resolution,[],[f67,f23])).

fof(f23,plain,(
    ! [X3] :
      ( ~ m1_subset_1(X3,k1_zfmisc_1(sK0))
      | r2_hidden(X3,sK2)
      | ~ r2_hidden(X3,sK1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f67,plain,(
    ! [X0] :
      ( m1_subset_1(sK5(sK1,X0),k1_zfmisc_1(sK0))
      | r1_tarski(sK1,X0) ) ),
    inference(resolution,[],[f61,f33])).

fof(f61,plain,(
    ! [X1] :
      ( ~ r2_hidden(X1,sK1)
      | m1_subset_1(X1,k1_zfmisc_1(sK0)) ) ),
    inference(resolution,[],[f37,f26])).

fof(f26,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f12])).

fof(f307,plain,
    ( r2_hidden(sK4(sK1,sK2),sK1)
    | v1_xboole_0(sK1) ),
    inference(subsumption_resolution,[],[f305,f25])).

fof(f305,plain,
    ( v1_xboole_0(sK1)
    | r2_hidden(sK4(sK1,sK2),sK1)
    | sK1 = sK2 ),
    inference(resolution,[],[f242,f105])).

fof(f242,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | v1_xboole_0(X1)
      | r2_hidden(sK4(X1,X0),X1)
      | X0 = X1 ) ),
    inference(resolution,[],[f92,f35])).

fof(f92,plain,(
    ! [X8,X7] :
      ( ~ m1_subset_1(X7,k1_zfmisc_1(X8))
      | X7 = X8
      | v1_xboole_0(X8)
      | r2_hidden(sK4(X8,X7),X8) ) ),
    inference(resolution,[],[f30,f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,X1)
      | v1_xboole_0(X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(f30,plain,(
    ! [X0,X1] :
      ( m1_subset_1(sK4(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f25,plain,(
    sK1 != sK2 ),
    inference(cnf_transformation,[],[f12])).

fof(f397,plain,(
    k1_xboole_0 = sK1 ),
    inference(subsumption_resolution,[],[f347,f395])).

fof(f395,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(subsumption_resolution,[],[f344,f392])).

fof(f392,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_xboole_0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(sK0)) ) ),
    inference(subsumption_resolution,[],[f332,f326])).

fof(f332,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_xboole_0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(sK0))
      | r2_hidden(X3,sK1) ) ),
    inference(backward_demodulation,[],[f22,f327])).

fof(f344,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,k1_xboole_0)
      | m1_subset_1(X0,k1_zfmisc_1(sK0)) ) ),
    inference(backward_demodulation,[],[f60,f327])).

fof(f347,plain,
    ( r2_hidden(sK3(sK1),k1_xboole_0)
    | k1_xboole_0 = sK1 ),
    inference(backward_demodulation,[],[f83,f327])).

fof(f83,plain,
    ( r2_hidden(sK3(sK1),sK2)
    | k1_xboole_0 = sK1 ),
    inference(subsumption_resolution,[],[f78,f28])).

fof(f78,plain,
    ( k1_xboole_0 = sK1
    | r2_hidden(sK3(sK1),sK2)
    | ~ r2_hidden(sK3(sK1),sK1) ),
    inference(resolution,[],[f66,f23])).

fof(f66,plain,
    ( m1_subset_1(sK3(sK1),k1_zfmisc_1(sK0))
    | k1_xboole_0 = sK1 ),
    inference(resolution,[],[f61,f28])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n010.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:48:59 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.55  % (12451)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.21/0.56  % (12434)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.57  % (12422)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.21/0.57  % (12426)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.21/0.57  % (12425)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.57  % (12446)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.21/0.57  % (12448)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.21/0.58  % (12444)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.21/0.58  % (12444)Refutation not found, incomplete strategy% (12444)------------------------------
% 0.21/0.58  % (12444)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.58  % (12444)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.58  
% 0.21/0.58  % (12444)Memory used [KB]: 1791
% 0.21/0.58  % (12444)Time elapsed: 0.157 s
% 0.21/0.58  % (12444)------------------------------
% 0.21/0.58  % (12444)------------------------------
% 0.21/0.58  % (12436)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.21/0.58  % (12437)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.21/0.58  % (12449)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.21/0.58  % (12442)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.21/0.58  % (12428)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.21/0.59  % (12439)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.21/0.59  % (12427)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 1.55/0.59  % (12430)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.55/0.60  % (12435)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 1.55/0.60  % (12445)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 1.55/0.60  % (12449)Refutation not found, incomplete strategy% (12449)------------------------------
% 1.55/0.60  % (12449)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.55/0.60  % (12449)Termination reason: Refutation not found, incomplete strategy
% 1.55/0.60  
% 1.55/0.60  % (12449)Memory used [KB]: 10618
% 1.55/0.60  % (12449)Time elapsed: 0.185 s
% 1.55/0.60  % (12449)------------------------------
% 1.55/0.60  % (12449)------------------------------
% 1.55/0.60  % (12439)Refutation not found, incomplete strategy% (12439)------------------------------
% 1.55/0.60  % (12439)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.55/0.60  % (12439)Termination reason: Refutation not found, incomplete strategy
% 1.55/0.60  
% 1.55/0.60  % (12439)Memory used [KB]: 10618
% 1.55/0.60  % (12439)Time elapsed: 0.185 s
% 1.55/0.60  % (12439)------------------------------
% 1.55/0.60  % (12439)------------------------------
% 1.55/0.61  % (12445)Refutation not found, incomplete strategy% (12445)------------------------------
% 1.55/0.61  % (12445)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.55/0.61  % (12427)Refutation found. Thanks to Tanya!
% 1.55/0.61  % SZS status Theorem for theBenchmark
% 1.55/0.61  % SZS output start Proof for theBenchmark
% 1.55/0.61  fof(f398,plain,(
% 1.55/0.61    $false),
% 1.55/0.61    inference(subsumption_resolution,[],[f397,f335])).
% 1.55/0.61  fof(f335,plain,(
% 1.55/0.61    k1_xboole_0 != sK1),
% 1.55/0.61    inference(backward_demodulation,[],[f25,f327])).
% 1.55/0.61  fof(f327,plain,(
% 1.55/0.61    k1_xboole_0 = sK2),
% 1.55/0.61    inference(resolution,[],[f326,f73])).
% 1.55/0.61  fof(f73,plain,(
% 1.55/0.61    r2_hidden(sK3(sK2),sK1) | k1_xboole_0 = sK2),
% 1.55/0.61    inference(subsumption_resolution,[],[f69,f28])).
% 1.55/0.61  fof(f28,plain,(
% 1.55/0.61    ( ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0) )),
% 1.55/0.61    inference(cnf_transformation,[],[f14])).
% 1.55/0.61  fof(f14,plain,(
% 1.55/0.61    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.55/0.61    inference(ennf_transformation,[],[f3])).
% 1.55/0.61  fof(f3,axiom,(
% 1.55/0.61    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).
% 1.55/0.61  fof(f69,plain,(
% 1.55/0.61    k1_xboole_0 = sK2 | ~r2_hidden(sK3(sK2),sK2) | r2_hidden(sK3(sK2),sK1)),
% 1.55/0.61    inference(resolution,[],[f64,f22])).
% 1.55/0.61  fof(f22,plain,(
% 1.55/0.61    ( ! [X3] : (~m1_subset_1(X3,k1_zfmisc_1(sK0)) | ~r2_hidden(X3,sK2) | r2_hidden(X3,sK1)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f12])).
% 1.55/0.61  fof(f12,plain,(
% 1.55/0.61    ? [X0,X1] : (? [X2] : (X1 != X2 & ! [X3] : ((r2_hidden(X3,X1) <=> r2_hidden(X3,X2)) | ~m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 1.55/0.61    inference(flattening,[],[f11])).
% 1.55/0.61  fof(f11,plain,(
% 1.55/0.61    ? [X0,X1] : (? [X2] : ((X1 != X2 & ! [X3] : ((r2_hidden(X3,X1) <=> r2_hidden(X3,X2)) | ~m1_subset_1(X3,k1_zfmisc_1(X0)))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 1.55/0.61    inference(ennf_transformation,[],[f9])).
% 1.55/0.61  fof(f9,negated_conjecture,(
% 1.55/0.61    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (! [X3] : (m1_subset_1(X3,k1_zfmisc_1(X0)) => (r2_hidden(X3,X1) <=> r2_hidden(X3,X2))) => X1 = X2)))),
% 1.55/0.61    inference(negated_conjecture,[],[f8])).
% 1.55/0.61  fof(f8,conjecture,(
% 1.55/0.61    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (! [X3] : (m1_subset_1(X3,k1_zfmisc_1(X0)) => (r2_hidden(X3,X1) <=> r2_hidden(X3,X2))) => X1 = X2)))),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_setfam_1)).
% 1.55/0.61  fof(f64,plain,(
% 1.55/0.61    m1_subset_1(sK3(sK2),k1_zfmisc_1(sK0)) | k1_xboole_0 = sK2),
% 1.55/0.61    inference(resolution,[],[f60,f28])).
% 1.55/0.61  fof(f60,plain,(
% 1.55/0.61    ( ! [X0] : (~r2_hidden(X0,sK2) | m1_subset_1(X0,k1_zfmisc_1(sK0))) )),
% 1.55/0.61    inference(resolution,[],[f37,f24])).
% 1.55/0.61  fof(f24,plain,(
% 1.55/0.61    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 1.55/0.61    inference(cnf_transformation,[],[f12])).
% 1.55/0.61  fof(f37,plain,(
% 1.55/0.61    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1) | m1_subset_1(X0,X2)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f21])).
% 1.55/0.61  fof(f21,plain,(
% 1.55/0.61    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.55/0.61    inference(flattening,[],[f20])).
% 1.55/0.61  fof(f20,plain,(
% 1.55/0.61    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 1.55/0.61    inference(ennf_transformation,[],[f7])).
% 1.55/0.61  fof(f7,axiom,(
% 1.55/0.61    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset)).
% 1.55/0.61  fof(f326,plain,(
% 1.55/0.61    ( ! [X0] : (~r2_hidden(X0,sK1)) )),
% 1.55/0.61    inference(resolution,[],[f325,f27])).
% 1.55/0.61  fof(f27,plain,(
% 1.55/0.61    ( ! [X0,X1] : (~v1_xboole_0(X0) | ~r2_hidden(X1,X0)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f13])).
% 1.55/0.61  fof(f13,plain,(
% 1.55/0.61    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0))),
% 1.55/0.61    inference(ennf_transformation,[],[f10])).
% 1.55/0.61  fof(f10,plain,(
% 1.55/0.61    ! [X0] : (v1_xboole_0(X0) => ! [X1] : ~r2_hidden(X1,X0))),
% 1.55/0.61    inference(unused_predicate_definition_removal,[],[f1])).
% 1.55/0.61  fof(f1,axiom,(
% 1.55/0.61    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).
% 1.55/0.61  fof(f325,plain,(
% 1.55/0.61    v1_xboole_0(sK1)),
% 1.55/0.61    inference(subsumption_resolution,[],[f323,f105])).
% 1.55/0.61  fof(f105,plain,(
% 1.55/0.61    r1_tarski(sK2,sK1)),
% 1.55/0.61    inference(duplicate_literal_removal,[],[f103])).
% 1.55/0.61  fof(f103,plain,(
% 1.55/0.61    r1_tarski(sK2,sK1) | r1_tarski(sK2,sK1)),
% 1.55/0.61    inference(resolution,[],[f98,f34])).
% 1.55/0.61  fof(f34,plain,(
% 1.55/0.61    ( ! [X0,X1] : (~r2_hidden(sK5(X0,X1),X1) | r1_tarski(X0,X1)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f19])).
% 1.55/0.61  fof(f19,plain,(
% 1.55/0.61    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.55/0.61    inference(ennf_transformation,[],[f2])).
% 1.55/0.61  fof(f2,axiom,(
% 1.55/0.61    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 1.55/0.61  fof(f98,plain,(
% 1.55/0.61    ( ! [X1] : (r2_hidden(sK5(sK2,X1),sK1) | r1_tarski(sK2,X1)) )),
% 1.55/0.61    inference(subsumption_resolution,[],[f94,f33])).
% 1.55/0.61  fof(f33,plain,(
% 1.55/0.61    ( ! [X0,X1] : (r2_hidden(sK5(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f19])).
% 1.55/0.61  fof(f94,plain,(
% 1.55/0.61    ( ! [X1] : (r1_tarski(sK2,X1) | ~r2_hidden(sK5(sK2,X1),sK2) | r2_hidden(sK5(sK2,X1),sK1)) )),
% 1.55/0.61    inference(resolution,[],[f65,f22])).
% 1.55/0.61  fof(f65,plain,(
% 1.55/0.61    ( ! [X0] : (m1_subset_1(sK5(sK2,X0),k1_zfmisc_1(sK0)) | r1_tarski(sK2,X0)) )),
% 1.55/0.61    inference(resolution,[],[f60,f33])).
% 1.55/0.61  fof(f323,plain,(
% 1.55/0.61    v1_xboole_0(sK1) | ~r1_tarski(sK2,sK1)),
% 1.55/0.61    inference(resolution,[],[f322,f35])).
% 1.55/0.61  fof(f35,plain,(
% 1.55/0.61    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 1.55/0.61    inference(cnf_transformation,[],[f6])).
% 1.55/0.61  fof(f6,axiom,(
% 1.55/0.61    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.55/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).
% 1.89/0.61  fof(f322,plain,(
% 1.89/0.61    ~m1_subset_1(sK2,k1_zfmisc_1(sK1)) | v1_xboole_0(sK1)),
% 1.89/0.61    inference(subsumption_resolution,[],[f317,f25])).
% 1.89/0.61  fof(f317,plain,(
% 1.89/0.61    v1_xboole_0(sK1) | ~m1_subset_1(sK2,k1_zfmisc_1(sK1)) | sK1 = sK2),
% 1.89/0.61    inference(resolution,[],[f311,f31])).
% 1.89/0.61  fof(f31,plain,(
% 1.89/0.61    ( ! [X0,X1] : (~r2_hidden(sK4(X0,X1),X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | X0 = X1) )),
% 1.89/0.61    inference(cnf_transformation,[],[f18])).
% 1.89/0.61  fof(f18,plain,(
% 1.89/0.61    ! [X0,X1] : (X0 = X1 | ? [X2] : (~r2_hidden(X2,X1) & m1_subset_1(X2,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.89/0.61    inference(flattening,[],[f17])).
% 1.89/0.61  fof(f17,plain,(
% 1.89/0.61    ! [X0,X1] : ((X0 = X1 | ? [X2] : (~r2_hidden(X2,X1) & m1_subset_1(X2,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.89/0.61    inference(ennf_transformation,[],[f4])).
% 1.89/0.61  fof(f4,axiom,(
% 1.89/0.61    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (! [X2] : (m1_subset_1(X2,X0) => r2_hidden(X2,X1)) => X0 = X1))),
% 1.89/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_subset_1)).
% 1.89/0.61  fof(f311,plain,(
% 1.89/0.61    r2_hidden(sK4(sK1,sK2),sK2) | v1_xboole_0(sK1)),
% 1.89/0.61    inference(resolution,[],[f307,f127])).
% 1.89/0.61  fof(f127,plain,(
% 1.89/0.61    ( ! [X0] : (~r2_hidden(X0,sK1) | r2_hidden(X0,sK2)) )),
% 1.89/0.61    inference(resolution,[],[f125,f32])).
% 1.89/0.61  fof(f32,plain,(
% 1.89/0.61    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.89/0.61    inference(cnf_transformation,[],[f19])).
% 1.89/0.61  fof(f125,plain,(
% 1.89/0.61    r1_tarski(sK1,sK2)),
% 1.89/0.61    inference(duplicate_literal_removal,[],[f122])).
% 1.89/0.61  fof(f122,plain,(
% 1.89/0.61    r1_tarski(sK1,sK2) | r1_tarski(sK1,sK2)),
% 1.89/0.61    inference(resolution,[],[f117,f34])).
% 1.89/0.61  fof(f117,plain,(
% 1.89/0.61    ( ! [X0] : (r2_hidden(sK5(sK1,X0),sK2) | r1_tarski(sK1,X0)) )),
% 1.89/0.61    inference(subsumption_resolution,[],[f112,f33])).
% 1.89/0.61  fof(f112,plain,(
% 1.89/0.61    ( ! [X0] : (r1_tarski(sK1,X0) | r2_hidden(sK5(sK1,X0),sK2) | ~r2_hidden(sK5(sK1,X0),sK1)) )),
% 1.89/0.61    inference(resolution,[],[f67,f23])).
% 1.89/0.61  fof(f23,plain,(
% 1.89/0.61    ( ! [X3] : (~m1_subset_1(X3,k1_zfmisc_1(sK0)) | r2_hidden(X3,sK2) | ~r2_hidden(X3,sK1)) )),
% 1.89/0.61    inference(cnf_transformation,[],[f12])).
% 1.89/0.61  fof(f67,plain,(
% 1.89/0.61    ( ! [X0] : (m1_subset_1(sK5(sK1,X0),k1_zfmisc_1(sK0)) | r1_tarski(sK1,X0)) )),
% 1.89/0.61    inference(resolution,[],[f61,f33])).
% 1.89/0.61  fof(f61,plain,(
% 1.89/0.61    ( ! [X1] : (~r2_hidden(X1,sK1) | m1_subset_1(X1,k1_zfmisc_1(sK0))) )),
% 1.89/0.61    inference(resolution,[],[f37,f26])).
% 1.89/0.61  fof(f26,plain,(
% 1.89/0.61    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 1.89/0.61    inference(cnf_transformation,[],[f12])).
% 1.89/0.61  fof(f307,plain,(
% 1.89/0.61    r2_hidden(sK4(sK1,sK2),sK1) | v1_xboole_0(sK1)),
% 1.89/0.61    inference(subsumption_resolution,[],[f305,f25])).
% 1.89/0.61  fof(f305,plain,(
% 1.89/0.61    v1_xboole_0(sK1) | r2_hidden(sK4(sK1,sK2),sK1) | sK1 = sK2),
% 1.89/0.61    inference(resolution,[],[f242,f105])).
% 1.89/0.61  fof(f242,plain,(
% 1.89/0.61    ( ! [X0,X1] : (~r1_tarski(X0,X1) | v1_xboole_0(X1) | r2_hidden(sK4(X1,X0),X1) | X0 = X1) )),
% 1.89/0.61    inference(resolution,[],[f92,f35])).
% 1.89/0.61  fof(f92,plain,(
% 1.89/0.61    ( ! [X8,X7] : (~m1_subset_1(X7,k1_zfmisc_1(X8)) | X7 = X8 | v1_xboole_0(X8) | r2_hidden(sK4(X8,X7),X8)) )),
% 1.89/0.61    inference(resolution,[],[f30,f29])).
% 1.89/0.61  fof(f29,plain,(
% 1.89/0.61    ( ! [X0,X1] : (~m1_subset_1(X0,X1) | v1_xboole_0(X1) | r2_hidden(X0,X1)) )),
% 1.89/0.61    inference(cnf_transformation,[],[f16])).
% 1.89/0.61  fof(f16,plain,(
% 1.89/0.61    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.89/0.61    inference(flattening,[],[f15])).
% 1.89/0.61  fof(f15,plain,(
% 1.89/0.61    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.89/0.61    inference(ennf_transformation,[],[f5])).
% 1.89/0.61  fof(f5,axiom,(
% 1.89/0.61    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.89/0.61    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).
% 1.89/0.61  fof(f30,plain,(
% 1.89/0.61    ( ! [X0,X1] : (m1_subset_1(sK4(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | X0 = X1) )),
% 1.89/0.61    inference(cnf_transformation,[],[f18])).
% 1.89/0.61  fof(f25,plain,(
% 1.89/0.61    sK1 != sK2),
% 1.89/0.61    inference(cnf_transformation,[],[f12])).
% 1.89/0.61  fof(f397,plain,(
% 1.89/0.61    k1_xboole_0 = sK1),
% 1.89/0.61    inference(subsumption_resolution,[],[f347,f395])).
% 1.89/0.61  fof(f395,plain,(
% 1.89/0.61    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 1.89/0.61    inference(subsumption_resolution,[],[f344,f392])).
% 1.89/0.61  fof(f392,plain,(
% 1.89/0.61    ( ! [X3] : (~r2_hidden(X3,k1_xboole_0) | ~m1_subset_1(X3,k1_zfmisc_1(sK0))) )),
% 1.89/0.61    inference(subsumption_resolution,[],[f332,f326])).
% 1.89/0.61  fof(f332,plain,(
% 1.89/0.61    ( ! [X3] : (~r2_hidden(X3,k1_xboole_0) | ~m1_subset_1(X3,k1_zfmisc_1(sK0)) | r2_hidden(X3,sK1)) )),
% 1.89/0.61    inference(backward_demodulation,[],[f22,f327])).
% 1.89/0.61  fof(f344,plain,(
% 1.89/0.61    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0) | m1_subset_1(X0,k1_zfmisc_1(sK0))) )),
% 1.89/0.61    inference(backward_demodulation,[],[f60,f327])).
% 1.89/0.61  fof(f347,plain,(
% 1.89/0.61    r2_hidden(sK3(sK1),k1_xboole_0) | k1_xboole_0 = sK1),
% 1.89/0.61    inference(backward_demodulation,[],[f83,f327])).
% 1.89/0.61  fof(f83,plain,(
% 1.89/0.61    r2_hidden(sK3(sK1),sK2) | k1_xboole_0 = sK1),
% 1.89/0.61    inference(subsumption_resolution,[],[f78,f28])).
% 1.89/0.61  fof(f78,plain,(
% 1.89/0.61    k1_xboole_0 = sK1 | r2_hidden(sK3(sK1),sK2) | ~r2_hidden(sK3(sK1),sK1)),
% 1.89/0.61    inference(resolution,[],[f66,f23])).
% 1.89/0.61  fof(f66,plain,(
% 1.89/0.61    m1_subset_1(sK3(sK1),k1_zfmisc_1(sK0)) | k1_xboole_0 = sK1),
% 1.89/0.61    inference(resolution,[],[f61,f28])).
% 1.89/0.61  % SZS output end Proof for theBenchmark
% 1.89/0.61  % (12427)------------------------------
% 1.89/0.61  % (12427)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.89/0.61  % (12445)Termination reason: Refutation not found, incomplete strategy
% 1.89/0.61  % (12427)Termination reason: Refutation
% 1.89/0.61  
% 1.89/0.61  % (12427)Memory used [KB]: 6396
% 1.89/0.61  
% 1.89/0.61  % (12445)Memory used [KB]: 10874
% 1.89/0.61  % (12427)Time elapsed: 0.174 s
% 1.89/0.61  % (12445)Time elapsed: 0.167 s
% 1.89/0.62  % (12427)------------------------------
% 1.89/0.62  % (12427)------------------------------
% 1.89/0.62  % (12445)------------------------------
% 1.89/0.62  % (12445)------------------------------
% 1.89/0.62  % (12424)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 1.89/0.62  % (12414)Success in time 0.248 s
%------------------------------------------------------------------------------
