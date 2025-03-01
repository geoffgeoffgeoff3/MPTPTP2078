%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:17:55 EST 2020

% Result     : Theorem 3.70s
% Output     : CNFRefutation 3.70s
% Verified   : 
% Statistics : Number of formulae       :  178 (2716 expanded)
%              Number of clauses        :  112 ( 801 expanded)
%              Number of leaves         :   19 ( 619 expanded)
%              Depth                    :   25
%              Number of atoms          :  659 (14549 expanded)
%              Number of equality atoms :  229 (3116 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( v2_pre_topc(X0)
             => ( ( v2_compts_1(X1,X0)
                <=> v1_compts_1(k1_pre_topc(X0,X1)) )
                | k1_xboole_0 = X1 ) )
            & ( k1_xboole_0 = X1
             => ( v2_compts_1(X1,X0)
              <=> v1_compts_1(k1_pre_topc(X0,X1)) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( ( v2_pre_topc(X0)
               => ( ( v2_compts_1(X1,X0)
                  <=> v1_compts_1(k1_pre_topc(X0,X1)) )
                  | k1_xboole_0 = X1 ) )
              & ( k1_xboole_0 = X1
               => ( v2_compts_1(X1,X0)
                <=> v1_compts_1(k1_pre_topc(X0,X1)) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f14,plain,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( ( ( v2_compts_1(X1,X0)
                <=> v1_compts_1(k1_pre_topc(X0,X1)) )
                | k1_xboole_0 = X1 )
              & ( k1_xboole_0 = X1
               => ( v2_compts_1(X1,X0)
                <=> v1_compts_1(k1_pre_topc(X0,X1)) ) ) ) ) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( ( v2_compts_1(X1,X0)
              <~> v1_compts_1(k1_pre_topc(X0,X1)) )
              & k1_xboole_0 != X1 )
            | ( ( v2_compts_1(X1,X0)
              <~> v1_compts_1(k1_pre_topc(X0,X1)) )
              & k1_xboole_0 = X1 ) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ( ( v2_compts_1(X1,X0)
        <~> v1_compts_1(k1_pre_topc(X0,X1)) )
        & k1_xboole_0 = X1 )
      | ~ sP0(X1,X0) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( ( v2_compts_1(X1,X0)
              <~> v1_compts_1(k1_pre_topc(X0,X1)) )
              & k1_xboole_0 != X1 )
            | sP0(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(definition_folding,[],[f26,f27])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
                | ~ v2_compts_1(X1,X0) )
              & ( v1_compts_1(k1_pre_topc(X0,X1))
                | v2_compts_1(X1,X0) )
              & k1_xboole_0 != X1 )
            | sP0(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f40,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
                | ~ v2_compts_1(X1,X0) )
              & ( v1_compts_1(k1_pre_topc(X0,X1))
                | v2_compts_1(X1,X0) )
              & k1_xboole_0 != X1 )
            | sP0(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f39])).

fof(f42,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
                | ~ v2_compts_1(X1,X0) )
              & ( v1_compts_1(k1_pre_topc(X0,X1))
                | v2_compts_1(X1,X0) )
              & k1_xboole_0 != X1 )
            | sP0(X1,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ( ( ( ~ v1_compts_1(k1_pre_topc(X0,sK3))
              | ~ v2_compts_1(sK3,X0) )
            & ( v1_compts_1(k1_pre_topc(X0,sK3))
              | v2_compts_1(sK3,X0) )
            & k1_xboole_0 != sK3 )
          | sP0(sK3,X0) )
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
                  | ~ v2_compts_1(X1,X0) )
                & ( v1_compts_1(k1_pre_topc(X0,X1))
                  | v2_compts_1(X1,X0) )
                & k1_xboole_0 != X1 )
              | sP0(X1,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ( ( ( ~ v1_compts_1(k1_pre_topc(sK2,X1))
                | ~ v2_compts_1(X1,sK2) )
              & ( v1_compts_1(k1_pre_topc(sK2,X1))
                | v2_compts_1(X1,sK2) )
              & k1_xboole_0 != X1 )
            | sP0(X1,sK2) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) )
      & l1_pre_topc(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
    ( ( ( ( ~ v1_compts_1(k1_pre_topc(sK2,sK3))
          | ~ v2_compts_1(sK3,sK2) )
        & ( v1_compts_1(k1_pre_topc(sK2,sK3))
          | v2_compts_1(sK3,sK2) )
        & k1_xboole_0 != sK3 )
      | sP0(sK3,sK2) )
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    & l1_pre_topc(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f40,f42,f41])).

fof(f64,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f43])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f51,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f49,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f65,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f43])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
        & v1_pre_topc(k1_pre_topc(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_pre_topc(k1_pre_topc(X0,X1),X0) ) ),
    inference(pure_predicate_removal,[],[f5])).

fof(f17,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f18,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f17])).

fof(f50,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f52,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => u1_struct_0(k1_pre_topc(X0,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f53,plain,(
    ! [X0,X1] :
      ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( r1_tarski(X2,k2_struct_0(X1))
               => ( v2_compts_1(X2,X0)
                <=> ! [X3] :
                      ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                     => ( X2 = X3
                       => v2_compts_1(X3,X1) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v2_compts_1(X2,X0)
              <=> ! [X3] :
                    ( v2_compts_1(X3,X1)
                    | X2 != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) )
              | ~ r1_tarski(X2,k2_struct_0(X1))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v2_compts_1(X2,X0)
              <=> ! [X3] :
                    ( v2_compts_1(X3,X1)
                    | X2 != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) )
              | ~ r1_tarski(X2,k2_struct_0(X1))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f24])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( v2_compts_1(X2,X0)
                  | ? [X3] :
                      ( ~ v2_compts_1(X3,X1)
                      & X2 = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) )
                & ( ! [X3] :
                      ( v2_compts_1(X3,X1)
                      | X2 != X3
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ v2_compts_1(X2,X0) ) )
              | ~ r1_tarski(X2,k2_struct_0(X1))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( v2_compts_1(X2,X0)
                  | ? [X3] :
                      ( ~ v2_compts_1(X3,X1)
                      & X2 = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) )
                & ( ! [X4] :
                      ( v2_compts_1(X4,X1)
                      | X2 != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ v2_compts_1(X2,X0) ) )
              | ~ r1_tarski(X2,k2_struct_0(X1))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f32])).

fof(f34,plain,(
    ! [X2,X1] :
      ( ? [X3] :
          ( ~ v2_compts_1(X3,X1)
          & X2 = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) )
     => ( ~ v2_compts_1(sK1(X1,X2),X1)
        & sK1(X1,X2) = X2
        & m1_subset_1(sK1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( v2_compts_1(X2,X0)
                  | ( ~ v2_compts_1(sK1(X1,X2),X1)
                    & sK1(X1,X2) = X2
                    & m1_subset_1(sK1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) )
                & ( ! [X4] :
                      ( v2_compts_1(X4,X1)
                      | X2 != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  | ~ v2_compts_1(X2,X0) ) )
              | ~ r1_tarski(X2,k2_struct_0(X1))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).

fof(f57,plain,(
    ! [X4,X2,X0,X1] :
      ( v2_compts_1(X4,X1)
      | X2 != X4
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ v2_compts_1(X2,X0)
      | ~ r1_tarski(X2,k2_struct_0(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f71,plain,(
    ! [X4,X0,X1] :
      ( v2_compts_1(X4,X1)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ v2_compts_1(X4,X0)
      | ~ r1_tarski(X4,k2_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f57])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
             => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f29])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f70,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f44])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v1_compts_1(X0)
      <=> v2_compts_1(k2_struct_0(X0),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ( v1_compts_1(X0)
      <=> v2_compts_1(k2_struct_0(X0),X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0] :
      ( ( ( v1_compts_1(X0)
          | ~ v2_compts_1(k2_struct_0(X0),X0) )
        & ( v2_compts_1(k2_struct_0(X0),X0)
          | ~ v1_compts_1(X0) ) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f55,plain,(
    ! [X0] :
      ( v2_compts_1(k2_struct_0(X0),X0)
      | ~ v1_compts_1(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f36,plain,(
    ! [X1,X0] :
      ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
          | ~ v2_compts_1(X1,X0) )
        & ( v1_compts_1(k1_pre_topc(X0,X1))
          | v2_compts_1(X1,X0) )
        & k1_xboole_0 = X1 )
      | ~ sP0(X1,X0) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f37,plain,(
    ! [X1,X0] :
      ( ( ( ~ v1_compts_1(k1_pre_topc(X0,X1))
          | ~ v2_compts_1(X1,X0) )
        & ( v1_compts_1(k1_pre_topc(X0,X1))
          | v2_compts_1(X1,X0) )
        & k1_xboole_0 = X1 )
      | ~ sP0(X1,X0) ) ),
    inference(flattening,[],[f36])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( ( ~ v1_compts_1(k1_pre_topc(X1,X0))
          | ~ v2_compts_1(X0,X1) )
        & ( v1_compts_1(k1_pre_topc(X1,X0))
          | v2_compts_1(X0,X1) )
        & k1_xboole_0 = X0 )
      | ~ sP0(X0,X1) ) ),
    inference(rectify,[],[f37])).

fof(f62,plain,(
    ! [X0,X1] :
      ( v1_compts_1(k1_pre_topc(X1,X0))
      | v2_compts_1(X0,X1)
      | ~ sP0(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f67,plain,
    ( v1_compts_1(k1_pre_topc(sK2,sK3))
    | v2_compts_1(sK3,sK2)
    | sP0(sK3,sK2) ),
    inference(cnf_transformation,[],[f43])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( v2_compts_1(X2,X0)
      | sK1(X1,X2) = X2
      | ~ r1_tarski(X2,k2_struct_0(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f56,plain,(
    ! [X0] :
      ( v1_compts_1(X0)
      | ~ v2_compts_1(k2_struct_0(X0),X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f63,plain,(
    ! [X0,X1] :
      ( ~ v1_compts_1(k1_pre_topc(X1,X0))
      | ~ v2_compts_1(X0,X1)
      | ~ sP0(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f68,plain,
    ( ~ v1_compts_1(k1_pre_topc(sK2,sK3))
    | ~ v2_compts_1(sK3,sK2)
    | sP0(sK3,sK2) ),
    inference(cnf_transformation,[],[f43])).

fof(f46,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( v2_compts_1(X2,X0)
      | ~ v2_compts_1(sK1(X1,X2),X1)
      | ~ r1_tarski(X2,k2_struct_0(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_835,plain,
    ( ~ v2_compts_1(X0,X1)
    | v2_compts_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2367,plain,
    ( ~ v2_compts_1(X0,X1)
    | v2_compts_1(X2,k1_pre_topc(sK2,sK3))
    | X2 != X0
    | k1_pre_topc(sK2,sK3) != X1 ),
    inference(instantiation,[status(thm)],[c_835])).

cnf(c_2861,plain,
    ( ~ v2_compts_1(X0,k1_pre_topc(sK2,sK3))
    | v2_compts_1(X1,k1_pre_topc(sK2,sK3))
    | X1 != X0
    | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_2367])).

cnf(c_5751,plain,
    ( v2_compts_1(X0,k1_pre_topc(sK2,sK3))
    | ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
    | X0 != sK3
    | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_2861])).

cnf(c_13049,plain,
    ( v2_compts_1(sK1(k1_pre_topc(sK2,sK3),sK3),k1_pre_topc(sK2,sK3))
    | ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
    | sK1(k1_pre_topc(sK2,sK3),sK3) != sK3
    | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_5751])).

cnf(c_827,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X0,X2)
    | X2 != X1 ),
    theory(equality)).

cnf(c_1277,plain,
    ( ~ r1_tarski(sK3,X0)
    | r1_tarski(sK3,X1)
    | X1 != X0 ),
    inference(instantiation,[status(thm)],[c_827])).

cnf(c_1912,plain,
    ( r1_tarski(sK3,X0)
    | ~ r1_tarski(sK3,u1_struct_0(k1_pre_topc(X1,sK3)))
    | X0 != u1_struct_0(k1_pre_topc(X1,sK3)) ),
    inference(instantiation,[status(thm)],[c_1277])).

cnf(c_12537,plain,
    ( ~ r1_tarski(sK3,u1_struct_0(k1_pre_topc(sK2,sK3)))
    | r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,sK3)))
    | k2_struct_0(k1_pre_topc(sK2,sK3)) != u1_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1912])).

cnf(c_24,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1124,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_7,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_5,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_261,plain,
    ( ~ l1_pre_topc(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_7,c_5])).

cnf(c_1123,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_261])).

cnf(c_1414,plain,
    ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
    inference(superposition,[status(thm)],[c_1124,c_1123])).

cnf(c_23,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1125,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_1586,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_struct_0(sK2))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1414,c_1125])).

cnf(c_6,plain,
    ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1133,plain,
    ( m1_pre_topc(k1_pre_topc(X0,X1),X0) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1963,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1414,c_1133])).

cnf(c_25,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2306,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
    | m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1963,c_25])).

cnf(c_2307,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top ),
    inference(renaming,[status(thm)],[c_2306])).

cnf(c_2313,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1586,c_2307])).

cnf(c_8,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1132,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2317,plain,
    ( l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2313,c_1132])).

cnf(c_26,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_1194,plain,
    ( ~ m1_pre_topc(k1_pre_topc(sK2,sK3),X0)
    | ~ l1_pre_topc(X0)
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1195,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1194])).

cnf(c_1197,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1195])).

cnf(c_1304,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1434,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_1304])).

cnf(c_1435,plain,
    ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1434])).

cnf(c_2646,plain,
    ( l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2317,c_25,c_26,c_1197,c_1435])).

cnf(c_2650,plain,
    ( u1_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(superposition,[status(thm)],[c_2646,c_1123])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k1_pre_topc(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1131,plain,
    ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1505,plain,
    ( u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1125,c_1131])).

cnf(c_1449,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0)
    | u1_struct_0(k1_pre_topc(X0,sK3)) = sK3 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1451,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ l1_pre_topc(sK2)
    | u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
    inference(instantiation,[status(thm)],[c_1449])).

cnf(c_1673,plain,
    ( u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1505,c_24,c_23,c_1451])).

cnf(c_2651,plain,
    ( k2_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_2650,c_1673])).

cnf(c_4,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1134,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1137,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1134,c_3])).

cnf(c_16,plain,
    ( ~ v2_compts_1(X0,X1)
    | v2_compts_1(X0,X2)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_struct_0(X2))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1126,plain,
    ( v2_compts_1(X0,X1) != iProver_top
    | v2_compts_1(X0,X2) = iProver_top
    | m1_pre_topc(X2,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | r1_tarski(X0,k2_struct_0(X2)) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1945,plain,
    ( v2_compts_1(u1_struct_0(X0),X1) != iProver_top
    | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
    | m1_pre_topc(X0,X1) != iProver_top
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1137,c_1126])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1130,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2063,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1))) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1137,c_1130])).

cnf(c_5054,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
    | v2_compts_1(u1_struct_0(X0),X1) != iProver_top
    | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1945,c_2063])).

cnf(c_5055,plain,
    ( v2_compts_1(u1_struct_0(X0),X1) != iProver_top
    | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
    | m1_pre_topc(X0,X1) != iProver_top
    | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_5054])).

cnf(c_5063,plain,
    ( v2_compts_1(u1_struct_0(k1_pre_topc(sK2,sK3)),X0) != iProver_top
    | v2_compts_1(u1_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) = iProver_top
    | m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
    | r1_tarski(u1_struct_0(k1_pre_topc(sK2,sK3)),sK3) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2651,c_5055])).

cnf(c_5064,plain,
    ( v2_compts_1(sK3,X0) != iProver_top
    | v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
    | m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
    | r1_tarski(sK3,sK3) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5063,c_1673])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1327,plain,
    ( r1_tarski(sK3,sK3) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1328,plain,
    ( r1_tarski(sK3,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1327])).

cnf(c_12,plain,
    ( v2_compts_1(k2_struct_0(X0),X0)
    | ~ v1_compts_1(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_18,plain,
    ( ~ sP0(X0,X1)
    | v2_compts_1(X0,X1)
    | v1_compts_1(k1_pre_topc(X1,X0)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_21,negated_conjecture,
    ( sP0(sK3,sK2)
    | v2_compts_1(sK3,sK2)
    | v1_compts_1(k1_pre_topc(sK2,sK3)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_322,plain,
    ( v2_compts_1(X0,X1)
    | v2_compts_1(sK3,sK2)
    | v1_compts_1(k1_pre_topc(X1,X0))
    | v1_compts_1(k1_pre_topc(sK2,sK3))
    | sK3 != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_21])).

cnf(c_323,plain,
    ( v2_compts_1(sK3,sK2)
    | v1_compts_1(k1_pre_topc(sK2,sK3)) ),
    inference(unflattening,[status(thm)],[c_322])).

cnf(c_382,plain,
    ( v2_compts_1(k2_struct_0(X0),X0)
    | v2_compts_1(sK3,sK2)
    | ~ l1_pre_topc(X0)
    | k1_pre_topc(sK2,sK3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_323])).

cnf(c_383,plain,
    ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3))
    | v2_compts_1(sK3,sK2)
    | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
    inference(unflattening,[status(thm)],[c_382])).

cnf(c_1121,plain,
    ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) = iProver_top
    | v2_compts_1(sK3,sK2) = iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_383])).

cnf(c_2756,plain,
    ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
    | v2_compts_1(sK3,sK2) = iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2651,c_1121])).

cnf(c_5071,plain,
    ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
    | v2_compts_1(sK3,sK2) != iProver_top
    | m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
    | r1_tarski(sK3,sK3) != iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_5064])).

cnf(c_5680,plain,
    ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5064,c_25,c_26,c_1197,c_1328,c_1435,c_2756,c_5071])).

cnf(c_5682,plain,
    ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_5680])).

cnf(c_826,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2399,plain,
    ( X0 != X1
    | k2_struct_0(k1_pre_topc(sK2,sK3)) != X1
    | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0 ),
    inference(instantiation,[status(thm)],[c_826])).

cnf(c_2803,plain,
    ( X0 != k2_struct_0(k1_pre_topc(sK2,sK3))
    | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0
    | k2_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2399])).

cnf(c_5337,plain,
    ( u1_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3))
    | k2_struct_0(k1_pre_topc(sK2,sK3)) = u1_struct_0(k1_pre_topc(sK2,sK3))
    | k2_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2803])).

cnf(c_5156,plain,
    ( ~ l1_pre_topc(k1_pre_topc(sK2,sK3))
    | u1_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_261])).

cnf(c_14,plain,
    ( v2_compts_1(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_struct_0(X2))
    | ~ l1_pre_topc(X1)
    | sK1(X2,X0) = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1128,plain,
    ( sK1(X0,X1) = X1
    | v2_compts_1(X1,X2) = iProver_top
    | m1_pre_topc(X0,X2) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2))) != iProver_top
    | r1_tarski(X1,k2_struct_0(X0)) != iProver_top
    | l1_pre_topc(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2085,plain,
    ( sK1(X0,X1) = X1
    | v2_compts_1(X1,sK2) = iProver_top
    | m1_pre_topc(X0,sK2) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
    | r1_tarski(X1,k2_struct_0(X0)) != iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1414,c_1128])).

cnf(c_3605,plain,
    ( r1_tarski(X1,k2_struct_0(X0)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
    | m1_pre_topc(X0,sK2) != iProver_top
    | v2_compts_1(X1,sK2) = iProver_top
    | sK1(X0,X1) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2085,c_25])).

cnf(c_3606,plain,
    ( sK1(X0,X1) = X1
    | v2_compts_1(X1,sK2) = iProver_top
    | m1_pre_topc(X0,sK2) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
    | r1_tarski(X1,k2_struct_0(X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3605])).

cnf(c_3612,plain,
    ( sK1(X0,sK3) = sK3
    | v2_compts_1(sK3,sK2) = iProver_top
    | m1_pre_topc(X0,sK2) != iProver_top
    | r1_tarski(sK3,k2_struct_0(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1586,c_3606])).

cnf(c_3720,plain,
    ( sK1(k1_pre_topc(sK2,sK3),sK3) = sK3
    | v2_compts_1(sK3,sK2) = iProver_top
    | m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
    | r1_tarski(sK3,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2651,c_3612])).

cnf(c_11,plain,
    ( ~ v2_compts_1(k2_struct_0(X0),X0)
    | v1_compts_1(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_17,plain,
    ( ~ sP0(X0,X1)
    | ~ v2_compts_1(X0,X1)
    | ~ v1_compts_1(k1_pre_topc(X1,X0)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_20,negated_conjecture,
    ( sP0(sK3,sK2)
    | ~ v2_compts_1(sK3,sK2)
    | ~ v1_compts_1(k1_pre_topc(sK2,sK3)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_349,plain,
    ( ~ v2_compts_1(X0,X1)
    | ~ v2_compts_1(sK3,sK2)
    | ~ v1_compts_1(k1_pre_topc(X1,X0))
    | ~ v1_compts_1(k1_pre_topc(sK2,sK3))
    | sK3 != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_20])).

cnf(c_350,plain,
    ( ~ v2_compts_1(sK3,sK2)
    | ~ v1_compts_1(k1_pre_topc(sK2,sK3)) ),
    inference(unflattening,[status(thm)],[c_349])).

cnf(c_369,plain,
    ( ~ v2_compts_1(k2_struct_0(X0),X0)
    | ~ v2_compts_1(sK3,sK2)
    | ~ l1_pre_topc(X0)
    | k1_pre_topc(sK2,sK3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_350])).

cnf(c_370,plain,
    ( ~ v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3))
    | ~ v2_compts_1(sK3,sK2)
    | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
    inference(unflattening,[status(thm)],[c_369])).

cnf(c_1122,plain,
    ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) != iProver_top
    | v2_compts_1(sK3,sK2) != iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_370])).

cnf(c_2757,plain,
    ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) != iProver_top
    | v2_compts_1(sK3,sK2) != iProver_top
    | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2651,c_1122])).

cnf(c_2759,plain,
    ( ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
    | ~ v2_compts_1(sK3,sK2)
    | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2757])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_2389,plain,
    ( ~ r1_tarski(X0,k2_struct_0(k1_pre_topc(sK2,sK3)))
    | ~ r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),X0)
    | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_2719,plain,
    ( ~ r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),k2_struct_0(k1_pre_topc(sK2,sK3)))
    | k2_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2389])).

cnf(c_1808,plain,
    ( r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),k2_struct_0(k1_pre_topc(sK2,sK3))) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1400,plain,
    ( r1_tarski(sK3,X0)
    | ~ r1_tarski(sK3,sK3)
    | X0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1277])).

cnf(c_1561,plain,
    ( r1_tarski(sK3,u1_struct_0(k1_pre_topc(X0,sK3)))
    | ~ r1_tarski(sK3,sK3)
    | u1_struct_0(k1_pre_topc(X0,sK3)) != sK3 ),
    inference(instantiation,[status(thm)],[c_1400])).

cnf(c_1563,plain,
    ( r1_tarski(sK3,u1_struct_0(k1_pre_topc(sK2,sK3)))
    | ~ r1_tarski(sK3,sK3)
    | u1_struct_0(k1_pre_topc(sK2,sK3)) != sK3 ),
    inference(instantiation,[status(thm)],[c_1561])).

cnf(c_13,plain,
    ( v2_compts_1(X0,X1)
    | ~ v2_compts_1(sK1(X2,X0),X2)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k2_struct_0(X2))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1166,plain,
    ( ~ v2_compts_1(sK1(X0,sK3),X0)
    | v2_compts_1(sK3,sK2)
    | ~ m1_pre_topc(X0,sK2)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_tarski(sK3,k2_struct_0(X0))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_1230,plain,
    ( ~ v2_compts_1(sK1(k1_pre_topc(sK2,X0),sK3),k1_pre_topc(sK2,X0))
    | v2_compts_1(sK3,sK2)
    | ~ m1_pre_topc(k1_pre_topc(sK2,X0),sK2)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,X0)))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_1166])).

cnf(c_1515,plain,
    ( ~ v2_compts_1(sK1(k1_pre_topc(sK2,sK3),sK3),k1_pre_topc(sK2,sK3))
    | v2_compts_1(sK3,sK2)
    | ~ m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,sK3)))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_1230])).

cnf(c_1430,plain,
    ( r1_tarski(k1_pre_topc(sK2,sK3),k1_pre_topc(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1262,plain,
    ( ~ r1_tarski(X0,k1_pre_topc(sK2,sK3))
    | ~ r1_tarski(k1_pre_topc(sK2,sK3),X0)
    | k1_pre_topc(sK2,sK3) = X0 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1358,plain,
    ( ~ r1_tarski(k1_pre_topc(sK2,sK3),k1_pre_topc(sK2,sK3))
    | k1_pre_topc(sK2,sK3) = k1_pre_topc(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_1262])).

cnf(c_1196,plain,
    ( ~ m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
    | l1_pre_topc(k1_pre_topc(sK2,sK3))
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_1194])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_13049,c_12537,c_5682,c_5680,c_5337,c_5156,c_3720,c_2759,c_2757,c_2719,c_1808,c_1563,c_1515,c_1451,c_1435,c_1434,c_1430,c_1358,c_1328,c_1327,c_1197,c_1196,c_26,c_23,c_25,c_24])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : iproveropt_run.sh %d %s
% 0.14/0.35  % Computer   : n006.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 11:20:52 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 3.70/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.70/1.01  
% 3.70/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.70/1.01  
% 3.70/1.01  ------  iProver source info
% 3.70/1.01  
% 3.70/1.01  git: date: 2020-06-30 10:37:57 +0100
% 3.70/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.70/1.01  git: non_committed_changes: false
% 3.70/1.01  git: last_make_outside_of_git: false
% 3.70/1.01  
% 3.70/1.01  ------ 
% 3.70/1.01  
% 3.70/1.01  ------ Input Options
% 3.70/1.01  
% 3.70/1.01  --out_options                           all
% 3.70/1.01  --tptp_safe_out                         true
% 3.70/1.01  --problem_path                          ""
% 3.70/1.01  --include_path                          ""
% 3.70/1.01  --clausifier                            res/vclausify_rel
% 3.70/1.01  --clausifier_options                    ""
% 3.70/1.01  --stdin                                 false
% 3.70/1.01  --stats_out                             all
% 3.70/1.01  
% 3.70/1.01  ------ General Options
% 3.70/1.01  
% 3.70/1.01  --fof                                   false
% 3.70/1.01  --time_out_real                         305.
% 3.70/1.01  --time_out_virtual                      -1.
% 3.70/1.01  --symbol_type_check                     false
% 3.70/1.01  --clausify_out                          false
% 3.70/1.01  --sig_cnt_out                           false
% 3.70/1.01  --trig_cnt_out                          false
% 3.70/1.01  --trig_cnt_out_tolerance                1.
% 3.70/1.01  --trig_cnt_out_sk_spl                   false
% 3.70/1.01  --abstr_cl_out                          false
% 3.70/1.01  
% 3.70/1.01  ------ Global Options
% 3.70/1.01  
% 3.70/1.01  --schedule                              default
% 3.70/1.01  --add_important_lit                     false
% 3.70/1.01  --prop_solver_per_cl                    1000
% 3.70/1.01  --min_unsat_core                        false
% 3.70/1.01  --soft_assumptions                      false
% 3.70/1.01  --soft_lemma_size                       3
% 3.70/1.01  --prop_impl_unit_size                   0
% 3.70/1.01  --prop_impl_unit                        []
% 3.70/1.01  --share_sel_clauses                     true
% 3.70/1.01  --reset_solvers                         false
% 3.70/1.01  --bc_imp_inh                            [conj_cone]
% 3.70/1.01  --conj_cone_tolerance                   3.
% 3.70/1.01  --extra_neg_conj                        none
% 3.70/1.01  --large_theory_mode                     true
% 3.70/1.01  --prolific_symb_bound                   200
% 3.70/1.01  --lt_threshold                          2000
% 3.70/1.01  --clause_weak_htbl                      true
% 3.70/1.01  --gc_record_bc_elim                     false
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing Options
% 3.70/1.01  
% 3.70/1.01  --preprocessing_flag                    true
% 3.70/1.01  --time_out_prep_mult                    0.1
% 3.70/1.01  --splitting_mode                        input
% 3.70/1.01  --splitting_grd                         true
% 3.70/1.01  --splitting_cvd                         false
% 3.70/1.01  --splitting_cvd_svl                     false
% 3.70/1.01  --splitting_nvd                         32
% 3.70/1.01  --sub_typing                            true
% 3.70/1.01  --prep_gs_sim                           true
% 3.70/1.01  --prep_unflatten                        true
% 3.70/1.01  --prep_res_sim                          true
% 3.70/1.01  --prep_upred                            true
% 3.70/1.01  --prep_sem_filter                       exhaustive
% 3.70/1.01  --prep_sem_filter_out                   false
% 3.70/1.01  --pred_elim                             true
% 3.70/1.01  --res_sim_input                         true
% 3.70/1.01  --eq_ax_congr_red                       true
% 3.70/1.01  --pure_diseq_elim                       true
% 3.70/1.01  --brand_transform                       false
% 3.70/1.01  --non_eq_to_eq                          false
% 3.70/1.01  --prep_def_merge                        true
% 3.70/1.01  --prep_def_merge_prop_impl              false
% 3.70/1.01  --prep_def_merge_mbd                    true
% 3.70/1.01  --prep_def_merge_tr_red                 false
% 3.70/1.01  --prep_def_merge_tr_cl                  false
% 3.70/1.01  --smt_preprocessing                     true
% 3.70/1.01  --smt_ac_axioms                         fast
% 3.70/1.01  --preprocessed_out                      false
% 3.70/1.01  --preprocessed_stats                    false
% 3.70/1.01  
% 3.70/1.01  ------ Abstraction refinement Options
% 3.70/1.01  
% 3.70/1.01  --abstr_ref                             []
% 3.70/1.01  --abstr_ref_prep                        false
% 3.70/1.01  --abstr_ref_until_sat                   false
% 3.70/1.01  --abstr_ref_sig_restrict                funpre
% 3.70/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.70/1.01  --abstr_ref_under                       []
% 3.70/1.01  
% 3.70/1.01  ------ SAT Options
% 3.70/1.01  
% 3.70/1.01  --sat_mode                              false
% 3.70/1.01  --sat_fm_restart_options                ""
% 3.70/1.01  --sat_gr_def                            false
% 3.70/1.01  --sat_epr_types                         true
% 3.70/1.01  --sat_non_cyclic_types                  false
% 3.70/1.01  --sat_finite_models                     false
% 3.70/1.01  --sat_fm_lemmas                         false
% 3.70/1.01  --sat_fm_prep                           false
% 3.70/1.01  --sat_fm_uc_incr                        true
% 3.70/1.01  --sat_out_model                         small
% 3.70/1.01  --sat_out_clauses                       false
% 3.70/1.01  
% 3.70/1.01  ------ QBF Options
% 3.70/1.01  
% 3.70/1.01  --qbf_mode                              false
% 3.70/1.01  --qbf_elim_univ                         false
% 3.70/1.01  --qbf_dom_inst                          none
% 3.70/1.01  --qbf_dom_pre_inst                      false
% 3.70/1.01  --qbf_sk_in                             false
% 3.70/1.01  --qbf_pred_elim                         true
% 3.70/1.01  --qbf_split                             512
% 3.70/1.01  
% 3.70/1.01  ------ BMC1 Options
% 3.70/1.01  
% 3.70/1.01  --bmc1_incremental                      false
% 3.70/1.01  --bmc1_axioms                           reachable_all
% 3.70/1.01  --bmc1_min_bound                        0
% 3.70/1.01  --bmc1_max_bound                        -1
% 3.70/1.01  --bmc1_max_bound_default                -1
% 3.70/1.01  --bmc1_symbol_reachability              true
% 3.70/1.01  --bmc1_property_lemmas                  false
% 3.70/1.01  --bmc1_k_induction                      false
% 3.70/1.01  --bmc1_non_equiv_states                 false
% 3.70/1.01  --bmc1_deadlock                         false
% 3.70/1.01  --bmc1_ucm                              false
% 3.70/1.01  --bmc1_add_unsat_core                   none
% 3.70/1.01  --bmc1_unsat_core_children              false
% 3.70/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.70/1.01  --bmc1_out_stat                         full
% 3.70/1.01  --bmc1_ground_init                      false
% 3.70/1.01  --bmc1_pre_inst_next_state              false
% 3.70/1.01  --bmc1_pre_inst_state                   false
% 3.70/1.01  --bmc1_pre_inst_reach_state             false
% 3.70/1.01  --bmc1_out_unsat_core                   false
% 3.70/1.01  --bmc1_aig_witness_out                  false
% 3.70/1.01  --bmc1_verbose                          false
% 3.70/1.01  --bmc1_dump_clauses_tptp                false
% 3.70/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.70/1.01  --bmc1_dump_file                        -
% 3.70/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.70/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.70/1.01  --bmc1_ucm_extend_mode                  1
% 3.70/1.01  --bmc1_ucm_init_mode                    2
% 3.70/1.01  --bmc1_ucm_cone_mode                    none
% 3.70/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.70/1.01  --bmc1_ucm_relax_model                  4
% 3.70/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.70/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.70/1.01  --bmc1_ucm_layered_model                none
% 3.70/1.01  --bmc1_ucm_max_lemma_size               10
% 3.70/1.01  
% 3.70/1.01  ------ AIG Options
% 3.70/1.01  
% 3.70/1.01  --aig_mode                              false
% 3.70/1.01  
% 3.70/1.01  ------ Instantiation Options
% 3.70/1.01  
% 3.70/1.01  --instantiation_flag                    true
% 3.70/1.01  --inst_sos_flag                         true
% 3.70/1.01  --inst_sos_phase                        true
% 3.70/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.70/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.70/1.01  --inst_lit_sel_side                     num_symb
% 3.70/1.01  --inst_solver_per_active                1400
% 3.70/1.01  --inst_solver_calls_frac                1.
% 3.70/1.01  --inst_passive_queue_type               priority_queues
% 3.70/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.70/1.01  --inst_passive_queues_freq              [25;2]
% 3.70/1.01  --inst_dismatching                      true
% 3.70/1.01  --inst_eager_unprocessed_to_passive     true
% 3.70/1.01  --inst_prop_sim_given                   true
% 3.70/1.01  --inst_prop_sim_new                     false
% 3.70/1.01  --inst_subs_new                         false
% 3.70/1.01  --inst_eq_res_simp                      false
% 3.70/1.01  --inst_subs_given                       false
% 3.70/1.01  --inst_orphan_elimination               true
% 3.70/1.01  --inst_learning_loop_flag               true
% 3.70/1.01  --inst_learning_start                   3000
% 3.70/1.01  --inst_learning_factor                  2
% 3.70/1.01  --inst_start_prop_sim_after_learn       3
% 3.70/1.01  --inst_sel_renew                        solver
% 3.70/1.01  --inst_lit_activity_flag                true
% 3.70/1.01  --inst_restr_to_given                   false
% 3.70/1.01  --inst_activity_threshold               500
% 3.70/1.01  --inst_out_proof                        true
% 3.70/1.01  
% 3.70/1.01  ------ Resolution Options
% 3.70/1.01  
% 3.70/1.01  --resolution_flag                       true
% 3.70/1.01  --res_lit_sel                           adaptive
% 3.70/1.01  --res_lit_sel_side                      none
% 3.70/1.01  --res_ordering                          kbo
% 3.70/1.01  --res_to_prop_solver                    active
% 3.70/1.01  --res_prop_simpl_new                    false
% 3.70/1.01  --res_prop_simpl_given                  true
% 3.70/1.01  --res_passive_queue_type                priority_queues
% 3.70/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.70/1.01  --res_passive_queues_freq               [15;5]
% 3.70/1.01  --res_forward_subs                      full
% 3.70/1.01  --res_backward_subs                     full
% 3.70/1.01  --res_forward_subs_resolution           true
% 3.70/1.01  --res_backward_subs_resolution          true
% 3.70/1.01  --res_orphan_elimination                true
% 3.70/1.01  --res_time_limit                        2.
% 3.70/1.01  --res_out_proof                         true
% 3.70/1.01  
% 3.70/1.01  ------ Superposition Options
% 3.70/1.01  
% 3.70/1.01  --superposition_flag                    true
% 3.70/1.01  --sup_passive_queue_type                priority_queues
% 3.70/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.70/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.70/1.01  --demod_completeness_check              fast
% 3.70/1.01  --demod_use_ground                      true
% 3.70/1.01  --sup_to_prop_solver                    passive
% 3.70/1.01  --sup_prop_simpl_new                    true
% 3.70/1.01  --sup_prop_simpl_given                  true
% 3.70/1.01  --sup_fun_splitting                     true
% 3.70/1.01  --sup_smt_interval                      50000
% 3.70/1.01  
% 3.70/1.01  ------ Superposition Simplification Setup
% 3.70/1.01  
% 3.70/1.01  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.70/1.01  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.70/1.01  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.70/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.70/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.70/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.70/1.01  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.70/1.01  --sup_immed_triv                        [TrivRules]
% 3.70/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_immed_bw_main                     []
% 3.70/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.70/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.70/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_input_bw                          []
% 3.70/1.01  
% 3.70/1.01  ------ Combination Options
% 3.70/1.01  
% 3.70/1.01  --comb_res_mult                         3
% 3.70/1.01  --comb_sup_mult                         2
% 3.70/1.01  --comb_inst_mult                        10
% 3.70/1.01  
% 3.70/1.01  ------ Debug Options
% 3.70/1.01  
% 3.70/1.01  --dbg_backtrace                         false
% 3.70/1.01  --dbg_dump_prop_clauses                 false
% 3.70/1.01  --dbg_dump_prop_clauses_file            -
% 3.70/1.01  --dbg_out_stat                          false
% 3.70/1.01  ------ Parsing...
% 3.70/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.70/1.01  ------ Proving...
% 3.70/1.01  ------ Problem Properties 
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  clauses                                 18
% 3.70/1.01  conjectures                             2
% 3.70/1.01  EPR                                     5
% 3.70/1.01  Horn                                    15
% 3.70/1.01  unary                                   5
% 3.70/1.01  binary                                  2
% 3.70/1.01  lits                                    56
% 3.70/1.01  lits eq                                 7
% 3.70/1.01  fd_pure                                 0
% 3.70/1.01  fd_pseudo                               0
% 3.70/1.01  fd_cond                                 0
% 3.70/1.01  fd_pseudo_cond                          1
% 3.70/1.01  AC symbols                              0
% 3.70/1.01  
% 3.70/1.01  ------ Schedule dynamic 5 is on 
% 3.70/1.01  
% 3.70/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  ------ 
% 3.70/1.01  Current options:
% 3.70/1.01  ------ 
% 3.70/1.01  
% 3.70/1.01  ------ Input Options
% 3.70/1.01  
% 3.70/1.01  --out_options                           all
% 3.70/1.01  --tptp_safe_out                         true
% 3.70/1.01  --problem_path                          ""
% 3.70/1.01  --include_path                          ""
% 3.70/1.01  --clausifier                            res/vclausify_rel
% 3.70/1.01  --clausifier_options                    ""
% 3.70/1.01  --stdin                                 false
% 3.70/1.01  --stats_out                             all
% 3.70/1.01  
% 3.70/1.01  ------ General Options
% 3.70/1.01  
% 3.70/1.01  --fof                                   false
% 3.70/1.01  --time_out_real                         305.
% 3.70/1.01  --time_out_virtual                      -1.
% 3.70/1.01  --symbol_type_check                     false
% 3.70/1.01  --clausify_out                          false
% 3.70/1.01  --sig_cnt_out                           false
% 3.70/1.01  --trig_cnt_out                          false
% 3.70/1.01  --trig_cnt_out_tolerance                1.
% 3.70/1.01  --trig_cnt_out_sk_spl                   false
% 3.70/1.01  --abstr_cl_out                          false
% 3.70/1.01  
% 3.70/1.01  ------ Global Options
% 3.70/1.01  
% 3.70/1.01  --schedule                              default
% 3.70/1.01  --add_important_lit                     false
% 3.70/1.01  --prop_solver_per_cl                    1000
% 3.70/1.01  --min_unsat_core                        false
% 3.70/1.01  --soft_assumptions                      false
% 3.70/1.01  --soft_lemma_size                       3
% 3.70/1.01  --prop_impl_unit_size                   0
% 3.70/1.01  --prop_impl_unit                        []
% 3.70/1.01  --share_sel_clauses                     true
% 3.70/1.01  --reset_solvers                         false
% 3.70/1.01  --bc_imp_inh                            [conj_cone]
% 3.70/1.01  --conj_cone_tolerance                   3.
% 3.70/1.01  --extra_neg_conj                        none
% 3.70/1.01  --large_theory_mode                     true
% 3.70/1.01  --prolific_symb_bound                   200
% 3.70/1.01  --lt_threshold                          2000
% 3.70/1.01  --clause_weak_htbl                      true
% 3.70/1.01  --gc_record_bc_elim                     false
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing Options
% 3.70/1.01  
% 3.70/1.01  --preprocessing_flag                    true
% 3.70/1.01  --time_out_prep_mult                    0.1
% 3.70/1.01  --splitting_mode                        input
% 3.70/1.01  --splitting_grd                         true
% 3.70/1.01  --splitting_cvd                         false
% 3.70/1.01  --splitting_cvd_svl                     false
% 3.70/1.01  --splitting_nvd                         32
% 3.70/1.01  --sub_typing                            true
% 3.70/1.01  --prep_gs_sim                           true
% 3.70/1.01  --prep_unflatten                        true
% 3.70/1.01  --prep_res_sim                          true
% 3.70/1.01  --prep_upred                            true
% 3.70/1.01  --prep_sem_filter                       exhaustive
% 3.70/1.01  --prep_sem_filter_out                   false
% 3.70/1.01  --pred_elim                             true
% 3.70/1.01  --res_sim_input                         true
% 3.70/1.01  --eq_ax_congr_red                       true
% 3.70/1.01  --pure_diseq_elim                       true
% 3.70/1.01  --brand_transform                       false
% 3.70/1.01  --non_eq_to_eq                          false
% 3.70/1.01  --prep_def_merge                        true
% 3.70/1.01  --prep_def_merge_prop_impl              false
% 3.70/1.01  --prep_def_merge_mbd                    true
% 3.70/1.01  --prep_def_merge_tr_red                 false
% 3.70/1.01  --prep_def_merge_tr_cl                  false
% 3.70/1.01  --smt_preprocessing                     true
% 3.70/1.01  --smt_ac_axioms                         fast
% 3.70/1.01  --preprocessed_out                      false
% 3.70/1.01  --preprocessed_stats                    false
% 3.70/1.01  
% 3.70/1.01  ------ Abstraction refinement Options
% 3.70/1.01  
% 3.70/1.01  --abstr_ref                             []
% 3.70/1.01  --abstr_ref_prep                        false
% 3.70/1.01  --abstr_ref_until_sat                   false
% 3.70/1.01  --abstr_ref_sig_restrict                funpre
% 3.70/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.70/1.01  --abstr_ref_under                       []
% 3.70/1.01  
% 3.70/1.01  ------ SAT Options
% 3.70/1.01  
% 3.70/1.01  --sat_mode                              false
% 3.70/1.01  --sat_fm_restart_options                ""
% 3.70/1.01  --sat_gr_def                            false
% 3.70/1.01  --sat_epr_types                         true
% 3.70/1.01  --sat_non_cyclic_types                  false
% 3.70/1.01  --sat_finite_models                     false
% 3.70/1.01  --sat_fm_lemmas                         false
% 3.70/1.01  --sat_fm_prep                           false
% 3.70/1.01  --sat_fm_uc_incr                        true
% 3.70/1.01  --sat_out_model                         small
% 3.70/1.01  --sat_out_clauses                       false
% 3.70/1.01  
% 3.70/1.01  ------ QBF Options
% 3.70/1.01  
% 3.70/1.01  --qbf_mode                              false
% 3.70/1.01  --qbf_elim_univ                         false
% 3.70/1.01  --qbf_dom_inst                          none
% 3.70/1.01  --qbf_dom_pre_inst                      false
% 3.70/1.01  --qbf_sk_in                             false
% 3.70/1.01  --qbf_pred_elim                         true
% 3.70/1.01  --qbf_split                             512
% 3.70/1.01  
% 3.70/1.01  ------ BMC1 Options
% 3.70/1.01  
% 3.70/1.01  --bmc1_incremental                      false
% 3.70/1.01  --bmc1_axioms                           reachable_all
% 3.70/1.01  --bmc1_min_bound                        0
% 3.70/1.01  --bmc1_max_bound                        -1
% 3.70/1.01  --bmc1_max_bound_default                -1
% 3.70/1.01  --bmc1_symbol_reachability              true
% 3.70/1.01  --bmc1_property_lemmas                  false
% 3.70/1.01  --bmc1_k_induction                      false
% 3.70/1.01  --bmc1_non_equiv_states                 false
% 3.70/1.01  --bmc1_deadlock                         false
% 3.70/1.01  --bmc1_ucm                              false
% 3.70/1.01  --bmc1_add_unsat_core                   none
% 3.70/1.01  --bmc1_unsat_core_children              false
% 3.70/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.70/1.01  --bmc1_out_stat                         full
% 3.70/1.01  --bmc1_ground_init                      false
% 3.70/1.01  --bmc1_pre_inst_next_state              false
% 3.70/1.01  --bmc1_pre_inst_state                   false
% 3.70/1.01  --bmc1_pre_inst_reach_state             false
% 3.70/1.01  --bmc1_out_unsat_core                   false
% 3.70/1.01  --bmc1_aig_witness_out                  false
% 3.70/1.01  --bmc1_verbose                          false
% 3.70/1.01  --bmc1_dump_clauses_tptp                false
% 3.70/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.70/1.01  --bmc1_dump_file                        -
% 3.70/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.70/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.70/1.01  --bmc1_ucm_extend_mode                  1
% 3.70/1.01  --bmc1_ucm_init_mode                    2
% 3.70/1.01  --bmc1_ucm_cone_mode                    none
% 3.70/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.70/1.01  --bmc1_ucm_relax_model                  4
% 3.70/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.70/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.70/1.01  --bmc1_ucm_layered_model                none
% 3.70/1.01  --bmc1_ucm_max_lemma_size               10
% 3.70/1.01  
% 3.70/1.01  ------ AIG Options
% 3.70/1.01  
% 3.70/1.01  --aig_mode                              false
% 3.70/1.01  
% 3.70/1.01  ------ Instantiation Options
% 3.70/1.01  
% 3.70/1.01  --instantiation_flag                    true
% 3.70/1.01  --inst_sos_flag                         true
% 3.70/1.01  --inst_sos_phase                        true
% 3.70/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.70/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.70/1.01  --inst_lit_sel_side                     none
% 3.70/1.01  --inst_solver_per_active                1400
% 3.70/1.01  --inst_solver_calls_frac                1.
% 3.70/1.01  --inst_passive_queue_type               priority_queues
% 3.70/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.70/1.01  --inst_passive_queues_freq              [25;2]
% 3.70/1.01  --inst_dismatching                      true
% 3.70/1.01  --inst_eager_unprocessed_to_passive     true
% 3.70/1.01  --inst_prop_sim_given                   true
% 3.70/1.01  --inst_prop_sim_new                     false
% 3.70/1.01  --inst_subs_new                         false
% 3.70/1.01  --inst_eq_res_simp                      false
% 3.70/1.01  --inst_subs_given                       false
% 3.70/1.01  --inst_orphan_elimination               true
% 3.70/1.01  --inst_learning_loop_flag               true
% 3.70/1.01  --inst_learning_start                   3000
% 3.70/1.01  --inst_learning_factor                  2
% 3.70/1.01  --inst_start_prop_sim_after_learn       3
% 3.70/1.01  --inst_sel_renew                        solver
% 3.70/1.01  --inst_lit_activity_flag                true
% 3.70/1.01  --inst_restr_to_given                   false
% 3.70/1.01  --inst_activity_threshold               500
% 3.70/1.01  --inst_out_proof                        true
% 3.70/1.01  
% 3.70/1.01  ------ Resolution Options
% 3.70/1.01  
% 3.70/1.01  --resolution_flag                       false
% 3.70/1.01  --res_lit_sel                           adaptive
% 3.70/1.01  --res_lit_sel_side                      none
% 3.70/1.01  --res_ordering                          kbo
% 3.70/1.01  --res_to_prop_solver                    active
% 3.70/1.01  --res_prop_simpl_new                    false
% 3.70/1.01  --res_prop_simpl_given                  true
% 3.70/1.01  --res_passive_queue_type                priority_queues
% 3.70/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.70/1.01  --res_passive_queues_freq               [15;5]
% 3.70/1.01  --res_forward_subs                      full
% 3.70/1.01  --res_backward_subs                     full
% 3.70/1.01  --res_forward_subs_resolution           true
% 3.70/1.01  --res_backward_subs_resolution          true
% 3.70/1.01  --res_orphan_elimination                true
% 3.70/1.01  --res_time_limit                        2.
% 3.70/1.01  --res_out_proof                         true
% 3.70/1.01  
% 3.70/1.01  ------ Superposition Options
% 3.70/1.01  
% 3.70/1.01  --superposition_flag                    true
% 3.70/1.01  --sup_passive_queue_type                priority_queues
% 3.70/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.70/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.70/1.01  --demod_completeness_check              fast
% 3.70/1.01  --demod_use_ground                      true
% 3.70/1.01  --sup_to_prop_solver                    passive
% 3.70/1.01  --sup_prop_simpl_new                    true
% 3.70/1.01  --sup_prop_simpl_given                  true
% 3.70/1.01  --sup_fun_splitting                     true
% 3.70/1.01  --sup_smt_interval                      50000
% 3.70/1.01  
% 3.70/1.01  ------ Superposition Simplification Setup
% 3.70/1.01  
% 3.70/1.01  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.70/1.01  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.70/1.01  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.70/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.70/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.70/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.70/1.01  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.70/1.01  --sup_immed_triv                        [TrivRules]
% 3.70/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_immed_bw_main                     []
% 3.70/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.70/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.70/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/1.01  --sup_input_bw                          []
% 3.70/1.01  
% 3.70/1.01  ------ Combination Options
% 3.70/1.01  
% 3.70/1.01  --comb_res_mult                         3
% 3.70/1.01  --comb_sup_mult                         2
% 3.70/1.01  --comb_inst_mult                        10
% 3.70/1.01  
% 3.70/1.01  ------ Debug Options
% 3.70/1.01  
% 3.70/1.01  --dbg_backtrace                         false
% 3.70/1.01  --dbg_dump_prop_clauses                 false
% 3.70/1.01  --dbg_dump_prop_clauses_file            -
% 3.70/1.01  --dbg_out_stat                          false
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  ------ Proving...
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  % SZS status Theorem for theBenchmark.p
% 3.70/1.01  
% 3.70/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 3.70/1.01  
% 3.70/1.01  fof(f12,conjecture,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_pre_topc(X0) => ((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1)) & (k1_xboole_0 = X1 => (v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1)))))))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f13,negated_conjecture,(
% 3.70/1.01    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_pre_topc(X0) => ((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1)) & (k1_xboole_0 = X1 => (v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1)))))))),
% 3.70/1.01    inference(negated_conjecture,[],[f12])).
% 3.70/1.01  
% 3.70/1.01  fof(f14,plain,(
% 3.70/1.01    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1) & (k1_xboole_0 = X1 => (v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1)))))))),
% 3.70/1.01    inference(pure_predicate_removal,[],[f13])).
% 3.70/1.01  
% 3.70/1.01  fof(f26,plain,(
% 3.70/1.01    ? [X0] : (? [X1] : ((((v2_compts_1(X1,X0) <~> v1_compts_1(k1_pre_topc(X0,X1))) & k1_xboole_0 != X1) | ((v2_compts_1(X1,X0) <~> v1_compts_1(k1_pre_topc(X0,X1))) & k1_xboole_0 = X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f14])).
% 3.70/1.01  
% 3.70/1.01  fof(f27,plain,(
% 3.70/1.01    ! [X1,X0] : (((v2_compts_1(X1,X0) <~> v1_compts_1(k1_pre_topc(X0,X1))) & k1_xboole_0 = X1) | ~sP0(X1,X0))),
% 3.70/1.01    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 3.70/1.01  
% 3.70/1.01  fof(f28,plain,(
% 3.70/1.01    ? [X0] : (? [X1] : ((((v2_compts_1(X1,X0) <~> v1_compts_1(k1_pre_topc(X0,X1))) & k1_xboole_0 != X1) | sP0(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.70/1.01    inference(definition_folding,[],[f26,f27])).
% 3.70/1.01  
% 3.70/1.01  fof(f39,plain,(
% 3.70/1.01    ? [X0] : (? [X1] : (((((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0))) & k1_xboole_0 != X1) | sP0(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.70/1.01    inference(nnf_transformation,[],[f28])).
% 3.70/1.01  
% 3.70/1.01  fof(f40,plain,(
% 3.70/1.01    ? [X0] : (? [X1] : ((((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0)) & k1_xboole_0 != X1) | sP0(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.70/1.01    inference(flattening,[],[f39])).
% 3.70/1.01  
% 3.70/1.01  fof(f42,plain,(
% 3.70/1.01    ( ! [X0] : (? [X1] : ((((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0)) & k1_xboole_0 != X1) | sP0(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => ((((~v1_compts_1(k1_pre_topc(X0,sK3)) | ~v2_compts_1(sK3,X0)) & (v1_compts_1(k1_pre_topc(X0,sK3)) | v2_compts_1(sK3,X0)) & k1_xboole_0 != sK3) | sP0(sK3,X0)) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.70/1.01    introduced(choice_axiom,[])).
% 3.70/1.01  
% 3.70/1.01  fof(f41,plain,(
% 3.70/1.01    ? [X0] : (? [X1] : ((((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0)) & k1_xboole_0 != X1) | sP0(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : ((((~v1_compts_1(k1_pre_topc(sK2,X1)) | ~v2_compts_1(X1,sK2)) & (v1_compts_1(k1_pre_topc(sK2,X1)) | v2_compts_1(X1,sK2)) & k1_xboole_0 != X1) | sP0(X1,sK2)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))) & l1_pre_topc(sK2))),
% 3.70/1.01    introduced(choice_axiom,[])).
% 3.70/1.01  
% 3.70/1.01  fof(f43,plain,(
% 3.70/1.01    ((((~v1_compts_1(k1_pre_topc(sK2,sK3)) | ~v2_compts_1(sK3,sK2)) & (v1_compts_1(k1_pre_topc(sK2,sK3)) | v2_compts_1(sK3,sK2)) & k1_xboole_0 != sK3) | sP0(sK3,sK2)) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))) & l1_pre_topc(sK2)),
% 3.70/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f40,f42,f41])).
% 3.70/1.01  
% 3.70/1.01  fof(f64,plain,(
% 3.70/1.01    l1_pre_topc(sK2)),
% 3.70/1.01    inference(cnf_transformation,[],[f43])).
% 3.70/1.01  
% 3.70/1.01  fof(f6,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f19,plain,(
% 3.70/1.01    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f6])).
% 3.70/1.01  
% 3.70/1.01  fof(f51,plain,(
% 3.70/1.01    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f19])).
% 3.70/1.01  
% 3.70/1.01  fof(f4,axiom,(
% 3.70/1.01    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f16,plain,(
% 3.70/1.01    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f4])).
% 3.70/1.01  
% 3.70/1.01  fof(f49,plain,(
% 3.70/1.01    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f16])).
% 3.70/1.01  
% 3.70/1.01  fof(f65,plain,(
% 3.70/1.01    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))),
% 3.70/1.01    inference(cnf_transformation,[],[f43])).
% 3.70/1.01  
% 3.70/1.01  fof(f5,axiom,(
% 3.70/1.01    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => (m1_pre_topc(k1_pre_topc(X0,X1),X0) & v1_pre_topc(k1_pre_topc(X0,X1))))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f15,plain,(
% 3.70/1.01    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_pre_topc(k1_pre_topc(X0,X1),X0))),
% 3.70/1.01    inference(pure_predicate_removal,[],[f5])).
% 3.70/1.01  
% 3.70/1.01  fof(f17,plain,(
% 3.70/1.01    ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 3.70/1.01    inference(ennf_transformation,[],[f15])).
% 3.70/1.01  
% 3.70/1.01  fof(f18,plain,(
% 3.70/1.01    ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(flattening,[],[f17])).
% 3.70/1.01  
% 3.70/1.01  fof(f50,plain,(
% 3.70/1.01    ( ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f18])).
% 3.70/1.01  
% 3.70/1.01  fof(f7,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f20,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f7])).
% 3.70/1.01  
% 3.70/1.01  fof(f52,plain,(
% 3.70/1.01    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f20])).
% 3.70/1.01  
% 3.70/1.01  fof(f8,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => u1_struct_0(k1_pre_topc(X0,X1)) = X1))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f21,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f8])).
% 3.70/1.01  
% 3.70/1.01  fof(f53,plain,(
% 3.70/1.01    ( ! [X0,X1] : (u1_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f21])).
% 3.70/1.01  
% 3.70/1.01  fof(f3,axiom,(
% 3.70/1.01    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f48,plain,(
% 3.70/1.01    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.70/1.01    inference(cnf_transformation,[],[f3])).
% 3.70/1.01  
% 3.70/1.01  fof(f2,axiom,(
% 3.70/1.01    ! [X0] : k2_subset_1(X0) = X0),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f47,plain,(
% 3.70/1.01    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.70/1.01    inference(cnf_transformation,[],[f2])).
% 3.70/1.01  
% 3.70/1.01  fof(f11,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r1_tarski(X2,k2_struct_0(X1)) => (v2_compts_1(X2,X0) <=> ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) => (X2 = X3 => v2_compts_1(X3,X1))))))))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f24,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : (((v2_compts_1(X2,X0) <=> ! [X3] : ((v2_compts_1(X3,X1) | X2 != X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))) | ~r1_tarski(X2,k2_struct_0(X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f11])).
% 3.70/1.01  
% 3.70/1.01  fof(f25,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : ((v2_compts_1(X2,X0) <=> ! [X3] : (v2_compts_1(X3,X1) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(flattening,[],[f24])).
% 3.70/1.01  
% 3.70/1.01  fof(f32,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : (((v2_compts_1(X2,X0) | ? [X3] : (~v2_compts_1(X3,X1) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))) & (! [X3] : (v2_compts_1(X3,X1) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) | ~v2_compts_1(X2,X0))) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(nnf_transformation,[],[f25])).
% 3.70/1.01  
% 3.70/1.01  fof(f33,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : (((v2_compts_1(X2,X0) | ? [X3] : (~v2_compts_1(X3,X1) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))) & (! [X4] : (v2_compts_1(X4,X1) | X2 != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~v2_compts_1(X2,X0))) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(rectify,[],[f32])).
% 3.70/1.01  
% 3.70/1.01  fof(f34,plain,(
% 3.70/1.01    ! [X2,X1] : (? [X3] : (~v2_compts_1(X3,X1) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))) => (~v2_compts_1(sK1(X1,X2),X1) & sK1(X1,X2) = X2 & m1_subset_1(sK1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))))),
% 3.70/1.01    introduced(choice_axiom,[])).
% 3.70/1.01  
% 3.70/1.01  fof(f35,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : (((v2_compts_1(X2,X0) | (~v2_compts_1(sK1(X1,X2),X1) & sK1(X1,X2) = X2 & m1_subset_1(sK1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))))) & (! [X4] : (v2_compts_1(X4,X1) | X2 != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~v2_compts_1(X2,X0))) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).
% 3.70/1.01  
% 3.70/1.01  fof(f57,plain,(
% 3.70/1.01    ( ! [X4,X2,X0,X1] : (v2_compts_1(X4,X1) | X2 != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~v2_compts_1(X2,X0) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f35])).
% 3.70/1.01  
% 3.70/1.01  fof(f71,plain,(
% 3.70/1.01    ( ! [X4,X0,X1] : (v2_compts_1(X4,X1) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~v2_compts_1(X4,X0) | ~r1_tarski(X4,k2_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(equality_resolution,[],[f57])).
% 3.70/1.01  
% 3.70/1.01  fof(f9,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f22,plain,(
% 3.70/1.01    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f9])).
% 3.70/1.01  
% 3.70/1.01  fof(f54,plain,(
% 3.70/1.01    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f22])).
% 3.70/1.01  
% 3.70/1.01  fof(f1,axiom,(
% 3.70/1.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f29,plain,(
% 3.70/1.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.70/1.01    inference(nnf_transformation,[],[f1])).
% 3.70/1.01  
% 3.70/1.01  fof(f30,plain,(
% 3.70/1.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.70/1.01    inference(flattening,[],[f29])).
% 3.70/1.01  
% 3.70/1.01  fof(f44,plain,(
% 3.70/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.70/1.01    inference(cnf_transformation,[],[f30])).
% 3.70/1.01  
% 3.70/1.01  fof(f70,plain,(
% 3.70/1.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.70/1.01    inference(equality_resolution,[],[f44])).
% 3.70/1.01  
% 3.70/1.01  fof(f10,axiom,(
% 3.70/1.01    ! [X0] : (l1_pre_topc(X0) => (v1_compts_1(X0) <=> v2_compts_1(k2_struct_0(X0),X0)))),
% 3.70/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/1.01  
% 3.70/1.01  fof(f23,plain,(
% 3.70/1.01    ! [X0] : ((v1_compts_1(X0) <=> v2_compts_1(k2_struct_0(X0),X0)) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(ennf_transformation,[],[f10])).
% 3.70/1.01  
% 3.70/1.01  fof(f31,plain,(
% 3.70/1.01    ! [X0] : (((v1_compts_1(X0) | ~v2_compts_1(k2_struct_0(X0),X0)) & (v2_compts_1(k2_struct_0(X0),X0) | ~v1_compts_1(X0))) | ~l1_pre_topc(X0))),
% 3.70/1.01    inference(nnf_transformation,[],[f23])).
% 3.70/1.01  
% 3.70/1.01  fof(f55,plain,(
% 3.70/1.01    ( ! [X0] : (v2_compts_1(k2_struct_0(X0),X0) | ~v1_compts_1(X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f31])).
% 3.70/1.01  
% 3.70/1.01  fof(f36,plain,(
% 3.70/1.01    ! [X1,X0] : ((((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0))) & k1_xboole_0 = X1) | ~sP0(X1,X0))),
% 3.70/1.01    inference(nnf_transformation,[],[f27])).
% 3.70/1.01  
% 3.70/1.01  fof(f37,plain,(
% 3.70/1.01    ! [X1,X0] : (((~v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0)) & (v1_compts_1(k1_pre_topc(X0,X1)) | v2_compts_1(X1,X0)) & k1_xboole_0 = X1) | ~sP0(X1,X0))),
% 3.70/1.01    inference(flattening,[],[f36])).
% 3.70/1.01  
% 3.70/1.01  fof(f38,plain,(
% 3.70/1.01    ! [X0,X1] : (((~v1_compts_1(k1_pre_topc(X1,X0)) | ~v2_compts_1(X0,X1)) & (v1_compts_1(k1_pre_topc(X1,X0)) | v2_compts_1(X0,X1)) & k1_xboole_0 = X0) | ~sP0(X0,X1))),
% 3.70/1.01    inference(rectify,[],[f37])).
% 3.70/1.01  
% 3.70/1.01  fof(f62,plain,(
% 3.70/1.01    ( ! [X0,X1] : (v1_compts_1(k1_pre_topc(X1,X0)) | v2_compts_1(X0,X1) | ~sP0(X0,X1)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f38])).
% 3.70/1.01  
% 3.70/1.01  fof(f67,plain,(
% 3.70/1.01    v1_compts_1(k1_pre_topc(sK2,sK3)) | v2_compts_1(sK3,sK2) | sP0(sK3,sK2)),
% 3.70/1.01    inference(cnf_transformation,[],[f43])).
% 3.70/1.01  
% 3.70/1.01  fof(f59,plain,(
% 3.70/1.01    ( ! [X2,X0,X1] : (v2_compts_1(X2,X0) | sK1(X1,X2) = X2 | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f35])).
% 3.70/1.01  
% 3.70/1.01  fof(f56,plain,(
% 3.70/1.01    ( ! [X0] : (v1_compts_1(X0) | ~v2_compts_1(k2_struct_0(X0),X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f31])).
% 3.70/1.01  
% 3.70/1.01  fof(f63,plain,(
% 3.70/1.01    ( ! [X0,X1] : (~v1_compts_1(k1_pre_topc(X1,X0)) | ~v2_compts_1(X0,X1) | ~sP0(X0,X1)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f38])).
% 3.70/1.01  
% 3.70/1.01  fof(f68,plain,(
% 3.70/1.01    ~v1_compts_1(k1_pre_topc(sK2,sK3)) | ~v2_compts_1(sK3,sK2) | sP0(sK3,sK2)),
% 3.70/1.01    inference(cnf_transformation,[],[f43])).
% 3.70/1.01  
% 3.70/1.01  fof(f46,plain,(
% 3.70/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f30])).
% 3.70/1.01  
% 3.70/1.01  fof(f60,plain,(
% 3.70/1.01    ( ! [X2,X0,X1] : (v2_compts_1(X2,X0) | ~v2_compts_1(sK1(X1,X2),X1) | ~r1_tarski(X2,k2_struct_0(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.70/1.01    inference(cnf_transformation,[],[f35])).
% 3.70/1.01  
% 3.70/1.01  cnf(c_835,plain,
% 3.70/1.01      ( ~ v2_compts_1(X0,X1) | v2_compts_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.70/1.01      theory(equality) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2367,plain,
% 3.70/1.01      ( ~ v2_compts_1(X0,X1)
% 3.70/1.01      | v2_compts_1(X2,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | X2 != X0
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != X1 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_835]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2861,plain,
% 3.70/1.01      ( ~ v2_compts_1(X0,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | v2_compts_1(X1,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | X1 != X0
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2367]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5751,plain,
% 3.70/1.01      ( v2_compts_1(X0,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | X0 != sK3
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2861]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_13049,plain,
% 3.70/1.01      ( v2_compts_1(sK1(k1_pre_topc(sK2,sK3),sK3),k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | sK1(k1_pre_topc(sK2,sK3),sK3) != sK3
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != k1_pre_topc(sK2,sK3) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_5751]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_827,plain,
% 3.70/1.01      ( ~ r1_tarski(X0,X1) | r1_tarski(X0,X2) | X2 != X1 ),
% 3.70/1.01      theory(equality) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1277,plain,
% 3.70/1.01      ( ~ r1_tarski(sK3,X0) | r1_tarski(sK3,X1) | X1 != X0 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_827]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1912,plain,
% 3.70/1.01      ( r1_tarski(sK3,X0)
% 3.70/1.01      | ~ r1_tarski(sK3,u1_struct_0(k1_pre_topc(X1,sK3)))
% 3.70/1.01      | X0 != u1_struct_0(k1_pre_topc(X1,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1277]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_12537,plain,
% 3.70/1.01      ( ~ r1_tarski(sK3,u1_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) != u1_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1912]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_24,negated_conjecture,
% 3.70/1.01      ( l1_pre_topc(sK2) ),
% 3.70/1.01      inference(cnf_transformation,[],[f64]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1124,plain,
% 3.70/1.01      ( l1_pre_topc(sK2) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_7,plain,
% 3.70/1.01      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f51]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5,plain,
% 3.70/1.01      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f49]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_261,plain,
% 3.70/1.01      ( ~ l1_pre_topc(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.70/1.01      inference(resolution,[status(thm)],[c_7,c_5]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1123,plain,
% 3.70/1.01      ( u1_struct_0(X0) = k2_struct_0(X0)
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_261]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1414,plain,
% 3.70/1.01      ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1124,c_1123]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_23,negated_conjecture,
% 3.70/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 3.70/1.01      inference(cnf_transformation,[],[f65]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1125,plain,
% 3.70/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1586,plain,
% 3.70/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_struct_0(sK2))) = iProver_top ),
% 3.70/1.01      inference(demodulation,[status(thm)],[c_1414,c_1125]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_6,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
% 3.70/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 3.70/1.01      | ~ l1_pre_topc(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f50]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1133,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(X0,X1),X0) = iProver_top
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1963,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top
% 3.70/1.01      | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1414,c_1133]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_25,plain,
% 3.70/1.01      ( l1_pre_topc(sK2) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2306,plain,
% 3.70/1.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
% 3.70/1.01      | m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_1963,c_25]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2307,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2) = iProver_top
% 3.70/1.01      | m1_subset_1(X0,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top ),
% 3.70/1.01      inference(renaming,[status(thm)],[c_2306]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2313,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) = iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1586,c_2307]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_8,plain,
% 3.70/1.01      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f52]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1132,plain,
% 3.70/1.01      ( m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2317,plain,
% 3.70/1.01      ( l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_2313,c_1132]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_26,plain,
% 3.70/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1194,plain,
% 3.70/1.01      ( ~ m1_pre_topc(k1_pre_topc(sK2,sK3),X0)
% 3.70/1.01      | ~ l1_pre_topc(X0)
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_8]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1195,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1194]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1197,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1195]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1304,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,X0),sK2)
% 3.70/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_6]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1434,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
% 3.70/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1304]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1435,plain,
% 3.70/1.01      ( m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) = iProver_top
% 3.70/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1434]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2646,plain,
% 3.70/1.01      ( l1_pre_topc(k1_pre_topc(sK2,sK3)) = iProver_top ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_2317,c_25,c_26,c_1197,c_1435]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2650,plain,
% 3.70/1.01      ( u1_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_2646,c_1123]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_9,plain,
% 3.70/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.70/1.01      | ~ l1_pre_topc(X1)
% 3.70/1.01      | u1_struct_0(k1_pre_topc(X1,X0)) = X0 ),
% 3.70/1.01      inference(cnf_transformation,[],[f53]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1131,plain,
% 3.70/1.01      ( u1_struct_0(k1_pre_topc(X0,X1)) = X1
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1505,plain,
% 3.70/1.01      ( u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1125,c_1131]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1449,plain,
% 3.70/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0)))
% 3.70/1.01      | ~ l1_pre_topc(X0)
% 3.70/1.01      | u1_struct_0(k1_pre_topc(X0,sK3)) = sK3 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_9]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1451,plain,
% 3.70/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ l1_pre_topc(sK2)
% 3.70/1.01      | u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1449]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1673,plain,
% 3.70/1.01      ( u1_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_1505,c_24,c_23,c_1451]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2651,plain,
% 3.70/1.01      ( k2_struct_0(k1_pre_topc(sK2,sK3)) = sK3 ),
% 3.70/1.01      inference(light_normalisation,[status(thm)],[c_2650,c_1673]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_4,plain,
% 3.70/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 3.70/1.01      inference(cnf_transformation,[],[f48]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1134,plain,
% 3.70/1.01      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_3,plain,
% 3.70/1.01      ( k2_subset_1(X0) = X0 ),
% 3.70/1.01      inference(cnf_transformation,[],[f47]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1137,plain,
% 3.70/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.70/1.01      inference(light_normalisation,[status(thm)],[c_1134,c_3]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_16,plain,
% 3.70/1.01      ( ~ v2_compts_1(X0,X1)
% 3.70/1.01      | v2_compts_1(X0,X2)
% 3.70/1.01      | ~ m1_pre_topc(X2,X1)
% 3.70/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
% 3.70/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.70/1.01      | ~ r1_tarski(X0,k2_struct_0(X2))
% 3.70/1.01      | ~ l1_pre_topc(X1) ),
% 3.70/1.01      inference(cnf_transformation,[],[f71]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1126,plain,
% 3.70/1.01      ( v2_compts_1(X0,X1) != iProver_top
% 3.70/1.01      | v2_compts_1(X0,X2) = iProver_top
% 3.70/1.01      | m1_pre_topc(X2,X1) != iProver_top
% 3.70/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2))) != iProver_top
% 3.70/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.70/1.01      | r1_tarski(X0,k2_struct_0(X2)) != iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1945,plain,
% 3.70/1.01      ( v2_compts_1(u1_struct_0(X0),X1) != iProver_top
% 3.70/1.01      | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.70/1.01      | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1137,c_1126]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_10,plain,
% 3.70/1.01      ( ~ m1_pre_topc(X0,X1)
% 3.70/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
% 3.70/1.01      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.70/1.01      | ~ l1_pre_topc(X1) ),
% 3.70/1.01      inference(cnf_transformation,[],[f54]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1130,plain,
% 3.70/1.01      ( m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.70/1.01      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) = iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2063,plain,
% 3.70/1.01      ( m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1))) = iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1137,c_1130]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5054,plain,
% 3.70/1.01      ( m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
% 3.70/1.01      | v2_compts_1(u1_struct_0(X0),X1) != iProver_top
% 3.70/1.01      | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_1945,c_2063]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5055,plain,
% 3.70/1.01      ( v2_compts_1(u1_struct_0(X0),X1) != iProver_top
% 3.70/1.01      | v2_compts_1(u1_struct_0(X0),X0) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,X1) != iProver_top
% 3.70/1.01      | r1_tarski(u1_struct_0(X0),k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | l1_pre_topc(X1) != iProver_top ),
% 3.70/1.01      inference(renaming,[status(thm)],[c_5054]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5063,plain,
% 3.70/1.01      ( v2_compts_1(u1_struct_0(k1_pre_topc(sK2,sK3)),X0) != iProver_top
% 3.70/1.01      | v2_compts_1(u1_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
% 3.70/1.01      | r1_tarski(u1_struct_0(k1_pre_topc(sK2,sK3)),sK3) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_2651,c_5055]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5064,plain,
% 3.70/1.01      ( v2_compts_1(sK3,X0) != iProver_top
% 3.70/1.01      | v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | m1_pre_topc(k1_pre_topc(sK2,sK3),X0) != iProver_top
% 3.70/1.01      | r1_tarski(sK3,sK3) != iProver_top
% 3.70/1.01      | l1_pre_topc(X0) != iProver_top ),
% 3.70/1.01      inference(light_normalisation,[status(thm)],[c_5063,c_1673]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2,plain,
% 3.70/1.01      ( r1_tarski(X0,X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f70]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1327,plain,
% 3.70/1.01      ( r1_tarski(sK3,sK3) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1328,plain,
% 3.70/1.01      ( r1_tarski(sK3,sK3) = iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1327]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_12,plain,
% 3.70/1.01      ( v2_compts_1(k2_struct_0(X0),X0)
% 3.70/1.01      | ~ v1_compts_1(X0)
% 3.70/1.01      | ~ l1_pre_topc(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f55]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_18,plain,
% 3.70/1.01      ( ~ sP0(X0,X1)
% 3.70/1.01      | v2_compts_1(X0,X1)
% 3.70/1.01      | v1_compts_1(k1_pre_topc(X1,X0)) ),
% 3.70/1.01      inference(cnf_transformation,[],[f62]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_21,negated_conjecture,
% 3.70/1.01      ( sP0(sK3,sK2)
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | v1_compts_1(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(cnf_transformation,[],[f67]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_322,plain,
% 3.70/1.01      ( v2_compts_1(X0,X1)
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | v1_compts_1(k1_pre_topc(X1,X0))
% 3.70/1.01      | v1_compts_1(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | sK3 != X0
% 3.70/1.01      | sK2 != X1 ),
% 3.70/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_21]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_323,plain,
% 3.70/1.01      ( v2_compts_1(sK3,sK2) | v1_compts_1(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(unflattening,[status(thm)],[c_322]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_382,plain,
% 3.70/1.01      ( v2_compts_1(k2_struct_0(X0),X0)
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ l1_pre_topc(X0)
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != X0 ),
% 3.70/1.01      inference(resolution_lifted,[status(thm)],[c_12,c_323]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_383,plain,
% 3.70/1.01      ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3))
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(unflattening,[status(thm)],[c_382]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1121,plain,
% 3.70/1.01      ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | v2_compts_1(sK3,sK2) = iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_383]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2756,plain,
% 3.70/1.01      ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | v2_compts_1(sK3,sK2) = iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
% 3.70/1.01      inference(demodulation,[status(thm)],[c_2651,c_1121]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5071,plain,
% 3.70/1.01      ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top
% 3.70/1.01      | v2_compts_1(sK3,sK2) != iProver_top
% 3.70/1.01      | m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
% 3.70/1.01      | r1_tarski(sK3,sK3) != iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_5064]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5680,plain,
% 3.70/1.01      ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) = iProver_top ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_5064,c_25,c_26,c_1197,c_1328,c_1435,c_2756,c_5071]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5682,plain,
% 3.70/1.01      ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_5680]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_826,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2399,plain,
% 3.70/1.01      ( X0 != X1
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) != X1
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_826]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2803,plain,
% 3.70/1.01      ( X0 != k2_struct_0(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2399]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5337,plain,
% 3.70/1.01      ( u1_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) = u1_struct_0(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) != k2_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2803]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_5156,plain,
% 3.70/1.01      ( ~ l1_pre_topc(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | u1_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_261]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_14,plain,
% 3.70/1.01      ( v2_compts_1(X0,X1)
% 3.70/1.01      | ~ m1_pre_topc(X2,X1)
% 3.70/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.70/1.01      | ~ r1_tarski(X0,k2_struct_0(X2))
% 3.70/1.01      | ~ l1_pre_topc(X1)
% 3.70/1.01      | sK1(X2,X0) = X0 ),
% 3.70/1.01      inference(cnf_transformation,[],[f59]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1128,plain,
% 3.70/1.01      ( sK1(X0,X1) = X1
% 3.70/1.01      | v2_compts_1(X1,X2) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,X2) != iProver_top
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2))) != iProver_top
% 3.70/1.01      | r1_tarski(X1,k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | l1_pre_topc(X2) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2085,plain,
% 3.70/1.01      ( sK1(X0,X1) = X1
% 3.70/1.01      | v2_compts_1(X1,sK2) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,sK2) != iProver_top
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
% 3.70/1.01      | r1_tarski(X1,k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1414,c_1128]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_3605,plain,
% 3.70/1.01      ( r1_tarski(X1,k2_struct_0(X0)) != iProver_top
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
% 3.70/1.01      | m1_pre_topc(X0,sK2) != iProver_top
% 3.70/1.01      | v2_compts_1(X1,sK2) = iProver_top
% 3.70/1.01      | sK1(X0,X1) = X1 ),
% 3.70/1.01      inference(global_propositional_subsumption,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_2085,c_25]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_3606,plain,
% 3.70/1.01      ( sK1(X0,X1) = X1
% 3.70/1.01      | v2_compts_1(X1,sK2) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,sK2) != iProver_top
% 3.70/1.01      | m1_subset_1(X1,k1_zfmisc_1(k2_struct_0(sK2))) != iProver_top
% 3.70/1.01      | r1_tarski(X1,k2_struct_0(X0)) != iProver_top ),
% 3.70/1.01      inference(renaming,[status(thm)],[c_3605]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_3612,plain,
% 3.70/1.01      ( sK1(X0,sK3) = sK3
% 3.70/1.01      | v2_compts_1(sK3,sK2) = iProver_top
% 3.70/1.01      | m1_pre_topc(X0,sK2) != iProver_top
% 3.70/1.01      | r1_tarski(sK3,k2_struct_0(X0)) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_1586,c_3606]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_3720,plain,
% 3.70/1.01      ( sK1(k1_pre_topc(sK2,sK3),sK3) = sK3
% 3.70/1.01      | v2_compts_1(sK3,sK2) = iProver_top
% 3.70/1.01      | m1_pre_topc(k1_pre_topc(sK2,sK3),sK2) != iProver_top
% 3.70/1.01      | r1_tarski(sK3,sK3) != iProver_top ),
% 3.70/1.01      inference(superposition,[status(thm)],[c_2651,c_3612]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_11,plain,
% 3.70/1.01      ( ~ v2_compts_1(k2_struct_0(X0),X0)
% 3.70/1.01      | v1_compts_1(X0)
% 3.70/1.01      | ~ l1_pre_topc(X0) ),
% 3.70/1.01      inference(cnf_transformation,[],[f56]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_17,plain,
% 3.70/1.01      ( ~ sP0(X0,X1)
% 3.70/1.01      | ~ v2_compts_1(X0,X1)
% 3.70/1.01      | ~ v1_compts_1(k1_pre_topc(X1,X0)) ),
% 3.70/1.01      inference(cnf_transformation,[],[f63]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_20,negated_conjecture,
% 3.70/1.01      ( sP0(sK3,sK2)
% 3.70/1.01      | ~ v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ v1_compts_1(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(cnf_transformation,[],[f68]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_349,plain,
% 3.70/1.01      ( ~ v2_compts_1(X0,X1)
% 3.70/1.01      | ~ v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ v1_compts_1(k1_pre_topc(X1,X0))
% 3.70/1.01      | ~ v1_compts_1(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | sK3 != X0
% 3.70/1.01      | sK2 != X1 ),
% 3.70/1.01      inference(resolution_lifted,[status(thm)],[c_17,c_20]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_350,plain,
% 3.70/1.01      ( ~ v2_compts_1(sK3,sK2) | ~ v1_compts_1(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(unflattening,[status(thm)],[c_349]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_369,plain,
% 3.70/1.01      ( ~ v2_compts_1(k2_struct_0(X0),X0)
% 3.70/1.01      | ~ v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ l1_pre_topc(X0)
% 3.70/1.01      | k1_pre_topc(sK2,sK3) != X0 ),
% 3.70/1.01      inference(resolution_lifted,[status(thm)],[c_11,c_350]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_370,plain,
% 3.70/1.01      ( ~ v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(unflattening,[status(thm)],[c_369]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1122,plain,
% 3.70/1.01      ( v2_compts_1(k2_struct_0(k1_pre_topc(sK2,sK3)),k1_pre_topc(sK2,sK3)) != iProver_top
% 3.70/1.01      | v2_compts_1(sK3,sK2) != iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
% 3.70/1.01      inference(predicate_to_equality,[status(thm)],[c_370]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2757,plain,
% 3.70/1.01      ( v2_compts_1(sK3,k1_pre_topc(sK2,sK3)) != iProver_top
% 3.70/1.01      | v2_compts_1(sK3,sK2) != iProver_top
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3)) != iProver_top ),
% 3.70/1.01      inference(demodulation,[status(thm)],[c_2651,c_1122]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2759,plain,
% 3.70/1.01      ( ~ v2_compts_1(sK3,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ l1_pre_topc(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_2757]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_0,plain,
% 3.70/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.70/1.01      inference(cnf_transformation,[],[f46]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2389,plain,
% 3.70/1.01      ( ~ r1_tarski(X0,k2_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | ~ r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),X0)
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) = X0 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_0]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_2719,plain,
% 3.70/1.01      ( ~ r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),k2_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | k2_struct_0(k1_pre_topc(sK2,sK3)) = k2_struct_0(k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2389]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1808,plain,
% 3.70/1.01      ( r1_tarski(k2_struct_0(k1_pre_topc(sK2,sK3)),k2_struct_0(k1_pre_topc(sK2,sK3))) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1400,plain,
% 3.70/1.01      ( r1_tarski(sK3,X0) | ~ r1_tarski(sK3,sK3) | X0 != sK3 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1277]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1561,plain,
% 3.70/1.01      ( r1_tarski(sK3,u1_struct_0(k1_pre_topc(X0,sK3)))
% 3.70/1.01      | ~ r1_tarski(sK3,sK3)
% 3.70/1.01      | u1_struct_0(k1_pre_topc(X0,sK3)) != sK3 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1400]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1563,plain,
% 3.70/1.01      ( r1_tarski(sK3,u1_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | ~ r1_tarski(sK3,sK3)
% 3.70/1.01      | u1_struct_0(k1_pre_topc(sK2,sK3)) != sK3 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1561]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_13,plain,
% 3.70/1.01      ( v2_compts_1(X0,X1)
% 3.70/1.01      | ~ v2_compts_1(sK1(X2,X0),X2)
% 3.70/1.01      | ~ m1_pre_topc(X2,X1)
% 3.70/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.70/1.01      | ~ r1_tarski(X0,k2_struct_0(X2))
% 3.70/1.01      | ~ l1_pre_topc(X1) ),
% 3.70/1.01      inference(cnf_transformation,[],[f60]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1166,plain,
% 3.70/1.01      ( ~ v2_compts_1(sK1(X0,sK3),X0)
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ m1_pre_topc(X0,sK2)
% 3.70/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ r1_tarski(sK3,k2_struct_0(X0))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_13]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1230,plain,
% 3.70/1.01      ( ~ v2_compts_1(sK1(k1_pre_topc(sK2,X0),sK3),k1_pre_topc(sK2,X0))
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ m1_pre_topc(k1_pre_topc(sK2,X0),sK2)
% 3.70/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,X0)))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1166]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1515,plain,
% 3.70/1.01      ( ~ v2_compts_1(sK1(k1_pre_topc(sK2,sK3),sK3),k1_pre_topc(sK2,sK3))
% 3.70/1.01      | v2_compts_1(sK3,sK2)
% 3.70/1.01      | ~ m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
% 3.70/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.70/1.01      | ~ r1_tarski(sK3,k2_struct_0(k1_pre_topc(sK2,sK3)))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1230]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1430,plain,
% 3.70/1.01      ( r1_tarski(k1_pre_topc(sK2,sK3),k1_pre_topc(sK2,sK3)) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1262,plain,
% 3.70/1.01      ( ~ r1_tarski(X0,k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ r1_tarski(k1_pre_topc(sK2,sK3),X0)
% 3.70/1.01      | k1_pre_topc(sK2,sK3) = X0 ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_0]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1358,plain,
% 3.70/1.01      ( ~ r1_tarski(k1_pre_topc(sK2,sK3),k1_pre_topc(sK2,sK3))
% 3.70/1.01      | k1_pre_topc(sK2,sK3) = k1_pre_topc(sK2,sK3) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1262]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(c_1196,plain,
% 3.70/1.01      ( ~ m1_pre_topc(k1_pre_topc(sK2,sK3),sK2)
% 3.70/1.01      | l1_pre_topc(k1_pre_topc(sK2,sK3))
% 3.70/1.01      | ~ l1_pre_topc(sK2) ),
% 3.70/1.01      inference(instantiation,[status(thm)],[c_1194]) ).
% 3.70/1.01  
% 3.70/1.01  cnf(contradiction,plain,
% 3.70/1.01      ( $false ),
% 3.70/1.01      inference(minisat,
% 3.70/1.01                [status(thm)],
% 3.70/1.01                [c_13049,c_12537,c_5682,c_5680,c_5337,c_5156,c_3720,
% 3.70/1.01                 c_2759,c_2757,c_2719,c_1808,c_1563,c_1515,c_1451,c_1435,
% 3.70/1.01                 c_1434,c_1430,c_1358,c_1328,c_1327,c_1197,c_1196,c_26,
% 3.70/1.01                 c_23,c_25,c_24]) ).
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.70/1.01  
% 3.70/1.01  ------                               Statistics
% 3.70/1.01  
% 3.70/1.01  ------ General
% 3.70/1.01  
% 3.70/1.01  abstr_ref_over_cycles:                  0
% 3.70/1.01  abstr_ref_under_cycles:                 0
% 3.70/1.01  gc_basic_clause_elim:                   0
% 3.70/1.01  forced_gc_time:                         0
% 3.70/1.01  parsing_time:                           0.013
% 3.70/1.01  unif_index_cands_time:                  0.
% 3.70/1.01  unif_index_add_time:                    0.
% 3.70/1.01  orderings_time:                         0.
% 3.70/1.01  out_proof_time:                         0.015
% 3.70/1.01  total_time:                             0.41
% 3.70/1.01  num_of_symbols:                         48
% 3.70/1.01  num_of_terms:                           12023
% 3.70/1.01  
% 3.70/1.01  ------ Preprocessing
% 3.70/1.01  
% 3.70/1.01  num_of_splits:                          0
% 3.70/1.01  num_of_split_atoms:                     0
% 3.70/1.01  num_of_reused_defs:                     0
% 3.70/1.01  num_eq_ax_congr_red:                    17
% 3.70/1.01  num_of_sem_filtered_clauses:            1
% 3.70/1.01  num_of_subtypes:                        0
% 3.70/1.01  monotx_restored_types:                  0
% 3.70/1.01  sat_num_of_epr_types:                   0
% 3.70/1.01  sat_num_of_non_cyclic_types:            0
% 3.70/1.01  sat_guarded_non_collapsed_types:        0
% 3.70/1.01  num_pure_diseq_elim:                    0
% 3.70/1.01  simp_replaced_by:                       0
% 3.70/1.01  res_preprocessed:                       101
% 3.70/1.01  prep_upred:                             0
% 3.70/1.01  prep_unflattend:                        44
% 3.70/1.01  smt_new_axioms:                         0
% 3.70/1.01  pred_elim_cands:                        5
% 3.70/1.01  pred_elim:                              3
% 3.70/1.01  pred_elim_cl:                           6
% 3.70/1.01  pred_elim_cycles:                       5
% 3.70/1.01  merged_defs:                            0
% 3.70/1.01  merged_defs_ncl:                        0
% 3.70/1.01  bin_hyper_res:                          0
% 3.70/1.01  prep_cycles:                            4
% 3.70/1.01  pred_elim_time:                         0.006
% 3.70/1.01  splitting_time:                         0.
% 3.70/1.01  sem_filter_time:                        0.
% 3.70/1.01  monotx_time:                            0.
% 3.70/1.01  subtype_inf_time:                       0.
% 3.70/1.01  
% 3.70/1.01  ------ Problem properties
% 3.70/1.01  
% 3.70/1.01  clauses:                                18
% 3.70/1.01  conjectures:                            2
% 3.70/1.01  epr:                                    5
% 3.70/1.01  horn:                                   15
% 3.70/1.01  ground:                                 5
% 3.70/1.01  unary:                                  5
% 3.70/1.01  binary:                                 2
% 3.70/1.01  lits:                                   56
% 3.70/1.01  lits_eq:                                7
% 3.70/1.01  fd_pure:                                0
% 3.70/1.01  fd_pseudo:                              0
% 3.70/1.01  fd_cond:                                0
% 3.70/1.01  fd_pseudo_cond:                         1
% 3.70/1.01  ac_symbols:                             0
% 3.70/1.01  
% 3.70/1.01  ------ Propositional Solver
% 3.70/1.01  
% 3.70/1.01  prop_solver_calls:                      33
% 3.70/1.01  prop_fast_solver_calls:                 1533
% 3.70/1.01  smt_solver_calls:                       0
% 3.70/1.01  smt_fast_solver_calls:                  0
% 3.70/1.01  prop_num_of_clauses:                    6342
% 3.70/1.01  prop_preprocess_simplified:             11838
% 3.70/1.01  prop_fo_subsumed:                       77
% 3.70/1.01  prop_solver_time:                       0.
% 3.70/1.01  smt_solver_time:                        0.
% 3.70/1.01  smt_fast_solver_time:                   0.
% 3.70/1.01  prop_fast_solver_time:                  0.
% 3.70/1.01  prop_unsat_core_time:                   0.
% 3.70/1.01  
% 3.70/1.01  ------ QBF
% 3.70/1.01  
% 3.70/1.01  qbf_q_res:                              0
% 3.70/1.01  qbf_num_tautologies:                    0
% 3.70/1.01  qbf_prep_cycles:                        0
% 3.70/1.01  
% 3.70/1.01  ------ BMC1
% 3.70/1.01  
% 3.70/1.01  bmc1_current_bound:                     -1
% 3.70/1.01  bmc1_last_solved_bound:                 -1
% 3.70/1.01  bmc1_unsat_core_size:                   -1
% 3.70/1.01  bmc1_unsat_core_parents_size:           -1
% 3.70/1.01  bmc1_merge_next_fun:                    0
% 3.70/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.70/1.01  
% 3.70/1.01  ------ Instantiation
% 3.70/1.01  
% 3.70/1.01  inst_num_of_clauses:                    1729
% 3.70/1.01  inst_num_in_passive:                    173
% 3.70/1.01  inst_num_in_active:                     748
% 3.70/1.01  inst_num_in_unprocessed:                807
% 3.70/1.01  inst_num_of_loops:                      834
% 3.70/1.01  inst_num_of_learning_restarts:          0
% 3.70/1.01  inst_num_moves_active_passive:          80
% 3.70/1.01  inst_lit_activity:                      0
% 3.70/1.01  inst_lit_activity_moves:                0
% 3.70/1.01  inst_num_tautologies:                   0
% 3.70/1.01  inst_num_prop_implied:                  0
% 3.70/1.01  inst_num_existing_simplified:           0
% 3.70/1.01  inst_num_eq_res_simplified:             0
% 3.70/1.01  inst_num_child_elim:                    0
% 3.70/1.01  inst_num_of_dismatching_blockings:      769
% 3.70/1.01  inst_num_of_non_proper_insts:           2188
% 3.70/1.01  inst_num_of_duplicates:                 0
% 3.70/1.01  inst_inst_num_from_inst_to_res:         0
% 3.70/1.01  inst_dismatching_checking_time:         0.
% 3.70/1.01  
% 3.70/1.01  ------ Resolution
% 3.70/1.01  
% 3.70/1.01  res_num_of_clauses:                     0
% 3.70/1.01  res_num_in_passive:                     0
% 3.70/1.01  res_num_in_active:                      0
% 3.70/1.01  res_num_of_loops:                       105
% 3.70/1.01  res_forward_subset_subsumed:            293
% 3.70/1.01  res_backward_subset_subsumed:           4
% 3.70/1.01  res_forward_subsumed:                   0
% 3.70/1.01  res_backward_subsumed:                  0
% 3.70/1.01  res_forward_subsumption_resolution:     1
% 3.70/1.01  res_backward_subsumption_resolution:    0
% 3.70/1.01  res_clause_to_clause_subsumption:       1832
% 3.70/1.01  res_orphan_elimination:                 0
% 3.70/1.01  res_tautology_del:                      289
% 3.70/1.01  res_num_eq_res_simplified:              0
% 3.70/1.01  res_num_sel_changes:                    0
% 3.70/1.01  res_moves_from_active_to_pass:          0
% 3.70/1.01  
% 3.70/1.01  ------ Superposition
% 3.70/1.01  
% 3.70/1.01  sup_time_total:                         0.
% 3.70/1.01  sup_time_generating:                    0.
% 3.70/1.01  sup_time_sim_full:                      0.
% 3.70/1.01  sup_time_sim_immed:                     0.
% 3.70/1.01  
% 3.70/1.01  sup_num_of_clauses:                     502
% 3.70/1.01  sup_num_in_active:                      160
% 3.70/1.01  sup_num_in_passive:                     342
% 3.70/1.01  sup_num_of_loops:                       166
% 3.70/1.01  sup_fw_superposition:                   418
% 3.70/1.01  sup_bw_superposition:                   327
% 3.70/1.01  sup_immediate_simplified:               280
% 3.70/1.01  sup_given_eliminated:                   0
% 3.70/1.01  comparisons_done:                       0
% 3.70/1.01  comparisons_avoided:                    0
% 3.70/1.01  
% 3.70/1.01  ------ Simplifications
% 3.70/1.01  
% 3.70/1.01  
% 3.70/1.01  sim_fw_subset_subsumed:                 51
% 3.70/1.01  sim_bw_subset_subsumed:                 14
% 3.70/1.01  sim_fw_subsumed:                        107
% 3.70/1.01  sim_bw_subsumed:                        10
% 3.70/1.01  sim_fw_subsumption_res:                 0
% 3.70/1.01  sim_bw_subsumption_res:                 0
% 3.70/1.01  sim_tautology_del:                      25
% 3.70/1.01  sim_eq_tautology_del:                   19
% 3.70/1.01  sim_eq_res_simp:                        0
% 3.70/1.01  sim_fw_demodulated:                     0
% 3.70/1.01  sim_bw_demodulated:                     3
% 3.70/1.01  sim_light_normalised:                   177
% 3.70/1.01  sim_joinable_taut:                      0
% 3.70/1.01  sim_joinable_simp:                      0
% 3.70/1.01  sim_ac_normalised:                      0
% 3.70/1.01  sim_smt_subsumption:                    0
% 3.70/1.01  
%------------------------------------------------------------------------------
