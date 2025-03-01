%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:11:34 EST 2020

% Result     : Theorem 2.89s
% Output     : CNFRefutation 2.89s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 359 expanded)
%              Number of clauses        :   73 ( 103 expanded)
%              Number of leaves         :   10 (  91 expanded)
%              Depth                    :   14
%              Number of atoms          :  462 (1933 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   13 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f14])).

fof(f16,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).

fof(f27,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( r2_hidden(X2,u1_struct_0(X0))
             => ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                   => ( ( r1_tarski(X1,X3)
                        & v4_pre_topc(X3,X0) )
                     => r2_hidden(X2,X3) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( r2_hidden(X2,X3)
                    | ~ r1_tarski(X1,X3)
                    | ~ v4_pre_topc(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ r2_hidden(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
              <=> ! [X3] :
                    ( r2_hidden(X2,X3)
                    | ~ r1_tarski(X1,X3)
                    | ~ v4_pre_topc(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ r2_hidden(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f10])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ? [X3] :
                      ( ~ r2_hidden(X2,X3)
                      & r1_tarski(X1,X3)
                      & v4_pre_topc(X3,X0)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X3] :
                      ( r2_hidden(X2,X3)
                      | ~ r1_tarski(X1,X3)
                      | ~ v4_pre_topc(X3,X0)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ r2_hidden(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ? [X3] :
                      ( ~ r2_hidden(X2,X3)
                      & r1_tarski(X1,X3)
                      & v4_pre_topc(X3,X0)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( r2_hidden(X2,X4)
                      | ~ r1_tarski(X1,X4)
                      | ~ v4_pre_topc(X4,X0)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ r2_hidden(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r2_hidden(X2,X3)
          & r1_tarski(X1,X3)
          & v4_pre_topc(X3,X0)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r2_hidden(X2,sK1(X0,X1,X2))
        & r1_tarski(X1,sK1(X0,X1,X2))
        & v4_pre_topc(sK1(X0,X1,X2),X0)
        & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,k2_pre_topc(X0,X1))
                  | ( ~ r2_hidden(X2,sK1(X0,X1,X2))
                    & r1_tarski(X1,sK1(X0,X1,X2))
                    & v4_pre_topc(sK1(X0,X1,X2),X0)
                    & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( r2_hidden(X2,X4)
                      | ~ r1_tarski(X1,X4)
                      | ~ v4_pre_topc(X4,X0)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X2,k2_pre_topc(X0,X1)) ) )
              | ~ r2_hidden(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | ~ r2_hidden(X2,sK1(X0,X1,X2))
      | ~ r2_hidden(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( r1_tarski(X1,X2)
               => r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( r1_tarski(X1,X2)
                 => r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) ) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f12,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))
              & r1_tarski(X1,X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))
              & r1_tarski(X1,X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f12])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,sK4))
        & r1_tarski(X1,sK4)
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))
              & r1_tarski(X1,X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( ~ r1_tarski(k2_pre_topc(X0,sK3),k2_pre_topc(X0,X2))
            & r1_tarski(sK3,X2)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))
                & r1_tarski(X1,X2)
                & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k2_pre_topc(sK2,X1),k2_pre_topc(sK2,X2))
              & r1_tarski(X1,X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) )
      & l1_pre_topc(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ~ r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))
    & r1_tarski(sK3,sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    & l1_pre_topc(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f13,f25,f24,f23])).

fof(f38,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | r1_tarski(X1,sK1(X0,X1,X2))
      | ~ r2_hidden(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f33,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X2,X4)
      | ~ r1_tarski(X1,X4)
      | ~ v4_pre_topc(X4,X0)
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ r2_hidden(X2,k2_pre_topc(X0,X1))
      | ~ r2_hidden(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ r2_hidden(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k2_pre_topc(X0,X1))
      | v4_pre_topc(sK1(X0,X1,X2),X0)
      | ~ r2_hidden(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f9,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f8])).

fof(f32,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f42,plain,(
    ~ r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)) ),
    inference(cnf_transformation,[],[f26])).

fof(f41,plain,(
    r1_tarski(sK3,sK4) ),
    inference(cnf_transformation,[],[f26])).

fof(f40,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f26])).

fof(f39,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_1213,plain,
    ( ~ r2_hidden(X0_44,X0_41)
    | r2_hidden(X0_44,X1_41)
    | ~ r1_tarski(X0_41,X1_41) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1729,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
    | ~ r1_tarski(X0_41,X1_41) ),
    inference(instantiation,[status(thm)],[c_1213])).

cnf(c_8894,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
    | ~ r1_tarski(X0_41,sK4) ),
    inference(instantiation,[status(thm)],[c_1729])).

cnf(c_8896,plain,
    ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
    | ~ r1_tarski(sK3,sK4) ),
    inference(instantiation,[status(thm)],[c_8894])).

cnf(c_2491,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X2_41)
    | ~ r1_tarski(X1_41,X2_41) ),
    inference(instantiation,[status(thm)],[c_1213])).

cnf(c_4637,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | ~ r1_tarski(X1_41,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_2491])).

cnf(c_7650,plain,
    ( r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
    | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_4637])).

cnf(c_7652,plain,
    ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
    | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_7650])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,sK1(X1,X0,X2))
    | r2_hidden(X2,k2_pre_topc(X1,X0))
    | ~ r2_hidden(X2,u1_struct_0(X1))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_15,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_326,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X1,sK1(sK2,X0,X1))
    | r2_hidden(X1,k2_pre_topc(sK2,X0))
    | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
    inference(resolution,[status(thm)],[c_6,c_15])).

cnf(c_1202,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X0_44,sK1(sK2,X0_41,X0_44))
    | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_326])).

cnf(c_2460,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,X0_41,sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1202])).

cnf(c_3314,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_2460])).

cnf(c_3331,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
    | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_3314])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X2,k2_pre_topc(X1,X0))
    | ~ r2_hidden(X2,u1_struct_0(X1))
    | r1_tarski(X0,sK1(X1,X0,X2))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_309,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X1,k2_pre_topc(sK2,X0))
    | ~ r2_hidden(X1,u1_struct_0(sK2))
    | r1_tarski(X0,sK1(sK2,X0,X1)) ),
    inference(resolution,[status(thm)],[c_7,c_15])).

cnf(c_1203,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2))
    | r1_tarski(X0_41,sK1(sK2,X0_41,X0_44)) ),
    inference(subtyping,[status(esa)],[c_309])).

cnf(c_2459,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | r1_tarski(X0_41,sK1(sK2,X0_41,sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_1203])).

cnf(c_3315,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | r1_tarski(sK4,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_2459])).

cnf(c_3327,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | r1_tarski(sK4,sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
    inference(instantiation,[status(thm)],[c_3315])).

cnf(c_10,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X3,X0)
    | ~ r2_hidden(X3,k2_pre_topc(X1,X2))
    | ~ r2_hidden(X3,u1_struct_0(X1))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_266,plain,
    ( ~ v4_pre_topc(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X2,X0)
    | ~ r2_hidden(X2,k2_pre_topc(sK2,X1))
    | ~ r2_hidden(X2,u1_struct_0(sK2))
    | ~ r1_tarski(X1,X0) ),
    inference(resolution,[status(thm)],[c_10,c_15])).

cnf(c_1205,plain,
    ( ~ v4_pre_topc(X0_41,sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X0_44,X0_41)
    | ~ r2_hidden(X0_44,k2_pre_topc(sK2,X1_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2))
    | ~ r1_tarski(X1_41,X0_41) ),
    inference(subtyping,[status(esa)],[c_266])).

cnf(c_1423,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X0_44,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2))
    | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1205])).

cnf(c_2458,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1423])).

cnf(c_2858,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_2458])).

cnf(c_2860,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_2858])).

cnf(c_2456,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
    | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | ~ r1_tarski(X0_41,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1729])).

cnf(c_2464,plain,
    ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
    | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
    | ~ r1_tarski(sK3,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_2456])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1211,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X1_41))
    | r1_tarski(X0_41,X1_41) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_1886,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(X0_41,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1211])).

cnf(c_1888,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(sK3,u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1886])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_1215,plain,
    ( ~ r2_hidden(sK0(X0_41,X1_41),X1_41)
    | r1_tarski(X0_41,X1_41) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1558,plain,
    ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1215])).

cnf(c_1570,plain,
    ( ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1558])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_1214,plain,
    ( r2_hidden(sK0(X0_41,X1_41),X0_41)
    | r1_tarski(X0_41,X1_41) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1559,plain,
    ( r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
    | r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1214])).

cnf(c_1566,plain,
    ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
    | r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1559])).

cnf(c_1539,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
    | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1423])).

cnf(c_1541,plain,
    ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
    | ~ r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1539])).

cnf(c_1382,plain,
    ( ~ m1_subset_1(k2_pre_topc(sK2,sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | r1_tarski(k2_pre_topc(sK2,sK3),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1211])).

cnf(c_1313,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
    | r1_tarski(X0_41,sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1203])).

cnf(c_1347,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
    | r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_1313])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X2,k2_pre_topc(X1,X0))
    | ~ r2_hidden(X2,u1_struct_0(X1))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_292,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(sK1(sK2,X0,X1),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X1,k2_pre_topc(sK2,X0))
    | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
    inference(resolution,[status(thm)],[c_9,c_15])).

cnf(c_1204,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(sK1(sK2,X0_41,X0_44),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_292])).

cnf(c_1316,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1204])).

cnf(c_1343,plain,
    ( m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1316])).

cnf(c_8,plain,
    ( v4_pre_topc(sK1(X0,X1,X2),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | r2_hidden(X2,k2_pre_topc(X0,X1))
    | ~ r2_hidden(X2,u1_struct_0(X0))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_249,plain,
    ( v4_pre_topc(sK1(sK2,X0,X1),sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X1,k2_pre_topc(sK2,X0))
    | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
    inference(resolution,[status(thm)],[c_8,c_15])).

cnf(c_1206,plain,
    ( v4_pre_topc(sK1(sK2,X0_41,X0_44),sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_249])).

cnf(c_1315,plain,
    ( v4_pre_topc(sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1206])).

cnf(c_1339,plain,
    ( v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1315])).

cnf(c_1314,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1202])).

cnf(c_1335,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1314])).

cnf(c_1306,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),X0_41)
    | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
    | ~ r1_tarski(k2_pre_topc(sK2,sK3),X0_41) ),
    inference(instantiation,[status(thm)],[c_1213])).

cnf(c_1312,plain,
    ( ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
    | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
    | ~ r1_tarski(k2_pre_topc(sK2,sK3),u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1306])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_343,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(resolution,[status(thm)],[c_5,c_15])).

cnf(c_1201,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k2_pre_topc(sK2,X0_41),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_343])).

cnf(c_1249,plain,
    ( m1_subset_1(k2_pre_topc(sK2,sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(instantiation,[status(thm)],[c_1201])).

cnf(c_11,negated_conjecture,
    ( ~ r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_494,plain,
    ( ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4)) ),
    inference(resolution,[status(thm)],[c_0,c_11])).

cnf(c_488,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3)) ),
    inference(resolution,[status(thm)],[c_1,c_11])).

cnf(c_12,negated_conjecture,
    ( r1_tarski(sK3,sK4) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(cnf_transformation,[],[f39])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8896,c_7652,c_3331,c_3327,c_2860,c_2464,c_1888,c_1570,c_1566,c_1541,c_1382,c_1347,c_1343,c_1339,c_1335,c_1312,c_1249,c_494,c_488,c_12,c_13,c_14])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.31  % Computer   : n022.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.16/0.31  % CPULimit   : 60
% 0.16/0.31  % WCLimit    : 600
% 0.16/0.31  % DateTime   : Tue Dec  1 16:33:40 EST 2020
% 0.16/0.31  % CPUTime    : 
% 0.16/0.31  % Running in FOF mode
% 2.89/0.96  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.89/0.96  
% 2.89/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.89/0.96  
% 2.89/0.96  ------  iProver source info
% 2.89/0.96  
% 2.89/0.96  git: date: 2020-06-30 10:37:57 +0100
% 2.89/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.89/0.96  git: non_committed_changes: false
% 2.89/0.96  git: last_make_outside_of_git: false
% 2.89/0.96  
% 2.89/0.96  ------ 
% 2.89/0.96  
% 2.89/0.96  ------ Input Options
% 2.89/0.96  
% 2.89/0.96  --out_options                           all
% 2.89/0.96  --tptp_safe_out                         true
% 2.89/0.96  --problem_path                          ""
% 2.89/0.96  --include_path                          ""
% 2.89/0.96  --clausifier                            res/vclausify_rel
% 2.89/0.96  --clausifier_options                    --mode clausify
% 2.89/0.96  --stdin                                 false
% 2.89/0.96  --stats_out                             all
% 2.89/0.96  
% 2.89/0.96  ------ General Options
% 2.89/0.96  
% 2.89/0.96  --fof                                   false
% 2.89/0.96  --time_out_real                         305.
% 2.89/0.96  --time_out_virtual                      -1.
% 2.89/0.96  --symbol_type_check                     false
% 2.89/0.96  --clausify_out                          false
% 2.89/0.96  --sig_cnt_out                           false
% 2.89/0.96  --trig_cnt_out                          false
% 2.89/0.96  --trig_cnt_out_tolerance                1.
% 2.89/0.96  --trig_cnt_out_sk_spl                   false
% 2.89/0.96  --abstr_cl_out                          false
% 2.89/0.96  
% 2.89/0.96  ------ Global Options
% 2.89/0.96  
% 2.89/0.96  --schedule                              default
% 2.89/0.96  --add_important_lit                     false
% 2.89/0.96  --prop_solver_per_cl                    1000
% 2.89/0.96  --min_unsat_core                        false
% 2.89/0.96  --soft_assumptions                      false
% 2.89/0.96  --soft_lemma_size                       3
% 2.89/0.96  --prop_impl_unit_size                   0
% 2.89/0.96  --prop_impl_unit                        []
% 2.89/0.96  --share_sel_clauses                     true
% 2.89/0.96  --reset_solvers                         false
% 2.89/0.96  --bc_imp_inh                            [conj_cone]
% 2.89/0.96  --conj_cone_tolerance                   3.
% 2.89/0.96  --extra_neg_conj                        none
% 2.89/0.96  --large_theory_mode                     true
% 2.89/0.96  --prolific_symb_bound                   200
% 2.89/0.96  --lt_threshold                          2000
% 2.89/0.96  --clause_weak_htbl                      true
% 2.89/0.96  --gc_record_bc_elim                     false
% 2.89/0.96  
% 2.89/0.96  ------ Preprocessing Options
% 2.89/0.96  
% 2.89/0.96  --preprocessing_flag                    true
% 2.89/0.96  --time_out_prep_mult                    0.1
% 2.89/0.96  --splitting_mode                        input
% 2.89/0.96  --splitting_grd                         true
% 2.89/0.96  --splitting_cvd                         false
% 2.89/0.96  --splitting_cvd_svl                     false
% 2.89/0.96  --splitting_nvd                         32
% 2.89/0.96  --sub_typing                            true
% 2.89/0.96  --prep_gs_sim                           true
% 2.89/0.96  --prep_unflatten                        true
% 2.89/0.96  --prep_res_sim                          true
% 2.89/0.96  --prep_upred                            true
% 2.89/0.96  --prep_sem_filter                       exhaustive
% 2.89/0.96  --prep_sem_filter_out                   false
% 2.89/0.96  --pred_elim                             true
% 2.89/0.96  --res_sim_input                         true
% 2.89/0.96  --eq_ax_congr_red                       true
% 2.89/0.96  --pure_diseq_elim                       true
% 2.89/0.96  --brand_transform                       false
% 2.89/0.96  --non_eq_to_eq                          false
% 2.89/0.96  --prep_def_merge                        true
% 2.89/0.96  --prep_def_merge_prop_impl              false
% 2.89/0.96  --prep_def_merge_mbd                    true
% 2.89/0.96  --prep_def_merge_tr_red                 false
% 2.89/0.96  --prep_def_merge_tr_cl                  false
% 2.89/0.96  --smt_preprocessing                     true
% 2.89/0.96  --smt_ac_axioms                         fast
% 2.89/0.96  --preprocessed_out                      false
% 2.89/0.96  --preprocessed_stats                    false
% 2.89/0.96  
% 2.89/0.96  ------ Abstraction refinement Options
% 2.89/0.96  
% 2.89/0.96  --abstr_ref                             []
% 2.89/0.96  --abstr_ref_prep                        false
% 2.89/0.96  --abstr_ref_until_sat                   false
% 2.89/0.96  --abstr_ref_sig_restrict                funpre
% 2.89/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 2.89/0.96  --abstr_ref_under                       []
% 2.89/0.96  
% 2.89/0.96  ------ SAT Options
% 2.89/0.96  
% 2.89/0.96  --sat_mode                              false
% 2.89/0.96  --sat_fm_restart_options                ""
% 2.89/0.96  --sat_gr_def                            false
% 2.89/0.96  --sat_epr_types                         true
% 2.89/0.96  --sat_non_cyclic_types                  false
% 2.89/0.96  --sat_finite_models                     false
% 2.89/0.96  --sat_fm_lemmas                         false
% 2.89/0.96  --sat_fm_prep                           false
% 2.89/0.96  --sat_fm_uc_incr                        true
% 2.89/0.96  --sat_out_model                         small
% 2.89/0.96  --sat_out_clauses                       false
% 2.89/0.96  
% 2.89/0.96  ------ QBF Options
% 2.89/0.96  
% 2.89/0.96  --qbf_mode                              false
% 2.89/0.96  --qbf_elim_univ                         false
% 2.89/0.96  --qbf_dom_inst                          none
% 2.89/0.96  --qbf_dom_pre_inst                      false
% 2.89/0.96  --qbf_sk_in                             false
% 2.89/0.96  --qbf_pred_elim                         true
% 2.89/0.96  --qbf_split                             512
% 2.89/0.96  
% 2.89/0.96  ------ BMC1 Options
% 2.89/0.96  
% 2.89/0.96  --bmc1_incremental                      false
% 2.89/0.96  --bmc1_axioms                           reachable_all
% 2.89/0.96  --bmc1_min_bound                        0
% 2.89/0.96  --bmc1_max_bound                        -1
% 2.89/0.96  --bmc1_max_bound_default                -1
% 2.89/0.96  --bmc1_symbol_reachability              true
% 2.89/0.96  --bmc1_property_lemmas                  false
% 2.89/0.96  --bmc1_k_induction                      false
% 2.89/0.96  --bmc1_non_equiv_states                 false
% 2.89/0.96  --bmc1_deadlock                         false
% 2.89/0.96  --bmc1_ucm                              false
% 2.89/0.96  --bmc1_add_unsat_core                   none
% 2.89/0.96  --bmc1_unsat_core_children              false
% 2.89/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 2.89/0.96  --bmc1_out_stat                         full
% 2.89/0.96  --bmc1_ground_init                      false
% 2.89/0.96  --bmc1_pre_inst_next_state              false
% 2.89/0.96  --bmc1_pre_inst_state                   false
% 2.89/0.96  --bmc1_pre_inst_reach_state             false
% 2.89/0.96  --bmc1_out_unsat_core                   false
% 2.89/0.96  --bmc1_aig_witness_out                  false
% 2.89/0.96  --bmc1_verbose                          false
% 2.89/0.96  --bmc1_dump_clauses_tptp                false
% 2.89/0.96  --bmc1_dump_unsat_core_tptp             false
% 2.89/0.96  --bmc1_dump_file                        -
% 2.89/0.96  --bmc1_ucm_expand_uc_limit              128
% 2.89/0.96  --bmc1_ucm_n_expand_iterations          6
% 2.89/0.96  --bmc1_ucm_extend_mode                  1
% 2.89/0.96  --bmc1_ucm_init_mode                    2
% 2.89/0.96  --bmc1_ucm_cone_mode                    none
% 2.89/0.96  --bmc1_ucm_reduced_relation_type        0
% 2.89/0.96  --bmc1_ucm_relax_model                  4
% 2.89/0.96  --bmc1_ucm_full_tr_after_sat            true
% 2.89/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 2.89/0.96  --bmc1_ucm_layered_model                none
% 2.89/0.96  --bmc1_ucm_max_lemma_size               10
% 2.89/0.96  
% 2.89/0.96  ------ AIG Options
% 2.89/0.96  
% 2.89/0.96  --aig_mode                              false
% 2.89/0.96  
% 2.89/0.96  ------ Instantiation Options
% 2.89/0.96  
% 2.89/0.96  --instantiation_flag                    true
% 2.89/0.96  --inst_sos_flag                         false
% 2.89/0.96  --inst_sos_phase                        true
% 2.89/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.89/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.89/0.96  --inst_lit_sel_side                     num_symb
% 2.89/0.96  --inst_solver_per_active                1400
% 2.89/0.96  --inst_solver_calls_frac                1.
% 2.89/0.96  --inst_passive_queue_type               priority_queues
% 2.89/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.89/0.96  --inst_passive_queues_freq              [25;2]
% 2.89/0.96  --inst_dismatching                      true
% 2.89/0.96  --inst_eager_unprocessed_to_passive     true
% 2.89/0.96  --inst_prop_sim_given                   true
% 2.89/0.96  --inst_prop_sim_new                     false
% 2.89/0.96  --inst_subs_new                         false
% 2.89/0.96  --inst_eq_res_simp                      false
% 2.89/0.96  --inst_subs_given                       false
% 2.89/0.96  --inst_orphan_elimination               true
% 2.89/0.96  --inst_learning_loop_flag               true
% 2.89/0.96  --inst_learning_start                   3000
% 2.89/0.96  --inst_learning_factor                  2
% 2.89/0.96  --inst_start_prop_sim_after_learn       3
% 2.89/0.96  --inst_sel_renew                        solver
% 2.89/0.96  --inst_lit_activity_flag                true
% 2.89/0.96  --inst_restr_to_given                   false
% 2.89/0.96  --inst_activity_threshold               500
% 2.89/0.96  --inst_out_proof                        true
% 2.89/0.96  
% 2.89/0.96  ------ Resolution Options
% 2.89/0.96  
% 2.89/0.96  --resolution_flag                       true
% 2.89/0.96  --res_lit_sel                           adaptive
% 2.89/0.96  --res_lit_sel_side                      none
% 2.89/0.96  --res_ordering                          kbo
% 2.89/0.96  --res_to_prop_solver                    active
% 2.89/0.96  --res_prop_simpl_new                    false
% 2.89/0.96  --res_prop_simpl_given                  true
% 2.89/0.96  --res_passive_queue_type                priority_queues
% 2.89/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.89/0.96  --res_passive_queues_freq               [15;5]
% 2.89/0.96  --res_forward_subs                      full
% 2.89/0.96  --res_backward_subs                     full
% 2.89/0.96  --res_forward_subs_resolution           true
% 2.89/0.96  --res_backward_subs_resolution          true
% 2.89/0.96  --res_orphan_elimination                true
% 2.89/0.96  --res_time_limit                        2.
% 2.89/0.96  --res_out_proof                         true
% 2.89/0.96  
% 2.89/0.96  ------ Superposition Options
% 2.89/0.96  
% 2.89/0.96  --superposition_flag                    true
% 2.89/0.96  --sup_passive_queue_type                priority_queues
% 2.89/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.89/0.96  --sup_passive_queues_freq               [8;1;4]
% 2.89/0.96  --demod_completeness_check              fast
% 2.89/0.96  --demod_use_ground                      true
% 2.89/0.96  --sup_to_prop_solver                    passive
% 2.89/0.96  --sup_prop_simpl_new                    true
% 2.89/0.96  --sup_prop_simpl_given                  true
% 2.89/0.96  --sup_fun_splitting                     false
% 2.89/0.96  --sup_smt_interval                      50000
% 2.89/0.96  
% 2.89/0.96  ------ Superposition Simplification Setup
% 2.89/0.96  
% 2.89/0.96  --sup_indices_passive                   []
% 2.89/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 2.89/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_full_bw                           [BwDemod]
% 2.89/0.96  --sup_immed_triv                        [TrivRules]
% 2.89/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.89/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_immed_bw_main                     []
% 2.89/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.89/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 2.89/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.89/0.96  
% 2.89/0.96  ------ Combination Options
% 2.89/0.96  
% 2.89/0.96  --comb_res_mult                         3
% 2.89/0.96  --comb_sup_mult                         2
% 2.89/0.96  --comb_inst_mult                        10
% 2.89/0.96  
% 2.89/0.96  ------ Debug Options
% 2.89/0.96  
% 2.89/0.96  --dbg_backtrace                         false
% 2.89/0.96  --dbg_dump_prop_clauses                 false
% 2.89/0.96  --dbg_dump_prop_clauses_file            -
% 2.89/0.96  --dbg_out_stat                          false
% 2.89/0.96  ------ Parsing...
% 2.89/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.89/0.96  
% 2.89/0.96  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 2.89/0.96  
% 2.89/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.89/0.96  ------ Proving...
% 2.89/0.96  ------ Problem Properties 
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  clauses                                 15
% 2.89/0.96  conjectures                             4
% 2.89/0.96  EPR                                     2
% 2.89/0.96  Horn                                    11
% 2.89/0.96  unary                                   4
% 2.89/0.96  binary                                  5
% 2.89/0.96  lits                                    40
% 2.89/0.96  lits eq                                 0
% 2.89/0.96  fd_pure                                 0
% 2.89/0.96  fd_pseudo                               0
% 2.89/0.96  fd_cond                                 0
% 2.89/0.96  fd_pseudo_cond                          0
% 2.89/0.96  AC symbols                              0
% 2.89/0.96  
% 2.89/0.96  ------ Schedule dynamic 5 is on 
% 2.89/0.96  
% 2.89/0.96  ------ no equalities: superposition off 
% 2.89/0.96  
% 2.89/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  ------ 
% 2.89/0.96  Current options:
% 2.89/0.96  ------ 
% 2.89/0.96  
% 2.89/0.96  ------ Input Options
% 2.89/0.96  
% 2.89/0.96  --out_options                           all
% 2.89/0.96  --tptp_safe_out                         true
% 2.89/0.96  --problem_path                          ""
% 2.89/0.96  --include_path                          ""
% 2.89/0.96  --clausifier                            res/vclausify_rel
% 2.89/0.96  --clausifier_options                    --mode clausify
% 2.89/0.96  --stdin                                 false
% 2.89/0.96  --stats_out                             all
% 2.89/0.96  
% 2.89/0.96  ------ General Options
% 2.89/0.96  
% 2.89/0.96  --fof                                   false
% 2.89/0.96  --time_out_real                         305.
% 2.89/0.96  --time_out_virtual                      -1.
% 2.89/0.96  --symbol_type_check                     false
% 2.89/0.96  --clausify_out                          false
% 2.89/0.96  --sig_cnt_out                           false
% 2.89/0.96  --trig_cnt_out                          false
% 2.89/0.96  --trig_cnt_out_tolerance                1.
% 2.89/0.96  --trig_cnt_out_sk_spl                   false
% 2.89/0.96  --abstr_cl_out                          false
% 2.89/0.96  
% 2.89/0.96  ------ Global Options
% 2.89/0.96  
% 2.89/0.96  --schedule                              default
% 2.89/0.96  --add_important_lit                     false
% 2.89/0.96  --prop_solver_per_cl                    1000
% 2.89/0.96  --min_unsat_core                        false
% 2.89/0.96  --soft_assumptions                      false
% 2.89/0.96  --soft_lemma_size                       3
% 2.89/0.96  --prop_impl_unit_size                   0
% 2.89/0.96  --prop_impl_unit                        []
% 2.89/0.96  --share_sel_clauses                     true
% 2.89/0.96  --reset_solvers                         false
% 2.89/0.96  --bc_imp_inh                            [conj_cone]
% 2.89/0.96  --conj_cone_tolerance                   3.
% 2.89/0.96  --extra_neg_conj                        none
% 2.89/0.96  --large_theory_mode                     true
% 2.89/0.96  --prolific_symb_bound                   200
% 2.89/0.96  --lt_threshold                          2000
% 2.89/0.96  --clause_weak_htbl                      true
% 2.89/0.96  --gc_record_bc_elim                     false
% 2.89/0.96  
% 2.89/0.96  ------ Preprocessing Options
% 2.89/0.96  
% 2.89/0.96  --preprocessing_flag                    true
% 2.89/0.96  --time_out_prep_mult                    0.1
% 2.89/0.96  --splitting_mode                        input
% 2.89/0.96  --splitting_grd                         true
% 2.89/0.96  --splitting_cvd                         false
% 2.89/0.96  --splitting_cvd_svl                     false
% 2.89/0.96  --splitting_nvd                         32
% 2.89/0.96  --sub_typing                            true
% 2.89/0.96  --prep_gs_sim                           true
% 2.89/0.96  --prep_unflatten                        true
% 2.89/0.96  --prep_res_sim                          true
% 2.89/0.96  --prep_upred                            true
% 2.89/0.96  --prep_sem_filter                       exhaustive
% 2.89/0.96  --prep_sem_filter_out                   false
% 2.89/0.96  --pred_elim                             true
% 2.89/0.96  --res_sim_input                         true
% 2.89/0.96  --eq_ax_congr_red                       true
% 2.89/0.96  --pure_diseq_elim                       true
% 2.89/0.96  --brand_transform                       false
% 2.89/0.96  --non_eq_to_eq                          false
% 2.89/0.96  --prep_def_merge                        true
% 2.89/0.96  --prep_def_merge_prop_impl              false
% 2.89/0.96  --prep_def_merge_mbd                    true
% 2.89/0.96  --prep_def_merge_tr_red                 false
% 2.89/0.96  --prep_def_merge_tr_cl                  false
% 2.89/0.96  --smt_preprocessing                     true
% 2.89/0.96  --smt_ac_axioms                         fast
% 2.89/0.96  --preprocessed_out                      false
% 2.89/0.96  --preprocessed_stats                    false
% 2.89/0.96  
% 2.89/0.96  ------ Abstraction refinement Options
% 2.89/0.96  
% 2.89/0.96  --abstr_ref                             []
% 2.89/0.96  --abstr_ref_prep                        false
% 2.89/0.96  --abstr_ref_until_sat                   false
% 2.89/0.96  --abstr_ref_sig_restrict                funpre
% 2.89/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 2.89/0.96  --abstr_ref_under                       []
% 2.89/0.96  
% 2.89/0.96  ------ SAT Options
% 2.89/0.96  
% 2.89/0.96  --sat_mode                              false
% 2.89/0.96  --sat_fm_restart_options                ""
% 2.89/0.96  --sat_gr_def                            false
% 2.89/0.96  --sat_epr_types                         true
% 2.89/0.96  --sat_non_cyclic_types                  false
% 2.89/0.96  --sat_finite_models                     false
% 2.89/0.96  --sat_fm_lemmas                         false
% 2.89/0.96  --sat_fm_prep                           false
% 2.89/0.96  --sat_fm_uc_incr                        true
% 2.89/0.96  --sat_out_model                         small
% 2.89/0.96  --sat_out_clauses                       false
% 2.89/0.96  
% 2.89/0.96  ------ QBF Options
% 2.89/0.96  
% 2.89/0.96  --qbf_mode                              false
% 2.89/0.96  --qbf_elim_univ                         false
% 2.89/0.96  --qbf_dom_inst                          none
% 2.89/0.96  --qbf_dom_pre_inst                      false
% 2.89/0.96  --qbf_sk_in                             false
% 2.89/0.96  --qbf_pred_elim                         true
% 2.89/0.96  --qbf_split                             512
% 2.89/0.96  
% 2.89/0.96  ------ BMC1 Options
% 2.89/0.96  
% 2.89/0.96  --bmc1_incremental                      false
% 2.89/0.96  --bmc1_axioms                           reachable_all
% 2.89/0.96  --bmc1_min_bound                        0
% 2.89/0.96  --bmc1_max_bound                        -1
% 2.89/0.96  --bmc1_max_bound_default                -1
% 2.89/0.96  --bmc1_symbol_reachability              true
% 2.89/0.96  --bmc1_property_lemmas                  false
% 2.89/0.96  --bmc1_k_induction                      false
% 2.89/0.96  --bmc1_non_equiv_states                 false
% 2.89/0.96  --bmc1_deadlock                         false
% 2.89/0.96  --bmc1_ucm                              false
% 2.89/0.96  --bmc1_add_unsat_core                   none
% 2.89/0.96  --bmc1_unsat_core_children              false
% 2.89/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 2.89/0.96  --bmc1_out_stat                         full
% 2.89/0.96  --bmc1_ground_init                      false
% 2.89/0.96  --bmc1_pre_inst_next_state              false
% 2.89/0.96  --bmc1_pre_inst_state                   false
% 2.89/0.96  --bmc1_pre_inst_reach_state             false
% 2.89/0.96  --bmc1_out_unsat_core                   false
% 2.89/0.96  --bmc1_aig_witness_out                  false
% 2.89/0.96  --bmc1_verbose                          false
% 2.89/0.96  --bmc1_dump_clauses_tptp                false
% 2.89/0.96  --bmc1_dump_unsat_core_tptp             false
% 2.89/0.96  --bmc1_dump_file                        -
% 2.89/0.96  --bmc1_ucm_expand_uc_limit              128
% 2.89/0.96  --bmc1_ucm_n_expand_iterations          6
% 2.89/0.96  --bmc1_ucm_extend_mode                  1
% 2.89/0.96  --bmc1_ucm_init_mode                    2
% 2.89/0.96  --bmc1_ucm_cone_mode                    none
% 2.89/0.96  --bmc1_ucm_reduced_relation_type        0
% 2.89/0.96  --bmc1_ucm_relax_model                  4
% 2.89/0.96  --bmc1_ucm_full_tr_after_sat            true
% 2.89/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 2.89/0.96  --bmc1_ucm_layered_model                none
% 2.89/0.96  --bmc1_ucm_max_lemma_size               10
% 2.89/0.96  
% 2.89/0.96  ------ AIG Options
% 2.89/0.96  
% 2.89/0.96  --aig_mode                              false
% 2.89/0.96  
% 2.89/0.96  ------ Instantiation Options
% 2.89/0.96  
% 2.89/0.96  --instantiation_flag                    true
% 2.89/0.96  --inst_sos_flag                         false
% 2.89/0.96  --inst_sos_phase                        true
% 2.89/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.89/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.89/0.96  --inst_lit_sel_side                     none
% 2.89/0.96  --inst_solver_per_active                1400
% 2.89/0.96  --inst_solver_calls_frac                1.
% 2.89/0.96  --inst_passive_queue_type               priority_queues
% 2.89/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.89/0.96  --inst_passive_queues_freq              [25;2]
% 2.89/0.96  --inst_dismatching                      true
% 2.89/0.96  --inst_eager_unprocessed_to_passive     true
% 2.89/0.96  --inst_prop_sim_given                   true
% 2.89/0.96  --inst_prop_sim_new                     false
% 2.89/0.96  --inst_subs_new                         false
% 2.89/0.96  --inst_eq_res_simp                      false
% 2.89/0.96  --inst_subs_given                       false
% 2.89/0.96  --inst_orphan_elimination               true
% 2.89/0.96  --inst_learning_loop_flag               true
% 2.89/0.96  --inst_learning_start                   3000
% 2.89/0.96  --inst_learning_factor                  2
% 2.89/0.96  --inst_start_prop_sim_after_learn       3
% 2.89/0.96  --inst_sel_renew                        solver
% 2.89/0.96  --inst_lit_activity_flag                true
% 2.89/0.96  --inst_restr_to_given                   false
% 2.89/0.96  --inst_activity_threshold               500
% 2.89/0.96  --inst_out_proof                        true
% 2.89/0.96  
% 2.89/0.96  ------ Resolution Options
% 2.89/0.96  
% 2.89/0.96  --resolution_flag                       false
% 2.89/0.96  --res_lit_sel                           adaptive
% 2.89/0.96  --res_lit_sel_side                      none
% 2.89/0.96  --res_ordering                          kbo
% 2.89/0.96  --res_to_prop_solver                    active
% 2.89/0.96  --res_prop_simpl_new                    false
% 2.89/0.96  --res_prop_simpl_given                  true
% 2.89/0.96  --res_passive_queue_type                priority_queues
% 2.89/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.89/0.96  --res_passive_queues_freq               [15;5]
% 2.89/0.96  --res_forward_subs                      full
% 2.89/0.96  --res_backward_subs                     full
% 2.89/0.96  --res_forward_subs_resolution           true
% 2.89/0.96  --res_backward_subs_resolution          true
% 2.89/0.96  --res_orphan_elimination                true
% 2.89/0.96  --res_time_limit                        2.
% 2.89/0.96  --res_out_proof                         true
% 2.89/0.96  
% 2.89/0.96  ------ Superposition Options
% 2.89/0.96  
% 2.89/0.96  --superposition_flag                    false
% 2.89/0.96  --sup_passive_queue_type                priority_queues
% 2.89/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.89/0.96  --sup_passive_queues_freq               [8;1;4]
% 2.89/0.96  --demod_completeness_check              fast
% 2.89/0.96  --demod_use_ground                      true
% 2.89/0.96  --sup_to_prop_solver                    passive
% 2.89/0.96  --sup_prop_simpl_new                    true
% 2.89/0.96  --sup_prop_simpl_given                  true
% 2.89/0.96  --sup_fun_splitting                     false
% 2.89/0.96  --sup_smt_interval                      50000
% 2.89/0.96  
% 2.89/0.96  ------ Superposition Simplification Setup
% 2.89/0.96  
% 2.89/0.96  --sup_indices_passive                   []
% 2.89/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.89/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 2.89/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_full_bw                           [BwDemod]
% 2.89/0.96  --sup_immed_triv                        [TrivRules]
% 2.89/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.89/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_immed_bw_main                     []
% 2.89/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.89/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 2.89/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.89/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.89/0.96  
% 2.89/0.96  ------ Combination Options
% 2.89/0.96  
% 2.89/0.96  --comb_res_mult                         3
% 2.89/0.96  --comb_sup_mult                         2
% 2.89/0.96  --comb_inst_mult                        10
% 2.89/0.96  
% 2.89/0.96  ------ Debug Options
% 2.89/0.96  
% 2.89/0.96  --dbg_backtrace                         false
% 2.89/0.96  --dbg_dump_prop_clauses                 false
% 2.89/0.96  --dbg_dump_prop_clauses_file            -
% 2.89/0.96  --dbg_out_stat                          false
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  ------ Proving...
% 2.89/0.96  
% 2.89/0.96  
% 2.89/0.96  % SZS status Theorem for theBenchmark.p
% 2.89/0.96  
% 2.89/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 2.89/0.96  
% 2.89/0.96  fof(f1,axiom,(
% 2.89/0.96    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.89/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.89/0.96  
% 2.89/0.96  fof(f7,plain,(
% 2.89/0.96    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.89/0.96    inference(ennf_transformation,[],[f1])).
% 2.89/0.96  
% 2.89/0.96  fof(f14,plain,(
% 2.89/0.96    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.89/0.96    inference(nnf_transformation,[],[f7])).
% 2.89/0.96  
% 2.89/0.96  fof(f15,plain,(
% 2.89/0.96    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.89/0.96    inference(rectify,[],[f14])).
% 2.89/0.96  
% 2.89/0.96  fof(f16,plain,(
% 2.89/0.96    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.89/0.96    introduced(choice_axiom,[])).
% 2.89/0.96  
% 2.89/0.96  fof(f17,plain,(
% 2.89/0.96    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.89/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).
% 2.89/0.96  
% 2.89/0.96  fof(f27,plain,(
% 2.89/0.96    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f17])).
% 2.89/0.96  
% 2.89/0.96  fof(f4,axiom,(
% 2.89/0.96    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (r2_hidden(X2,u1_struct_0(X0)) => (r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X3) & v4_pre_topc(X3,X0)) => r2_hidden(X2,X3)))))))),
% 2.89/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.89/0.96  
% 2.89/0.96  fof(f10,plain,(
% 2.89/0.96    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : ((r2_hidden(X2,X3) | (~r1_tarski(X1,X3) | ~v4_pre_topc(X3,X0))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.89/0.96    inference(ennf_transformation,[],[f4])).
% 2.89/0.96  
% 2.89/0.96  fof(f11,plain,(
% 2.89/0.96    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,k2_pre_topc(X0,X1)) <=> ! [X3] : (r2_hidden(X2,X3) | ~r1_tarski(X1,X3) | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | ~r2_hidden(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.89/0.96    inference(flattening,[],[f10])).
% 2.89/0.96  
% 2.89/0.96  fof(f19,plain,(
% 2.89/0.96    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | ? [X3] : (~r2_hidden(X2,X3) & r1_tarski(X1,X3) & v4_pre_topc(X3,X0) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (r2_hidden(X2,X3) | ~r1_tarski(X1,X3) | ~v4_pre_topc(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~r2_hidden(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.89/0.96    inference(nnf_transformation,[],[f11])).
% 2.89/0.96  
% 2.89/0.96  fof(f20,plain,(
% 2.89/0.96    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | ? [X3] : (~r2_hidden(X2,X3) & r1_tarski(X1,X3) & v4_pre_topc(X3,X0) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (r2_hidden(X2,X4) | ~r1_tarski(X1,X4) | ~v4_pre_topc(X4,X0) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~r2_hidden(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.89/0.96    inference(rectify,[],[f19])).
% 2.89/0.96  
% 2.89/0.96  fof(f21,plain,(
% 2.89/0.96    ! [X2,X1,X0] : (? [X3] : (~r2_hidden(X2,X3) & r1_tarski(X1,X3) & v4_pre_topc(X3,X0) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (~r2_hidden(X2,sK1(X0,X1,X2)) & r1_tarski(X1,sK1(X0,X1,X2)) & v4_pre_topc(sK1(X0,X1,X2),X0) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.89/0.96    introduced(choice_axiom,[])).
% 2.89/0.96  
% 2.89/0.96  fof(f22,plain,(
% 2.89/0.96    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,k2_pre_topc(X0,X1)) | (~r2_hidden(X2,sK1(X0,X1,X2)) & r1_tarski(X1,sK1(X0,X1,X2)) & v4_pre_topc(sK1(X0,X1,X2),X0) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (r2_hidden(X2,X4) | ~r1_tarski(X1,X4) | ~v4_pre_topc(X4,X0) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,k2_pre_topc(X0,X1)))) | ~r2_hidden(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.89/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).
% 2.89/0.96  
% 2.89/0.96  fof(f37,plain,(
% 2.89/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | ~r2_hidden(X2,sK1(X0,X1,X2)) | ~r2_hidden(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f22])).
% 2.89/0.96  
% 2.89/0.96  fof(f5,conjecture,(
% 2.89/0.96    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r1_tarski(X1,X2) => r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))))))),
% 2.89/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.89/0.96  
% 2.89/0.96  fof(f6,negated_conjecture,(
% 2.89/0.96    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r1_tarski(X1,X2) => r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2))))))),
% 2.89/0.96    inference(negated_conjecture,[],[f5])).
% 2.89/0.96  
% 2.89/0.96  fof(f12,plain,(
% 2.89/0.96    ? [X0] : (? [X1] : (? [X2] : ((~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) & r1_tarski(X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 2.89/0.96    inference(ennf_transformation,[],[f6])).
% 2.89/0.96  
% 2.89/0.96  fof(f13,plain,(
% 2.89/0.96    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 2.89/0.96    inference(flattening,[],[f12])).
% 2.89/0.96  
% 2.89/0.96  fof(f25,plain,(
% 2.89/0.96    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,sK4)) & r1_tarski(X1,sK4) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 2.89/0.96    introduced(choice_axiom,[])).
% 2.89/0.96  
% 2.89/0.96  fof(f24,plain,(
% 2.89/0.96    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (~r1_tarski(k2_pre_topc(X0,sK3),k2_pre_topc(X0,X2)) & r1_tarski(sK3,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 2.89/0.96    introduced(choice_axiom,[])).
% 2.89/0.96  
% 2.89/0.96  fof(f23,plain,(
% 2.89/0.96    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k2_pre_topc(X0,X1),k2_pre_topc(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k2_pre_topc(sK2,X1),k2_pre_topc(sK2,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))) & l1_pre_topc(sK2))),
% 2.89/0.96    introduced(choice_axiom,[])).
% 2.89/0.96  
% 2.89/0.96  fof(f26,plain,(
% 2.89/0.96    ((~r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)) & r1_tarski(sK3,sK4) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))) & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))) & l1_pre_topc(sK2)),
% 2.89/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f13,f25,f24,f23])).
% 2.89/0.96  
% 2.89/0.96  fof(f38,plain,(
% 2.89/0.96    l1_pre_topc(sK2)),
% 2.89/0.96    inference(cnf_transformation,[],[f26])).
% 2.89/0.96  
% 2.89/0.96  fof(f36,plain,(
% 2.89/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | r1_tarski(X1,sK1(X0,X1,X2)) | ~r2_hidden(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f22])).
% 2.89/0.96  
% 2.89/0.96  fof(f33,plain,(
% 2.89/0.96    ( ! [X4,X2,X0,X1] : (r2_hidden(X2,X4) | ~r1_tarski(X1,X4) | ~v4_pre_topc(X4,X0) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | ~r2_hidden(X2,k2_pre_topc(X0,X1)) | ~r2_hidden(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f22])).
% 2.89/0.96  
% 2.89/0.96  fof(f2,axiom,(
% 2.89/0.96    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.89/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.89/0.96  
% 2.89/0.96  fof(f18,plain,(
% 2.89/0.96    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.89/0.96    inference(nnf_transformation,[],[f2])).
% 2.89/0.96  
% 2.89/0.96  fof(f30,plain,(
% 2.89/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.89/0.96    inference(cnf_transformation,[],[f18])).
% 2.89/0.96  
% 2.89/0.96  fof(f29,plain,(
% 2.89/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f17])).
% 2.89/0.96  
% 2.89/0.96  fof(f28,plain,(
% 2.89/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f17])).
% 2.89/0.96  
% 2.89/0.96  fof(f34,plain,(
% 2.89/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) | ~r2_hidden(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f22])).
% 2.89/0.96  
% 2.89/0.96  fof(f35,plain,(
% 2.89/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,k2_pre_topc(X0,X1)) | v4_pre_topc(sK1(X0,X1,X2),X0) | ~r2_hidden(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.96    inference(cnf_transformation,[],[f22])).
% 2.89/0.96  
% 2.89/0.96  fof(f3,axiom,(
% 2.89/0.96    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 2.89/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.89/0.97  
% 2.89/0.97  fof(f8,plain,(
% 2.89/0.97    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 2.89/0.97    inference(ennf_transformation,[],[f3])).
% 2.89/0.97  
% 2.89/0.97  fof(f9,plain,(
% 2.89/0.97    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 2.89/0.97    inference(flattening,[],[f8])).
% 2.89/0.97  
% 2.89/0.97  fof(f32,plain,(
% 2.89/0.97    ( ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.89/0.97    inference(cnf_transformation,[],[f9])).
% 2.89/0.97  
% 2.89/0.97  fof(f42,plain,(
% 2.89/0.97    ~r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),
% 2.89/0.97    inference(cnf_transformation,[],[f26])).
% 2.89/0.97  
% 2.89/0.97  fof(f41,plain,(
% 2.89/0.97    r1_tarski(sK3,sK4)),
% 2.89/0.97    inference(cnf_transformation,[],[f26])).
% 2.89/0.97  
% 2.89/0.97  fof(f40,plain,(
% 2.89/0.97    m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))),
% 2.89/0.97    inference(cnf_transformation,[],[f26])).
% 2.89/0.97  
% 2.89/0.97  fof(f39,plain,(
% 2.89/0.97    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))),
% 2.89/0.97    inference(cnf_transformation,[],[f26])).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2,plain,
% 2.89/0.97      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 2.89/0.97      inference(cnf_transformation,[],[f27]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1213,plain,
% 2.89/0.97      ( ~ r2_hidden(X0_44,X0_41)
% 2.89/0.97      | r2_hidden(X0_44,X1_41)
% 2.89/0.97      | ~ r1_tarski(X0_41,X1_41) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_2]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1729,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
% 2.89/0.97      | ~ r1_tarski(X0_41,X1_41) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1213]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_8894,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
% 2.89/0.97      | ~ r1_tarski(X0_41,sK4) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1729]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_8896,plain,
% 2.89/0.97      ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
% 2.89/0.97      | ~ r1_tarski(sK3,sK4) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_8894]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2491,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X2_41)
% 2.89/0.97      | ~ r1_tarski(X1_41,X2_41) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1213]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_4637,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X1_41)
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | ~ r1_tarski(X1_41,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2491]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_7650,plain,
% 2.89/0.97      ( r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
% 2.89/0.97      | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_4637]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_7652,plain,
% 2.89/0.97      ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK4)
% 2.89/0.97      | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_7650]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_6,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | ~ r2_hidden(X2,sK1(X1,X0,X2))
% 2.89/0.97      | r2_hidden(X2,k2_pre_topc(X1,X0))
% 2.89/0.97      | ~ r2_hidden(X2,u1_struct_0(X1))
% 2.89/0.97      | ~ l1_pre_topc(X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f37]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_15,negated_conjecture,
% 2.89/0.97      ( l1_pre_topc(sK2) ),
% 2.89/0.97      inference(cnf_transformation,[],[f38]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_326,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(X1,sK1(sK2,X0,X1))
% 2.89/0.97      | r2_hidden(X1,k2_pre_topc(sK2,X0))
% 2.89/0.97      | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_6,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1202,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(X0_44,sK1(sK2,X0_41,X0_44))
% 2.89/0.97      | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_326]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2460,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,X0_41,sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1202]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_3314,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2460]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_3331,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))))
% 2.89/0.97      | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_3314]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_7,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | r2_hidden(X2,k2_pre_topc(X1,X0))
% 2.89/0.97      | ~ r2_hidden(X2,u1_struct_0(X1))
% 2.89/0.97      | r1_tarski(X0,sK1(X1,X0,X2))
% 2.89/0.97      | ~ l1_pre_topc(X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f36]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_309,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X1,k2_pre_topc(sK2,X0))
% 2.89/0.97      | ~ r2_hidden(X1,u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(X0,sK1(sK2,X0,X1)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_7,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1203,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(X0_41,sK1(sK2,X0_41,X0_44)) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_309]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2459,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(X0_41,sK1(sK2,X0_41,sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1203]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_3315,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(sK4,sK1(sK2,sK4,sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2459]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_3327,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(sK4,sK1(sK2,sK4,sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_3315]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_10,plain,
% 2.89/0.97      ( ~ v4_pre_topc(X0,X1)
% 2.89/0.97      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | r2_hidden(X3,X0)
% 2.89/0.97      | ~ r2_hidden(X3,k2_pre_topc(X1,X2))
% 2.89/0.97      | ~ r2_hidden(X3,u1_struct_0(X1))
% 2.89/0.97      | ~ r1_tarski(X2,X0)
% 2.89/0.97      | ~ l1_pre_topc(X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f33]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_266,plain,
% 2.89/0.97      ( ~ v4_pre_topc(X0,sK2)
% 2.89/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X2,X0)
% 2.89/0.97      | ~ r2_hidden(X2,k2_pre_topc(sK2,X1))
% 2.89/0.97      | ~ r2_hidden(X2,u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X1,X0) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_10,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1205,plain,
% 2.89/0.97      ( ~ v4_pre_topc(X0_41,sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(X1_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X0_44,X0_41)
% 2.89/0.97      | ~ r2_hidden(X0_44,k2_pre_topc(sK2,X1_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X1_41,X0_41) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_266]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1423,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X0_44,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1205]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2458,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(X1_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1423]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2858,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2458]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2860,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2858]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2456,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
% 2.89/0.97      | r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X0_41,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1729]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_2464,plain,
% 2.89/0.97      ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),u1_struct_0(sK2))
% 2.89/0.97      | ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
% 2.89/0.97      | ~ r1_tarski(sK3,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_2456]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_4,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f30]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1211,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X1_41))
% 2.89/0.97      | r1_tarski(X0_41,X1_41) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_4]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1886,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r1_tarski(X0_41,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1211]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1888,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r1_tarski(sK3,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1886]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_0,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f29]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1215,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,X1_41),X1_41) | r1_tarski(X0_41,X1_41) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_0]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1558,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1215]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1570,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1558]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1,plain,
% 2.89/0.97      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f28]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1214,plain,
% 2.89/0.97      ( r2_hidden(sK0(X0_41,X1_41),X0_41) | r1_tarski(X0_41,X1_41) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_1]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1559,plain,
% 2.89/0.97      ( r2_hidden(sK0(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),X0_41)
% 2.89/0.97      | r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1214]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1566,plain,
% 2.89/0.97      ( r2_hidden(sK0(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))),sK3)
% 2.89/0.97      | r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1559]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1539,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(X0_41,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1423]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1541,plain,
% 2.89/0.97      ( ~ v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(sK3,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1539]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1382,plain,
% 2.89/0.97      ( ~ m1_subset_1(k2_pre_topc(sK2,sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r1_tarski(k2_pre_topc(sK2,sK3),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1211]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1313,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(X0_41,sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1203]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1347,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
% 2.89/0.97      | r1_tarski(sK4,sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1313]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_9,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | r2_hidden(X2,k2_pre_topc(X1,X0))
% 2.89/0.97      | ~ r2_hidden(X2,u1_struct_0(X1))
% 2.89/0.97      | ~ l1_pre_topc(X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f34]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_292,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | m1_subset_1(sK1(sK2,X0,X1),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X1,k2_pre_topc(sK2,X0))
% 2.89/0.97      | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_9,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1204,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | m1_subset_1(sK1(sK2,X0_41,X0_44),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_292]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1316,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | m1_subset_1(sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1204]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1343,plain,
% 2.89/0.97      ( m1_subset_1(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1316]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_8,plain,
% 2.89/0.97      ( v4_pre_topc(sK1(X0,X1,X2),X0)
% 2.89/0.97      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.89/0.97      | r2_hidden(X2,k2_pre_topc(X0,X1))
% 2.89/0.97      | ~ r2_hidden(X2,u1_struct_0(X0))
% 2.89/0.97      | ~ l1_pre_topc(X0) ),
% 2.89/0.97      inference(cnf_transformation,[],[f35]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_249,plain,
% 2.89/0.97      ( v4_pre_topc(sK1(sK2,X0,X1),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X1,k2_pre_topc(sK2,X0))
% 2.89/0.97      | ~ r2_hidden(X1,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_8,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1206,plain,
% 2.89/0.97      ( v4_pre_topc(sK1(sK2,X0_41,X0_44),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(X0_44,k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(X0_44,u1_struct_0(sK2)) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_249]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1315,plain,
% 2.89/0.97      ( v4_pre_topc(sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1206]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1339,plain,
% 2.89/0.97      ( v4_pre_topc(sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))),sK2)
% 2.89/0.97      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1315]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1314,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,X0_41,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,X0_41))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1202]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1335,plain,
% 2.89/0.97      ( ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),sK1(sK2,sK4,sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4))))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4))
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1314]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1306,plain,
% 2.89/0.97      ( r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),X0_41)
% 2.89/0.97      | ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
% 2.89/0.97      | ~ r1_tarski(k2_pre_topc(sK2,sK3),X0_41) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1213]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1312,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3))
% 2.89/0.97      | r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),u1_struct_0(sK2))
% 2.89/0.97      | ~ r1_tarski(k2_pre_topc(sK2,sK3),u1_struct_0(sK2)) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1306]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_5,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.89/0.97      | ~ l1_pre_topc(X1) ),
% 2.89/0.97      inference(cnf_transformation,[],[f32]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_343,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_5,c_15]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1201,plain,
% 2.89/0.97      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | m1_subset_1(k2_pre_topc(sK2,X0_41),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.89/0.97      inference(subtyping,[status(esa)],[c_343]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_1249,plain,
% 2.89/0.97      ( m1_subset_1(k2_pre_topc(sK2,sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.89/0.97      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.89/0.97      inference(instantiation,[status(thm)],[c_1201]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_11,negated_conjecture,
% 2.89/0.97      ( ~ r1_tarski(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)) ),
% 2.89/0.97      inference(cnf_transformation,[],[f42]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_494,plain,
% 2.89/0.97      ( ~ r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK4)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_0,c_11]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_488,plain,
% 2.89/0.97      ( r2_hidden(sK0(k2_pre_topc(sK2,sK3),k2_pre_topc(sK2,sK4)),k2_pre_topc(sK2,sK3)) ),
% 2.89/0.97      inference(resolution,[status(thm)],[c_1,c_11]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_12,negated_conjecture,
% 2.89/0.97      ( r1_tarski(sK3,sK4) ),
% 2.89/0.97      inference(cnf_transformation,[],[f41]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_13,negated_conjecture,
% 2.89/0.97      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.89/0.97      inference(cnf_transformation,[],[f40]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(c_14,negated_conjecture,
% 2.89/0.97      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.89/0.97      inference(cnf_transformation,[],[f39]) ).
% 2.89/0.97  
% 2.89/0.97  cnf(contradiction,plain,
% 2.89/0.97      ( $false ),
% 2.89/0.97      inference(minisat,
% 2.89/0.97                [status(thm)],
% 2.89/0.97                [c_8896,c_7652,c_3331,c_3327,c_2860,c_2464,c_1888,c_1570,
% 2.89/0.97                 c_1566,c_1541,c_1382,c_1347,c_1343,c_1339,c_1335,c_1312,
% 2.89/0.97                 c_1249,c_494,c_488,c_12,c_13,c_14]) ).
% 2.89/0.97  
% 2.89/0.97  
% 2.89/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 2.89/0.97  
% 2.89/0.97  ------                               Statistics
% 2.89/0.97  
% 2.89/0.97  ------ General
% 2.89/0.97  
% 2.89/0.97  abstr_ref_over_cycles:                  0
% 2.89/0.97  abstr_ref_under_cycles:                 0
% 2.89/0.97  gc_basic_clause_elim:                   0
% 2.89/0.97  forced_gc_time:                         0
% 2.89/0.97  parsing_time:                           0.008
% 2.89/0.97  unif_index_cands_time:                  0.
% 2.89/0.97  unif_index_add_time:                    0.
% 2.89/0.97  orderings_time:                         0.
% 2.89/0.97  out_proof_time:                         0.009
% 2.89/0.97  total_time:                             0.302
% 2.89/0.97  num_of_symbols:                         45
% 2.89/0.97  num_of_terms:                           6328
% 2.89/0.97  
% 2.89/0.97  ------ Preprocessing
% 2.89/0.97  
% 2.89/0.97  num_of_splits:                          0
% 2.89/0.97  num_of_split_atoms:                     0
% 2.89/0.97  num_of_reused_defs:                     0
% 2.89/0.97  num_eq_ax_congr_red:                    0
% 2.89/0.97  num_of_sem_filtered_clauses:            0
% 2.89/0.97  num_of_subtypes:                        4
% 2.89/0.97  monotx_restored_types:                  0
% 2.89/0.97  sat_num_of_epr_types:                   0
% 2.89/0.97  sat_num_of_non_cyclic_types:            0
% 2.89/0.97  sat_guarded_non_collapsed_types:        0
% 2.89/0.97  num_pure_diseq_elim:                    0
% 2.89/0.97  simp_replaced_by:                       0
% 2.89/0.97  res_preprocessed:                       31
% 2.89/0.97  prep_upred:                             0
% 2.89/0.97  prep_unflattend:                        0
% 2.89/0.97  smt_new_axioms:                         0
% 2.89/0.97  pred_elim_cands:                        4
% 2.89/0.97  pred_elim:                              1
% 2.89/0.97  pred_elim_cl:                           1
% 2.89/0.97  pred_elim_cycles:                       6
% 2.89/0.97  merged_defs:                            4
% 2.89/0.97  merged_defs_ncl:                        0
% 2.89/0.97  bin_hyper_res:                          4
% 2.89/0.97  prep_cycles:                            2
% 2.89/0.97  pred_elim_time:                         0.016
% 2.89/0.97  splitting_time:                         0.
% 2.89/0.97  sem_filter_time:                        0.
% 2.89/0.97  monotx_time:                            0.
% 2.89/0.97  subtype_inf_time:                       0.
% 2.89/0.97  
% 2.89/0.97  ------ Problem properties
% 2.89/0.97  
% 2.89/0.97  clauses:                                15
% 2.89/0.97  conjectures:                            4
% 2.89/0.97  epr:                                    2
% 2.89/0.97  horn:                                   11
% 2.89/0.97  ground:                                 4
% 2.89/0.97  unary:                                  4
% 2.89/0.97  binary:                                 5
% 2.89/0.97  lits:                                   40
% 2.89/0.97  lits_eq:                                0
% 2.89/0.97  fd_pure:                                0
% 2.89/0.97  fd_pseudo:                              0
% 2.89/0.97  fd_cond:                                0
% 2.89/0.97  fd_pseudo_cond:                         0
% 2.89/0.97  ac_symbols:                             0
% 2.89/0.97  
% 2.89/0.97  ------ Propositional Solver
% 2.89/0.97  
% 2.89/0.97  prop_solver_calls:                      24
% 2.89/0.97  prop_fast_solver_calls:                 373
% 2.89/0.97  smt_solver_calls:                       0
% 2.89/0.97  smt_fast_solver_calls:                  0
% 2.89/0.97  prop_num_of_clauses:                    3011
% 2.89/0.97  prop_preprocess_simplified:             5652
% 2.89/0.97  prop_fo_subsumed:                       8
% 2.89/0.97  prop_solver_time:                       0.
% 2.89/0.97  smt_solver_time:                        0.
% 2.89/0.97  smt_fast_solver_time:                   0.
% 2.89/0.97  prop_fast_solver_time:                  0.
% 2.89/0.97  prop_unsat_core_time:                   0.
% 2.89/0.97  
% 2.89/0.97  ------ QBF
% 2.89/0.97  
% 2.89/0.97  qbf_q_res:                              0
% 2.89/0.97  qbf_num_tautologies:                    0
% 2.89/0.97  qbf_prep_cycles:                        0
% 2.89/0.97  
% 2.89/0.97  ------ BMC1
% 2.89/0.97  
% 2.89/0.97  bmc1_current_bound:                     -1
% 2.89/0.97  bmc1_last_solved_bound:                 -1
% 2.89/0.97  bmc1_unsat_core_size:                   -1
% 2.89/0.97  bmc1_unsat_core_parents_size:           -1
% 2.89/0.97  bmc1_merge_next_fun:                    0
% 2.89/0.97  bmc1_unsat_core_clauses_time:           0.
% 2.89/0.97  
% 2.89/0.97  ------ Instantiation
% 2.89/0.97  
% 2.89/0.97  inst_num_of_clauses:                    965
% 2.89/0.97  inst_num_in_passive:                    328
% 2.89/0.97  inst_num_in_active:                     574
% 2.89/0.97  inst_num_in_unprocessed:                62
% 2.89/0.97  inst_num_of_loops:                      708
% 2.89/0.97  inst_num_of_learning_restarts:          0
% 2.89/0.97  inst_num_moves_active_passive:          123
% 2.89/0.97  inst_lit_activity:                      0
% 2.89/0.97  inst_lit_activity_moves:                0
% 2.89/0.97  inst_num_tautologies:                   0
% 2.89/0.97  inst_num_prop_implied:                  0
% 2.89/0.97  inst_num_existing_simplified:           0
% 2.89/0.97  inst_num_eq_res_simplified:             0
% 2.89/0.97  inst_num_child_elim:                    0
% 2.89/0.97  inst_num_of_dismatching_blockings:      576
% 2.89/0.97  inst_num_of_non_proper_insts:           1237
% 2.89/0.97  inst_num_of_duplicates:                 0
% 2.89/0.97  inst_inst_num_from_inst_to_res:         0
% 2.89/0.97  inst_dismatching_checking_time:         0.
% 2.89/0.97  
% 2.89/0.97  ------ Resolution
% 2.89/0.97  
% 2.89/0.97  res_num_of_clauses:                     0
% 2.89/0.97  res_num_in_passive:                     0
% 2.89/0.97  res_num_in_active:                      0
% 2.89/0.97  res_num_of_loops:                       33
% 2.89/0.97  res_forward_subset_subsumed:            64
% 2.89/0.97  res_backward_subset_subsumed:           0
% 2.89/0.97  res_forward_subsumed:                   0
% 2.89/0.97  res_backward_subsumed:                  0
% 2.89/0.97  res_forward_subsumption_resolution:     3
% 2.89/0.97  res_backward_subsumption_resolution:    0
% 2.89/0.97  res_clause_to_clause_subsumption:       258
% 2.89/0.97  res_orphan_elimination:                 0
% 2.89/0.97  res_tautology_del:                      192
% 2.89/0.97  res_num_eq_res_simplified:              0
% 2.89/0.97  res_num_sel_changes:                    0
% 2.89/0.97  res_moves_from_active_to_pass:          0
% 2.89/0.97  
% 2.89/0.97  ------ Superposition
% 2.89/0.97  
% 2.89/0.97  sup_time_total:                         0.
% 2.89/0.97  sup_time_generating:                    0.
% 2.89/0.97  sup_time_sim_full:                      0.
% 2.89/0.97  sup_time_sim_immed:                     0.
% 2.89/0.97  
% 2.89/0.97  sup_num_of_clauses:                     0
% 2.89/0.97  sup_num_in_active:                      0
% 2.89/0.97  sup_num_in_passive:                     0
% 2.89/0.97  sup_num_of_loops:                       0
% 2.89/0.97  sup_fw_superposition:                   0
% 2.89/0.97  sup_bw_superposition:                   0
% 2.89/0.97  sup_immediate_simplified:               0
% 2.89/0.97  sup_given_eliminated:                   0
% 2.89/0.97  comparisons_done:                       0
% 2.89/0.97  comparisons_avoided:                    0
% 2.89/0.97  
% 2.89/0.97  ------ Simplifications
% 2.89/0.97  
% 2.89/0.97  
% 2.89/0.97  sim_fw_subset_subsumed:                 0
% 2.89/0.97  sim_bw_subset_subsumed:                 0
% 2.89/0.97  sim_fw_subsumed:                        0
% 2.89/0.97  sim_bw_subsumed:                        0
% 2.89/0.97  sim_fw_subsumption_res:                 0
% 2.89/0.97  sim_bw_subsumption_res:                 0
% 2.89/0.97  sim_tautology_del:                      0
% 2.89/0.97  sim_eq_tautology_del:                   0
% 2.89/0.97  sim_eq_res_simp:                        0
% 2.89/0.97  sim_fw_demodulated:                     0
% 2.89/0.97  sim_bw_demodulated:                     0
% 2.89/0.97  sim_light_normalised:                   0
% 2.89/0.97  sim_joinable_taut:                      0
% 2.89/0.97  sim_joinable_simp:                      0
% 2.89/0.97  sim_ac_normalised:                      0
% 2.89/0.97  sim_smt_subsumption:                    0
% 2.89/0.97  
%------------------------------------------------------------------------------
