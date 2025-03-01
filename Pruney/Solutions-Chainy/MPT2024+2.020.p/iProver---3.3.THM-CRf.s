%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:28:52 EST 2020

% Result     : Theorem 3.24s
% Output     : CNFRefutation 3.24s
% Verified   : 
% Statistics : Number of formulae       :  156 (1298 expanded)
%              Number of clauses        :   97 ( 291 expanded)
%              Number of leaves         :   16 ( 477 expanded)
%              Depth                    :   23
%              Number of atoms          :  573 (7553 expanded)
%              Number of equality atoms :  134 ( 372 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X2,X1)
        & r1_tarski(X0,X1) )
     => r1_tarski(k2_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f13])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k2_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f44,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
              <=> ( v3_pre_topc(X2,X0)
                  & r2_hidden(X1,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
              <=> ( v3_pre_topc(X2,X0)
                  & r2_hidden(X1,X2) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
              <=> ( v3_pre_topc(X2,X0)
                  & r2_hidden(X1,X2) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
                  | ~ v3_pre_topc(X2,X0)
                  | ~ r2_hidden(X1,X2) )
                & ( ( v3_pre_topc(X2,X0)
                    & r2_hidden(X1,X2) )
                  | ~ r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
                  | ~ v3_pre_topc(X2,X0)
                  | ~ r2_hidden(X1,X2) )
                & ( ( v3_pre_topc(X2,X0)
                    & r2_hidden(X1,X2) )
                  | ~ r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ v3_pre_topc(X2,X0)
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
             => ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))
                 => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
               => ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))
                   => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f27,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
                  & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
              & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
                  & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
              & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
          & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
     => ( ~ m1_subset_1(k2_xboole_0(X2,sK4),u1_struct_0(k9_yellow_6(X0,X1)))
        & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
              & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
          & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
     => ( ? [X3] :
            ( ~ m1_subset_1(k2_xboole_0(sK3,X3),u1_struct_0(k9_yellow_6(X0,X1)))
            & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
        & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
                  & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
              & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,sK2)))
                & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,sK2))) )
            & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,sK2))) )
        & m1_subset_1(sK2,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
                    & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
                & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(sK1,X1)))
                  & m1_subset_1(X3,u1_struct_0(k9_yellow_6(sK1,X1))) )
              & m1_subset_1(X2,u1_struct_0(k9_yellow_6(sK1,X1))) )
          & m1_subset_1(X1,u1_struct_0(sK1)) )
      & l1_pre_topc(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK2,u1_struct_0(sK1))
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f28,f37,f36,f35,f34])).

fof(f55,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f56,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f18])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f41,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f61,plain,(
    ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f58,plain,(
    m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f38])).

fof(f59,plain,(
    m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
             => ? [X3] :
                  ( v3_pre_topc(X3,X0)
                  & r2_hidden(X1,X3)
                  & X2 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ? [X3] :
                  ( v3_pre_topc(X3,X0)
                  & r2_hidden(X1,X3)
                  & X2 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ? [X3] :
                  ( v3_pre_topc(X3,X0)
                  & r2_hidden(X1,X3)
                  & X2 = X3
                  & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f30,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( v3_pre_topc(X3,X0)
          & r2_hidden(X1,X3)
          & X2 = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( v3_pre_topc(sK0(X0,X1,X2),X0)
        & r2_hidden(X1,sK0(X0,X1,X2))
        & sK0(X0,X1,X2) = X2
        & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v3_pre_topc(sK0(X0,X1,X2),X0)
                & r2_hidden(X1,sK0(X0,X1,X2))
                & sK0(X0,X1,X2) = X2
                & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f30])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(sK0(X0,X1,X2),X0)
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( sK0(X0,X1,X2) = X2
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f60,plain,(
    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X2,X0)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v3_pre_topc(k2_xboole_0(X1,X2),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f1,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,sK0(X0,X1,X2))
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f16])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X1)
    | r1_tarski(k2_xboole_0(X2,X0),X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1257,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X2,X1) != iProver_top
    | r1_tarski(k2_xboole_0(X2,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_4,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1254,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_13,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_379,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_22])).

cnf(c_380,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_379])).

cnf(c_21,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_20,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_384,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_380,c_21,c_20])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_400,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_384,c_6])).

cnf(c_1244,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | r2_hidden(X1,X0) != iProver_top
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_400])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1256,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2237,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | r2_hidden(X1,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1244,c_1256])).

cnf(c_16,negated_conjecture,
    ( ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1250,plain,
    ( m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_4386,plain,
    ( v3_pre_topc(k2_xboole_0(sK3,sK4),sK1) != iProver_top
    | r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
    | m1_subset_1(k2_xboole_0(sK3,sK4),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2237,c_1250])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_26,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1248,plain,
    ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_9,plain,
    ( v3_pre_topc(sK0(X0,X1,X2),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_334,plain,
    ( v3_pre_topc(sK0(X0,X1,X2),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_22])).

cnf(c_335,plain,
    ( v3_pre_topc(sK0(sK1,X0,X1),sK1)
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_334])).

cnf(c_339,plain,
    ( v3_pre_topc(sK0(sK1,X0,X1),sK1)
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_335,c_21,c_20])).

cnf(c_1246,plain,
    ( v3_pre_topc(sK0(sK1,X0,X1),sK1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_339])).

cnf(c_1766,plain,
    ( v3_pre_topc(sK0(sK1,sK2,sK3),sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1248,c_1246])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0,X2) = X2 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_429,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0,X2) = X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_22])).

cnf(c_430,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | sK0(sK1,X1,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_429])).

cnf(c_434,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | sK0(sK1,X1,X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_430,c_21,c_20])).

cnf(c_1242,plain,
    ( sK0(sK1,X0,X1) = X1
    | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_434])).

cnf(c_1489,plain,
    ( sK0(sK1,sK2,sK3) = sK3
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1248,c_1242])).

cnf(c_1566,plain,
    ( sK0(sK1,sK2,sK3) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1489,c_26])).

cnf(c_1769,plain,
    ( v3_pre_topc(sK3,sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1766,c_1566])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(sK0(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_408,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(sK0(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_22])).

cnf(c_409,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_408])).

cnf(c_413,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_409,c_21,c_20])).

cnf(c_1243,plain,
    ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_413])).

cnf(c_1910,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1566,c_1243])).

cnf(c_27,plain,
    ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2825,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1910,c_26,c_27])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1249,plain,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1488,plain,
    ( sK0(sK1,sK2,sK4) = sK4
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1249,c_1242])).

cnf(c_1501,plain,
    ( sK0(sK1,sK2,sK4) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1488,c_26])).

cnf(c_1909,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1501,c_1243])).

cnf(c_28,plain,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2703,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1909,c_26,c_28])).

cnf(c_8,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k2_xboole_0(X2,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_526,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k2_xboole_0(X2,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_20])).

cnf(c_527,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ v3_pre_topc(X1,sK1)
    | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_526])).

cnf(c_531,plain,
    ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
    | ~ v3_pre_topc(X1,sK1)
    | ~ v3_pre_topc(X0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_527,c_21])).

cnf(c_532,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ v3_pre_topc(X1,sK1)
    | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(renaming,[status(thm)],[c_531])).

cnf(c_1239,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | v3_pre_topc(X1,sK1) != iProver_top
    | v3_pre_topc(k2_xboole_0(X1,X0),sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_532])).

cnf(c_2712,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
    | v3_pre_topc(sK4,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2703,c_1239])).

cnf(c_1765,plain,
    ( v3_pre_topc(sK0(sK1,sK2,sK4),sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1249,c_1246])).

cnf(c_1774,plain,
    ( v3_pre_topc(sK4,sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1765,c_1501])).

cnf(c_3045,plain,
    ( v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
    | v3_pre_topc(X0,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2712,c_26,c_1774])).

cnf(c_3046,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(renaming,[status(thm)],[c_3045])).

cnf(c_3057,plain,
    ( v3_pre_topc(k2_xboole_0(sK3,sK4),sK1) = iProver_top
    | v3_pre_topc(sK3,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2825,c_3046])).

cnf(c_4728,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
    | m1_subset_1(k2_xboole_0(sK3,sK4),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4386,c_26,c_1769,c_3057])).

cnf(c_4734,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
    | r1_tarski(k2_xboole_0(sK3,sK4),u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1254,c_4728])).

cnf(c_4846,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
    | r1_tarski(sK4,u1_struct_0(sK1)) != iProver_top
    | r1_tarski(sK3,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1257,c_4734])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1253,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2709,plain,
    ( r1_tarski(sK4,u1_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2703,c_1253])).

cnf(c_2831,plain,
    ( r1_tarski(sK3,u1_struct_0(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2825,c_1253])).

cnf(c_7815,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4846,c_2709,c_2831])).

cnf(c_0,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1258,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_10,plain,
    ( r2_hidden(X0,sK0(X1,X0,X2))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_450,plain,
    ( r2_hidden(X0,sK0(X1,X0,X2))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_22])).

cnf(c_451,plain,
    ( r2_hidden(X0,sK0(sK1,X0,X1))
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_455,plain,
    ( r2_hidden(X0,sK0(sK1,X0,X1))
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_451,c_21,c_20])).

cnf(c_1241,plain,
    ( r2_hidden(X0,sK0(sK1,X0,X1)) = iProver_top
    | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_455])).

cnf(c_1574,plain,
    ( r2_hidden(sK2,sK0(sK1,sK2,sK3)) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1248,c_1241])).

cnf(c_1577,plain,
    ( r2_hidden(sK2,sK3) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1574,c_1566])).

cnf(c_2087,plain,
    ( r2_hidden(sK2,sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1577,c_26])).

cnf(c_1252,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X0,X2) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2442,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1254,c_1252])).

cnf(c_5572,plain,
    ( m1_subset_1(sK2,X0) = iProver_top
    | r1_tarski(sK3,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2087,c_2442])).

cnf(c_7087,plain,
    ( m1_subset_1(sK2,k2_xboole_0(sK3,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1258,c_5572])).

cnf(c_3,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1255,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | m1_subset_1(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_7490,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,X0)) = iProver_top
    | v1_xboole_0(k2_xboole_0(sK3,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7087,c_1255])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1251,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
    | v1_xboole_0(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2340,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X2) != iProver_top
    | v1_xboole_0(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1254,c_1251])).

cnf(c_4656,plain,
    ( r1_tarski(sK3,X0) != iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2087,c_2340])).

cnf(c_6571,plain,
    ( v1_xboole_0(k2_xboole_0(sK3,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1258,c_4656])).

cnf(c_7610,plain,
    ( r2_hidden(sK2,k2_xboole_0(sK3,X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7490,c_6571])).

cnf(c_7820,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7815,c_7610])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.32  % Computer   : n017.cluster.edu
% 0.13/0.32  % Model      : x86_64 x86_64
% 0.13/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.32  % Memory     : 8042.1875MB
% 0.13/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.32  % CPULimit   : 60
% 0.13/0.32  % WCLimit    : 600
% 0.13/0.32  % DateTime   : Tue Dec  1 18:01:46 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running in FOF mode
% 3.24/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.24/0.99  
% 3.24/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.24/0.99  
% 3.24/0.99  ------  iProver source info
% 3.24/0.99  
% 3.24/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.24/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.24/0.99  git: non_committed_changes: false
% 3.24/0.99  git: last_make_outside_of_git: false
% 3.24/0.99  
% 3.24/0.99  ------ 
% 3.24/0.99  
% 3.24/0.99  ------ Input Options
% 3.24/0.99  
% 3.24/0.99  --out_options                           all
% 3.24/0.99  --tptp_safe_out                         true
% 3.24/0.99  --problem_path                          ""
% 3.24/0.99  --include_path                          ""
% 3.24/0.99  --clausifier                            res/vclausify_rel
% 3.24/0.99  --clausifier_options                    --mode clausify
% 3.24/0.99  --stdin                                 false
% 3.24/0.99  --stats_out                             all
% 3.24/0.99  
% 3.24/0.99  ------ General Options
% 3.24/0.99  
% 3.24/0.99  --fof                                   false
% 3.24/0.99  --time_out_real                         305.
% 3.24/0.99  --time_out_virtual                      -1.
% 3.24/0.99  --symbol_type_check                     false
% 3.24/0.99  --clausify_out                          false
% 3.24/0.99  --sig_cnt_out                           false
% 3.24/0.99  --trig_cnt_out                          false
% 3.24/0.99  --trig_cnt_out_tolerance                1.
% 3.24/0.99  --trig_cnt_out_sk_spl                   false
% 3.24/0.99  --abstr_cl_out                          false
% 3.24/0.99  
% 3.24/0.99  ------ Global Options
% 3.24/0.99  
% 3.24/0.99  --schedule                              default
% 3.24/0.99  --add_important_lit                     false
% 3.24/0.99  --prop_solver_per_cl                    1000
% 3.24/0.99  --min_unsat_core                        false
% 3.24/0.99  --soft_assumptions                      false
% 3.24/0.99  --soft_lemma_size                       3
% 3.24/0.99  --prop_impl_unit_size                   0
% 3.24/0.99  --prop_impl_unit                        []
% 3.24/0.99  --share_sel_clauses                     true
% 3.24/0.99  --reset_solvers                         false
% 3.24/0.99  --bc_imp_inh                            [conj_cone]
% 3.24/0.99  --conj_cone_tolerance                   3.
% 3.24/0.99  --extra_neg_conj                        none
% 3.24/0.99  --large_theory_mode                     true
% 3.24/0.99  --prolific_symb_bound                   200
% 3.24/0.99  --lt_threshold                          2000
% 3.24/0.99  --clause_weak_htbl                      true
% 3.24/0.99  --gc_record_bc_elim                     false
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing Options
% 3.24/0.99  
% 3.24/0.99  --preprocessing_flag                    true
% 3.24/0.99  --time_out_prep_mult                    0.1
% 3.24/0.99  --splitting_mode                        input
% 3.24/0.99  --splitting_grd                         true
% 3.24/0.99  --splitting_cvd                         false
% 3.24/0.99  --splitting_cvd_svl                     false
% 3.24/0.99  --splitting_nvd                         32
% 3.24/0.99  --sub_typing                            true
% 3.24/0.99  --prep_gs_sim                           true
% 3.24/0.99  --prep_unflatten                        true
% 3.24/0.99  --prep_res_sim                          true
% 3.24/0.99  --prep_upred                            true
% 3.24/0.99  --prep_sem_filter                       exhaustive
% 3.24/0.99  --prep_sem_filter_out                   false
% 3.24/0.99  --pred_elim                             true
% 3.24/0.99  --res_sim_input                         true
% 3.24/0.99  --eq_ax_congr_red                       true
% 3.24/0.99  --pure_diseq_elim                       true
% 3.24/0.99  --brand_transform                       false
% 3.24/0.99  --non_eq_to_eq                          false
% 3.24/0.99  --prep_def_merge                        true
% 3.24/0.99  --prep_def_merge_prop_impl              false
% 3.24/0.99  --prep_def_merge_mbd                    true
% 3.24/0.99  --prep_def_merge_tr_red                 false
% 3.24/0.99  --prep_def_merge_tr_cl                  false
% 3.24/0.99  --smt_preprocessing                     true
% 3.24/0.99  --smt_ac_axioms                         fast
% 3.24/0.99  --preprocessed_out                      false
% 3.24/0.99  --preprocessed_stats                    false
% 3.24/0.99  
% 3.24/0.99  ------ Abstraction refinement Options
% 3.24/0.99  
% 3.24/0.99  --abstr_ref                             []
% 3.24/0.99  --abstr_ref_prep                        false
% 3.24/0.99  --abstr_ref_until_sat                   false
% 3.24/0.99  --abstr_ref_sig_restrict                funpre
% 3.24/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.24/0.99  --abstr_ref_under                       []
% 3.24/0.99  
% 3.24/0.99  ------ SAT Options
% 3.24/0.99  
% 3.24/0.99  --sat_mode                              false
% 3.24/0.99  --sat_fm_restart_options                ""
% 3.24/0.99  --sat_gr_def                            false
% 3.24/0.99  --sat_epr_types                         true
% 3.24/0.99  --sat_non_cyclic_types                  false
% 3.24/0.99  --sat_finite_models                     false
% 3.24/0.99  --sat_fm_lemmas                         false
% 3.24/0.99  --sat_fm_prep                           false
% 3.24/0.99  --sat_fm_uc_incr                        true
% 3.24/0.99  --sat_out_model                         small
% 3.24/0.99  --sat_out_clauses                       false
% 3.24/0.99  
% 3.24/0.99  ------ QBF Options
% 3.24/0.99  
% 3.24/0.99  --qbf_mode                              false
% 3.24/0.99  --qbf_elim_univ                         false
% 3.24/0.99  --qbf_dom_inst                          none
% 3.24/0.99  --qbf_dom_pre_inst                      false
% 3.24/0.99  --qbf_sk_in                             false
% 3.24/0.99  --qbf_pred_elim                         true
% 3.24/0.99  --qbf_split                             512
% 3.24/0.99  
% 3.24/0.99  ------ BMC1 Options
% 3.24/0.99  
% 3.24/0.99  --bmc1_incremental                      false
% 3.24/0.99  --bmc1_axioms                           reachable_all
% 3.24/0.99  --bmc1_min_bound                        0
% 3.24/0.99  --bmc1_max_bound                        -1
% 3.24/0.99  --bmc1_max_bound_default                -1
% 3.24/0.99  --bmc1_symbol_reachability              true
% 3.24/0.99  --bmc1_property_lemmas                  false
% 3.24/0.99  --bmc1_k_induction                      false
% 3.24/0.99  --bmc1_non_equiv_states                 false
% 3.24/0.99  --bmc1_deadlock                         false
% 3.24/0.99  --bmc1_ucm                              false
% 3.24/0.99  --bmc1_add_unsat_core                   none
% 3.24/0.99  --bmc1_unsat_core_children              false
% 3.24/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.24/0.99  --bmc1_out_stat                         full
% 3.24/0.99  --bmc1_ground_init                      false
% 3.24/0.99  --bmc1_pre_inst_next_state              false
% 3.24/0.99  --bmc1_pre_inst_state                   false
% 3.24/0.99  --bmc1_pre_inst_reach_state             false
% 3.24/0.99  --bmc1_out_unsat_core                   false
% 3.24/0.99  --bmc1_aig_witness_out                  false
% 3.24/0.99  --bmc1_verbose                          false
% 3.24/0.99  --bmc1_dump_clauses_tptp                false
% 3.24/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.24/0.99  --bmc1_dump_file                        -
% 3.24/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.24/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.24/0.99  --bmc1_ucm_extend_mode                  1
% 3.24/0.99  --bmc1_ucm_init_mode                    2
% 3.24/0.99  --bmc1_ucm_cone_mode                    none
% 3.24/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.24/0.99  --bmc1_ucm_relax_model                  4
% 3.24/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.24/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.24/0.99  --bmc1_ucm_layered_model                none
% 3.24/0.99  --bmc1_ucm_max_lemma_size               10
% 3.24/0.99  
% 3.24/0.99  ------ AIG Options
% 3.24/0.99  
% 3.24/0.99  --aig_mode                              false
% 3.24/0.99  
% 3.24/0.99  ------ Instantiation Options
% 3.24/0.99  
% 3.24/0.99  --instantiation_flag                    true
% 3.24/0.99  --inst_sos_flag                         false
% 3.24/0.99  --inst_sos_phase                        true
% 3.24/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.24/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.24/0.99  --inst_lit_sel_side                     num_symb
% 3.24/0.99  --inst_solver_per_active                1400
% 3.24/0.99  --inst_solver_calls_frac                1.
% 3.24/0.99  --inst_passive_queue_type               priority_queues
% 3.24/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.24/0.99  --inst_passive_queues_freq              [25;2]
% 3.24/0.99  --inst_dismatching                      true
% 3.24/0.99  --inst_eager_unprocessed_to_passive     true
% 3.24/0.99  --inst_prop_sim_given                   true
% 3.24/0.99  --inst_prop_sim_new                     false
% 3.24/0.99  --inst_subs_new                         false
% 3.24/0.99  --inst_eq_res_simp                      false
% 3.24/0.99  --inst_subs_given                       false
% 3.24/0.99  --inst_orphan_elimination               true
% 3.24/0.99  --inst_learning_loop_flag               true
% 3.24/0.99  --inst_learning_start                   3000
% 3.24/0.99  --inst_learning_factor                  2
% 3.24/0.99  --inst_start_prop_sim_after_learn       3
% 3.24/0.99  --inst_sel_renew                        solver
% 3.24/0.99  --inst_lit_activity_flag                true
% 3.24/0.99  --inst_restr_to_given                   false
% 3.24/0.99  --inst_activity_threshold               500
% 3.24/0.99  --inst_out_proof                        true
% 3.24/0.99  
% 3.24/0.99  ------ Resolution Options
% 3.24/0.99  
% 3.24/0.99  --resolution_flag                       true
% 3.24/0.99  --res_lit_sel                           adaptive
% 3.24/0.99  --res_lit_sel_side                      none
% 3.24/0.99  --res_ordering                          kbo
% 3.24/0.99  --res_to_prop_solver                    active
% 3.24/0.99  --res_prop_simpl_new                    false
% 3.24/0.99  --res_prop_simpl_given                  true
% 3.24/0.99  --res_passive_queue_type                priority_queues
% 3.24/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.24/0.99  --res_passive_queues_freq               [15;5]
% 3.24/0.99  --res_forward_subs                      full
% 3.24/0.99  --res_backward_subs                     full
% 3.24/0.99  --res_forward_subs_resolution           true
% 3.24/0.99  --res_backward_subs_resolution          true
% 3.24/0.99  --res_orphan_elimination                true
% 3.24/0.99  --res_time_limit                        2.
% 3.24/0.99  --res_out_proof                         true
% 3.24/0.99  
% 3.24/0.99  ------ Superposition Options
% 3.24/0.99  
% 3.24/0.99  --superposition_flag                    true
% 3.24/0.99  --sup_passive_queue_type                priority_queues
% 3.24/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.24/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.24/0.99  --demod_completeness_check              fast
% 3.24/0.99  --demod_use_ground                      true
% 3.24/0.99  --sup_to_prop_solver                    passive
% 3.24/0.99  --sup_prop_simpl_new                    true
% 3.24/0.99  --sup_prop_simpl_given                  true
% 3.24/0.99  --sup_fun_splitting                     false
% 3.24/0.99  --sup_smt_interval                      50000
% 3.24/0.99  
% 3.24/0.99  ------ Superposition Simplification Setup
% 3.24/0.99  
% 3.24/0.99  --sup_indices_passive                   []
% 3.24/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.24/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_full_bw                           [BwDemod]
% 3.24/0.99  --sup_immed_triv                        [TrivRules]
% 3.24/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.24/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_immed_bw_main                     []
% 3.24/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.24/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/0.99  
% 3.24/0.99  ------ Combination Options
% 3.24/0.99  
% 3.24/0.99  --comb_res_mult                         3
% 3.24/0.99  --comb_sup_mult                         2
% 3.24/0.99  --comb_inst_mult                        10
% 3.24/0.99  
% 3.24/0.99  ------ Debug Options
% 3.24/0.99  
% 3.24/0.99  --dbg_backtrace                         false
% 3.24/0.99  --dbg_dump_prop_clauses                 false
% 3.24/0.99  --dbg_dump_prop_clauses_file            -
% 3.24/0.99  --dbg_out_stat                          false
% 3.24/0.99  ------ Parsing...
% 3.24/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.24/0.99  ------ Proving...
% 3.24/0.99  ------ Problem Properties 
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  clauses                                 20
% 3.24/0.99  conjectures                             4
% 3.24/0.99  EPR                                     2
% 3.24/0.99  Horn                                    19
% 3.24/0.99  unary                                   5
% 3.24/0.99  binary                                  3
% 3.24/0.99  lits                                    52
% 3.24/0.99  lits eq                                 1
% 3.24/0.99  fd_pure                                 0
% 3.24/0.99  fd_pseudo                               0
% 3.24/0.99  fd_cond                                 0
% 3.24/0.99  fd_pseudo_cond                          0
% 3.24/0.99  AC symbols                              0
% 3.24/0.99  
% 3.24/0.99  ------ Schedule dynamic 5 is on 
% 3.24/0.99  
% 3.24/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  ------ 
% 3.24/0.99  Current options:
% 3.24/0.99  ------ 
% 3.24/0.99  
% 3.24/0.99  ------ Input Options
% 3.24/0.99  
% 3.24/0.99  --out_options                           all
% 3.24/0.99  --tptp_safe_out                         true
% 3.24/0.99  --problem_path                          ""
% 3.24/0.99  --include_path                          ""
% 3.24/0.99  --clausifier                            res/vclausify_rel
% 3.24/0.99  --clausifier_options                    --mode clausify
% 3.24/0.99  --stdin                                 false
% 3.24/0.99  --stats_out                             all
% 3.24/0.99  
% 3.24/0.99  ------ General Options
% 3.24/0.99  
% 3.24/0.99  --fof                                   false
% 3.24/0.99  --time_out_real                         305.
% 3.24/0.99  --time_out_virtual                      -1.
% 3.24/0.99  --symbol_type_check                     false
% 3.24/0.99  --clausify_out                          false
% 3.24/0.99  --sig_cnt_out                           false
% 3.24/0.99  --trig_cnt_out                          false
% 3.24/0.99  --trig_cnt_out_tolerance                1.
% 3.24/0.99  --trig_cnt_out_sk_spl                   false
% 3.24/0.99  --abstr_cl_out                          false
% 3.24/0.99  
% 3.24/0.99  ------ Global Options
% 3.24/0.99  
% 3.24/0.99  --schedule                              default
% 3.24/0.99  --add_important_lit                     false
% 3.24/0.99  --prop_solver_per_cl                    1000
% 3.24/0.99  --min_unsat_core                        false
% 3.24/0.99  --soft_assumptions                      false
% 3.24/0.99  --soft_lemma_size                       3
% 3.24/0.99  --prop_impl_unit_size                   0
% 3.24/0.99  --prop_impl_unit                        []
% 3.24/0.99  --share_sel_clauses                     true
% 3.24/0.99  --reset_solvers                         false
% 3.24/0.99  --bc_imp_inh                            [conj_cone]
% 3.24/0.99  --conj_cone_tolerance                   3.
% 3.24/0.99  --extra_neg_conj                        none
% 3.24/0.99  --large_theory_mode                     true
% 3.24/0.99  --prolific_symb_bound                   200
% 3.24/0.99  --lt_threshold                          2000
% 3.24/0.99  --clause_weak_htbl                      true
% 3.24/0.99  --gc_record_bc_elim                     false
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing Options
% 3.24/0.99  
% 3.24/0.99  --preprocessing_flag                    true
% 3.24/0.99  --time_out_prep_mult                    0.1
% 3.24/0.99  --splitting_mode                        input
% 3.24/0.99  --splitting_grd                         true
% 3.24/0.99  --splitting_cvd                         false
% 3.24/0.99  --splitting_cvd_svl                     false
% 3.24/0.99  --splitting_nvd                         32
% 3.24/0.99  --sub_typing                            true
% 3.24/0.99  --prep_gs_sim                           true
% 3.24/0.99  --prep_unflatten                        true
% 3.24/0.99  --prep_res_sim                          true
% 3.24/0.99  --prep_upred                            true
% 3.24/0.99  --prep_sem_filter                       exhaustive
% 3.24/0.99  --prep_sem_filter_out                   false
% 3.24/0.99  --pred_elim                             true
% 3.24/0.99  --res_sim_input                         true
% 3.24/0.99  --eq_ax_congr_red                       true
% 3.24/0.99  --pure_diseq_elim                       true
% 3.24/0.99  --brand_transform                       false
% 3.24/0.99  --non_eq_to_eq                          false
% 3.24/0.99  --prep_def_merge                        true
% 3.24/0.99  --prep_def_merge_prop_impl              false
% 3.24/0.99  --prep_def_merge_mbd                    true
% 3.24/0.99  --prep_def_merge_tr_red                 false
% 3.24/0.99  --prep_def_merge_tr_cl                  false
% 3.24/0.99  --smt_preprocessing                     true
% 3.24/0.99  --smt_ac_axioms                         fast
% 3.24/0.99  --preprocessed_out                      false
% 3.24/0.99  --preprocessed_stats                    false
% 3.24/0.99  
% 3.24/0.99  ------ Abstraction refinement Options
% 3.24/0.99  
% 3.24/0.99  --abstr_ref                             []
% 3.24/0.99  --abstr_ref_prep                        false
% 3.24/0.99  --abstr_ref_until_sat                   false
% 3.24/0.99  --abstr_ref_sig_restrict                funpre
% 3.24/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.24/0.99  --abstr_ref_under                       []
% 3.24/0.99  
% 3.24/0.99  ------ SAT Options
% 3.24/0.99  
% 3.24/0.99  --sat_mode                              false
% 3.24/0.99  --sat_fm_restart_options                ""
% 3.24/0.99  --sat_gr_def                            false
% 3.24/0.99  --sat_epr_types                         true
% 3.24/0.99  --sat_non_cyclic_types                  false
% 3.24/0.99  --sat_finite_models                     false
% 3.24/0.99  --sat_fm_lemmas                         false
% 3.24/0.99  --sat_fm_prep                           false
% 3.24/0.99  --sat_fm_uc_incr                        true
% 3.24/0.99  --sat_out_model                         small
% 3.24/0.99  --sat_out_clauses                       false
% 3.24/0.99  
% 3.24/0.99  ------ QBF Options
% 3.24/0.99  
% 3.24/0.99  --qbf_mode                              false
% 3.24/0.99  --qbf_elim_univ                         false
% 3.24/0.99  --qbf_dom_inst                          none
% 3.24/0.99  --qbf_dom_pre_inst                      false
% 3.24/0.99  --qbf_sk_in                             false
% 3.24/0.99  --qbf_pred_elim                         true
% 3.24/0.99  --qbf_split                             512
% 3.24/0.99  
% 3.24/0.99  ------ BMC1 Options
% 3.24/0.99  
% 3.24/0.99  --bmc1_incremental                      false
% 3.24/0.99  --bmc1_axioms                           reachable_all
% 3.24/0.99  --bmc1_min_bound                        0
% 3.24/0.99  --bmc1_max_bound                        -1
% 3.24/0.99  --bmc1_max_bound_default                -1
% 3.24/0.99  --bmc1_symbol_reachability              true
% 3.24/0.99  --bmc1_property_lemmas                  false
% 3.24/0.99  --bmc1_k_induction                      false
% 3.24/0.99  --bmc1_non_equiv_states                 false
% 3.24/0.99  --bmc1_deadlock                         false
% 3.24/0.99  --bmc1_ucm                              false
% 3.24/0.99  --bmc1_add_unsat_core                   none
% 3.24/0.99  --bmc1_unsat_core_children              false
% 3.24/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.24/0.99  --bmc1_out_stat                         full
% 3.24/0.99  --bmc1_ground_init                      false
% 3.24/0.99  --bmc1_pre_inst_next_state              false
% 3.24/0.99  --bmc1_pre_inst_state                   false
% 3.24/0.99  --bmc1_pre_inst_reach_state             false
% 3.24/0.99  --bmc1_out_unsat_core                   false
% 3.24/0.99  --bmc1_aig_witness_out                  false
% 3.24/0.99  --bmc1_verbose                          false
% 3.24/0.99  --bmc1_dump_clauses_tptp                false
% 3.24/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.24/0.99  --bmc1_dump_file                        -
% 3.24/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.24/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.24/0.99  --bmc1_ucm_extend_mode                  1
% 3.24/0.99  --bmc1_ucm_init_mode                    2
% 3.24/0.99  --bmc1_ucm_cone_mode                    none
% 3.24/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.24/0.99  --bmc1_ucm_relax_model                  4
% 3.24/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.24/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.24/0.99  --bmc1_ucm_layered_model                none
% 3.24/0.99  --bmc1_ucm_max_lemma_size               10
% 3.24/0.99  
% 3.24/0.99  ------ AIG Options
% 3.24/0.99  
% 3.24/0.99  --aig_mode                              false
% 3.24/0.99  
% 3.24/0.99  ------ Instantiation Options
% 3.24/0.99  
% 3.24/0.99  --instantiation_flag                    true
% 3.24/0.99  --inst_sos_flag                         false
% 3.24/0.99  --inst_sos_phase                        true
% 3.24/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.24/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.24/0.99  --inst_lit_sel_side                     none
% 3.24/0.99  --inst_solver_per_active                1400
% 3.24/0.99  --inst_solver_calls_frac                1.
% 3.24/0.99  --inst_passive_queue_type               priority_queues
% 3.24/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.24/0.99  --inst_passive_queues_freq              [25;2]
% 3.24/0.99  --inst_dismatching                      true
% 3.24/0.99  --inst_eager_unprocessed_to_passive     true
% 3.24/0.99  --inst_prop_sim_given                   true
% 3.24/0.99  --inst_prop_sim_new                     false
% 3.24/0.99  --inst_subs_new                         false
% 3.24/0.99  --inst_eq_res_simp                      false
% 3.24/0.99  --inst_subs_given                       false
% 3.24/0.99  --inst_orphan_elimination               true
% 3.24/0.99  --inst_learning_loop_flag               true
% 3.24/0.99  --inst_learning_start                   3000
% 3.24/0.99  --inst_learning_factor                  2
% 3.24/0.99  --inst_start_prop_sim_after_learn       3
% 3.24/0.99  --inst_sel_renew                        solver
% 3.24/0.99  --inst_lit_activity_flag                true
% 3.24/0.99  --inst_restr_to_given                   false
% 3.24/0.99  --inst_activity_threshold               500
% 3.24/0.99  --inst_out_proof                        true
% 3.24/0.99  
% 3.24/0.99  ------ Resolution Options
% 3.24/0.99  
% 3.24/0.99  --resolution_flag                       false
% 3.24/0.99  --res_lit_sel                           adaptive
% 3.24/0.99  --res_lit_sel_side                      none
% 3.24/0.99  --res_ordering                          kbo
% 3.24/0.99  --res_to_prop_solver                    active
% 3.24/0.99  --res_prop_simpl_new                    false
% 3.24/0.99  --res_prop_simpl_given                  true
% 3.24/0.99  --res_passive_queue_type                priority_queues
% 3.24/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.24/0.99  --res_passive_queues_freq               [15;5]
% 3.24/0.99  --res_forward_subs                      full
% 3.24/0.99  --res_backward_subs                     full
% 3.24/0.99  --res_forward_subs_resolution           true
% 3.24/0.99  --res_backward_subs_resolution          true
% 3.24/0.99  --res_orphan_elimination                true
% 3.24/0.99  --res_time_limit                        2.
% 3.24/0.99  --res_out_proof                         true
% 3.24/0.99  
% 3.24/0.99  ------ Superposition Options
% 3.24/0.99  
% 3.24/0.99  --superposition_flag                    true
% 3.24/0.99  --sup_passive_queue_type                priority_queues
% 3.24/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.24/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.24/0.99  --demod_completeness_check              fast
% 3.24/0.99  --demod_use_ground                      true
% 3.24/0.99  --sup_to_prop_solver                    passive
% 3.24/0.99  --sup_prop_simpl_new                    true
% 3.24/0.99  --sup_prop_simpl_given                  true
% 3.24/0.99  --sup_fun_splitting                     false
% 3.24/0.99  --sup_smt_interval                      50000
% 3.24/0.99  
% 3.24/0.99  ------ Superposition Simplification Setup
% 3.24/0.99  
% 3.24/0.99  --sup_indices_passive                   []
% 3.24/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.24/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.24/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_full_bw                           [BwDemod]
% 3.24/0.99  --sup_immed_triv                        [TrivRules]
% 3.24/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.24/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_immed_bw_main                     []
% 3.24/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.24/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.24/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.24/0.99  
% 3.24/0.99  ------ Combination Options
% 3.24/0.99  
% 3.24/0.99  --comb_res_mult                         3
% 3.24/0.99  --comb_sup_mult                         2
% 3.24/0.99  --comb_inst_mult                        10
% 3.24/0.99  
% 3.24/0.99  ------ Debug Options
% 3.24/0.99  
% 3.24/0.99  --dbg_backtrace                         false
% 3.24/0.99  --dbg_dump_prop_clauses                 false
% 3.24/0.99  --dbg_dump_prop_clauses_file            -
% 3.24/0.99  --dbg_out_stat                          false
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  ------ Proving...
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  % SZS status Theorem for theBenchmark.p
% 3.24/0.99  
% 3.24/0.99   Resolution empty clause
% 3.24/0.99  
% 3.24/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.24/0.99  
% 3.24/0.99  fof(f2,axiom,(
% 3.24/0.99    ! [X0,X1,X2] : ((r1_tarski(X2,X1) & r1_tarski(X0,X1)) => r1_tarski(k2_xboole_0(X0,X2),X1))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f13,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X2),X1) | (~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)))),
% 3.24/0.99    inference(ennf_transformation,[],[f2])).
% 3.24/0.99  
% 3.24/0.99  fof(f14,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1))),
% 3.24/0.99    inference(flattening,[],[f13])).
% 3.24/0.99  
% 3.24/0.99  fof(f40,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (r1_tarski(k2_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f14])).
% 3.24/0.99  
% 3.24/0.99  fof(f5,axiom,(
% 3.24/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f29,plain,(
% 3.24/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.24/0.99    inference(nnf_transformation,[],[f5])).
% 3.24/0.99  
% 3.24/0.99  fof(f44,plain,(
% 3.24/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f29])).
% 3.24/0.99  
% 3.24/0.99  fof(f10,axiom,(
% 3.24/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))))))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f25,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.24/0.99    inference(ennf_transformation,[],[f10])).
% 3.24/0.99  
% 3.24/0.99  fof(f26,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.24/0.99    inference(flattening,[],[f25])).
% 3.24/0.99  
% 3.24/0.99  fof(f32,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | (~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2))) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.24/0.99    inference(nnf_transformation,[],[f26])).
% 3.24/0.99  
% 3.24/0.99  fof(f33,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2)) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.24/0.99    inference(flattening,[],[f32])).
% 3.24/0.99  
% 3.24/0.99  fof(f54,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f33])).
% 3.24/0.99  
% 3.24/0.99  fof(f11,conjecture,(
% 3.24/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f12,negated_conjecture,(
% 3.24/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.24/0.99    inference(negated_conjecture,[],[f11])).
% 3.24/0.99  
% 3.24/0.99  fof(f27,plain,(
% 3.24/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.24/0.99    inference(ennf_transformation,[],[f12])).
% 3.24/0.99  
% 3.24/0.99  fof(f28,plain,(
% 3.24/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.24/0.99    inference(flattening,[],[f27])).
% 3.24/0.99  
% 3.24/0.99  fof(f37,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) => (~m1_subset_1(k2_xboole_0(X2,sK4),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.24/0.99    introduced(choice_axiom,[])).
% 3.24/0.99  
% 3.24/0.99  fof(f36,plain,(
% 3.24/0.99    ( ! [X0,X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) => (? [X3] : (~m1_subset_1(k2_xboole_0(sK3,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.24/0.99    introduced(choice_axiom,[])).
% 3.24/0.99  
% 3.24/0.99  fof(f35,plain,(
% 3.24/0.99    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,sK2))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,sK2)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,sK2)))) & m1_subset_1(sK2,u1_struct_0(X0)))) )),
% 3.24/0.99    introduced(choice_axiom,[])).
% 3.24/0.99  
% 3.24/0.99  fof(f34,plain,(
% 3.24/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(sK1,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(sK1,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(sK1,X1)))) & m1_subset_1(X1,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 3.24/0.99    introduced(choice_axiom,[])).
% 3.24/0.99  
% 3.24/0.99  fof(f38,plain,(
% 3.24/0.99    (((~m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))) & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))) & m1_subset_1(sK2,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 3.24/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f28,f37,f36,f35,f34])).
% 3.24/0.99  
% 3.24/0.99  fof(f55,plain,(
% 3.24/0.99    ~v2_struct_0(sK1)),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f56,plain,(
% 3.24/0.99    v2_pre_topc(sK1)),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f57,plain,(
% 3.24/0.99    l1_pre_topc(sK1)),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f6,axiom,(
% 3.24/0.99    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f18,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 3.24/0.99    inference(ennf_transformation,[],[f6])).
% 3.24/0.99  
% 3.24/0.99  fof(f19,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.24/0.99    inference(flattening,[],[f18])).
% 3.24/0.99  
% 3.24/0.99  fof(f45,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f19])).
% 3.24/0.99  
% 3.24/0.99  fof(f3,axiom,(
% 3.24/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f15,plain,(
% 3.24/0.99    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 3.24/0.99    inference(ennf_transformation,[],[f3])).
% 3.24/0.99  
% 3.24/0.99  fof(f41,plain,(
% 3.24/0.99    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f15])).
% 3.24/0.99  
% 3.24/0.99  fof(f61,plain,(
% 3.24/0.99    ~m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f58,plain,(
% 3.24/0.99    m1_subset_1(sK2,u1_struct_0(sK1))),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f59,plain,(
% 3.24/0.99    m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f9,axiom,(
% 3.24/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))))))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f23,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.24/0.99    inference(ennf_transformation,[],[f9])).
% 3.24/0.99  
% 3.24/0.99  fof(f24,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.24/0.99    inference(flattening,[],[f23])).
% 3.24/0.99  
% 3.24/0.99  fof(f30,plain,(
% 3.24/0.99    ! [X2,X1,X0] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (v3_pre_topc(sK0(X0,X1,X2),X0) & r2_hidden(X1,sK0(X0,X1,X2)) & sK0(X0,X1,X2) = X2 & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.24/0.99    introduced(choice_axiom,[])).
% 3.24/0.99  
% 3.24/0.99  fof(f31,plain,(
% 3.24/0.99    ! [X0] : (! [X1] : (! [X2] : ((v3_pre_topc(sK0(X0,X1,X2),X0) & r2_hidden(X1,sK0(X0,X1,X2)) & sK0(X0,X1,X2) = X2 & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.24/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f30])).
% 3.24/0.99  
% 3.24/0.99  fof(f51,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (v3_pre_topc(sK0(X0,X1,X2),X0) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f31])).
% 3.24/0.99  
% 3.24/0.99  fof(f49,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (sK0(X0,X1,X2) = X2 | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f31])).
% 3.24/0.99  
% 3.24/0.99  fof(f48,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f31])).
% 3.24/0.99  
% 3.24/0.99  fof(f60,plain,(
% 3.24/0.99    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.24/0.99    inference(cnf_transformation,[],[f38])).
% 3.24/0.99  
% 3.24/0.99  fof(f8,axiom,(
% 3.24/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X2,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v3_pre_topc(k2_xboole_0(X1,X2),X0))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f21,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.24/0.99    inference(ennf_transformation,[],[f8])).
% 3.24/0.99  
% 3.24/0.99  fof(f22,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.24/0.99    inference(flattening,[],[f21])).
% 3.24/0.99  
% 3.24/0.99  fof(f47,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f22])).
% 3.24/0.99  
% 3.24/0.99  fof(f43,plain,(
% 3.24/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.24/0.99    inference(cnf_transformation,[],[f29])).
% 3.24/0.99  
% 3.24/0.99  fof(f1,axiom,(
% 3.24/0.99    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f39,plain,(
% 3.24/0.99    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 3.24/0.99    inference(cnf_transformation,[],[f1])).
% 3.24/0.99  
% 3.24/0.99  fof(f50,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (r2_hidden(X1,sK0(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f31])).
% 3.24/0.99  
% 3.24/0.99  fof(f4,axiom,(
% 3.24/0.99    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f16,plain,(
% 3.24/0.99    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 3.24/0.99    inference(ennf_transformation,[],[f4])).
% 3.24/0.99  
% 3.24/0.99  fof(f17,plain,(
% 3.24/0.99    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 3.24/0.99    inference(flattening,[],[f16])).
% 3.24/0.99  
% 3.24/0.99  fof(f42,plain,(
% 3.24/0.99    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f17])).
% 3.24/0.99  
% 3.24/0.99  fof(f7,axiom,(
% 3.24/0.99    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 3.24/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.24/0.99  
% 3.24/0.99  fof(f20,plain,(
% 3.24/0.99    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.24/0.99    inference(ennf_transformation,[],[f7])).
% 3.24/0.99  
% 3.24/0.99  fof(f46,plain,(
% 3.24/0.99    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.24/0.99    inference(cnf_transformation,[],[f20])).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1,plain,
% 3.24/0.99      ( ~ r1_tarski(X0,X1)
% 3.24/0.99      | ~ r1_tarski(X2,X1)
% 3.24/0.99      | r1_tarski(k2_xboole_0(X2,X0),X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f40]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1257,plain,
% 3.24/0.99      ( r1_tarski(X0,X1) != iProver_top
% 3.24/0.99      | r1_tarski(X2,X1) != iProver_top
% 3.24/0.99      | r1_tarski(k2_xboole_0(X2,X0),X1) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4,plain,
% 3.24/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f44]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1254,plain,
% 3.24/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 3.24/0.99      | r1_tarski(X0,X1) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_13,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,X1)
% 3.24/0.99      | ~ r2_hidden(X2,X0)
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | v2_struct_0(X1)
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f54]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_22,negated_conjecture,
% 3.24/0.99      ( ~ v2_struct_0(sK1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_379,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,X1)
% 3.24/0.99      | ~ r2_hidden(X2,X0)
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1)
% 3.24/0.99      | sK1 != X1 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_22]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_380,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,sK1)
% 3.24/0.99      | ~ r2_hidden(X1,X0)
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ v2_pre_topc(sK1)
% 3.24/0.99      | ~ l1_pre_topc(sK1) ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_379]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_21,negated_conjecture,
% 3.24/0.99      ( v2_pre_topc(sK1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_20,negated_conjecture,
% 3.24/0.99      ( l1_pre_topc(sK1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_384,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,sK1)
% 3.24/0.99      | ~ r2_hidden(X1,X0)
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_380,c_21,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_6,plain,
% 3.24/0.99      ( ~ r2_hidden(X0,X1)
% 3.24/0.99      | m1_subset_1(X0,X2)
% 3.24/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 3.24/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_400,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,sK1)
% 3.24/0.99      | ~ r2_hidden(X1,X0)
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.24/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_384,c_6]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1244,plain,
% 3.24/0.99      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | r2_hidden(X1,X0) != iProver_top
% 3.24/0.99      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_400]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2,plain,
% 3.24/0.99      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f41]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1256,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) != iProver_top | m1_subset_1(X0,X1) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2237,plain,
% 3.24/0.99      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | r2_hidden(X1,X0) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1244,c_1256]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_16,negated_conjecture,
% 3.24/0.99      ( ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.24/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1250,plain,
% 3.24/0.99      ( m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4386,plain,
% 3.24/0.99      ( v3_pre_topc(k2_xboole_0(sK3,sK4),sK1) != iProver_top
% 3.24/0.99      | r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
% 3.24/0.99      | m1_subset_1(k2_xboole_0(sK3,sK4),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2237,c_1250]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_19,negated_conjecture,
% 3.24/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 3.24/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_26,plain,
% 3.24/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_18,negated_conjecture,
% 3.24/0.99      ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.24/0.99      inference(cnf_transformation,[],[f59]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1248,plain,
% 3.24/0.99      ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_9,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(X0,X1,X2),X0)
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
% 3.24/0.99      | v2_struct_0(X0)
% 3.24/0.99      | ~ v2_pre_topc(X0)
% 3.24/0.99      | ~ l1_pre_topc(X0) ),
% 3.24/0.99      inference(cnf_transformation,[],[f51]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_334,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(X0,X1,X2),X0)
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
% 3.24/0.99      | ~ v2_pre_topc(X0)
% 3.24/0.99      | ~ l1_pre_topc(X0)
% 3.24/0.99      | sK1 != X0 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_22]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_335,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(sK1,X0,X1),sK1)
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 3.24/0.99      | ~ v2_pre_topc(sK1)
% 3.24/0.99      | ~ l1_pre_topc(sK1) ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_334]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_339,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(sK1,X0,X1),sK1)
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_335,c_21,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1246,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(sK1,X0,X1),sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_339]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1766,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(sK1,sK2,sK3),sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1248,c_1246]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_11,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | v2_struct_0(X1)
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1)
% 3.24/0.99      | sK0(X1,X0,X2) = X2 ),
% 3.24/0.99      inference(cnf_transformation,[],[f49]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_429,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1)
% 3.24/0.99      | sK0(X1,X0,X2) = X2
% 3.24/0.99      | sK1 != X1 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_22]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_430,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | ~ v2_pre_topc(sK1)
% 3.24/0.99      | ~ l1_pre_topc(sK1)
% 3.24/0.99      | sK0(sK1,X1,X0) = X0 ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_429]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_434,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | sK0(sK1,X1,X0) = X0 ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_430,c_21,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1242,plain,
% 3.24/0.99      ( sK0(sK1,X0,X1) = X1
% 3.24/0.99      | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_434]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1489,plain,
% 3.24/0.99      ( sK0(sK1,sK2,sK3) = sK3
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1248,c_1242]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1566,plain,
% 3.24/0.99      ( sK0(sK1,sK2,sK3) = sK3 ),
% 3.24/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1489,c_26]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1769,plain,
% 3.24/0.99      ( v3_pre_topc(sK3,sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(light_normalisation,[status(thm)],[c_1766,c_1566]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_12,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | m1_subset_1(sK0(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | v2_struct_0(X1)
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_408,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | m1_subset_1(sK0(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1)
% 3.24/0.99      | sK1 != X1 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_22]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_409,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ v2_pre_topc(sK1)
% 3.24/0.99      | ~ l1_pre_topc(sK1) ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_408]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_413,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.24/0.99      | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_409,c_21,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1243,plain,
% 3.24/0.99      ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
% 3.24/0.99      | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
% 3.24/0.99      | m1_subset_1(sK0(sK1,X1,X0),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_413]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1910,plain,
% 3.24/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.24/0.99      | m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top
% 3.24/0.99      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1566,c_1243]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_27,plain,
% 3.24/0.99      ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2825,plain,
% 3.24/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_1910,c_26,c_27]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_17,negated_conjecture,
% 3.24/0.99      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.24/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1249,plain,
% 3.24/0.99      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1488,plain,
% 3.24/0.99      ( sK0(sK1,sK2,sK4) = sK4
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1249,c_1242]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1501,plain,
% 3.24/0.99      ( sK0(sK1,sK2,sK4) = sK4 ),
% 3.24/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1488,c_26]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1909,plain,
% 3.24/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.24/0.99      | m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top
% 3.24/0.99      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1501,c_1243]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_28,plain,
% 3.24/0.99      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2703,plain,
% 3.24/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_1909,c_26,c_28]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_8,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,X1)
% 3.24/0.99      | ~ v3_pre_topc(X2,X1)
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X2,X0),X1)
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f47]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_526,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,X1)
% 3.24/0.99      | ~ v3_pre_topc(X2,X1)
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X2,X0),X1)
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | sK1 != X1 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_527,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,sK1)
% 3.24/0.99      | ~ v3_pre_topc(X1,sK1)
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ v2_pre_topc(sK1) ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_526]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_531,plain,
% 3.24/0.99      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
% 3.24/0.99      | ~ v3_pre_topc(X1,sK1)
% 3.24/0.99      | ~ v3_pre_topc(X0,sK1) ),
% 3.24/0.99      inference(global_propositional_subsumption,[status(thm)],[c_527,c_21]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_532,plain,
% 3.24/0.99      ( ~ v3_pre_topc(X0,sK1)
% 3.24/0.99      | ~ v3_pre_topc(X1,sK1)
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X1,X0),sK1)
% 3.24/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.24/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.24/0.99      inference(renaming,[status(thm)],[c_531]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1239,plain,
% 3.24/0.99      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | v3_pre_topc(X1,sK1) != iProver_top
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X1,X0),sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.24/0.99      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_532]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2712,plain,
% 3.24/0.99      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
% 3.24/0.99      | v3_pre_topc(sK4,sK1) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2703,c_1239]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1765,plain,
% 3.24/0.99      ( v3_pre_topc(sK0(sK1,sK2,sK4),sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1249,c_1246]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1774,plain,
% 3.24/0.99      ( v3_pre_topc(sK4,sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(light_normalisation,[status(thm)],[c_1765,c_1501]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_3045,plain,
% 3.24/0.99      ( v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
% 3.24/0.99      | v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_2712,c_26,c_1774]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_3046,plain,
% 3.24/0.99      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.24/0.99      | v3_pre_topc(k2_xboole_0(X0,sK4),sK1) = iProver_top
% 3.24/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(renaming,[status(thm)],[c_3045]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_3057,plain,
% 3.24/0.99      ( v3_pre_topc(k2_xboole_0(sK3,sK4),sK1) = iProver_top
% 3.24/0.99      | v3_pre_topc(sK3,sK1) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2825,c_3046]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4728,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
% 3.24/0.99      | m1_subset_1(k2_xboole_0(sK3,sK4),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_4386,c_26,c_1769,c_3057]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4734,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
% 3.24/0.99      | r1_tarski(k2_xboole_0(sK3,sK4),u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1254,c_4728]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4846,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top
% 3.24/0.99      | r1_tarski(sK4,u1_struct_0(sK1)) != iProver_top
% 3.24/0.99      | r1_tarski(sK3,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1257,c_4734]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_5,plain,
% 3.24/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f43]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1253,plain,
% 3.24/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.24/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2709,plain,
% 3.24/0.99      ( r1_tarski(sK4,u1_struct_0(sK1)) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2703,c_1253]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2831,plain,
% 3.24/0.99      ( r1_tarski(sK3,u1_struct_0(sK1)) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2825,c_1253]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7815,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,sK4)) != iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_4846,c_2709,c_2831]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_0,plain,
% 3.24/0.99      ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
% 3.24/0.99      inference(cnf_transformation,[],[f39]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1258,plain,
% 3.24/0.99      ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_10,plain,
% 3.24/0.99      ( r2_hidden(X0,sK0(X1,X0,X2))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | v2_struct_0(X1)
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f50]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_450,plain,
% 3.24/0.99      ( r2_hidden(X0,sK0(X1,X0,X2))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.24/0.99      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.24/0.99      | ~ v2_pre_topc(X1)
% 3.24/0.99      | ~ l1_pre_topc(X1)
% 3.24/0.99      | sK1 != X1 ),
% 3.24/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_22]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_451,plain,
% 3.24/0.99      ( r2_hidden(X0,sK0(sK1,X0,X1))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 3.24/0.99      | ~ v2_pre_topc(sK1)
% 3.24/0.99      | ~ l1_pre_topc(sK1) ),
% 3.24/0.99      inference(unflattening,[status(thm)],[c_450]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_455,plain,
% 3.24/0.99      ( r2_hidden(X0,sK0(sK1,X0,X1))
% 3.24/0.99      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0)))
% 3.24/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
% 3.24/0.99      inference(global_propositional_subsumption,
% 3.24/0.99                [status(thm)],
% 3.24/0.99                [c_451,c_21,c_20]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1241,plain,
% 3.24/0.99      ( r2_hidden(X0,sK0(sK1,X0,X1)) = iProver_top
% 3.24/0.99      | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK1,X0))) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_455]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1574,plain,
% 3.24/0.99      ( r2_hidden(sK2,sK0(sK1,sK2,sK3)) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1248,c_1241]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1577,plain,
% 3.24/0.99      ( r2_hidden(sK2,sK3) = iProver_top
% 3.24/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 3.24/0.99      inference(light_normalisation,[status(thm)],[c_1574,c_1566]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2087,plain,
% 3.24/0.99      ( r2_hidden(sK2,sK3) = iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1577,c_26]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1252,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,X2) = iProver_top
% 3.24/0.99      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2442,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.24/0.99      | m1_subset_1(X0,X2) = iProver_top
% 3.24/0.99      | r1_tarski(X1,X2) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1254,c_1252]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_5572,plain,
% 3.24/0.99      ( m1_subset_1(sK2,X0) = iProver_top | r1_tarski(sK3,X0) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2087,c_2442]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7087,plain,
% 3.24/0.99      ( m1_subset_1(sK2,k2_xboole_0(sK3,X0)) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1258,c_5572]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_3,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 3.24/0.99      inference(cnf_transformation,[],[f42]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1255,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.24/0.99      | m1_subset_1(X0,X1) != iProver_top
% 3.24/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7490,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,X0)) = iProver_top
% 3.24/0.99      | v1_xboole_0(k2_xboole_0(sK3,X0)) = iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_7087,c_1255]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7,plain,
% 3.24/0.99      ( ~ r2_hidden(X0,X1)
% 3.24/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 3.24/0.99      | ~ v1_xboole_0(X2) ),
% 3.24/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_1251,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.24/0.99      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
% 3.24/0.99      | v1_xboole_0(X2) != iProver_top ),
% 3.24/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_2340,plain,
% 3.24/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.24/0.99      | r1_tarski(X1,X2) != iProver_top
% 3.24/0.99      | v1_xboole_0(X2) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1254,c_1251]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_4656,plain,
% 3.24/0.99      ( r1_tarski(sK3,X0) != iProver_top | v1_xboole_0(X0) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_2087,c_2340]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_6571,plain,
% 3.24/0.99      ( v1_xboole_0(k2_xboole_0(sK3,X0)) != iProver_top ),
% 3.24/0.99      inference(superposition,[status(thm)],[c_1258,c_4656]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7610,plain,
% 3.24/0.99      ( r2_hidden(sK2,k2_xboole_0(sK3,X0)) = iProver_top ),
% 3.24/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7490,c_6571]) ).
% 3.24/0.99  
% 3.24/0.99  cnf(c_7820,plain,
% 3.24/0.99      ( $false ),
% 3.24/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_7815,c_7610]) ).
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.24/0.99  
% 3.24/0.99  ------                               Statistics
% 3.24/0.99  
% 3.24/0.99  ------ General
% 3.24/0.99  
% 3.24/0.99  abstr_ref_over_cycles:                  0
% 3.24/0.99  abstr_ref_under_cycles:                 0
% 3.24/0.99  gc_basic_clause_elim:                   0
% 3.24/0.99  forced_gc_time:                         0
% 3.24/0.99  parsing_time:                           0.01
% 3.24/0.99  unif_index_cands_time:                  0.
% 3.24/0.99  unif_index_add_time:                    0.
% 3.24/0.99  orderings_time:                         0.
% 3.24/0.99  out_proof_time:                         0.01
% 3.24/0.99  total_time:                             0.248
% 3.24/0.99  num_of_symbols:                         48
% 3.24/0.99  num_of_terms:                           6568
% 3.24/0.99  
% 3.24/0.99  ------ Preprocessing
% 3.24/0.99  
% 3.24/0.99  num_of_splits:                          0
% 3.24/0.99  num_of_split_atoms:                     0
% 3.24/0.99  num_of_reused_defs:                     0
% 3.24/0.99  num_eq_ax_congr_red:                    14
% 3.24/0.99  num_of_sem_filtered_clauses:            1
% 3.24/0.99  num_of_subtypes:                        0
% 3.24/0.99  monotx_restored_types:                  0
% 3.24/0.99  sat_num_of_epr_types:                   0
% 3.24/0.99  sat_num_of_non_cyclic_types:            0
% 3.24/0.99  sat_guarded_non_collapsed_types:        0
% 3.24/0.99  num_pure_diseq_elim:                    0
% 3.24/0.99  simp_replaced_by:                       0
% 3.24/0.99  res_preprocessed:                       106
% 3.24/0.99  prep_upred:                             0
% 3.24/0.99  prep_unflattend:                        10
% 3.24/0.99  smt_new_axioms:                         0
% 3.24/0.99  pred_elim_cands:                        5
% 3.24/0.99  pred_elim:                              3
% 3.24/0.99  pred_elim_cl:                           3
% 3.24/0.99  pred_elim_cycles:                       6
% 3.24/0.99  merged_defs:                            8
% 3.24/0.99  merged_defs_ncl:                        0
% 3.24/0.99  bin_hyper_res:                          8
% 3.24/0.99  prep_cycles:                            4
% 3.24/0.99  pred_elim_time:                         0.006
% 3.24/0.99  splitting_time:                         0.
% 3.24/0.99  sem_filter_time:                        0.
% 3.24/0.99  monotx_time:                            0.001
% 3.24/0.99  subtype_inf_time:                       0.
% 3.24/0.99  
% 3.24/0.99  ------ Problem properties
% 3.24/0.99  
% 3.24/0.99  clauses:                                20
% 3.24/0.99  conjectures:                            4
% 3.24/0.99  epr:                                    2
% 3.24/0.99  horn:                                   19
% 3.24/0.99  ground:                                 4
% 3.24/0.99  unary:                                  5
% 3.24/0.99  binary:                                 3
% 3.24/0.99  lits:                                   52
% 3.24/0.99  lits_eq:                                1
% 3.24/0.99  fd_pure:                                0
% 3.24/0.99  fd_pseudo:                              0
% 3.24/0.99  fd_cond:                                0
% 3.24/0.99  fd_pseudo_cond:                         0
% 3.24/0.99  ac_symbols:                             0
% 3.24/0.99  
% 3.24/0.99  ------ Propositional Solver
% 3.24/0.99  
% 3.24/0.99  prop_solver_calls:                      29
% 3.24/0.99  prop_fast_solver_calls:                 1047
% 3.24/0.99  smt_solver_calls:                       0
% 3.24/0.99  smt_fast_solver_calls:                  0
% 3.24/0.99  prop_num_of_clauses:                    3170
% 3.24/0.99  prop_preprocess_simplified:             7370
% 3.24/0.99  prop_fo_subsumed:                       63
% 3.24/0.99  prop_solver_time:                       0.
% 3.24/0.99  smt_solver_time:                        0.
% 3.24/0.99  smt_fast_solver_time:                   0.
% 3.24/0.99  prop_fast_solver_time:                  0.
% 3.24/0.99  prop_unsat_core_time:                   0.
% 3.24/0.99  
% 3.24/0.99  ------ QBF
% 3.24/0.99  
% 3.24/0.99  qbf_q_res:                              0
% 3.24/0.99  qbf_num_tautologies:                    0
% 3.24/0.99  qbf_prep_cycles:                        0
% 3.24/0.99  
% 3.24/0.99  ------ BMC1
% 3.24/0.99  
% 3.24/0.99  bmc1_current_bound:                     -1
% 3.24/0.99  bmc1_last_solved_bound:                 -1
% 3.24/0.99  bmc1_unsat_core_size:                   -1
% 3.24/0.99  bmc1_unsat_core_parents_size:           -1
% 3.24/0.99  bmc1_merge_next_fun:                    0
% 3.24/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.24/0.99  
% 3.24/0.99  ------ Instantiation
% 3.24/0.99  
% 3.24/0.99  inst_num_of_clauses:                    1012
% 3.24/0.99  inst_num_in_passive:                    92
% 3.24/0.99  inst_num_in_active:                     442
% 3.24/0.99  inst_num_in_unprocessed:                478
% 3.24/0.99  inst_num_of_loops:                      480
% 3.24/0.99  inst_num_of_learning_restarts:          0
% 3.24/0.99  inst_num_moves_active_passive:          34
% 3.24/0.99  inst_lit_activity:                      0
% 3.24/0.99  inst_lit_activity_moves:                0
% 3.24/0.99  inst_num_tautologies:                   0
% 3.24/0.99  inst_num_prop_implied:                  0
% 3.24/0.99  inst_num_existing_simplified:           0
% 3.24/0.99  inst_num_eq_res_simplified:             0
% 3.24/0.99  inst_num_child_elim:                    0
% 3.24/0.99  inst_num_of_dismatching_blockings:      167
% 3.24/0.99  inst_num_of_non_proper_insts:           983
% 3.24/0.99  inst_num_of_duplicates:                 0
% 3.24/0.99  inst_inst_num_from_inst_to_res:         0
% 3.24/0.99  inst_dismatching_checking_time:         0.
% 3.24/0.99  
% 3.24/0.99  ------ Resolution
% 3.24/0.99  
% 3.24/0.99  res_num_of_clauses:                     0
% 3.24/0.99  res_num_in_passive:                     0
% 3.24/0.99  res_num_in_active:                      0
% 3.24/0.99  res_num_of_loops:                       110
% 3.24/0.99  res_forward_subset_subsumed:            90
% 3.24/0.99  res_backward_subset_subsumed:           0
% 3.24/0.99  res_forward_subsumed:                   0
% 3.24/0.99  res_backward_subsumed:                  0
% 3.24/0.99  res_forward_subsumption_resolution:     1
% 3.24/0.99  res_backward_subsumption_resolution:    0
% 3.24/0.99  res_clause_to_clause_subsumption:       311
% 3.24/0.99  res_orphan_elimination:                 0
% 3.24/0.99  res_tautology_del:                      129
% 3.24/0.99  res_num_eq_res_simplified:              0
% 3.24/0.99  res_num_sel_changes:                    0
% 3.24/0.99  res_moves_from_active_to_pass:          0
% 3.24/0.99  
% 3.24/0.99  ------ Superposition
% 3.24/0.99  
% 3.24/0.99  sup_time_total:                         0.
% 3.24/0.99  sup_time_generating:                    0.
% 3.24/0.99  sup_time_sim_full:                      0.
% 3.24/0.99  sup_time_sim_immed:                     0.
% 3.24/0.99  
% 3.24/0.99  sup_num_of_clauses:                     122
% 3.24/0.99  sup_num_in_active:                      94
% 3.24/0.99  sup_num_in_passive:                     28
% 3.24/0.99  sup_num_of_loops:                       94
% 3.24/0.99  sup_fw_superposition:                   94
% 3.24/0.99  sup_bw_superposition:                   62
% 3.24/0.99  sup_immediate_simplified:               34
% 3.24/0.99  sup_given_eliminated:                   0
% 3.24/0.99  comparisons_done:                       0
% 3.24/0.99  comparisons_avoided:                    0
% 3.24/0.99  
% 3.24/0.99  ------ Simplifications
% 3.24/0.99  
% 3.24/0.99  
% 3.24/0.99  sim_fw_subset_subsumed:                 20
% 3.24/0.99  sim_bw_subset_subsumed:                 4
% 3.24/0.99  sim_fw_subsumed:                        4
% 3.24/0.99  sim_bw_subsumed:                        0
% 3.24/0.99  sim_fw_subsumption_res:                 7
% 3.24/0.99  sim_bw_subsumption_res:                 0
% 3.24/0.99  sim_tautology_del:                      7
% 3.24/0.99  sim_eq_tautology_del:                   0
% 3.24/0.99  sim_eq_res_simp:                        0
% 3.24/0.99  sim_fw_demodulated:                     0
% 3.24/0.99  sim_bw_demodulated:                     0
% 3.24/0.99  sim_light_normalised:                   10
% 3.24/0.99  sim_joinable_taut:                      0
% 3.24/0.99  sim_joinable_simp:                      0
% 3.24/0.99  sim_ac_normalised:                      0
% 3.24/0.99  sim_smt_subsumption:                    0
% 3.24/0.99  
%------------------------------------------------------------------------------
