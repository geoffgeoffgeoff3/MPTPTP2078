%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:13:52 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   77 ( 346 expanded)
%              Number of leaves         :   15 ( 126 expanded)
%              Depth                    :   20
%              Number of atoms          :  207 (1603 expanded)
%              Number of equality atoms :   45 ( 354 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f378,plain,(
    $false ),
    inference(subsumption_resolution,[],[f377,f284])).

fof(f284,plain,(
    m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(forward_demodulation,[],[f282,f67])).

fof(f67,plain,(
    sK1 = u1_struct_0(k1_pre_topc(sK0,sK1)) ),
    inference(subsumption_resolution,[],[f60,f33])).

fof(f33,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,
    ( sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2))
    & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2))
    & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f16,f28,f27,f26])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1
                & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))
                & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X1)),k1_tops_2(sK0,X1,X2)) != X1
              & r1_tarski(X1,k5_setfam_1(u1_struct_0(sK0),X2))
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ? [X1] :
        ( ? [X2] :
            ( k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X1)),k1_tops_2(sK0,X1,X2)) != X1
            & r1_tarski(X1,k5_setfam_1(u1_struct_0(sK0),X2))
            & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) )
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
   => ( ? [X2] :
          ( sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,X2))
          & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),X2))
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) )
      & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ? [X2] :
        ( sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,X2))
        & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),X2))
        & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) )
   => ( sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2))
      & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2))
      & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1
              & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1
              & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))
              & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
               => ( r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))
                 => k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) = X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f12,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
             => ( r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))
               => k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_tops_2)).

fof(f60,plain,
    ( sK1 = u1_struct_0(k1_pre_topc(sK0,sK1))
    | ~ l1_pre_topc(sK0) ),
    inference(resolution,[],[f34,f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => u1_struct_0(k1_pre_topc(X0,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_pre_topc)).

fof(f34,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f29])).

fof(f282,plain,(
    m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,sK1))))) ),
    inference(resolution,[],[f78,f34])).

fof(f78,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | m1_subset_1(k1_tops_2(sK0,X0,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X0))))) ) ),
    inference(subsumption_resolution,[],[f72,f33])).

fof(f72,plain,(
    ! [X0] :
      ( m1_subset_1(k1_tops_2(sK0,X0,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X0)))))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0) ) ),
    inference(resolution,[],[f35,f51])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1)))))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1)))))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1)))))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1))))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tops_2)).

fof(f35,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f29])).

fof(f377,plain,(
    ~ m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(trivial_inequality_removal,[],[f374])).

fof(f374,plain,
    ( sK1 != sK1
    | ~ m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(backward_demodulation,[],[f145,f367])).

fof(f367,plain,(
    sK1 = k3_tarski(k1_tops_2(sK0,sK1,sK2)) ),
    inference(subsumption_resolution,[],[f364,f293])).

fof(f293,plain,(
    r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),sK1) ),
    inference(forward_demodulation,[],[f292,f38])).

fof(f38,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t99_zfmisc_1)).

fof(f292,plain,(
    r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),k3_tarski(k1_zfmisc_1(sK1))) ),
    inference(resolution,[],[f288,f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),k3_tarski(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),k3_tarski(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k3_tarski(X0),k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_zfmisc_1)).

fof(f288,plain,(
    r1_tarski(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(sK1)) ),
    inference(resolution,[],[f284,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(f364,plain,
    ( sK1 = k3_tarski(k1_tops_2(sK0,sK1,sK2))
    | ~ r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),sK1) ),
    inference(resolution,[],[f362,f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f362,plain,(
    r1_tarski(sK1,k3_tarski(k1_tops_2(sK0,sK1,sK2))) ),
    inference(subsumption_resolution,[],[f359,f284])).

fof(f359,plain,
    ( r1_tarski(sK1,k3_tarski(k1_tops_2(sK0,sK1,sK2)))
    | ~ m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(superposition,[],[f354,f43])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k3_tarski(X1) = k5_setfam_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( k3_tarski(X1) = k5_setfam_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => k3_tarski(X1) = k5_setfam_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k5_setfam_1)).

fof(f354,plain,(
    r1_tarski(sK1,k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2))) ),
    inference(forward_demodulation,[],[f353,f41])).

fof(f41,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f353,plain,(
    r1_tarski(k3_xboole_0(sK1,sK1),k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2))) ),
    inference(forward_demodulation,[],[f350,f67])).

fof(f350,plain,(
    r1_tarski(k3_xboole_0(sK1,sK1),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2))) ),
    inference(resolution,[],[f339,f34])).

fof(f339,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | r1_tarski(k3_xboole_0(X0,sK1),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2))) ) ),
    inference(forward_demodulation,[],[f97,f162])).

fof(f162,plain,(
    ! [X2] : k9_subset_1(u1_struct_0(sK0),sK1,X2) = k3_xboole_0(X2,sK1) ),
    inference(subsumption_resolution,[],[f158,f34])).

fof(f158,plain,(
    ! [X2] :
      ( k9_subset_1(u1_struct_0(sK0),sK1,X2) = k3_xboole_0(X2,sK1)
      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(superposition,[],[f62,f50])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k9_subset_1)).

fof(f62,plain,(
    ! [X6] : k9_subset_1(u1_struct_0(sK0),X6,sK1) = k3_xboole_0(X6,sK1) ),
    inference(resolution,[],[f34,f49])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k9_subset_1)).

fof(f97,plain,(
    ! [X0] :
      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2)))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ) ),
    inference(subsumption_resolution,[],[f96,f33])).

fof(f96,plain,(
    ! [X0] :
      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2)))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0) ) ),
    inference(subsumption_resolution,[],[f95,f34])).

fof(f95,plain,(
    ! [X0] :
      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2)))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0) ) ),
    inference(subsumption_resolution,[],[f89,f35])).

fof(f89,plain,(
    ! [X0] :
      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2)))
      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ l1_pre_topc(sK0) ) ),
    inference(resolution,[],[f36,f40])).

fof(f40,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3)))
      | ~ r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3)))
                  | ~ r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3))
                  | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3)))
                  | ~ r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3))
                  | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
                 => ( r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3))
                   => r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3))) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_tops_2)).

fof(f36,plain,(
    r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2)) ),
    inference(cnf_transformation,[],[f29])).

fof(f145,plain,
    ( sK1 != k3_tarski(k1_tops_2(sK0,sK1,sK2))
    | ~ m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(superposition,[],[f124,f43])).

fof(f124,plain,(
    sK1 != k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2)) ),
    inference(forward_demodulation,[],[f37,f67])).

fof(f37,plain,(
    sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2)) ),
    inference(cnf_transformation,[],[f29])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n006.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:32:52 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.47  % (4148)dis+1011_4_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1:sos=all:sp=occurrence_5 on theBenchmark
% 0.22/0.48  % (4146)lrs+1011_8_add=large:afp=100000:afq=1.1:er=filter:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=1.5:sos=on_3 on theBenchmark
% 0.22/0.48  % (4145)lrs+1_4:1_awrs=converge:awrsf=128:av=off:cond=fast:fde=none:gsp=input_only:gs=on:gsem=on:lcm=predicate:lwlo=on:nm=4:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:s2a=on:st=2.0:sos=on_27 on theBenchmark
% 0.22/0.50  % (4143)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_92 on theBenchmark
% 0.22/0.50  % (4148)Refutation found. Thanks to Tanya!
% 0.22/0.50  % SZS status Theorem for theBenchmark
% 0.22/0.50  % SZS output start Proof for theBenchmark
% 0.22/0.50  fof(f378,plain,(
% 0.22/0.50    $false),
% 0.22/0.50    inference(subsumption_resolution,[],[f377,f284])).
% 0.22/0.50  fof(f284,plain,(
% 0.22/0.50    m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(forward_demodulation,[],[f282,f67])).
% 0.22/0.50  fof(f67,plain,(
% 0.22/0.50    sK1 = u1_struct_0(k1_pre_topc(sK0,sK1))),
% 0.22/0.50    inference(subsumption_resolution,[],[f60,f33])).
% 0.22/0.50  fof(f33,plain,(
% 0.22/0.50    l1_pre_topc(sK0)),
% 0.22/0.50    inference(cnf_transformation,[],[f29])).
% 0.22/0.50  fof(f29,plain,(
% 0.22/0.50    ((sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2)) & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2)) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 0.22/0.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f16,f28,f27,f26])).
% 0.22/0.50  fof(f26,plain,(
% 0.22/0.50    ? [X0] : (? [X1] : (? [X2] : (k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1 & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X1)),k1_tops_2(sK0,X1,X2)) != X1 & r1_tarski(X1,k5_setfam_1(u1_struct_0(sK0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 0.22/0.50    introduced(choice_axiom,[])).
% 0.22/0.50  fof(f27,plain,(
% 0.22/0.50    ? [X1] : (? [X2] : (k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X1)),k1_tops_2(sK0,X1,X2)) != X1 & r1_tarski(X1,k5_setfam_1(u1_struct_0(sK0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) => (? [X2] : (sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,X2)) & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))))),
% 0.22/0.50    introduced(choice_axiom,[])).
% 0.22/0.50  fof(f28,plain,(
% 0.22/0.50    ? [X2] : (sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,X2)) & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))) => (sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2)) & r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2)) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))))),
% 0.22/0.50    introduced(choice_axiom,[])).
% 0.22/0.50  fof(f16,plain,(
% 0.22/0.50    ? [X0] : (? [X1] : (? [X2] : (k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1 & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 0.22/0.50    inference(flattening,[],[f15])).
% 0.22/0.50  fof(f15,plain,(
% 0.22/0.50    ? [X0] : (? [X1] : (? [X2] : ((k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) != X1 & r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 0.22/0.50    inference(ennf_transformation,[],[f13])).
% 0.22/0.50  fof(f13,negated_conjecture,(
% 0.22/0.50    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2)) => k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) = X1))))),
% 0.22/0.50    inference(negated_conjecture,[],[f12])).
% 0.22/0.50  fof(f12,conjecture,(
% 0.22/0.50    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X2)) => k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X1)),k1_tops_2(X0,X1,X2)) = X1))))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_tops_2)).
% 0.22/0.50  fof(f60,plain,(
% 0.22/0.50    sK1 = u1_struct_0(k1_pre_topc(sK0,sK1)) | ~l1_pre_topc(sK0)),
% 0.22/0.50    inference(resolution,[],[f34,f39])).
% 0.22/0.50  fof(f39,plain,(
% 0.22/0.50    ( ! [X0,X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 0.22/0.50    inference(cnf_transformation,[],[f17])).
% 0.22/0.50  fof(f17,plain,(
% 0.22/0.50    ! [X0] : (! [X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.22/0.50    inference(ennf_transformation,[],[f9])).
% 0.22/0.50  fof(f9,axiom,(
% 0.22/0.50    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => u1_struct_0(k1_pre_topc(X0,X1)) = X1))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_pre_topc)).
% 0.22/0.50  fof(f34,plain,(
% 0.22/0.50    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.22/0.50    inference(cnf_transformation,[],[f29])).
% 0.22/0.50  fof(f282,plain,(
% 0.22/0.50    m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,sK1)))))),
% 0.22/0.50    inference(resolution,[],[f78,f34])).
% 0.22/0.50  fof(f78,plain,(
% 0.22/0.50    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | m1_subset_1(k1_tops_2(sK0,X0,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X0)))))) )),
% 0.22/0.50    inference(subsumption_resolution,[],[f72,f33])).
% 0.22/0.50  fof(f72,plain,(
% 0.22/0.50    ( ! [X0] : (m1_subset_1(k1_tops_2(sK0,X0,sK2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(sK0,X0))))) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)) )),
% 0.22/0.50    inference(resolution,[],[f35,f51])).
% 0.22/0.50  fof(f51,plain,(
% 0.22/0.50    ( ! [X2,X0,X1] : (m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 0.22/0.50    inference(cnf_transformation,[],[f25])).
% 0.22/0.50  fof(f25,plain,(
% 0.22/0.50    ! [X0,X1,X2] : (m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 0.22/0.50    inference(flattening,[],[f24])).
% 0.22/0.50  fof(f24,plain,(
% 0.22/0.50    ! [X0,X1,X2] : (m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1))))) | (~m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 0.22/0.50    inference(ennf_transformation,[],[f10])).
% 0.22/0.50  fof(f10,axiom,(
% 0.22/0.50    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k1_tops_2(X0,X1,X2),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k1_pre_topc(X0,X1))))))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tops_2)).
% 0.22/0.50  fof(f35,plain,(
% 0.22/0.50    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0))))),
% 0.22/0.50    inference(cnf_transformation,[],[f29])).
% 0.22/0.50  fof(f377,plain,(
% 0.22/0.50    ~m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(trivial_inequality_removal,[],[f374])).
% 0.22/0.50  fof(f374,plain,(
% 0.22/0.50    sK1 != sK1 | ~m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(backward_demodulation,[],[f145,f367])).
% 0.22/0.50  fof(f367,plain,(
% 0.22/0.50    sK1 = k3_tarski(k1_tops_2(sK0,sK1,sK2))),
% 0.22/0.50    inference(subsumption_resolution,[],[f364,f293])).
% 0.22/0.50  fof(f293,plain,(
% 0.22/0.50    r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),sK1)),
% 0.22/0.50    inference(forward_demodulation,[],[f292,f38])).
% 0.22/0.50  fof(f38,plain,(
% 0.22/0.50    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 0.22/0.50    inference(cnf_transformation,[],[f4])).
% 0.22/0.50  fof(f4,axiom,(
% 0.22/0.50    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t99_zfmisc_1)).
% 0.22/0.50  fof(f292,plain,(
% 0.22/0.50    r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),k3_tarski(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(resolution,[],[f288,f42])).
% 0.22/0.50  fof(f42,plain,(
% 0.22/0.50    ( ! [X0,X1] : (r1_tarski(k3_tarski(X0),k3_tarski(X1)) | ~r1_tarski(X0,X1)) )),
% 0.22/0.50    inference(cnf_transformation,[],[f20])).
% 0.22/0.50  fof(f20,plain,(
% 0.22/0.50    ! [X0,X1] : (r1_tarski(k3_tarski(X0),k3_tarski(X1)) | ~r1_tarski(X0,X1))),
% 0.22/0.50    inference(ennf_transformation,[],[f3])).
% 0.22/0.50  fof(f3,axiom,(
% 0.22/0.50    ! [X0,X1] : (r1_tarski(X0,X1) => r1_tarski(k3_tarski(X0),k3_tarski(X1)))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_zfmisc_1)).
% 0.22/0.50  fof(f288,plain,(
% 0.22/0.50    r1_tarski(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(sK1))),
% 0.22/0.50    inference(resolution,[],[f284,f47])).
% 0.22/0.50  fof(f47,plain,(
% 0.22/0.50    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 0.22/0.50    inference(cnf_transformation,[],[f32])).
% 0.22/0.50  fof(f32,plain,(
% 0.22/0.50    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 0.22/0.50    inference(nnf_transformation,[],[f8])).
% 0.22/0.50  fof(f8,axiom,(
% 0.22/0.50    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).
% 0.22/0.50  fof(f364,plain,(
% 0.22/0.50    sK1 = k3_tarski(k1_tops_2(sK0,sK1,sK2)) | ~r1_tarski(k3_tarski(k1_tops_2(sK0,sK1,sK2)),sK1)),
% 0.22/0.50    inference(resolution,[],[f362,f46])).
% 0.22/0.50  fof(f46,plain,(
% 0.22/0.50    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 0.22/0.50    inference(cnf_transformation,[],[f31])).
% 0.22/0.50  fof(f31,plain,(
% 0.22/0.50    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.22/0.50    inference(flattening,[],[f30])).
% 0.22/0.50  fof(f30,plain,(
% 0.22/0.50    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.22/0.50    inference(nnf_transformation,[],[f2])).
% 0.22/0.50  fof(f2,axiom,(
% 0.22/0.50    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.22/0.50  fof(f362,plain,(
% 0.22/0.50    r1_tarski(sK1,k3_tarski(k1_tops_2(sK0,sK1,sK2)))),
% 0.22/0.50    inference(subsumption_resolution,[],[f359,f284])).
% 0.22/0.50  fof(f359,plain,(
% 0.22/0.50    r1_tarski(sK1,k3_tarski(k1_tops_2(sK0,sK1,sK2))) | ~m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(superposition,[],[f354,f43])).
% 0.22/0.50  fof(f43,plain,(
% 0.22/0.50    ( ! [X0,X1] : (k3_tarski(X1) = k5_setfam_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 0.22/0.50    inference(cnf_transformation,[],[f21])).
% 0.22/0.50  fof(f21,plain,(
% 0.22/0.50    ! [X0,X1] : (k3_tarski(X1) = k5_setfam_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 0.22/0.50    inference(ennf_transformation,[],[f7])).
% 0.22/0.50  fof(f7,axiom,(
% 0.22/0.50    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => k3_tarski(X1) = k5_setfam_1(X0,X1))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k5_setfam_1)).
% 0.22/0.50  fof(f354,plain,(
% 0.22/0.50    r1_tarski(sK1,k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2)))),
% 0.22/0.50    inference(forward_demodulation,[],[f353,f41])).
% 0.22/0.50  fof(f41,plain,(
% 0.22/0.50    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 0.22/0.50    inference(cnf_transformation,[],[f14])).
% 0.22/0.50  fof(f14,plain,(
% 0.22/0.50    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 0.22/0.50    inference(rectify,[],[f1])).
% 0.22/0.50  fof(f1,axiom,(
% 0.22/0.50    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 0.22/0.50  fof(f353,plain,(
% 0.22/0.50    r1_tarski(k3_xboole_0(sK1,sK1),k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2)))),
% 0.22/0.50    inference(forward_demodulation,[],[f350,f67])).
% 0.22/0.50  fof(f350,plain,(
% 0.22/0.50    r1_tarski(k3_xboole_0(sK1,sK1),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2)))),
% 0.22/0.50    inference(resolution,[],[f339,f34])).
% 0.22/0.50  fof(f339,plain,(
% 0.22/0.50    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | r1_tarski(k3_xboole_0(X0,sK1),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2)))) )),
% 0.22/0.50    inference(forward_demodulation,[],[f97,f162])).
% 0.22/0.50  fof(f162,plain,(
% 0.22/0.50    ( ! [X2] : (k9_subset_1(u1_struct_0(sK0),sK1,X2) = k3_xboole_0(X2,sK1)) )),
% 0.22/0.50    inference(subsumption_resolution,[],[f158,f34])).
% 0.22/0.50  fof(f158,plain,(
% 0.22/0.50    ( ! [X2] : (k9_subset_1(u1_struct_0(sK0),sK1,X2) = k3_xboole_0(X2,sK1) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.22/0.50    inference(superposition,[],[f62,f50])).
% 0.22/0.50  fof(f50,plain,(
% 0.22/0.50    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 0.22/0.50    inference(cnf_transformation,[],[f23])).
% 0.22/0.50  fof(f23,plain,(
% 0.22/0.50    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.22/0.50    inference(ennf_transformation,[],[f5])).
% 0.22/0.50  fof(f5,axiom,(
% 0.22/0.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k9_subset_1)).
% 0.22/0.50  fof(f62,plain,(
% 0.22/0.50    ( ! [X6] : (k9_subset_1(u1_struct_0(sK0),X6,sK1) = k3_xboole_0(X6,sK1)) )),
% 0.22/0.50    inference(resolution,[],[f34,f49])).
% 0.22/0.50  fof(f49,plain,(
% 0.22/0.50    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 0.22/0.50    inference(cnf_transformation,[],[f22])).
% 0.22/0.50  fof(f22,plain,(
% 0.22/0.50    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.22/0.50    inference(ennf_transformation,[],[f6])).
% 0.22/0.50  fof(f6,axiom,(
% 0.22/0.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k9_subset_1)).
% 0.22/0.50  fof(f97,plain,(
% 0.22/0.50    ( ! [X0] : (r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2))) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))) )),
% 0.22/0.50    inference(subsumption_resolution,[],[f96,f33])).
% 0.22/0.50  fof(f96,plain,(
% 0.22/0.50    ( ! [X0] : (r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2))) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)) )),
% 0.22/0.50    inference(subsumption_resolution,[],[f95,f34])).
% 0.22/0.50  fof(f95,plain,(
% 0.22/0.50    ( ! [X0] : (r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2))) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)) )),
% 0.22/0.50    inference(subsumption_resolution,[],[f89,f35])).
% 0.22/0.50  fof(f89,plain,(
% 0.22/0.50    ( ! [X0] : (r1_tarski(k9_subset_1(u1_struct_0(sK0),sK1,X0),k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,X0)),k1_tops_2(sK0,X0,sK2))) | ~m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~l1_pre_topc(sK0)) )),
% 0.22/0.50    inference(resolution,[],[f36,f40])).
% 0.22/0.50  fof(f40,plain,(
% 0.22/0.50    ( ! [X2,X0,X3,X1] : (r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3))) | ~r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 0.22/0.50    inference(cnf_transformation,[],[f19])).
% 0.22/0.50  fof(f19,plain,(
% 0.22/0.50    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3))) | ~r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3)) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.22/0.50    inference(flattening,[],[f18])).
% 0.22/0.50  fof(f18,plain,(
% 0.22/0.50    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3))) | ~r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.22/0.50    inference(ennf_transformation,[],[f11])).
% 0.22/0.50  fof(f11,axiom,(
% 0.22/0.50    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(X1,k5_setfam_1(u1_struct_0(X0),X3)) => r1_tarski(k9_subset_1(u1_struct_0(X0),X1,X2),k5_setfam_1(u1_struct_0(k1_pre_topc(X0,X2)),k1_tops_2(X0,X2,X3))))))))),
% 0.22/0.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_tops_2)).
% 0.22/0.50  fof(f36,plain,(
% 0.22/0.50    r1_tarski(sK1,k5_setfam_1(u1_struct_0(sK0),sK2))),
% 0.22/0.50    inference(cnf_transformation,[],[f29])).
% 0.22/0.50  fof(f145,plain,(
% 0.22/0.50    sK1 != k3_tarski(k1_tops_2(sK0,sK1,sK2)) | ~m1_subset_1(k1_tops_2(sK0,sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 0.22/0.50    inference(superposition,[],[f124,f43])).
% 0.22/0.50  fof(f124,plain,(
% 0.22/0.50    sK1 != k5_setfam_1(sK1,k1_tops_2(sK0,sK1,sK2))),
% 0.22/0.50    inference(forward_demodulation,[],[f37,f67])).
% 0.22/0.50  fof(f37,plain,(
% 0.22/0.50    sK1 != k5_setfam_1(u1_struct_0(k1_pre_topc(sK0,sK1)),k1_tops_2(sK0,sK1,sK2))),
% 0.22/0.50    inference(cnf_transformation,[],[f29])).
% 0.22/0.50  % SZS output end Proof for theBenchmark
% 0.22/0.50  % (4148)------------------------------
% 0.22/0.50  % (4148)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.50  % (4148)Termination reason: Refutation
% 0.22/0.50  
% 0.22/0.50  % (4148)Memory used [KB]: 1918
% 0.22/0.50  % (4148)Time elapsed: 0.093 s
% 0.22/0.50  % (4148)------------------------------
% 0.22/0.50  % (4148)------------------------------
% 0.22/0.50  % (4153)ott-3_4:1_awrs=converge:awrsf=2:acc=model:add=large:afr=on:afp=40000:afq=1.2:anc=none:ccuc=small_ones:fde=unused:gsp=input_only:irw=on:nm=0:nwc=4:sd=4:ss=axioms:s2a=on:st=1.2:sos=on:urr=on:updr=off:uhcvi=on_2 on theBenchmark
% 0.22/0.50  % (4144)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_7 on theBenchmark
% 0.22/0.50  % (4141)dis+10_3_add=large:afp=10000:afq=1.0:amm=sco:anc=none:gsp=input_only:gs=on:gsem=off:lcm=reverse:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.50  % (4152)ott+4_32_av=off:bsr=on:cond=on:er=known:fsr=off:gsp=input_only:gs=on:gsem=on:irw=on:lma=on:nm=4:nwc=1.2:sos=theory_197 on theBenchmark
% 0.22/0.50  % (4139)Success in time 0.142 s
%------------------------------------------------------------------------------
