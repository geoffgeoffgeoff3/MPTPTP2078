%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:12:28 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   87 ( 988 expanded)
%              Number of leaves         :   14 ( 220 expanded)
%              Depth                    :   18
%              Number of atoms          :  238 (4686 expanded)
%              Number of equality atoms :   26 ( 503 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f472,plain,(
    $false ),
    inference(global_subsumption,[],[f446,f471])).

fof(f471,plain,(
    ~ r1_tarski(sK2,k1_xboole_0) ),
    inference(unit_resulting_resolution,[],[f97,f440,f49])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f440,plain,(
    k1_xboole_0 != sK2 ),
    inference(unit_resulting_resolution,[],[f434,f33])).

fof(f33,plain,
    ( k1_xboole_0 != sK2
    | ~ v2_tops_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v2_tops_1(X1,X0)
          <~> ! [X2] :
                ( k1_xboole_0 = X2
                | ~ v3_pre_topc(X2,X0)
                | ~ r1_tarski(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v2_tops_1(X1,X0)
          <~> ! [X2] :
                ( k1_xboole_0 = X2
                | ~ v3_pre_topc(X2,X0)
                | ~ r1_tarski(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v2_tops_1(X1,X0)
            <=> ! [X2] :
                  ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( v3_pre_topc(X2,X0)
                      & r1_tarski(X2,X1) )
                   => k1_xboole_0 = X2 ) ) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tops_1(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( ( v3_pre_topc(X2,X0)
                    & r1_tarski(X2,X1) )
                 => k1_xboole_0 = X2 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_tops_1)).

fof(f434,plain,(
    v2_tops_1(sK1,sK0) ),
    inference(unit_resulting_resolution,[],[f37,f35,f382,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 != k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | v2_tops_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_1(X1,X0)
          <=> k1_xboole_0 = k1_tops_1(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v2_tops_1(X1,X0)
          <=> k1_xboole_0 = k1_tops_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t84_tops_1)).

fof(f382,plain,(
    k1_xboole_0 = k1_tops_1(sK0,sK1) ),
    inference(backward_demodulation,[],[f354,f380])).

fof(f380,plain,(
    k1_xboole_0 = k1_tops_1(sK0,k1_tops_1(sK0,sK1)) ),
    inference(unit_resulting_resolution,[],[f37,f134,f379,f43])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | k1_xboole_0 = k1_tops_1(X0,X1)
      | ~ v2_tops_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f379,plain,(
    v2_tops_1(k1_tops_1(sK0,sK1),sK0) ),
    inference(global_subsumption,[],[f37,f134,f141,f142,f178,f378])).

fof(f378,plain,
    ( k1_xboole_0 != k1_tops_1(sK0,sK1)
    | ~ m1_subset_1(k1_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | v2_tops_1(k1_tops_1(sK0,sK1),sK0) ),
    inference(superposition,[],[f42,f354])).

% (7886)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
fof(f178,plain,
    ( k1_xboole_0 = k1_tops_1(sK0,sK1)
    | ~ v2_tops_1(sK1,sK0) ),
    inference(global_subsumption,[],[f37,f173])).

% (7882)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
fof(f173,plain,
    ( ~ l1_pre_topc(sK0)
    | k1_xboole_0 = k1_tops_1(sK0,sK1)
    | ~ v2_tops_1(sK1,sK0) ),
    inference(resolution,[],[f43,f35])).

fof(f142,plain,(
    v3_pre_topc(k1_tops_1(sK0,sK1),sK0) ),
    inference(unit_resulting_resolution,[],[f37,f36,f35,f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v3_pre_topc(k1_tops_1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(k1_tops_1(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(k1_tops_1(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v3_pre_topc(k1_tops_1(X0,X1),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc9_tops_1)).

fof(f36,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f141,plain,
    ( ~ v3_pre_topc(k1_tops_1(sK0,sK1),sK0)
    | k1_xboole_0 = k1_tops_1(sK0,sK1)
    | v2_tops_1(sK1,sK0) ),
    inference(global_subsumption,[],[f117,f138])).

fof(f138,plain,
    ( ~ v3_pre_topc(k1_tops_1(sK0,sK1),sK0)
    | k1_xboole_0 = k1_tops_1(sK0,sK1)
    | v2_tops_1(sK1,sK0)
    | ~ r1_tarski(k1_tops_1(sK0,sK1),sK1) ),
    inference(resolution,[],[f127,f77])).

fof(f77,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,u1_struct_0(sK0))
      | ~ v3_pre_topc(X0,sK0)
      | k1_xboole_0 = X0
      | v2_tops_1(sK1,sK0)
      | ~ r1_tarski(X0,sK1) ) ),
    inference(resolution,[],[f34,f53])).

fof(f53,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(f34,plain,(
    ! [X2] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ r1_tarski(X2,sK1)
      | ~ v3_pre_topc(X2,sK0)
      | k1_xboole_0 = X2
      | v2_tops_1(sK1,sK0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f127,plain,(
    r1_tarski(k1_tops_1(sK0,sK1),u1_struct_0(sK0)) ),
    inference(unit_resulting_resolution,[],[f61,f117,f55])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1)
      | r1_tarski(X0,X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f27])).

fof(f27,plain,(
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

fof(f61,plain,(
    r1_tarski(sK1,u1_struct_0(sK0)) ),
    inference(unit_resulting_resolution,[],[f35,f54])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f117,plain,(
    r1_tarski(k1_tops_1(sK0,sK1),sK1) ),
    inference(unit_resulting_resolution,[],[f37,f35,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | r1_tarski(k1_tops_1(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k1_tops_1(X0,X1),X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => r1_tarski(k1_tops_1(X0,X1),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_tops_1)).

fof(f134,plain,(
    m1_subset_1(k1_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unit_resulting_resolution,[],[f127,f53])).

fof(f354,plain,(
    k1_tops_1(sK0,sK1) = k1_tops_1(sK0,k1_tops_1(sK0,sK1)) ),
    inference(global_subsumption,[],[f187,f352])).

fof(f352,plain,
    ( ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,k1_tops_1(sK0,sK1)))
    | k1_tops_1(sK0,sK1) = k1_tops_1(sK0,k1_tops_1(sK0,sK1)) ),
    inference(resolution,[],[f166,f49])).

fof(f166,plain,(
    r1_tarski(k1_tops_1(sK0,k1_tops_1(sK0,sK1)),k1_tops_1(sK0,sK1)) ),
    inference(unit_resulting_resolution,[],[f37,f134,f41])).

fof(f187,plain,(
    r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,k1_tops_1(sK0,sK1))) ),
    inference(unit_resulting_resolution,[],[f37,f142,f134,f57,f134,f44])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v3_pre_topc(X1,X0)
      | ~ r1_tarski(X1,X2)
      | r1_tarski(X1,k1_tops_1(X0,X2)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(X1,k1_tops_1(X0,X2))
              | ~ r1_tarski(X1,X2)
              | ~ v3_pre_topc(X1,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(X1,k1_tops_1(X0,X2))
              | ~ r1_tarski(X1,X2)
              | ~ v3_pre_topc(X1,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( r1_tarski(X1,X2)
                  & v3_pre_topc(X1,X0) )
               => r1_tarski(X1,k1_tops_1(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_tops_1)).

fof(f57,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f48])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f2])).

fof(f35,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f17])).

fof(f37,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f97,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(unit_resulting_resolution,[],[f92,f51])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
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

fof(f92,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unit_resulting_resolution,[],[f67,f59,f56])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1)
      | ~ v1_xboole_0(X2) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(f59,plain,(
    ! [X0] : m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(forward_demodulation,[],[f40,f39])).

fof(f39,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(f40,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(f67,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(unit_resulting_resolution,[],[f57,f38,f45])).

fof(f45,plain,(
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
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_xboole_1)).

fof(f38,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_xboole_1)).

fof(f446,plain,(
    r1_tarski(sK2,k1_xboole_0) ),
    inference(unit_resulting_resolution,[],[f434,f308])).

fof(f308,plain,
    ( ~ v2_tops_1(sK1,sK0)
    | r1_tarski(sK2,k1_xboole_0) ),
    inference(duplicate_literal_removal,[],[f307])).

fof(f307,plain,
    ( r1_tarski(sK2,k1_xboole_0)
    | ~ v2_tops_1(sK1,sK0)
    | ~ v2_tops_1(sK1,sK0) ),
    inference(superposition,[],[f289,f178])).

fof(f289,plain,
    ( r1_tarski(sK2,k1_tops_1(sK0,sK1))
    | ~ v2_tops_1(sK1,sK0) ),
    inference(global_subsumption,[],[f32,f31,f283])).

fof(f283,plain,
    ( ~ v3_pre_topc(sK2,sK0)
    | ~ r1_tarski(sK2,sK1)
    | r1_tarski(sK2,k1_tops_1(sK0,sK1))
    | ~ v2_tops_1(sK1,sK0) ),
    inference(resolution,[],[f193,f30])).

fof(f30,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ v2_tops_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f193,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v3_pre_topc(X0,sK0)
      | ~ r1_tarski(X0,sK1)
      | r1_tarski(X0,k1_tops_1(sK0,sK1)) ) ),
    inference(global_subsumption,[],[f37,f188])).

fof(f188,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0)
      | ~ v3_pre_topc(X0,sK0)
      | ~ r1_tarski(X0,sK1)
      | r1_tarski(X0,k1_tops_1(sK0,sK1)) ) ),
    inference(resolution,[],[f44,f35])).

fof(f31,plain,
    ( ~ v2_tops_1(sK1,sK0)
    | r1_tarski(sK2,sK1) ),
    inference(cnf_transformation,[],[f17])).

fof(f32,plain,
    ( ~ v2_tops_1(sK1,sK0)
    | v3_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f17])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:36:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.20/0.52  % (7884)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.20/0.52  % (7873)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.20/0.52  % (7869)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.20/0.53  % (7863)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.20/0.53  % (7868)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.20/0.53  % (7885)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.20/0.53  % (7867)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.20/0.53  % (7862)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.20/0.53  % (7866)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.20/0.53  % (7865)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.20/0.54  % (7877)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.20/0.54  % (7861)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.20/0.54  % (7889)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.20/0.54  % (7876)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.20/0.54  % (7890)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.20/0.54  % (7869)Refutation not found, incomplete strategy% (7869)------------------------------
% 0.20/0.54  % (7869)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.54  % (7869)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.54  
% 0.20/0.54  % (7869)Memory used [KB]: 10874
% 0.20/0.54  % (7869)Time elapsed: 0.108 s
% 0.20/0.54  % (7869)------------------------------
% 0.20/0.54  % (7869)------------------------------
% 0.20/0.54  % (7870)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.20/0.54  % (7885)Refutation found. Thanks to Tanya!
% 0.20/0.54  % SZS status Theorem for theBenchmark
% 0.20/0.54  % SZS output start Proof for theBenchmark
% 0.20/0.54  fof(f472,plain,(
% 0.20/0.54    $false),
% 0.20/0.54    inference(global_subsumption,[],[f446,f471])).
% 0.20/0.54  fof(f471,plain,(
% 0.20/0.54    ~r1_tarski(sK2,k1_xboole_0)),
% 0.20/0.54    inference(unit_resulting_resolution,[],[f97,f440,f49])).
% 0.20/0.54  fof(f49,plain,(
% 0.20/0.54    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1) | X0 = X1) )),
% 0.20/0.54    inference(cnf_transformation,[],[f2])).
% 0.20/0.54  fof(f2,axiom,(
% 0.20/0.54    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.20/0.54  fof(f440,plain,(
% 0.20/0.54    k1_xboole_0 != sK2),
% 0.20/0.54    inference(unit_resulting_resolution,[],[f434,f33])).
% 0.20/0.54  fof(f33,plain,(
% 0.20/0.54    k1_xboole_0 != sK2 | ~v2_tops_1(sK1,sK0)),
% 0.20/0.54    inference(cnf_transformation,[],[f17])).
% 0.20/0.54  fof(f17,plain,(
% 0.20/0.54    ? [X0] : (? [X1] : ((v2_tops_1(X1,X0) <~> ! [X2] : (k1_xboole_0 = X2 | ~v3_pre_topc(X2,X0) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 0.20/0.54    inference(flattening,[],[f16])).
% 0.20/0.54  fof(f16,plain,(
% 0.20/0.54    ? [X0] : (? [X1] : ((v2_tops_1(X1,X0) <~> ! [X2] : ((k1_xboole_0 = X2 | (~v3_pre_topc(X2,X0) | ~r1_tarski(X2,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 0.20/0.54    inference(ennf_transformation,[],[f15])).
% 0.20/0.54  fof(f15,negated_conjecture,(
% 0.20/0.54    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v3_pre_topc(X2,X0) & r1_tarski(X2,X1)) => k1_xboole_0 = X2)))))),
% 0.20/0.54    inference(negated_conjecture,[],[f14])).
% 0.20/0.54  fof(f14,conjecture,(
% 0.20/0.54    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v3_pre_topc(X2,X0) & r1_tarski(X2,X1)) => k1_xboole_0 = X2)))))),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_tops_1)).
% 0.20/0.54  fof(f434,plain,(
% 0.20/0.54    v2_tops_1(sK1,sK0)),
% 0.20/0.54    inference(unit_resulting_resolution,[],[f37,f35,f382,f42])).
% 0.20/0.54  fof(f42,plain,(
% 0.20/0.54    ( ! [X0,X1] : (k1_xboole_0 != k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | v2_tops_1(X1,X0)) )),
% 0.20/0.54    inference(cnf_transformation,[],[f19])).
% 0.20/0.54  fof(f19,plain,(
% 0.20/0.54    ! [X0] : (! [X1] : ((v2_tops_1(X1,X0) <=> k1_xboole_0 = k1_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.20/0.54    inference(ennf_transformation,[],[f13])).
% 0.20/0.54  fof(f13,axiom,(
% 0.20/0.54    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v2_tops_1(X1,X0) <=> k1_xboole_0 = k1_tops_1(X0,X1))))),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t84_tops_1)).
% 0.20/0.54  fof(f382,plain,(
% 0.20/0.54    k1_xboole_0 = k1_tops_1(sK0,sK1)),
% 0.20/0.54    inference(backward_demodulation,[],[f354,f380])).
% 0.20/0.54  fof(f380,plain,(
% 0.20/0.54    k1_xboole_0 = k1_tops_1(sK0,k1_tops_1(sK0,sK1))),
% 0.20/0.54    inference(unit_resulting_resolution,[],[f37,f134,f379,f43])).
% 0.20/0.54  fof(f43,plain,(
% 0.20/0.54    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | k1_xboole_0 = k1_tops_1(X0,X1) | ~v2_tops_1(X1,X0)) )),
% 0.20/0.54    inference(cnf_transformation,[],[f19])).
% 0.20/0.54  fof(f379,plain,(
% 0.20/0.54    v2_tops_1(k1_tops_1(sK0,sK1),sK0)),
% 0.20/0.54    inference(global_subsumption,[],[f37,f134,f141,f142,f178,f378])).
% 0.20/0.54  fof(f378,plain,(
% 0.20/0.54    k1_xboole_0 != k1_tops_1(sK0,sK1) | ~m1_subset_1(k1_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0) | v2_tops_1(k1_tops_1(sK0,sK1),sK0)),
% 0.20/0.54    inference(superposition,[],[f42,f354])).
% 0.20/0.54  % (7886)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.20/0.54  fof(f178,plain,(
% 0.20/0.54    k1_xboole_0 = k1_tops_1(sK0,sK1) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.54    inference(global_subsumption,[],[f37,f173])).
% 0.20/0.54  % (7882)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.20/0.54  fof(f173,plain,(
% 0.20/0.54    ~l1_pre_topc(sK0) | k1_xboole_0 = k1_tops_1(sK0,sK1) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.54    inference(resolution,[],[f43,f35])).
% 0.20/0.54  fof(f142,plain,(
% 0.20/0.54    v3_pre_topc(k1_tops_1(sK0,sK1),sK0)),
% 0.20/0.54    inference(unit_resulting_resolution,[],[f37,f36,f35,f46])).
% 0.20/0.54  fof(f46,plain,(
% 0.20/0.54    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v3_pre_topc(k1_tops_1(X0,X1),X0)) )),
% 0.20/0.54    inference(cnf_transformation,[],[f25])).
% 0.20/0.54  fof(f25,plain,(
% 0.20/0.54    ! [X0,X1] : (v3_pre_topc(k1_tops_1(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 0.20/0.54    inference(flattening,[],[f24])).
% 0.20/0.54  fof(f24,plain,(
% 0.20/0.54    ! [X0,X1] : (v3_pre_topc(k1_tops_1(X0,X1),X0) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 0.20/0.54    inference(ennf_transformation,[],[f10])).
% 0.20/0.54  fof(f10,axiom,(
% 0.20/0.54    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v3_pre_topc(k1_tops_1(X0,X1),X0))),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc9_tops_1)).
% 0.20/0.54  fof(f36,plain,(
% 0.20/0.54    v2_pre_topc(sK0)),
% 0.20/0.54    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f141,plain,(
% 0.20/0.55    ~v3_pre_topc(k1_tops_1(sK0,sK1),sK0) | k1_xboole_0 = k1_tops_1(sK0,sK1) | v2_tops_1(sK1,sK0)),
% 0.20/0.55    inference(global_subsumption,[],[f117,f138])).
% 0.20/0.55  fof(f138,plain,(
% 0.20/0.55    ~v3_pre_topc(k1_tops_1(sK0,sK1),sK0) | k1_xboole_0 = k1_tops_1(sK0,sK1) | v2_tops_1(sK1,sK0) | ~r1_tarski(k1_tops_1(sK0,sK1),sK1)),
% 0.20/0.55    inference(resolution,[],[f127,f77])).
% 0.20/0.55  fof(f77,plain,(
% 0.20/0.55    ( ! [X0] : (~r1_tarski(X0,u1_struct_0(sK0)) | ~v3_pre_topc(X0,sK0) | k1_xboole_0 = X0 | v2_tops_1(sK1,sK0) | ~r1_tarski(X0,sK1)) )),
% 0.20/0.55    inference(resolution,[],[f34,f53])).
% 0.20/0.55  fof(f53,plain,(
% 0.20/0.55    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f8])).
% 0.20/0.55  fof(f8,axiom,(
% 0.20/0.55    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).
% 0.20/0.55  fof(f34,plain,(
% 0.20/0.55    ( ! [X2] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0))) | ~r1_tarski(X2,sK1) | ~v3_pre_topc(X2,sK0) | k1_xboole_0 = X2 | v2_tops_1(sK1,sK0)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f127,plain,(
% 0.20/0.55    r1_tarski(k1_tops_1(sK0,sK1),u1_struct_0(sK0))),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f61,f117,f55])).
% 0.20/0.55  fof(f55,plain,(
% 0.20/0.55    ( ! [X2,X0,X1] : (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1) | r1_tarski(X0,X2)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f28])).
% 0.20/0.55  fof(f28,plain,(
% 0.20/0.55    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 0.20/0.55    inference(flattening,[],[f27])).
% 0.20/0.55  fof(f27,plain,(
% 0.20/0.55    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 0.20/0.55    inference(ennf_transformation,[],[f3])).
% 0.20/0.55  fof(f3,axiom,(
% 0.20/0.55    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).
% 0.20/0.55  fof(f61,plain,(
% 0.20/0.55    r1_tarski(sK1,u1_struct_0(sK0))),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f35,f54])).
% 0.20/0.55  fof(f54,plain,(
% 0.20/0.55    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f8])).
% 0.20/0.55  fof(f117,plain,(
% 0.20/0.55    r1_tarski(k1_tops_1(sK0,sK1),sK1)),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f37,f35,f41])).
% 0.20/0.55  fof(f41,plain,(
% 0.20/0.55    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | r1_tarski(k1_tops_1(X0,X1),X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f18])).
% 0.20/0.55  fof(f18,plain,(
% 0.20/0.55    ! [X0] : (! [X1] : (r1_tarski(k1_tops_1(X0,X1),X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.20/0.55    inference(ennf_transformation,[],[f11])).
% 0.20/0.55  fof(f11,axiom,(
% 0.20/0.55    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r1_tarski(k1_tops_1(X0,X1),X1)))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_tops_1)).
% 0.20/0.55  fof(f134,plain,(
% 0.20/0.55    m1_subset_1(k1_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f127,f53])).
% 0.20/0.55  fof(f354,plain,(
% 0.20/0.55    k1_tops_1(sK0,sK1) = k1_tops_1(sK0,k1_tops_1(sK0,sK1))),
% 0.20/0.55    inference(global_subsumption,[],[f187,f352])).
% 0.20/0.55  fof(f352,plain,(
% 0.20/0.55    ~r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,k1_tops_1(sK0,sK1))) | k1_tops_1(sK0,sK1) = k1_tops_1(sK0,k1_tops_1(sK0,sK1))),
% 0.20/0.55    inference(resolution,[],[f166,f49])).
% 0.20/0.55  fof(f166,plain,(
% 0.20/0.55    r1_tarski(k1_tops_1(sK0,k1_tops_1(sK0,sK1)),k1_tops_1(sK0,sK1))),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f37,f134,f41])).
% 0.20/0.55  fof(f187,plain,(
% 0.20/0.55    r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,k1_tops_1(sK0,sK1)))),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f37,f142,f134,f57,f134,f44])).
% 0.20/0.55  fof(f44,plain,(
% 0.20/0.55    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v3_pre_topc(X1,X0) | ~r1_tarski(X1,X2) | r1_tarski(X1,k1_tops_1(X0,X2))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f21])).
% 0.20/0.55  fof(f21,plain,(
% 0.20/0.55    ! [X0] : (! [X1] : (! [X2] : (r1_tarski(X1,k1_tops_1(X0,X2)) | ~r1_tarski(X1,X2) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.20/0.55    inference(flattening,[],[f20])).
% 0.20/0.55  fof(f20,plain,(
% 0.20/0.55    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(X1,k1_tops_1(X0,X2)) | (~r1_tarski(X1,X2) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.20/0.55    inference(ennf_transformation,[],[f12])).
% 0.20/0.55  fof(f12,axiom,(
% 0.20/0.55    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X2) & v3_pre_topc(X1,X0)) => r1_tarski(X1,k1_tops_1(X0,X2))))))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_tops_1)).
% 0.20/0.55  fof(f57,plain,(
% 0.20/0.55    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.20/0.55    inference(equality_resolution,[],[f48])).
% 0.20/0.55  fof(f48,plain,(
% 0.20/0.55    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 0.20/0.55    inference(cnf_transformation,[],[f2])).
% 0.20/0.55  fof(f35,plain,(
% 0.20/0.55    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f37,plain,(
% 0.20/0.55    l1_pre_topc(sK0)),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f97,plain,(
% 0.20/0.55    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f92,f51])).
% 0.20/0.55  fof(f51,plain,(
% 0.20/0.55    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f26])).
% 0.20/0.55  fof(f26,plain,(
% 0.20/0.55    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.20/0.55    inference(ennf_transformation,[],[f1])).
% 0.20/0.55  fof(f1,axiom,(
% 0.20/0.55    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 0.20/0.55  fof(f92,plain,(
% 0.20/0.55    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f67,f59,f56])).
% 0.20/0.55  fof(f56,plain,(
% 0.20/0.55    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1) | ~v1_xboole_0(X2)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f29])).
% 0.20/0.55  fof(f29,plain,(
% 0.20/0.55    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 0.20/0.55    inference(ennf_transformation,[],[f9])).
% 0.20/0.55  fof(f9,axiom,(
% 0.20/0.55    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).
% 0.20/0.55  fof(f59,plain,(
% 0.20/0.55    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(X0))) )),
% 0.20/0.55    inference(forward_demodulation,[],[f40,f39])).
% 0.20/0.55  fof(f39,plain,(
% 0.20/0.55    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 0.20/0.55    inference(cnf_transformation,[],[f6])).
% 0.20/0.55  fof(f6,axiom,(
% 0.20/0.55    ! [X0] : k2_subset_1(X0) = X0),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).
% 0.20/0.55  fof(f40,plain,(
% 0.20/0.55    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f7])).
% 0.20/0.55  fof(f7,axiom,(
% 0.20/0.55    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).
% 0.20/0.55  fof(f67,plain,(
% 0.20/0.55    v1_xboole_0(k1_xboole_0)),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f57,f38,f45])).
% 0.20/0.55  fof(f45,plain,(
% 0.20/0.55    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f23])).
% 0.20/0.55  fof(f23,plain,(
% 0.20/0.55    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 0.20/0.55    inference(flattening,[],[f22])).
% 0.20/0.55  fof(f22,plain,(
% 0.20/0.55    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 0.20/0.55    inference(ennf_transformation,[],[f5])).
% 0.20/0.55  fof(f5,axiom,(
% 0.20/0.55    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_xboole_1)).
% 0.20/0.55  fof(f38,plain,(
% 0.20/0.55    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f4])).
% 0.20/0.55  fof(f4,axiom,(
% 0.20/0.55    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_xboole_1)).
% 0.20/0.55  fof(f446,plain,(
% 0.20/0.55    r1_tarski(sK2,k1_xboole_0)),
% 0.20/0.55    inference(unit_resulting_resolution,[],[f434,f308])).
% 0.20/0.55  fof(f308,plain,(
% 0.20/0.55    ~v2_tops_1(sK1,sK0) | r1_tarski(sK2,k1_xboole_0)),
% 0.20/0.55    inference(duplicate_literal_removal,[],[f307])).
% 0.20/0.55  fof(f307,plain,(
% 0.20/0.55    r1_tarski(sK2,k1_xboole_0) | ~v2_tops_1(sK1,sK0) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.55    inference(superposition,[],[f289,f178])).
% 0.20/0.55  fof(f289,plain,(
% 0.20/0.55    r1_tarski(sK2,k1_tops_1(sK0,sK1)) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.55    inference(global_subsumption,[],[f32,f31,f283])).
% 0.20/0.55  fof(f283,plain,(
% 0.20/0.55    ~v3_pre_topc(sK2,sK0) | ~r1_tarski(sK2,sK1) | r1_tarski(sK2,k1_tops_1(sK0,sK1)) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.55    inference(resolution,[],[f193,f30])).
% 0.20/0.55  fof(f30,plain,(
% 0.20/0.55    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) | ~v2_tops_1(sK1,sK0)),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f193,plain,(
% 0.20/0.55    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~v3_pre_topc(X0,sK0) | ~r1_tarski(X0,sK1) | r1_tarski(X0,k1_tops_1(sK0,sK1))) )),
% 0.20/0.55    inference(global_subsumption,[],[f37,f188])).
% 0.20/0.55  fof(f188,plain,(
% 0.20/0.55    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0) | ~v3_pre_topc(X0,sK0) | ~r1_tarski(X0,sK1) | r1_tarski(X0,k1_tops_1(sK0,sK1))) )),
% 0.20/0.55    inference(resolution,[],[f44,f35])).
% 0.20/0.55  fof(f31,plain,(
% 0.20/0.55    ~v2_tops_1(sK1,sK0) | r1_tarski(sK2,sK1)),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  fof(f32,plain,(
% 0.20/0.55    ~v2_tops_1(sK1,sK0) | v3_pre_topc(sK2,sK0)),
% 0.20/0.55    inference(cnf_transformation,[],[f17])).
% 0.20/0.55  % SZS output end Proof for theBenchmark
% 0.20/0.55  % (7885)------------------------------
% 0.20/0.55  % (7885)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.55  % (7885)Termination reason: Refutation
% 0.20/0.55  
% 0.20/0.55  % (7885)Memory used [KB]: 6652
% 0.20/0.55  % (7885)Time elapsed: 0.125 s
% 0.20/0.55  % (7885)------------------------------
% 0.20/0.55  % (7885)------------------------------
% 0.20/0.55  % (7860)Success in time 0.186 s
%------------------------------------------------------------------------------
