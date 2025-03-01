%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:16:47 EST 2020

% Result     : Theorem 2.09s
% Output     : CNFRefutation 2.09s
% Verified   : 
% Statistics : Number of formulae       :  130 ( 926 expanded)
%              Number of clauses        :   81 ( 249 expanded)
%              Number of leaves         :   13 ( 296 expanded)
%              Depth                    :   21
%              Number of atoms          :  480 (5397 expanded)
%              Number of equality atoms :  125 ( 867 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( v2_tops_2(X1,X0)
               => ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))
                   => ( X1 = X3
                     => v2_tops_2(X3,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
           => ! [X2] :
                ( m1_pre_topc(X2,X0)
               => ( v2_tops_2(X1,X0)
                 => ! [X3] :
                      ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))
                     => ( X1 = X3
                       => v2_tops_2(X3,X2) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_tops_2(X3,X2)
                  & X1 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
              & v2_tops_2(X1,X0)
              & m1_pre_topc(X2,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_tops_2(X3,X2)
                  & X1 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
              & v2_tops_2(X1,X0)
              & m1_pre_topc(X2,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f29,plain,(
    ! [X2,X1] :
      ( ? [X3] :
          ( ~ v2_tops_2(X3,X2)
          & X1 = X3
          & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
     => ( ~ v2_tops_2(sK5,X2)
        & sK5 = X1
        & m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ v2_tops_2(X3,X2)
              & X1 = X3
              & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
          & v2_tops_2(X1,X0)
          & m1_pre_topc(X2,X0) )
     => ( ? [X3] :
            ( ~ v2_tops_2(X3,sK4)
            & X1 = X3
            & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) )
        & v2_tops_2(X1,X0)
        & m1_pre_topc(sK4,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_tops_2(X3,X2)
                  & X1 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
              & v2_tops_2(X1,X0)
              & m1_pre_topc(X2,X0) )
          & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ v2_tops_2(X3,X2)
                & sK3 = X3
                & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
            & v2_tops_2(sK3,X0)
            & m1_pre_topc(X2,X0) )
        & m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ v2_tops_2(X3,X2)
                    & X1 = X3
                    & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
                & v2_tops_2(X1,X0)
                & m1_pre_topc(X2,X0) )
            & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ v2_tops_2(X3,X2)
                  & X1 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) )
              & v2_tops_2(X1,sK2)
              & m1_pre_topc(X2,sK2) )
          & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) )
      & l1_pre_topc(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ~ v2_tops_2(sK5,sK4)
    & sK3 = sK5
    & m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    & v2_tops_2(sK3,sK2)
    & m1_pre_topc(sK4,sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))
    & l1_pre_topc(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f16,f29,f28,f27,f26])).

fof(f48,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
    inference(cnf_transformation,[],[f30])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
         => ( v2_tops_2(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( r2_hidden(X2,X1)
                 => v4_pre_topc(X2,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_2(X1,X0)
          <=> ! [X2] :
                ( v4_pre_topc(X2,X0)
                | ~ r2_hidden(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_tops_2(X1,X0)
          <=> ! [X2] :
                ( v4_pre_topc(X2,X0)
                | ~ r2_hidden(X2,X1)
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f11])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_2(X1,X0)
              | ? [X2] :
                  ( ~ v4_pre_topc(X2,X0)
                  & r2_hidden(X2,X1)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X2] :
                  ( v4_pre_topc(X2,X0)
                  | ~ r2_hidden(X2,X1)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tops_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_2(X1,X0)
              | ? [X2] :
                  ( ~ v4_pre_topc(X2,X0)
                  & r2_hidden(X2,X1)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v4_pre_topc(X3,X0)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tops_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f22])).

fof(f24,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ v4_pre_topc(X2,X0)
          & r2_hidden(X2,X1)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v4_pre_topc(sK1(X0,X1),X0)
        & r2_hidden(sK1(X0,X1),X1)
        & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v2_tops_2(X1,X0)
              | ( ~ v4_pre_topc(sK1(X0,X1),X0)
                & r2_hidden(sK1(X0,X1),X1)
                & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v4_pre_topc(X3,X0)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tops_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f23,f24])).

fof(f41,plain,(
    ! [X0,X1] :
      ( v2_tops_2(X1,X0)
      | r2_hidden(sK1(X0,X1),X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f46,plain,(
    m1_pre_topc(sK4,sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f44,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f50,plain,(
    ~ v2_tops_2(sK5,sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f17])).

fof(f19,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).

fof(f31,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f20])).

fof(f52,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f31])).

fof(f40,plain,(
    ! [X0,X1] :
      ( v2_tops_2(X1,X0)
      | m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( v4_pre_topc(X1,X0)
               => ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
                   => ( X1 = X3
                     => v4_pre_topc(X3,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( v4_pre_topc(X3,X2)
                  | X1 != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) )
              | ~ v4_pre_topc(X1,X0)
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( v4_pre_topc(X3,X2)
                  | X1 != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) )
              | ~ v4_pre_topc(X1,X0)
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f13])).

fof(f43,plain,(
    ! [X2,X0,X3,X1] :
      ( v4_pre_topc(X3,X2)
      | X1 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f53,plain,(
    ! [X2,X0,X3] :
      ( v4_pre_topc(X3,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
      | ~ v4_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f43])).

fof(f42,plain,(
    ! [X0,X1] :
      ( v2_tops_2(X1,X0)
      | ~ v4_pre_topc(sK1(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f45,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f30])).

fof(f49,plain,(
    sK3 = sK5 ),
    inference(cnf_transformation,[],[f30])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( v4_pre_topc(X3,X0)
      | ~ r2_hidden(X3,X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v2_tops_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f47,plain,(
    v2_tops_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1390,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_9,plain,
    ( v2_tops_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | r2_hidden(sK1(X1,X0),X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_17,negated_conjecture,
    ( m1_pre_topc(sK4,sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_261,plain,
    ( ~ l1_pre_topc(X0)
    | l1_pre_topc(X1)
    | sK2 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_17])).

cnf(c_262,plain,
    ( ~ l1_pre_topc(sK2)
    | l1_pre_topc(sK4) ),
    inference(unflattening,[status(thm)],[c_261])).

cnf(c_19,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_264,plain,
    ( l1_pre_topc(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_262,c_19])).

cnf(c_420,plain,
    ( v2_tops_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | r2_hidden(sK1(X1,X0),X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_264])).

cnf(c_421,plain,
    ( v2_tops_2(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | r2_hidden(sK1(sK4,X0),X0) ),
    inference(unflattening,[status(thm)],[c_420])).

cnf(c_1378,plain,
    ( v2_tops_2(X0,sK4) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
    | r2_hidden(sK1(sK4,X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_421])).

cnf(c_1794,plain,
    ( v2_tops_2(sK5,sK4) = iProver_top
    | r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1390,c_1378])).

cnf(c_24,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_13,negated_conjecture,
    ( ~ v2_tops_2(sK5,sK4) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_638,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | r2_hidden(sK1(sK4,X0),X0)
    | sK4 != sK4
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_421])).

cnf(c_639,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | r2_hidden(sK1(sK4,sK5),sK5) ),
    inference(unflattening,[status(thm)],[c_638])).

cnf(c_640,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
    | r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_639])).

cnf(c_2282,plain,
    ( r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1794,c_24,c_640])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_5,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_145,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_5])).

cnf(c_146,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_145])).

cnf(c_189,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(bin_hyper_res,[status(thm)],[c_4,c_146])).

cnf(c_1387,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_189])).

cnf(c_2647,plain,
    ( r2_hidden(sK1(sK4,sK5),X0) = iProver_top
    | r1_tarski(sK5,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2282,c_1387])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1394,plain,
    ( r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2676,plain,
    ( r1_tarski(sK1(sK4,sK5),X0) = iProver_top
    | r1_tarski(sK5,k1_zfmisc_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2647,c_1394])).

cnf(c_10,plain,
    ( v2_tops_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | m1_subset_1(sK1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_405,plain,
    ( v2_tops_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | m1_subset_1(sK1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_264])).

cnf(c_406,plain,
    ( v2_tops_2(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(unflattening,[status(thm)],[c_405])).

cnf(c_1379,plain,
    ( v2_tops_2(X0,sK4) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
    | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_406])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1392,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2435,plain,
    ( v2_tops_2(X0,sK4) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
    | r1_tarski(sK1(sK4,X0),u1_struct_0(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1379,c_1392])).

cnf(c_4051,plain,
    ( v2_tops_2(sK5,sK4) = iProver_top
    | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1390,c_2435])).

cnf(c_649,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
    | sK4 != sK4
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_406])).

cnf(c_650,plain,
    ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
    inference(unflattening,[status(thm)],[c_649])).

cnf(c_651,plain,
    ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_650])).

cnf(c_1599,plain,
    ( ~ m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
    | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1600,plain,
    ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1599])).

cnf(c_4067,plain,
    ( r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4051,c_24,c_651,c_1600])).

cnf(c_1393,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_12,plain,
    ( ~ v4_pre_topc(X0,X1)
    | v4_pre_topc(X0,X2)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_272,plain,
    ( ~ v4_pre_topc(X0,X1)
    | v4_pre_topc(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X1)
    | sK2 != X1
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_17])).

cnf(c_273,plain,
    ( ~ v4_pre_topc(X0,sK2)
    | v4_pre_topc(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_272])).

cnf(c_277,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v4_pre_topc(X0,sK4)
    | ~ v4_pre_topc(X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_273,c_19])).

cnf(c_278,plain,
    ( ~ v4_pre_topc(X0,sK2)
    | v4_pre_topc(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(renaming,[status(thm)],[c_277])).

cnf(c_1386,plain,
    ( v4_pre_topc(X0,sK2) != iProver_top
    | v4_pre_topc(X0,sK4) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_278])).

cnf(c_1924,plain,
    ( v4_pre_topc(X0,sK2) != iProver_top
    | v4_pre_topc(X0,sK4) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1393,c_1386])).

cnf(c_2870,plain,
    ( v4_pre_topc(X0,sK2) != iProver_top
    | v4_pre_topc(X0,sK4) = iProver_top
    | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top
    | r1_tarski(X0,u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1393,c_1924])).

cnf(c_4072,plain,
    ( v4_pre_topc(sK1(sK4,sK5),sK2) != iProver_top
    | v4_pre_topc(sK1(sK4,sK5),sK4) = iProver_top
    | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4067,c_2870])).

cnf(c_8,plain,
    ( ~ v4_pre_topc(sK1(X0,X1),X0)
    | v2_tops_2(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_318,plain,
    ( ~ v4_pre_topc(sK1(X0,X1),X0)
    | v2_tops_2(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_264])).

cnf(c_319,plain,
    ( ~ v4_pre_topc(sK1(sK4,X0),sK4)
    | v2_tops_2(X0,sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
    inference(unflattening,[status(thm)],[c_318])).

cnf(c_660,plain,
    ( ~ v4_pre_topc(sK1(sK4,X0),sK4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | sK4 != sK4
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_319])).

cnf(c_661,plain,
    ( ~ v4_pre_topc(sK1(sK4,sK5),sK4)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
    inference(unflattening,[status(thm)],[c_660])).

cnf(c_662,plain,
    ( v4_pre_topc(sK1(sK4,sK5),sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_661])).

cnf(c_1567,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
    | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1568,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
    | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1567])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1388,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_14,negated_conjecture,
    ( sK3 = sK5 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1405,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1388,c_14])).

cnf(c_1800,plain,
    ( r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1405,c_1392])).

cnf(c_11,plain,
    ( v4_pre_topc(X0,X1)
    | ~ v2_tops_2(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | ~ r2_hidden(X0,X2)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_333,plain,
    ( v4_pre_topc(X0,X1)
    | ~ v2_tops_2(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | ~ r2_hidden(X0,X2)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_19])).

cnf(c_334,plain,
    ( v4_pre_topc(X0,sK2)
    | ~ v2_tops_2(X1,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))
    | ~ r2_hidden(X0,X1) ),
    inference(unflattening,[status(thm)],[c_333])).

cnf(c_1383,plain,
    ( v4_pre_topc(X0,sK2) = iProver_top
    | v2_tops_2(X1,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) != iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_334])).

cnf(c_1703,plain,
    ( v4_pre_topc(X0,sK2) = iProver_top
    | v2_tops_2(sK5,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1405,c_1383])).

cnf(c_16,negated_conjecture,
    ( v2_tops_2(sK3,sK2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1389,plain,
    ( v2_tops_2(sK3,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1400,plain,
    ( v2_tops_2(sK5,sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1389,c_14])).

cnf(c_2149,plain,
    ( v4_pre_topc(X0,sK2) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1703,c_1400])).

cnf(c_2158,plain,
    ( v4_pre_topc(X0,sK2) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top
    | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1393,c_2149])).

cnf(c_3255,plain,
    ( v4_pre_topc(sK1(sK4,sK5),sK2) = iProver_top
    | r2_hidden(sK1(sK4,sK5),sK5) != iProver_top
    | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2676,c_2158])).

cnf(c_3923,plain,
    ( v4_pre_topc(sK1(sK4,sK5),sK2) != iProver_top
    | v4_pre_topc(sK1(sK4,sK5),sK4) = iProver_top
    | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top
    | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2676,c_2870])).

cnf(c_4250,plain,
    ( r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4072,c_24,c_640,c_662,c_1568,c_1800,c_3255,c_3923])).

cnf(c_4255,plain,
    ( r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2676,c_4250])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4255,c_1800])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n015.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 13:13:53 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.09/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.09/0.98  
% 2.09/0.98  ------  iProver source info
% 2.09/0.98  
% 2.09/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.09/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.09/0.98  git: non_committed_changes: false
% 2.09/0.98  git: last_make_outside_of_git: false
% 2.09/0.98  
% 2.09/0.98  ------ 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options
% 2.09/0.98  
% 2.09/0.98  --out_options                           all
% 2.09/0.98  --tptp_safe_out                         true
% 2.09/0.98  --problem_path                          ""
% 2.09/0.98  --include_path                          ""
% 2.09/0.98  --clausifier                            res/vclausify_rel
% 2.09/0.98  --clausifier_options                    --mode clausify
% 2.09/0.98  --stdin                                 false
% 2.09/0.98  --stats_out                             all
% 2.09/0.98  
% 2.09/0.98  ------ General Options
% 2.09/0.98  
% 2.09/0.98  --fof                                   false
% 2.09/0.98  --time_out_real                         305.
% 2.09/0.98  --time_out_virtual                      -1.
% 2.09/0.98  --symbol_type_check                     false
% 2.09/0.98  --clausify_out                          false
% 2.09/0.98  --sig_cnt_out                           false
% 2.09/0.98  --trig_cnt_out                          false
% 2.09/0.98  --trig_cnt_out_tolerance                1.
% 2.09/0.98  --trig_cnt_out_sk_spl                   false
% 2.09/0.98  --abstr_cl_out                          false
% 2.09/0.98  
% 2.09/0.98  ------ Global Options
% 2.09/0.98  
% 2.09/0.98  --schedule                              default
% 2.09/0.98  --add_important_lit                     false
% 2.09/0.98  --prop_solver_per_cl                    1000
% 2.09/0.98  --min_unsat_core                        false
% 2.09/0.98  --soft_assumptions                      false
% 2.09/0.98  --soft_lemma_size                       3
% 2.09/0.98  --prop_impl_unit_size                   0
% 2.09/0.98  --prop_impl_unit                        []
% 2.09/0.98  --share_sel_clauses                     true
% 2.09/0.98  --reset_solvers                         false
% 2.09/0.98  --bc_imp_inh                            [conj_cone]
% 2.09/0.98  --conj_cone_tolerance                   3.
% 2.09/0.98  --extra_neg_conj                        none
% 2.09/0.98  --large_theory_mode                     true
% 2.09/0.98  --prolific_symb_bound                   200
% 2.09/0.98  --lt_threshold                          2000
% 2.09/0.98  --clause_weak_htbl                      true
% 2.09/0.98  --gc_record_bc_elim                     false
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing Options
% 2.09/0.98  
% 2.09/0.98  --preprocessing_flag                    true
% 2.09/0.98  --time_out_prep_mult                    0.1
% 2.09/0.98  --splitting_mode                        input
% 2.09/0.98  --splitting_grd                         true
% 2.09/0.98  --splitting_cvd                         false
% 2.09/0.98  --splitting_cvd_svl                     false
% 2.09/0.98  --splitting_nvd                         32
% 2.09/0.98  --sub_typing                            true
% 2.09/0.98  --prep_gs_sim                           true
% 2.09/0.98  --prep_unflatten                        true
% 2.09/0.98  --prep_res_sim                          true
% 2.09/0.98  --prep_upred                            true
% 2.09/0.98  --prep_sem_filter                       exhaustive
% 2.09/0.98  --prep_sem_filter_out                   false
% 2.09/0.98  --pred_elim                             true
% 2.09/0.98  --res_sim_input                         true
% 2.09/0.98  --eq_ax_congr_red                       true
% 2.09/0.98  --pure_diseq_elim                       true
% 2.09/0.98  --brand_transform                       false
% 2.09/0.98  --non_eq_to_eq                          false
% 2.09/0.98  --prep_def_merge                        true
% 2.09/0.98  --prep_def_merge_prop_impl              false
% 2.09/0.98  --prep_def_merge_mbd                    true
% 2.09/0.98  --prep_def_merge_tr_red                 false
% 2.09/0.98  --prep_def_merge_tr_cl                  false
% 2.09/0.98  --smt_preprocessing                     true
% 2.09/0.98  --smt_ac_axioms                         fast
% 2.09/0.98  --preprocessed_out                      false
% 2.09/0.98  --preprocessed_stats                    false
% 2.09/0.98  
% 2.09/0.98  ------ Abstraction refinement Options
% 2.09/0.98  
% 2.09/0.98  --abstr_ref                             []
% 2.09/0.98  --abstr_ref_prep                        false
% 2.09/0.98  --abstr_ref_until_sat                   false
% 2.09/0.98  --abstr_ref_sig_restrict                funpre
% 2.09/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.09/0.98  --abstr_ref_under                       []
% 2.09/0.98  
% 2.09/0.98  ------ SAT Options
% 2.09/0.98  
% 2.09/0.98  --sat_mode                              false
% 2.09/0.98  --sat_fm_restart_options                ""
% 2.09/0.98  --sat_gr_def                            false
% 2.09/0.98  --sat_epr_types                         true
% 2.09/0.98  --sat_non_cyclic_types                  false
% 2.09/0.98  --sat_finite_models                     false
% 2.09/0.98  --sat_fm_lemmas                         false
% 2.09/0.98  --sat_fm_prep                           false
% 2.09/0.98  --sat_fm_uc_incr                        true
% 2.09/0.98  --sat_out_model                         small
% 2.09/0.98  --sat_out_clauses                       false
% 2.09/0.98  
% 2.09/0.98  ------ QBF Options
% 2.09/0.98  
% 2.09/0.98  --qbf_mode                              false
% 2.09/0.98  --qbf_elim_univ                         false
% 2.09/0.98  --qbf_dom_inst                          none
% 2.09/0.98  --qbf_dom_pre_inst                      false
% 2.09/0.98  --qbf_sk_in                             false
% 2.09/0.98  --qbf_pred_elim                         true
% 2.09/0.98  --qbf_split                             512
% 2.09/0.98  
% 2.09/0.98  ------ BMC1 Options
% 2.09/0.98  
% 2.09/0.98  --bmc1_incremental                      false
% 2.09/0.98  --bmc1_axioms                           reachable_all
% 2.09/0.98  --bmc1_min_bound                        0
% 2.09/0.98  --bmc1_max_bound                        -1
% 2.09/0.98  --bmc1_max_bound_default                -1
% 2.09/0.98  --bmc1_symbol_reachability              true
% 2.09/0.98  --bmc1_property_lemmas                  false
% 2.09/0.98  --bmc1_k_induction                      false
% 2.09/0.98  --bmc1_non_equiv_states                 false
% 2.09/0.98  --bmc1_deadlock                         false
% 2.09/0.98  --bmc1_ucm                              false
% 2.09/0.98  --bmc1_add_unsat_core                   none
% 2.09/0.98  --bmc1_unsat_core_children              false
% 2.09/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.09/0.98  --bmc1_out_stat                         full
% 2.09/0.98  --bmc1_ground_init                      false
% 2.09/0.98  --bmc1_pre_inst_next_state              false
% 2.09/0.98  --bmc1_pre_inst_state                   false
% 2.09/0.98  --bmc1_pre_inst_reach_state             false
% 2.09/0.98  --bmc1_out_unsat_core                   false
% 2.09/0.98  --bmc1_aig_witness_out                  false
% 2.09/0.98  --bmc1_verbose                          false
% 2.09/0.98  --bmc1_dump_clauses_tptp                false
% 2.09/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.09/0.98  --bmc1_dump_file                        -
% 2.09/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.09/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.09/0.98  --bmc1_ucm_extend_mode                  1
% 2.09/0.98  --bmc1_ucm_init_mode                    2
% 2.09/0.98  --bmc1_ucm_cone_mode                    none
% 2.09/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.09/0.98  --bmc1_ucm_relax_model                  4
% 2.09/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.09/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.09/0.98  --bmc1_ucm_layered_model                none
% 2.09/0.98  --bmc1_ucm_max_lemma_size               10
% 2.09/0.98  
% 2.09/0.98  ------ AIG Options
% 2.09/0.98  
% 2.09/0.98  --aig_mode                              false
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation Options
% 2.09/0.98  
% 2.09/0.98  --instantiation_flag                    true
% 2.09/0.98  --inst_sos_flag                         false
% 2.09/0.98  --inst_sos_phase                        true
% 2.09/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel_side                     num_symb
% 2.09/0.98  --inst_solver_per_active                1400
% 2.09/0.98  --inst_solver_calls_frac                1.
% 2.09/0.98  --inst_passive_queue_type               priority_queues
% 2.09/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.09/0.98  --inst_passive_queues_freq              [25;2]
% 2.09/0.98  --inst_dismatching                      true
% 2.09/0.98  --inst_eager_unprocessed_to_passive     true
% 2.09/0.98  --inst_prop_sim_given                   true
% 2.09/0.98  --inst_prop_sim_new                     false
% 2.09/0.98  --inst_subs_new                         false
% 2.09/0.98  --inst_eq_res_simp                      false
% 2.09/0.98  --inst_subs_given                       false
% 2.09/0.98  --inst_orphan_elimination               true
% 2.09/0.98  --inst_learning_loop_flag               true
% 2.09/0.98  --inst_learning_start                   3000
% 2.09/0.98  --inst_learning_factor                  2
% 2.09/0.98  --inst_start_prop_sim_after_learn       3
% 2.09/0.98  --inst_sel_renew                        solver
% 2.09/0.98  --inst_lit_activity_flag                true
% 2.09/0.98  --inst_restr_to_given                   false
% 2.09/0.98  --inst_activity_threshold               500
% 2.09/0.98  --inst_out_proof                        true
% 2.09/0.98  
% 2.09/0.98  ------ Resolution Options
% 2.09/0.98  
% 2.09/0.98  --resolution_flag                       true
% 2.09/0.98  --res_lit_sel                           adaptive
% 2.09/0.98  --res_lit_sel_side                      none
% 2.09/0.98  --res_ordering                          kbo
% 2.09/0.98  --res_to_prop_solver                    active
% 2.09/0.98  --res_prop_simpl_new                    false
% 2.09/0.98  --res_prop_simpl_given                  true
% 2.09/0.98  --res_passive_queue_type                priority_queues
% 2.09/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.09/0.98  --res_passive_queues_freq               [15;5]
% 2.09/0.98  --res_forward_subs                      full
% 2.09/0.98  --res_backward_subs                     full
% 2.09/0.98  --res_forward_subs_resolution           true
% 2.09/0.98  --res_backward_subs_resolution          true
% 2.09/0.98  --res_orphan_elimination                true
% 2.09/0.98  --res_time_limit                        2.
% 2.09/0.98  --res_out_proof                         true
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Options
% 2.09/0.98  
% 2.09/0.98  --superposition_flag                    true
% 2.09/0.98  --sup_passive_queue_type                priority_queues
% 2.09/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.09/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.09/0.98  --demod_completeness_check              fast
% 2.09/0.98  --demod_use_ground                      true
% 2.09/0.98  --sup_to_prop_solver                    passive
% 2.09/0.98  --sup_prop_simpl_new                    true
% 2.09/0.98  --sup_prop_simpl_given                  true
% 2.09/0.98  --sup_fun_splitting                     false
% 2.09/0.98  --sup_smt_interval                      50000
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Simplification Setup
% 2.09/0.98  
% 2.09/0.98  --sup_indices_passive                   []
% 2.09/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.09/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_full_bw                           [BwDemod]
% 2.09/0.98  --sup_immed_triv                        [TrivRules]
% 2.09/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.09/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_immed_bw_main                     []
% 2.09/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.09/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  
% 2.09/0.98  ------ Combination Options
% 2.09/0.98  
% 2.09/0.98  --comb_res_mult                         3
% 2.09/0.98  --comb_sup_mult                         2
% 2.09/0.98  --comb_inst_mult                        10
% 2.09/0.98  
% 2.09/0.98  ------ Debug Options
% 2.09/0.98  
% 2.09/0.98  --dbg_backtrace                         false
% 2.09/0.98  --dbg_dump_prop_clauses                 false
% 2.09/0.98  --dbg_dump_prop_clauses_file            -
% 2.09/0.98  --dbg_out_stat                          false
% 2.09/0.98  ------ Parsing...
% 2.09/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e 
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.09/0.98  ------ Proving...
% 2.09/0.98  ------ Problem Properties 
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  clauses                                 21
% 2.09/0.98  conjectures                             5
% 2.09/0.98  EPR                                     4
% 2.09/0.98  Horn                                    16
% 2.09/0.98  unary                                   5
% 2.09/0.98  binary                                  4
% 2.09/0.98  lits                                    54
% 2.09/0.98  lits eq                                 3
% 2.09/0.98  fd_pure                                 0
% 2.09/0.98  fd_pseudo                               0
% 2.09/0.98  fd_cond                                 0
% 2.09/0.98  fd_pseudo_cond                          2
% 2.09/0.98  AC symbols                              0
% 2.09/0.98  
% 2.09/0.98  ------ Schedule dynamic 5 is on 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  ------ 
% 2.09/0.98  Current options:
% 2.09/0.98  ------ 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options
% 2.09/0.98  
% 2.09/0.98  --out_options                           all
% 2.09/0.98  --tptp_safe_out                         true
% 2.09/0.98  --problem_path                          ""
% 2.09/0.98  --include_path                          ""
% 2.09/0.98  --clausifier                            res/vclausify_rel
% 2.09/0.98  --clausifier_options                    --mode clausify
% 2.09/0.98  --stdin                                 false
% 2.09/0.98  --stats_out                             all
% 2.09/0.98  
% 2.09/0.98  ------ General Options
% 2.09/0.98  
% 2.09/0.98  --fof                                   false
% 2.09/0.98  --time_out_real                         305.
% 2.09/0.98  --time_out_virtual                      -1.
% 2.09/0.98  --symbol_type_check                     false
% 2.09/0.98  --clausify_out                          false
% 2.09/0.98  --sig_cnt_out                           false
% 2.09/0.98  --trig_cnt_out                          false
% 2.09/0.98  --trig_cnt_out_tolerance                1.
% 2.09/0.98  --trig_cnt_out_sk_spl                   false
% 2.09/0.98  --abstr_cl_out                          false
% 2.09/0.98  
% 2.09/0.98  ------ Global Options
% 2.09/0.98  
% 2.09/0.98  --schedule                              default
% 2.09/0.98  --add_important_lit                     false
% 2.09/0.98  --prop_solver_per_cl                    1000
% 2.09/0.98  --min_unsat_core                        false
% 2.09/0.98  --soft_assumptions                      false
% 2.09/0.98  --soft_lemma_size                       3
% 2.09/0.98  --prop_impl_unit_size                   0
% 2.09/0.98  --prop_impl_unit                        []
% 2.09/0.98  --share_sel_clauses                     true
% 2.09/0.98  --reset_solvers                         false
% 2.09/0.98  --bc_imp_inh                            [conj_cone]
% 2.09/0.98  --conj_cone_tolerance                   3.
% 2.09/0.98  --extra_neg_conj                        none
% 2.09/0.98  --large_theory_mode                     true
% 2.09/0.98  --prolific_symb_bound                   200
% 2.09/0.98  --lt_threshold                          2000
% 2.09/0.98  --clause_weak_htbl                      true
% 2.09/0.98  --gc_record_bc_elim                     false
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing Options
% 2.09/0.98  
% 2.09/0.98  --preprocessing_flag                    true
% 2.09/0.98  --time_out_prep_mult                    0.1
% 2.09/0.98  --splitting_mode                        input
% 2.09/0.98  --splitting_grd                         true
% 2.09/0.98  --splitting_cvd                         false
% 2.09/0.98  --splitting_cvd_svl                     false
% 2.09/0.98  --splitting_nvd                         32
% 2.09/0.98  --sub_typing                            true
% 2.09/0.98  --prep_gs_sim                           true
% 2.09/0.98  --prep_unflatten                        true
% 2.09/0.98  --prep_res_sim                          true
% 2.09/0.98  --prep_upred                            true
% 2.09/0.98  --prep_sem_filter                       exhaustive
% 2.09/0.98  --prep_sem_filter_out                   false
% 2.09/0.98  --pred_elim                             true
% 2.09/0.98  --res_sim_input                         true
% 2.09/0.98  --eq_ax_congr_red                       true
% 2.09/0.98  --pure_diseq_elim                       true
% 2.09/0.98  --brand_transform                       false
% 2.09/0.98  --non_eq_to_eq                          false
% 2.09/0.98  --prep_def_merge                        true
% 2.09/0.98  --prep_def_merge_prop_impl              false
% 2.09/0.98  --prep_def_merge_mbd                    true
% 2.09/0.98  --prep_def_merge_tr_red                 false
% 2.09/0.98  --prep_def_merge_tr_cl                  false
% 2.09/0.98  --smt_preprocessing                     true
% 2.09/0.98  --smt_ac_axioms                         fast
% 2.09/0.98  --preprocessed_out                      false
% 2.09/0.98  --preprocessed_stats                    false
% 2.09/0.98  
% 2.09/0.98  ------ Abstraction refinement Options
% 2.09/0.98  
% 2.09/0.98  --abstr_ref                             []
% 2.09/0.98  --abstr_ref_prep                        false
% 2.09/0.98  --abstr_ref_until_sat                   false
% 2.09/0.98  --abstr_ref_sig_restrict                funpre
% 2.09/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.09/0.98  --abstr_ref_under                       []
% 2.09/0.98  
% 2.09/0.98  ------ SAT Options
% 2.09/0.98  
% 2.09/0.98  --sat_mode                              false
% 2.09/0.98  --sat_fm_restart_options                ""
% 2.09/0.98  --sat_gr_def                            false
% 2.09/0.98  --sat_epr_types                         true
% 2.09/0.98  --sat_non_cyclic_types                  false
% 2.09/0.98  --sat_finite_models                     false
% 2.09/0.98  --sat_fm_lemmas                         false
% 2.09/0.98  --sat_fm_prep                           false
% 2.09/0.98  --sat_fm_uc_incr                        true
% 2.09/0.98  --sat_out_model                         small
% 2.09/0.98  --sat_out_clauses                       false
% 2.09/0.98  
% 2.09/0.98  ------ QBF Options
% 2.09/0.98  
% 2.09/0.98  --qbf_mode                              false
% 2.09/0.98  --qbf_elim_univ                         false
% 2.09/0.98  --qbf_dom_inst                          none
% 2.09/0.98  --qbf_dom_pre_inst                      false
% 2.09/0.98  --qbf_sk_in                             false
% 2.09/0.98  --qbf_pred_elim                         true
% 2.09/0.98  --qbf_split                             512
% 2.09/0.98  
% 2.09/0.98  ------ BMC1 Options
% 2.09/0.98  
% 2.09/0.98  --bmc1_incremental                      false
% 2.09/0.98  --bmc1_axioms                           reachable_all
% 2.09/0.98  --bmc1_min_bound                        0
% 2.09/0.98  --bmc1_max_bound                        -1
% 2.09/0.98  --bmc1_max_bound_default                -1
% 2.09/0.98  --bmc1_symbol_reachability              true
% 2.09/0.98  --bmc1_property_lemmas                  false
% 2.09/0.98  --bmc1_k_induction                      false
% 2.09/0.98  --bmc1_non_equiv_states                 false
% 2.09/0.98  --bmc1_deadlock                         false
% 2.09/0.98  --bmc1_ucm                              false
% 2.09/0.98  --bmc1_add_unsat_core                   none
% 2.09/0.98  --bmc1_unsat_core_children              false
% 2.09/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.09/0.98  --bmc1_out_stat                         full
% 2.09/0.98  --bmc1_ground_init                      false
% 2.09/0.98  --bmc1_pre_inst_next_state              false
% 2.09/0.98  --bmc1_pre_inst_state                   false
% 2.09/0.98  --bmc1_pre_inst_reach_state             false
% 2.09/0.98  --bmc1_out_unsat_core                   false
% 2.09/0.98  --bmc1_aig_witness_out                  false
% 2.09/0.98  --bmc1_verbose                          false
% 2.09/0.98  --bmc1_dump_clauses_tptp                false
% 2.09/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.09/0.98  --bmc1_dump_file                        -
% 2.09/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.09/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.09/0.98  --bmc1_ucm_extend_mode                  1
% 2.09/0.98  --bmc1_ucm_init_mode                    2
% 2.09/0.98  --bmc1_ucm_cone_mode                    none
% 2.09/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.09/0.98  --bmc1_ucm_relax_model                  4
% 2.09/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.09/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.09/0.98  --bmc1_ucm_layered_model                none
% 2.09/0.98  --bmc1_ucm_max_lemma_size               10
% 2.09/0.98  
% 2.09/0.98  ------ AIG Options
% 2.09/0.98  
% 2.09/0.98  --aig_mode                              false
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation Options
% 2.09/0.98  
% 2.09/0.98  --instantiation_flag                    true
% 2.09/0.98  --inst_sos_flag                         false
% 2.09/0.98  --inst_sos_phase                        true
% 2.09/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel_side                     none
% 2.09/0.98  --inst_solver_per_active                1400
% 2.09/0.98  --inst_solver_calls_frac                1.
% 2.09/0.98  --inst_passive_queue_type               priority_queues
% 2.09/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.09/0.98  --inst_passive_queues_freq              [25;2]
% 2.09/0.98  --inst_dismatching                      true
% 2.09/0.98  --inst_eager_unprocessed_to_passive     true
% 2.09/0.98  --inst_prop_sim_given                   true
% 2.09/0.98  --inst_prop_sim_new                     false
% 2.09/0.98  --inst_subs_new                         false
% 2.09/0.98  --inst_eq_res_simp                      false
% 2.09/0.98  --inst_subs_given                       false
% 2.09/0.98  --inst_orphan_elimination               true
% 2.09/0.98  --inst_learning_loop_flag               true
% 2.09/0.98  --inst_learning_start                   3000
% 2.09/0.98  --inst_learning_factor                  2
% 2.09/0.98  --inst_start_prop_sim_after_learn       3
% 2.09/0.98  --inst_sel_renew                        solver
% 2.09/0.98  --inst_lit_activity_flag                true
% 2.09/0.98  --inst_restr_to_given                   false
% 2.09/0.98  --inst_activity_threshold               500
% 2.09/0.98  --inst_out_proof                        true
% 2.09/0.98  
% 2.09/0.98  ------ Resolution Options
% 2.09/0.98  
% 2.09/0.98  --resolution_flag                       false
% 2.09/0.98  --res_lit_sel                           adaptive
% 2.09/0.98  --res_lit_sel_side                      none
% 2.09/0.98  --res_ordering                          kbo
% 2.09/0.98  --res_to_prop_solver                    active
% 2.09/0.98  --res_prop_simpl_new                    false
% 2.09/0.98  --res_prop_simpl_given                  true
% 2.09/0.98  --res_passive_queue_type                priority_queues
% 2.09/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.09/0.98  --res_passive_queues_freq               [15;5]
% 2.09/0.98  --res_forward_subs                      full
% 2.09/0.98  --res_backward_subs                     full
% 2.09/0.98  --res_forward_subs_resolution           true
% 2.09/0.98  --res_backward_subs_resolution          true
% 2.09/0.98  --res_orphan_elimination                true
% 2.09/0.98  --res_time_limit                        2.
% 2.09/0.98  --res_out_proof                         true
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Options
% 2.09/0.98  
% 2.09/0.98  --superposition_flag                    true
% 2.09/0.98  --sup_passive_queue_type                priority_queues
% 2.09/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.09/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.09/0.98  --demod_completeness_check              fast
% 2.09/0.98  --demod_use_ground                      true
% 2.09/0.98  --sup_to_prop_solver                    passive
% 2.09/0.98  --sup_prop_simpl_new                    true
% 2.09/0.98  --sup_prop_simpl_given                  true
% 2.09/0.98  --sup_fun_splitting                     false
% 2.09/0.98  --sup_smt_interval                      50000
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Simplification Setup
% 2.09/0.98  
% 2.09/0.98  --sup_indices_passive                   []
% 2.09/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.09/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_full_bw                           [BwDemod]
% 2.09/0.98  --sup_immed_triv                        [TrivRules]
% 2.09/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.09/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_immed_bw_main                     []
% 2.09/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.09/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  
% 2.09/0.98  ------ Combination Options
% 2.09/0.98  
% 2.09/0.98  --comb_res_mult                         3
% 2.09/0.98  --comb_sup_mult                         2
% 2.09/0.98  --comb_inst_mult                        10
% 2.09/0.98  
% 2.09/0.98  ------ Debug Options
% 2.09/0.98  
% 2.09/0.98  --dbg_backtrace                         false
% 2.09/0.98  --dbg_dump_prop_clauses                 false
% 2.09/0.98  --dbg_dump_prop_clauses_file            -
% 2.09/0.98  --dbg_out_stat                          false
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  ------ Proving...
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  % SZS status Theorem for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  fof(f7,conjecture,(
% 2.09/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => ! [X2] : (m1_pre_topc(X2,X0) => (v2_tops_2(X1,X0) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) => (X1 = X3 => v2_tops_2(X3,X2)))))))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f8,negated_conjecture,(
% 2.09/0.98    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => ! [X2] : (m1_pre_topc(X2,X0) => (v2_tops_2(X1,X0) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))) => (X1 = X3 => v2_tops_2(X3,X2)))))))),
% 2.09/0.98    inference(negated_conjecture,[],[f7])).
% 2.09/0.98  
% 2.09/0.98  fof(f15,plain,(
% 2.09/0.98    ? [X0] : (? [X1] : (? [X2] : ((? [X3] : ((~v2_tops_2(X3,X2) & X1 = X3) & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,X0)) & m1_pre_topc(X2,X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & l1_pre_topc(X0))),
% 2.09/0.98    inference(ennf_transformation,[],[f8])).
% 2.09/0.98  
% 2.09/0.98  fof(f16,plain,(
% 2.09/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,X0) & m1_pre_topc(X2,X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & l1_pre_topc(X0))),
% 2.09/0.98    inference(flattening,[],[f15])).
% 2.09/0.98  
% 2.09/0.98  fof(f29,plain,(
% 2.09/0.98    ( ! [X2,X1] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) => (~v2_tops_2(sK5,X2) & sK5 = X1 & m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2)))))) )),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f28,plain,(
% 2.09/0.98    ( ! [X0,X1] : (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,X0) & m1_pre_topc(X2,X0)) => (? [X3] : (~v2_tops_2(X3,sK4) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))) & v2_tops_2(X1,X0) & m1_pre_topc(sK4,X0))) )),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f27,plain,(
% 2.09/0.98    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,X0) & m1_pre_topc(X2,X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) => (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & sK3 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(sK3,X0) & m1_pre_topc(X2,X0)) & m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))))) )),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f26,plain,(
% 2.09/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,X0) & m1_pre_topc(X2,X0)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (? [X3] : (~v2_tops_2(X3,X2) & X1 = X3 & m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))) & v2_tops_2(X1,sK2) & m1_pre_topc(X2,sK2)) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))) & l1_pre_topc(sK2))),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f30,plain,(
% 2.09/0.98    (((~v2_tops_2(sK5,sK4) & sK3 = sK5 & m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))) & v2_tops_2(sK3,sK2) & m1_pre_topc(sK4,sK2)) & m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))) & l1_pre_topc(sK2)),
% 2.09/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f16,f29,f28,f27,f26])).
% 2.09/0.98  
% 2.09/0.98  fof(f48,plain,(
% 2.09/0.98    m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f5,axiom,(
% 2.09/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) => (v2_tops_2(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X2,X1) => v4_pre_topc(X2,X0))))))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f11,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : ((v2_tops_2(X1,X0) <=> ! [X2] : ((v4_pre_topc(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(ennf_transformation,[],[f5])).
% 2.09/0.98  
% 2.09/0.98  fof(f12,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : ((v2_tops_2(X1,X0) <=> ! [X2] : (v4_pre_topc(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(flattening,[],[f11])).
% 2.09/0.98  
% 2.09/0.98  fof(f22,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (((v2_tops_2(X1,X0) | ? [X2] : (~v4_pre_topc(X2,X0) & r2_hidden(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v4_pre_topc(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tops_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(nnf_transformation,[],[f12])).
% 2.09/0.98  
% 2.09/0.98  fof(f23,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (((v2_tops_2(X1,X0) | ? [X2] : (~v4_pre_topc(X2,X0) & r2_hidden(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v4_pre_topc(X3,X0) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tops_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(rectify,[],[f22])).
% 2.09/0.98  
% 2.09/0.98  fof(f24,plain,(
% 2.09/0.98    ! [X1,X0] : (? [X2] : (~v4_pre_topc(X2,X0) & r2_hidden(X2,X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v4_pre_topc(sK1(X0,X1),X0) & r2_hidden(sK1(X0,X1),X1) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f25,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (((v2_tops_2(X1,X0) | (~v4_pre_topc(sK1(X0,X1),X0) & r2_hidden(sK1(X0,X1),X1) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v4_pre_topc(X3,X0) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tops_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f23,f24])).
% 2.09/0.98  
% 2.09/0.98  fof(f41,plain,(
% 2.09/0.98    ( ! [X0,X1] : (v2_tops_2(X1,X0) | r2_hidden(sK1(X0,X1),X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f25])).
% 2.09/0.98  
% 2.09/0.98  fof(f4,axiom,(
% 2.09/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f10,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(ennf_transformation,[],[f4])).
% 2.09/0.98  
% 2.09/0.98  fof(f38,plain,(
% 2.09/0.98    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f10])).
% 2.09/0.98  
% 2.09/0.98  fof(f46,plain,(
% 2.09/0.98    m1_pre_topc(sK4,sK2)),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f44,plain,(
% 2.09/0.98    l1_pre_topc(sK2)),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f50,plain,(
% 2.09/0.98    ~v2_tops_2(sK5,sK4)),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f2,axiom,(
% 2.09/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f9,plain,(
% 2.09/0.98    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.09/0.98    inference(ennf_transformation,[],[f2])).
% 2.09/0.98  
% 2.09/0.98  fof(f35,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.09/0.98    inference(cnf_transformation,[],[f9])).
% 2.09/0.98  
% 2.09/0.98  fof(f3,axiom,(
% 2.09/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f21,plain,(
% 2.09/0.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.09/0.98    inference(nnf_transformation,[],[f3])).
% 2.09/0.98  
% 2.09/0.98  fof(f37,plain,(
% 2.09/0.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f21])).
% 2.09/0.98  
% 2.09/0.98  fof(f1,axiom,(
% 2.09/0.98    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f17,plain,(
% 2.09/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.09/0.98    inference(nnf_transformation,[],[f1])).
% 2.09/0.98  
% 2.09/0.98  fof(f18,plain,(
% 2.09/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.09/0.98    inference(rectify,[],[f17])).
% 2.09/0.98  
% 2.09/0.98  fof(f19,plain,(
% 2.09/0.98    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f20,plain,(
% 2.09/0.98    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.09/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).
% 2.09/0.98  
% 2.09/0.98  fof(f31,plain,(
% 2.09/0.98    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 2.09/0.98    inference(cnf_transformation,[],[f20])).
% 2.09/0.98  
% 2.09/0.98  fof(f52,plain,(
% 2.09/0.98    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 2.09/0.98    inference(equality_resolution,[],[f31])).
% 2.09/0.98  
% 2.09/0.98  fof(f40,plain,(
% 2.09/0.98    ( ! [X0,X1] : (v2_tops_2(X1,X0) | m1_subset_1(sK1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f25])).
% 2.09/0.98  
% 2.09/0.98  fof(f36,plain,(
% 2.09/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.09/0.98    inference(cnf_transformation,[],[f21])).
% 2.09/0.98  
% 2.09/0.98  fof(f6,axiom,(
% 2.09/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_pre_topc(X2,X0) => (v4_pre_topc(X1,X0) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) => (X1 = X3 => v4_pre_topc(X3,X2)))))))),
% 2.09/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f13,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (! [X2] : ((! [X3] : ((v4_pre_topc(X3,X2) | X1 != X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))) | ~v4_pre_topc(X1,X0)) | ~m1_pre_topc(X2,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(ennf_transformation,[],[f6])).
% 2.09/0.98  
% 2.09/0.98  fof(f14,plain,(
% 2.09/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (v4_pre_topc(X3,X2) | X1 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))) | ~v4_pre_topc(X1,X0) | ~m1_pre_topc(X2,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.09/0.98    inference(flattening,[],[f13])).
% 2.09/0.98  
% 2.09/0.98  fof(f43,plain,(
% 2.09/0.98    ( ! [X2,X0,X3,X1] : (v4_pre_topc(X3,X2) | X1 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) | ~v4_pre_topc(X1,X0) | ~m1_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f14])).
% 2.09/0.98  
% 2.09/0.98  fof(f53,plain,(
% 2.09/0.98    ( ! [X2,X0,X3] : (v4_pre_topc(X3,X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) | ~v4_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(equality_resolution,[],[f43])).
% 2.09/0.98  
% 2.09/0.98  fof(f42,plain,(
% 2.09/0.98    ( ! [X0,X1] : (v2_tops_2(X1,X0) | ~v4_pre_topc(sK1(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f25])).
% 2.09/0.98  
% 2.09/0.98  fof(f45,plain,(
% 2.09/0.98    m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f49,plain,(
% 2.09/0.98    sK3 = sK5),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f39,plain,(
% 2.09/0.98    ( ! [X0,X3,X1] : (v4_pre_topc(X3,X0) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_tops_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f25])).
% 2.09/0.98  
% 2.09/0.98  fof(f47,plain,(
% 2.09/0.98    v2_tops_2(sK3,sK2)),
% 2.09/0.98    inference(cnf_transformation,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  cnf(c_15,negated_conjecture,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f48]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1390,plain,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_9,plain,
% 2.09/0.98      ( v2_tops_2(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | r2_hidden(sK1(X1,X0),X0)
% 2.09/0.98      | ~ l1_pre_topc(X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f41]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_7,plain,
% 2.09/0.98      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 2.09/0.98      inference(cnf_transformation,[],[f38]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_17,negated_conjecture,
% 2.09/0.98      ( m1_pre_topc(sK4,sK2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f46]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_261,plain,
% 2.09/0.98      ( ~ l1_pre_topc(X0) | l1_pre_topc(X1) | sK2 != X0 | sK4 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_17]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_262,plain,
% 2.09/0.98      ( ~ l1_pre_topc(sK2) | l1_pre_topc(sK4) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_261]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_19,negated_conjecture,
% 2.09/0.98      ( l1_pre_topc(sK2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f44]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_264,plain,
% 2.09/0.98      ( l1_pre_topc(sK4) ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_262,c_19]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_420,plain,
% 2.09/0.98      ( v2_tops_2(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | r2_hidden(sK1(X1,X0),X0)
% 2.09/0.98      | sK4 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_9,c_264]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_421,plain,
% 2.09/0.98      ( v2_tops_2(X0,sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | r2_hidden(sK1(sK4,X0),X0) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_420]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1378,plain,
% 2.09/0.98      ( v2_tops_2(X0,sK4) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
% 2.09/0.98      | r2_hidden(sK1(sK4,X0),X0) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_421]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1794,plain,
% 2.09/0.98      ( v2_tops_2(sK5,sK4) = iProver_top
% 2.09/0.98      | r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1390,c_1378]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_24,plain,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_13,negated_conjecture,
% 2.09/0.98      ( ~ v2_tops_2(sK5,sK4) ),
% 2.09/0.98      inference(cnf_transformation,[],[f50]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_638,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | r2_hidden(sK1(sK4,X0),X0)
% 2.09/0.98      | sK4 != sK4
% 2.09/0.98      | sK5 != X0 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_421]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_639,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | r2_hidden(sK1(sK4,sK5),sK5) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_638]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_640,plain,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
% 2.09/0.98      | r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_639]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2282,plain,
% 2.09/0.98      ( r2_hidden(sK1(sK4,sK5),sK5) = iProver_top ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_1794,c_24,c_640]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.09/0.98      | ~ r2_hidden(X2,X0)
% 2.09/0.98      | r2_hidden(X2,X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f35]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_5,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f37]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_145,plain,
% 2.09/0.98      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.09/0.98      inference(prop_impl,[status(thm)],[c_5]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_146,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.09/0.98      inference(renaming,[status(thm)],[c_145]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_189,plain,
% 2.09/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 2.09/0.98      inference(bin_hyper_res,[status(thm)],[c_4,c_146]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1387,plain,
% 2.09/0.98      ( r2_hidden(X0,X1) != iProver_top
% 2.09/0.98      | r2_hidden(X0,X2) = iProver_top
% 2.09/0.98      | r1_tarski(X1,X2) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_189]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2647,plain,
% 2.09/0.98      ( r2_hidden(sK1(sK4,sK5),X0) = iProver_top
% 2.09/0.98      | r1_tarski(sK5,X0) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2282,c_1387]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3,plain,
% 2.09/0.98      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f52]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1394,plain,
% 2.09/0.98      ( r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.09/0.98      | r1_tarski(X0,X1) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2676,plain,
% 2.09/0.98      ( r1_tarski(sK1(sK4,sK5),X0) = iProver_top
% 2.09/0.98      | r1_tarski(sK5,k1_zfmisc_1(X0)) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2647,c_1394]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_10,plain,
% 2.09/0.98      ( v2_tops_2(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | m1_subset_1(sK1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | ~ l1_pre_topc(X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f40]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_405,plain,
% 2.09/0.98      ( v2_tops_2(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | m1_subset_1(sK1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | sK4 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_10,c_264]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_406,plain,
% 2.09/0.98      ( v2_tops_2(X0,sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_405]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1379,plain,
% 2.09/0.98      ( v2_tops_2(X0,sK4) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
% 2.09/0.98      | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_406]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_6,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f36]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1392,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.09/0.98      | r1_tarski(X0,X1) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2435,plain,
% 2.09/0.98      ( v2_tops_2(X0,sK4) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
% 2.09/0.98      | r1_tarski(sK1(sK4,X0),u1_struct_0(sK4)) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1379,c_1392]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4051,plain,
% 2.09/0.98      ( v2_tops_2(sK5,sK4) = iProver_top
% 2.09/0.98      | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1390,c_2435]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_649,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | m1_subset_1(sK1(sK4,X0),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.09/0.98      | sK4 != sK4
% 2.09/0.98      | sK5 != X0 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_406]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_650,plain,
% 2.09/0.98      ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.09/0.98      | ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_649]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_651,plain,
% 2.09/0.98      ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 2.09/0.98      | m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_650]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1599,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.09/0.98      | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_6]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1600,plain,
% 2.09/0.98      ( m1_subset_1(sK1(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.09/0.98      | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_1599]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4067,plain,
% 2.09/0.98      ( r1_tarski(sK1(sK4,sK5),u1_struct_0(sK4)) = iProver_top ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_4051,c_24,c_651,c_1600]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1393,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 2.09/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_12,plain,
% 2.09/0.98      ( ~ v4_pre_topc(X0,X1)
% 2.09/0.98      | v4_pre_topc(X0,X2)
% 2.09/0.98      | ~ m1_pre_topc(X2,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
% 2.09/0.98      | ~ l1_pre_topc(X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f53]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_272,plain,
% 2.09/0.98      ( ~ v4_pre_topc(X0,X1)
% 2.09/0.98      | v4_pre_topc(X0,X2)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
% 2.09/0.98      | ~ l1_pre_topc(X1)
% 2.09/0.98      | sK2 != X1
% 2.09/0.98      | sK4 != X2 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_12,c_17]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_273,plain,
% 2.09/0.98      ( ~ v4_pre_topc(X0,sK2)
% 2.09/0.98      | v4_pre_topc(X0,sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.09/0.98      | ~ l1_pre_topc(sK2) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_272]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_277,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.09/0.98      | v4_pre_topc(X0,sK4)
% 2.09/0.98      | ~ v4_pre_topc(X0,sK2) ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_273,c_19]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_278,plain,
% 2.09/0.98      ( ~ v4_pre_topc(X0,sK2)
% 2.09/0.98      | v4_pre_topc(X0,sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.09/0.98      inference(renaming,[status(thm)],[c_277]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1386,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) != iProver_top
% 2.09/0.98      | v4_pre_topc(X0,sK4) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_278]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1924,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) != iProver_top
% 2.09/0.98      | v4_pre_topc(X0,sK4) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.09/0.98      | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1393,c_1386]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2870,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) != iProver_top
% 2.09/0.98      | v4_pre_topc(X0,sK4) = iProver_top
% 2.09/0.98      | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top
% 2.09/0.98      | r1_tarski(X0,u1_struct_0(sK4)) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1393,c_1924]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4072,plain,
% 2.09/0.98      ( v4_pre_topc(sK1(sK4,sK5),sK2) != iProver_top
% 2.09/0.98      | v4_pre_topc(sK1(sK4,sK5),sK4) = iProver_top
% 2.09/0.98      | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_4067,c_2870]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_8,plain,
% 2.09/0.98      ( ~ v4_pre_topc(sK1(X0,X1),X0)
% 2.09/0.98      | v2_tops_2(X1,X0)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 2.09/0.98      | ~ l1_pre_topc(X0) ),
% 2.09/0.98      inference(cnf_transformation,[],[f42]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_318,plain,
% 2.09/0.98      ( ~ v4_pre_topc(sK1(X0,X1),X0)
% 2.09/0.98      | v2_tops_2(X1,X0)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 2.09/0.98      | sK4 != X0 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_8,c_264]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_319,plain,
% 2.09/0.98      ( ~ v4_pre_topc(sK1(sK4,X0),sK4)
% 2.09/0.98      | v2_tops_2(X0,sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_318]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_660,plain,
% 2.09/0.98      ( ~ v4_pre_topc(sK1(sK4,X0),sK4)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | sK4 != sK4
% 2.09/0.98      | sK5 != X0 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_319]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_661,plain,
% 2.09/0.98      ( ~ v4_pre_topc(sK1(sK4,sK5),sK4)
% 2.09/0.98      | ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_660]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_662,plain,
% 2.09/0.98      ( v4_pre_topc(sK1(sK4,sK5),sK4) != iProver_top
% 2.09/0.98      | m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_661]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1567,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4))))
% 2.09/0.98      | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_6]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1568,plain,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK4)))) != iProver_top
% 2.09/0.98      | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_1567]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_18,negated_conjecture,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f45]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1388,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_14,negated_conjecture,
% 2.09/0.98      ( sK3 = sK5 ),
% 2.09/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1405,plain,
% 2.09/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) = iProver_top ),
% 2.09/0.98      inference(light_normalisation,[status(thm)],[c_1388,c_14]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1800,plain,
% 2.09/0.98      ( r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1405,c_1392]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_11,plain,
% 2.09/0.98      ( v4_pre_topc(X0,X1)
% 2.09/0.98      | ~ v2_tops_2(X2,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | ~ r2_hidden(X0,X2)
% 2.09/0.98      | ~ l1_pre_topc(X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f39]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_333,plain,
% 2.09/0.98      ( v4_pre_topc(X0,X1)
% 2.09/0.98      | ~ v2_tops_2(X2,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.09/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
% 2.09/0.98      | ~ r2_hidden(X0,X2)
% 2.09/0.98      | sK2 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_19]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_334,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2)
% 2.09/0.98      | ~ v2_tops_2(X1,sK2)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2))))
% 2.09/0.98      | ~ r2_hidden(X0,X1) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_333]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1383,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) = iProver_top
% 2.09/0.98      | v2_tops_2(X1,sK2) != iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.09/0.98      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK2)))) != iProver_top
% 2.09/0.98      | r2_hidden(X0,X1) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_334]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1703,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) = iProver_top
% 2.09/0.98      | v2_tops_2(sK5,sK2) != iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.09/0.98      | r2_hidden(X0,sK5) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1405,c_1383]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_16,negated_conjecture,
% 2.09/0.98      ( v2_tops_2(sK3,sK2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f47]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1389,plain,
% 2.09/0.98      ( v2_tops_2(sK3,sK2) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1400,plain,
% 2.09/0.98      ( v2_tops_2(sK5,sK2) = iProver_top ),
% 2.09/0.98      inference(light_normalisation,[status(thm)],[c_1389,c_14]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2149,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.09/0.98      | r2_hidden(X0,sK5) != iProver_top ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_1703,c_1400]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2158,plain,
% 2.09/0.98      ( v4_pre_topc(X0,sK2) = iProver_top
% 2.09/0.98      | r2_hidden(X0,sK5) != iProver_top
% 2.09/0.98      | r1_tarski(X0,u1_struct_0(sK2)) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1393,c_2149]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3255,plain,
% 2.09/0.98      ( v4_pre_topc(sK1(sK4,sK5),sK2) = iProver_top
% 2.09/0.98      | r2_hidden(sK1(sK4,sK5),sK5) != iProver_top
% 2.09/0.98      | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2676,c_2158]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3923,plain,
% 2.09/0.98      ( v4_pre_topc(sK1(sK4,sK5),sK2) != iProver_top
% 2.09/0.98      | v4_pre_topc(sK1(sK4,sK5),sK4) = iProver_top
% 2.09/0.98      | r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top
% 2.09/0.98      | r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2676,c_2870]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4250,plain,
% 2.09/0.98      ( r1_tarski(sK1(sK4,sK5),u1_struct_0(sK2)) != iProver_top ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_4072,c_24,c_640,c_662,c_1568,c_1800,c_3255,c_3923]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4255,plain,
% 2.09/0.98      ( r1_tarski(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2676,c_4250]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(contradiction,plain,
% 2.09/0.98      ( $false ),
% 2.09/0.98      inference(minisat,[status(thm)],[c_4255,c_1800]) ).
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  ------                               Statistics
% 2.09/0.98  
% 2.09/0.98  ------ General
% 2.09/0.98  
% 2.09/0.98  abstr_ref_over_cycles:                  0
% 2.09/0.98  abstr_ref_under_cycles:                 0
% 2.09/0.98  gc_basic_clause_elim:                   0
% 2.09/0.98  forced_gc_time:                         0
% 2.09/0.98  parsing_time:                           0.01
% 2.09/0.98  unif_index_cands_time:                  0.
% 2.09/0.98  unif_index_add_time:                    0.
% 2.09/0.98  orderings_time:                         0.
% 2.09/0.98  out_proof_time:                         0.01
% 2.09/0.98  total_time:                             0.164
% 2.09/0.98  num_of_symbols:                         46
% 2.09/0.98  num_of_terms:                           2687
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing
% 2.09/0.98  
% 2.09/0.98  num_of_splits:                          0
% 2.09/0.98  num_of_split_atoms:                     0
% 2.09/0.98  num_of_reused_defs:                     0
% 2.09/0.98  num_eq_ax_congr_red:                    10
% 2.09/0.98  num_of_sem_filtered_clauses:            1
% 2.09/0.98  num_of_subtypes:                        0
% 2.09/0.98  monotx_restored_types:                  0
% 2.09/0.98  sat_num_of_epr_types:                   0
% 2.09/0.98  sat_num_of_non_cyclic_types:            0
% 2.09/0.98  sat_guarded_non_collapsed_types:        0
% 2.09/0.98  num_pure_diseq_elim:                    0
% 2.09/0.98  simp_replaced_by:                       0
% 2.09/0.98  res_preprocessed:                       83
% 2.09/0.98  prep_upred:                             0
% 2.09/0.98  prep_unflattend:                        46
% 2.09/0.98  smt_new_axioms:                         0
% 2.09/0.98  pred_elim_cands:                        7
% 2.09/0.98  pred_elim:                              2
% 2.09/0.98  pred_elim_cl:                           -1
% 2.09/0.98  pred_elim_cycles:                       4
% 2.09/0.98  merged_defs:                            12
% 2.09/0.98  merged_defs_ncl:                        0
% 2.09/0.98  bin_hyper_res:                          13
% 2.09/0.98  prep_cycles:                            3
% 2.09/0.98  pred_elim_time:                         0.011
% 2.09/0.98  splitting_time:                         0.
% 2.09/0.98  sem_filter_time:                        0.
% 2.09/0.98  monotx_time:                            0.001
% 2.09/0.98  subtype_inf_time:                       0.
% 2.09/0.98  
% 2.09/0.98  ------ Problem properties
% 2.09/0.98  
% 2.09/0.98  clauses:                                21
% 2.09/0.98  conjectures:                            5
% 2.09/0.98  epr:                                    4
% 2.09/0.98  horn:                                   16
% 2.09/0.98  ground:                                 5
% 2.09/0.98  unary:                                  5
% 2.09/0.98  binary:                                 4
% 2.09/0.98  lits:                                   54
% 2.09/0.98  lits_eq:                                3
% 2.09/0.98  fd_pure:                                0
% 2.09/0.98  fd_pseudo:                              0
% 2.09/0.98  fd_cond:                                0
% 2.09/0.98  fd_pseudo_cond:                         2
% 2.09/0.98  ac_symbols:                             0
% 2.09/0.98  
% 2.09/0.98  ------ Propositional Solver
% 2.09/0.98  
% 2.09/0.98  prop_solver_calls:                      23
% 2.09/0.98  prop_fast_solver_calls:                 712
% 2.09/0.98  smt_solver_calls:                       0
% 2.09/0.98  smt_fast_solver_calls:                  0
% 2.09/0.98  prop_num_of_clauses:                    1334
% 2.09/0.98  prop_preprocess_simplified:             3934
% 2.09/0.98  prop_fo_subsumed:                       17
% 2.09/0.98  prop_solver_time:                       0.
% 2.09/0.98  smt_solver_time:                        0.
% 2.09/0.98  smt_fast_solver_time:                   0.
% 2.09/0.98  prop_fast_solver_time:                  0.
% 2.09/0.98  prop_unsat_core_time:                   0.
% 2.09/0.98  
% 2.09/0.98  ------ QBF
% 2.09/0.98  
% 2.09/0.98  qbf_q_res:                              0
% 2.09/0.98  qbf_num_tautologies:                    0
% 2.09/0.98  qbf_prep_cycles:                        0
% 2.09/0.98  
% 2.09/0.98  ------ BMC1
% 2.09/0.98  
% 2.09/0.98  bmc1_current_bound:                     -1
% 2.09/0.98  bmc1_last_solved_bound:                 -1
% 2.09/0.98  bmc1_unsat_core_size:                   -1
% 2.09/0.98  bmc1_unsat_core_parents_size:           -1
% 2.09/0.98  bmc1_merge_next_fun:                    0
% 2.09/0.98  bmc1_unsat_core_clauses_time:           0.
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation
% 2.09/0.98  
% 2.09/0.98  inst_num_of_clauses:                    349
% 2.09/0.98  inst_num_in_passive:                    68
% 2.09/0.98  inst_num_in_active:                     211
% 2.09/0.98  inst_num_in_unprocessed:                70
% 2.09/0.98  inst_num_of_loops:                      260
% 2.09/0.98  inst_num_of_learning_restarts:          0
% 2.09/0.98  inst_num_moves_active_passive:          45
% 2.09/0.98  inst_lit_activity:                      0
% 2.09/0.98  inst_lit_activity_moves:                0
% 2.09/0.98  inst_num_tautologies:                   0
% 2.09/0.98  inst_num_prop_implied:                  0
% 2.09/0.98  inst_num_existing_simplified:           0
% 2.09/0.98  inst_num_eq_res_simplified:             0
% 2.09/0.98  inst_num_child_elim:                    0
% 2.09/0.98  inst_num_of_dismatching_blockings:      45
% 2.09/0.98  inst_num_of_non_proper_insts:           333
% 2.09/0.98  inst_num_of_duplicates:                 0
% 2.09/0.98  inst_inst_num_from_inst_to_res:         0
% 2.09/0.98  inst_dismatching_checking_time:         0.
% 2.09/0.98  
% 2.09/0.98  ------ Resolution
% 2.09/0.98  
% 2.09/0.98  res_num_of_clauses:                     0
% 2.09/0.98  res_num_in_passive:                     0
% 2.09/0.98  res_num_in_active:                      0
% 2.09/0.98  res_num_of_loops:                       86
% 2.09/0.98  res_forward_subset_subsumed:            57
% 2.09/0.98  res_backward_subset_subsumed:           0
% 2.09/0.98  res_forward_subsumed:                   0
% 2.09/0.98  res_backward_subsumed:                  0
% 2.09/0.98  res_forward_subsumption_resolution:     0
% 2.09/0.98  res_backward_subsumption_resolution:    0
% 2.09/0.98  res_clause_to_clause_subsumption:       145
% 2.09/0.98  res_orphan_elimination:                 0
% 2.09/0.98  res_tautology_del:                      60
% 2.09/0.98  res_num_eq_res_simplified:              0
% 2.09/0.98  res_num_sel_changes:                    0
% 2.09/0.98  res_moves_from_active_to_pass:          0
% 2.09/0.98  
% 2.09/0.98  ------ Superposition
% 2.09/0.98  
% 2.09/0.98  sup_time_total:                         0.
% 2.09/0.98  sup_time_generating:                    0.
% 2.09/0.98  sup_time_sim_full:                      0.
% 2.09/0.98  sup_time_sim_immed:                     0.
% 2.09/0.98  
% 2.09/0.98  sup_num_of_clauses:                     78
% 2.09/0.98  sup_num_in_active:                      52
% 2.09/0.98  sup_num_in_passive:                     26
% 2.09/0.98  sup_num_of_loops:                       51
% 2.09/0.98  sup_fw_superposition:                   48
% 2.09/0.98  sup_bw_superposition:                   26
% 2.09/0.98  sup_immediate_simplified:               9
% 2.09/0.98  sup_given_eliminated:                   0
% 2.09/0.98  comparisons_done:                       0
% 2.09/0.98  comparisons_avoided:                    0
% 2.09/0.98  
% 2.09/0.98  ------ Simplifications
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  sim_fw_subset_subsumed:                 7
% 2.09/0.98  sim_bw_subset_subsumed:                 1
% 2.09/0.98  sim_fw_subsumed:                        2
% 2.09/0.98  sim_bw_subsumed:                        0
% 2.09/0.98  sim_fw_subsumption_res:                 0
% 2.09/0.98  sim_bw_subsumption_res:                 0
% 2.09/0.98  sim_tautology_del:                      5
% 2.09/0.98  sim_eq_tautology_del:                   1
% 2.09/0.98  sim_eq_res_simp:                        0
% 2.09/0.98  sim_fw_demodulated:                     0
% 2.09/0.98  sim_bw_demodulated:                     0
% 2.09/0.98  sim_light_normalised:                   2
% 2.09/0.98  sim_joinable_taut:                      0
% 2.09/0.98  sim_joinable_simp:                      0
% 2.09/0.98  sim_ac_normalised:                      0
% 2.09/0.98  sim_smt_subsumption:                    0
% 2.09/0.98  
%------------------------------------------------------------------------------
