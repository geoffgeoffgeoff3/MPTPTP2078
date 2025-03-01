%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:17:52 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 312 expanded)
%              Number of leaves         :    9 (  62 expanded)
%              Depth                    :   18
%              Number of atoms          :  199 (1610 expanded)
%              Number of equality atoms :    5 (  16 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f127,plain,(
    $false ),
    inference(subsumption_resolution,[],[f126,f98])).

fof(f98,plain,(
    ~ v1_xboole_0(k2_struct_0(sK1)) ),
    inference(subsumption_resolution,[],[f92,f29])).

fof(f29,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( r1_tsep_1(X2,X1)
                | r1_tsep_1(X1,X2) )
              & m1_pre_topc(X1,X2)
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( r1_tsep_1(X2,X1)
                | r1_tsep_1(X1,X2) )
              & m1_pre_topc(X1,X2)
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_pre_topc(X1,X0)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_pre_topc(X2,X0)
                  & ~ v2_struct_0(X2) )
               => ( m1_pre_topc(X1,X2)
                 => ( ~ r1_tsep_1(X2,X1)
                    & ~ r1_tsep_1(X1,X2) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f9,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ( m1_pre_topc(X1,X2)
               => ( ~ r1_tsep_1(X2,X1)
                  & ~ r1_tsep_1(X1,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_tmap_1)).

fof(f92,plain,
    ( v2_struct_0(sK1)
    | ~ v1_xboole_0(k2_struct_0(sK1)) ),
    inference(resolution,[],[f70,f41])).

fof(f41,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | v2_struct_0(X0)
      | ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_struct_0)).

fof(f70,plain,(
    l1_struct_0(sK1) ),
    inference(resolution,[],[f59,f40])).

fof(f40,plain,(
    ! [X0] :
      ( ~ l1_pre_topc(X0)
      | l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(f59,plain,(
    l1_pre_topc(sK1) ),
    inference(subsumption_resolution,[],[f56,f48])).

fof(f48,plain,(
    l1_pre_topc(sK2) ),
    inference(subsumption_resolution,[],[f45,f33])).

fof(f33,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f12])).

fof(f45,plain,
    ( ~ l1_pre_topc(sK0)
    | l1_pre_topc(sK2) ),
    inference(resolution,[],[f27,f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | l1_pre_topc(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(f27,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f12])).

fof(f56,plain,
    ( ~ l1_pre_topc(sK2)
    | l1_pre_topc(sK1) ),
    inference(resolution,[],[f28,f39])).

fof(f28,plain,(
    m1_pre_topc(sK1,sK2) ),
    inference(cnf_transformation,[],[f12])).

fof(f126,plain,(
    v1_xboole_0(k2_struct_0(sK1)) ),
    inference(subsumption_resolution,[],[f125,f119])).

fof(f119,plain,(
    r1_tarski(k2_struct_0(sK1),k2_struct_0(sK2)) ),
    inference(forward_demodulation,[],[f118,f78])).

fof(f78,plain,(
    u1_struct_0(sK2) = k2_struct_0(sK2) ),
    inference(resolution,[],[f62,f43])).

fof(f43,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | k2_struct_0(X0) = u1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(f62,plain,(
    l1_struct_0(sK2) ),
    inference(resolution,[],[f48,f40])).

fof(f118,plain,(
    r1_tarski(k2_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(subsumption_resolution,[],[f116,f28])).

fof(f116,plain,
    ( r1_tarski(k2_struct_0(sK1),u1_struct_0(sK2))
    | ~ m1_pre_topc(sK1,sK2) ),
    inference(resolution,[],[f95,f27])).

fof(f95,plain,(
    ! [X0] :
      ( ~ m1_pre_topc(X0,sK0)
      | r1_tarski(k2_struct_0(sK1),u1_struct_0(X0))
      | ~ m1_pre_topc(sK1,X0) ) ),
    inference(backward_demodulation,[],[f67,f91])).

fof(f91,plain,(
    u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(resolution,[],[f70,f43])).

fof(f67,plain,(
    ! [X0] :
      ( ~ m1_pre_topc(X0,sK0)
      | ~ m1_pre_topc(sK1,X0)
      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) ) ),
    inference(subsumption_resolution,[],[f66,f32])).

fof(f32,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f12])).

fof(f66,plain,(
    ! [X0] :
      ( ~ v2_pre_topc(sK0)
      | ~ m1_pre_topc(X0,sK0)
      | ~ m1_pre_topc(sK1,X0)
      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) ) ),
    inference(subsumption_resolution,[],[f64,f33])).

fof(f64,plain,(
    ! [X0] :
      ( ~ l1_pre_topc(sK0)
      | ~ v2_pre_topc(sK0)
      | ~ m1_pre_topc(X0,sK0)
      | ~ m1_pre_topc(sK1,X0)
      | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0)) ) ),
    inference(resolution,[],[f30,f37])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X2)
      | r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_tsep_1)).

fof(f30,plain,(
    m1_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f12])).

fof(f125,plain,
    ( ~ r1_tarski(k2_struct_0(sK1),k2_struct_0(sK2))
    | v1_xboole_0(k2_struct_0(sK1)) ),
    inference(resolution,[],[f93,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_xboole_1)).

fof(f93,plain,(
    r1_xboole_0(k2_struct_0(sK1),k2_struct_0(sK2)) ),
    inference(backward_demodulation,[],[f88,f91])).

fof(f88,plain,(
    r1_xboole_0(u1_struct_0(sK1),k2_struct_0(sK2)) ),
    inference(forward_demodulation,[],[f87,f78])).

fof(f87,plain,(
    r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(subsumption_resolution,[],[f86,f70])).

fof(f86,plain,
    ( r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | ~ l1_struct_0(sK1) ),
    inference(subsumption_resolution,[],[f84,f62])).

fof(f84,plain,
    ( ~ l1_struct_0(sK2)
    | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))
    | ~ l1_struct_0(sK1) ),
    inference(resolution,[],[f77,f36])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tsep_1(X0,X1)
          <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) )
          | ~ l1_struct_0(X1) )
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( l1_struct_0(X1)
         => ( r1_tsep_1(X0,X1)
          <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tsep_1)).

fof(f77,plain,(
    r1_tsep_1(sK1,sK2) ),
    inference(subsumption_resolution,[],[f76,f62])).

fof(f76,plain,
    ( r1_tsep_1(sK1,sK2)
    | ~ l1_struct_0(sK2) ),
    inference(subsumption_resolution,[],[f73,f70])).

fof(f73,plain,
    ( r1_tsep_1(sK1,sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK2) ),
    inference(duplicate_literal_removal,[],[f72])).

fof(f72,plain,
    ( r1_tsep_1(sK1,sK2)
    | ~ l1_struct_0(sK1)
    | ~ l1_struct_0(sK2)
    | r1_tsep_1(sK1,sK2) ),
    inference(resolution,[],[f25,f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0)
      | r1_tsep_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X1,X0)
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tsep_1(X1,X0)
      | ~ r1_tsep_1(X0,X1)
      | ~ l1_struct_0(X1)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( l1_struct_0(X1)
        & l1_struct_0(X0) )
     => ( r1_tsep_1(X0,X1)
       => r1_tsep_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_tsep_1)).

fof(f25,plain,
    ( r1_tsep_1(sK2,sK1)
    | r1_tsep_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f12])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:23:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.46  % (13264)lrs+1_4:1_awrs=converge:awrsf=128:av=off:cond=fast:fde=none:gsp=input_only:gs=on:gsem=on:lcm=predicate:lwlo=on:nm=4:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:s2a=on:st=2.0:sos=on_172 on theBenchmark
% 0.20/0.46  % (13251)dis+11_5:4_acc=on:add=large:afp=40000:afq=1.2:amm=sco:anc=all_dependent:bd=off:ccuc=small_ones:irw=on:lcm=reverse:lma=on:nwc=1:sd=3:ss=axioms:sos=all:sp=occurrence:uhcvi=on_2 on theBenchmark
% 0.20/0.46  % (13251)Refutation not found, incomplete strategy% (13251)------------------------------
% 0.20/0.46  % (13251)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.46  % (13251)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.46  
% 0.20/0.46  % (13251)Memory used [KB]: 6140
% 0.20/0.46  % (13251)Time elapsed: 0.046 s
% 0.20/0.46  % (13251)------------------------------
% 0.20/0.46  % (13251)------------------------------
% 0.20/0.47  % (13264)Refutation found. Thanks to Tanya!
% 0.20/0.47  % SZS status Theorem for theBenchmark
% 0.20/0.47  % SZS output start Proof for theBenchmark
% 0.20/0.47  fof(f127,plain,(
% 0.20/0.47    $false),
% 0.20/0.47    inference(subsumption_resolution,[],[f126,f98])).
% 0.20/0.47  fof(f98,plain,(
% 0.20/0.47    ~v1_xboole_0(k2_struct_0(sK1))),
% 0.20/0.47    inference(subsumption_resolution,[],[f92,f29])).
% 0.20/0.47  fof(f29,plain,(
% 0.20/0.47    ~v2_struct_0(sK1)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f12,plain,(
% 0.20/0.47    ? [X0] : (? [X1] : (? [X2] : ((r1_tsep_1(X2,X1) | r1_tsep_1(X1,X2)) & m1_pre_topc(X1,X2) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 0.20/0.47    inference(flattening,[],[f11])).
% 0.20/0.47  fof(f11,plain,(
% 0.20/0.47    ? [X0] : (? [X1] : (? [X2] : (((r1_tsep_1(X2,X1) | r1_tsep_1(X1,X2)) & m1_pre_topc(X1,X2)) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (m1_pre_topc(X1,X0) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 0.20/0.47    inference(ennf_transformation,[],[f10])).
% 0.20/0.47  fof(f10,negated_conjecture,(
% 0.20/0.47    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (m1_pre_topc(X1,X2) => (~r1_tsep_1(X2,X1) & ~r1_tsep_1(X1,X2))))))),
% 0.20/0.47    inference(negated_conjecture,[],[f9])).
% 0.20/0.47  fof(f9,conjecture,(
% 0.20/0.47    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (m1_pre_topc(X1,X2) => (~r1_tsep_1(X2,X1) & ~r1_tsep_1(X1,X2))))))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_tmap_1)).
% 0.20/0.47  fof(f92,plain,(
% 0.20/0.47    v2_struct_0(sK1) | ~v1_xboole_0(k2_struct_0(sK1))),
% 0.20/0.47    inference(resolution,[],[f70,f41])).
% 0.20/0.47  fof(f41,plain,(
% 0.20/0.47    ( ! [X0] : (~l1_struct_0(X0) | v2_struct_0(X0) | ~v1_xboole_0(k2_struct_0(X0))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f21])).
% 0.20/0.47  fof(f21,plain,(
% 0.20/0.47    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.20/0.47    inference(flattening,[],[f20])).
% 0.20/0.47  fof(f20,plain,(
% 0.20/0.47    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.20/0.47    inference(ennf_transformation,[],[f5])).
% 0.20/0.47  fof(f5,axiom,(
% 0.20/0.47    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k2_struct_0(X0)))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc5_struct_0)).
% 0.20/0.47  fof(f70,plain,(
% 0.20/0.47    l1_struct_0(sK1)),
% 0.20/0.47    inference(resolution,[],[f59,f40])).
% 0.20/0.47  fof(f40,plain,(
% 0.20/0.47    ( ! [X0] : (~l1_pre_topc(X0) | l1_struct_0(X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f19])).
% 0.20/0.47  fof(f19,plain,(
% 0.20/0.47    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f3])).
% 0.20/0.47  fof(f3,axiom,(
% 0.20/0.47    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).
% 0.20/0.47  fof(f59,plain,(
% 0.20/0.47    l1_pre_topc(sK1)),
% 0.20/0.47    inference(subsumption_resolution,[],[f56,f48])).
% 0.20/0.47  fof(f48,plain,(
% 0.20/0.47    l1_pre_topc(sK2)),
% 0.20/0.47    inference(subsumption_resolution,[],[f45,f33])).
% 0.20/0.47  fof(f33,plain,(
% 0.20/0.47    l1_pre_topc(sK0)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f45,plain,(
% 0.20/0.47    ~l1_pre_topc(sK0) | l1_pre_topc(sK2)),
% 0.20/0.47    inference(resolution,[],[f27,f39])).
% 0.20/0.47  fof(f39,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | l1_pre_topc(X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f18])).
% 0.20/0.47  fof(f18,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f4])).
% 0.20/0.47  fof(f4,axiom,(
% 0.20/0.47    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).
% 0.20/0.47  fof(f27,plain,(
% 0.20/0.47    m1_pre_topc(sK2,sK0)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f56,plain,(
% 0.20/0.47    ~l1_pre_topc(sK2) | l1_pre_topc(sK1)),
% 0.20/0.47    inference(resolution,[],[f28,f39])).
% 0.20/0.47  fof(f28,plain,(
% 0.20/0.47    m1_pre_topc(sK1,sK2)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f126,plain,(
% 0.20/0.47    v1_xboole_0(k2_struct_0(sK1))),
% 0.20/0.47    inference(subsumption_resolution,[],[f125,f119])).
% 0.20/0.47  fof(f119,plain,(
% 0.20/0.47    r1_tarski(k2_struct_0(sK1),k2_struct_0(sK2))),
% 0.20/0.47    inference(forward_demodulation,[],[f118,f78])).
% 0.20/0.47  fof(f78,plain,(
% 0.20/0.47    u1_struct_0(sK2) = k2_struct_0(sK2)),
% 0.20/0.47    inference(resolution,[],[f62,f43])).
% 0.20/0.47  fof(f43,plain,(
% 0.20/0.47    ( ! [X0] : (~l1_struct_0(X0) | k2_struct_0(X0) = u1_struct_0(X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f24])).
% 0.20/0.47  fof(f24,plain,(
% 0.20/0.47    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f2])).
% 0.20/0.47  fof(f2,axiom,(
% 0.20/0.47    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).
% 0.20/0.47  fof(f62,plain,(
% 0.20/0.47    l1_struct_0(sK2)),
% 0.20/0.47    inference(resolution,[],[f48,f40])).
% 0.20/0.47  fof(f118,plain,(
% 0.20/0.47    r1_tarski(k2_struct_0(sK1),u1_struct_0(sK2))),
% 0.20/0.47    inference(subsumption_resolution,[],[f116,f28])).
% 0.20/0.47  fof(f116,plain,(
% 0.20/0.47    r1_tarski(k2_struct_0(sK1),u1_struct_0(sK2)) | ~m1_pre_topc(sK1,sK2)),
% 0.20/0.47    inference(resolution,[],[f95,f27])).
% 0.20/0.47  fof(f95,plain,(
% 0.20/0.47    ( ! [X0] : (~m1_pre_topc(X0,sK0) | r1_tarski(k2_struct_0(sK1),u1_struct_0(X0)) | ~m1_pre_topc(sK1,X0)) )),
% 0.20/0.47    inference(backward_demodulation,[],[f67,f91])).
% 0.20/0.47  fof(f91,plain,(
% 0.20/0.47    u1_struct_0(sK1) = k2_struct_0(sK1)),
% 0.20/0.47    inference(resolution,[],[f70,f43])).
% 0.20/0.47  fof(f67,plain,(
% 0.20/0.47    ( ! [X0] : (~m1_pre_topc(X0,sK0) | ~m1_pre_topc(sK1,X0) | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0))) )),
% 0.20/0.47    inference(subsumption_resolution,[],[f66,f32])).
% 0.20/0.47  fof(f32,plain,(
% 0.20/0.47    v2_pre_topc(sK0)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f66,plain,(
% 0.20/0.47    ( ! [X0] : (~v2_pre_topc(sK0) | ~m1_pre_topc(X0,sK0) | ~m1_pre_topc(sK1,X0) | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0))) )),
% 0.20/0.47    inference(subsumption_resolution,[],[f64,f33])).
% 0.20/0.47  fof(f64,plain,(
% 0.20/0.47    ( ! [X0] : (~l1_pre_topc(sK0) | ~v2_pre_topc(sK0) | ~m1_pre_topc(X0,sK0) | ~m1_pre_topc(sK1,X0) | r1_tarski(u1_struct_0(sK1),u1_struct_0(X0))) )),
% 0.20/0.47    inference(resolution,[],[f30,f37])).
% 0.20/0.47  fof(f37,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X2) | r1_tarski(u1_struct_0(X1),u1_struct_0(X2))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f17])).
% 0.20/0.47  fof(f17,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 0.20/0.47    inference(flattening,[],[f16])).
% 0.20/0.47  fof(f16,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 0.20/0.47    inference(ennf_transformation,[],[f8])).
% 0.20/0.47  fof(f8,axiom,(
% 0.20/0.47    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)))))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_tsep_1)).
% 0.20/0.47  fof(f30,plain,(
% 0.20/0.47    m1_pre_topc(sK1,sK0)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  fof(f125,plain,(
% 0.20/0.47    ~r1_tarski(k2_struct_0(sK1),k2_struct_0(sK2)) | v1_xboole_0(k2_struct_0(sK1))),
% 0.20/0.47    inference(resolution,[],[f93,f42])).
% 0.20/0.47  fof(f42,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f23])).
% 0.20/0.47  fof(f23,plain,(
% 0.20/0.47    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 0.20/0.47    inference(flattening,[],[f22])).
% 0.20/0.47  fof(f22,plain,(
% 0.20/0.47    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 0.20/0.47    inference(ennf_transformation,[],[f1])).
% 0.20/0.47  fof(f1,axiom,(
% 0.20/0.47    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_xboole_1)).
% 0.20/0.47  fof(f93,plain,(
% 0.20/0.47    r1_xboole_0(k2_struct_0(sK1),k2_struct_0(sK2))),
% 0.20/0.47    inference(backward_demodulation,[],[f88,f91])).
% 0.20/0.47  fof(f88,plain,(
% 0.20/0.47    r1_xboole_0(u1_struct_0(sK1),k2_struct_0(sK2))),
% 0.20/0.47    inference(forward_demodulation,[],[f87,f78])).
% 0.20/0.47  fof(f87,plain,(
% 0.20/0.47    r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2))),
% 0.20/0.47    inference(subsumption_resolution,[],[f86,f70])).
% 0.20/0.47  fof(f86,plain,(
% 0.20/0.47    r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) | ~l1_struct_0(sK1)),
% 0.20/0.47    inference(subsumption_resolution,[],[f84,f62])).
% 0.20/0.47  fof(f84,plain,(
% 0.20/0.47    ~l1_struct_0(sK2) | r1_xboole_0(u1_struct_0(sK1),u1_struct_0(sK2)) | ~l1_struct_0(sK1)),
% 0.20/0.47    inference(resolution,[],[f77,f36])).
% 0.20/0.47  fof(f36,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)) | ~l1_struct_0(X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f15])).
% 0.20/0.47  fof(f15,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : ((r1_tsep_1(X0,X1) <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1))) | ~l1_struct_0(X1)) | ~l1_struct_0(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f6])).
% 0.20/0.47  fof(f6,axiom,(
% 0.20/0.47    ! [X0] : (l1_struct_0(X0) => ! [X1] : (l1_struct_0(X1) => (r1_tsep_1(X0,X1) <=> r1_xboole_0(u1_struct_0(X0),u1_struct_0(X1)))))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tsep_1)).
% 0.20/0.47  fof(f77,plain,(
% 0.20/0.47    r1_tsep_1(sK1,sK2)),
% 0.20/0.47    inference(subsumption_resolution,[],[f76,f62])).
% 0.20/0.47  fof(f76,plain,(
% 0.20/0.47    r1_tsep_1(sK1,sK2) | ~l1_struct_0(sK2)),
% 0.20/0.47    inference(subsumption_resolution,[],[f73,f70])).
% 0.20/0.47  fof(f73,plain,(
% 0.20/0.47    r1_tsep_1(sK1,sK2) | ~l1_struct_0(sK1) | ~l1_struct_0(sK2)),
% 0.20/0.47    inference(duplicate_literal_removal,[],[f72])).
% 0.20/0.47  fof(f72,plain,(
% 0.20/0.47    r1_tsep_1(sK1,sK2) | ~l1_struct_0(sK1) | ~l1_struct_0(sK2) | r1_tsep_1(sK1,sK2)),
% 0.20/0.47    inference(resolution,[],[f25,f34])).
% 0.20/0.47  fof(f34,plain,(
% 0.20/0.47    ( ! [X0,X1] : (~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | ~l1_struct_0(X0) | r1_tsep_1(X1,X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f14])).
% 0.20/0.47  fof(f14,plain,(
% 0.20/0.47    ! [X0,X1] : (r1_tsep_1(X1,X0) | ~r1_tsep_1(X0,X1) | ~l1_struct_0(X1) | ~l1_struct_0(X0))),
% 0.20/0.47    inference(flattening,[],[f13])).
% 0.20/0.47  fof(f13,plain,(
% 0.20/0.47    ! [X0,X1] : ((r1_tsep_1(X1,X0) | ~r1_tsep_1(X0,X1)) | (~l1_struct_0(X1) | ~l1_struct_0(X0)))),
% 0.20/0.47    inference(ennf_transformation,[],[f7])).
% 0.20/0.47  fof(f7,axiom,(
% 0.20/0.47    ! [X0,X1] : ((l1_struct_0(X1) & l1_struct_0(X0)) => (r1_tsep_1(X0,X1) => r1_tsep_1(X1,X0)))),
% 0.20/0.47    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_tsep_1)).
% 0.20/0.47  fof(f25,plain,(
% 0.20/0.47    r1_tsep_1(sK2,sK1) | r1_tsep_1(sK1,sK2)),
% 0.20/0.47    inference(cnf_transformation,[],[f12])).
% 0.20/0.47  % SZS output end Proof for theBenchmark
% 0.20/0.47  % (13264)------------------------------
% 0.20/0.47  % (13264)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.47  % (13264)Termination reason: Refutation
% 0.20/0.47  
% 0.20/0.47  % (13264)Memory used [KB]: 6140
% 0.20/0.47  % (13264)Time elapsed: 0.059 s
% 0.20/0.47  % (13264)------------------------------
% 0.20/0.47  % (13264)------------------------------
% 0.20/0.47  % (13243)Success in time 0.111 s
%------------------------------------------------------------------------------
