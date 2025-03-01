%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:28:50 EST 2020

% Result     : Theorem 3.52s
% Output     : CNFRefutation 3.52s
% Verified   : 
% Statistics : Number of formulae       :  175 (1702 expanded)
%              Number of clauses        :   95 ( 396 expanded)
%              Number of leaves         :   21 ( 581 expanded)
%              Depth                    :   22
%              Number of atoms          :  729 (9756 expanded)
%              Number of equality atoms :  110 ( 327 expanded)
%              Maximal formula depth    :   12 (   6 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f10,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f69,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X2,X0)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v3_pre_topc(k2_xboole_0(X1,X2),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f4,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f91,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(k3_tarski(k2_tarski(X1,X2)),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(definition_unfolding,[],[f70,f60])).

fof(f16,conjecture,(
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

fof(f17,negated_conjecture,(
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
    inference(negated_conjecture,[],[f16])).

fof(f37,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f38,plain,(
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
    inference(flattening,[],[f37])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
          & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
     => ( ~ m1_subset_1(k2_xboole_0(X2,sK4),u1_struct_0(k9_yellow_6(X0,X1)))
        & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
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

fof(f48,plain,(
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

fof(f47,plain,
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

fof(f51,plain,
    ( ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))
    & m1_subset_1(sK2,u1_struct_0(sK1))
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f38,f50,f49,f48,f47])).

fof(f79,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f51])).

fof(f78,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f51])).

fof(f82,plain,(
    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f51])).

fof(f15,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
             => m1_connsp_2(X2,X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_connsp_2(X2,X0,X1)
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_connsp_2(X2,X0,X1)
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f76,plain,(
    ! [X2,X0,X1] :
      ( m1_connsp_2(X2,X0,X1)
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X2] :
          ( m1_connsp_2(X2,X0,X1)
         => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_connsp_2(X2,X0,X1) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_connsp_2(X2,X0,X1) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_connsp_2(X2,X0,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f77,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f51])).

fof(f80,plain,(
    m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f51])).

fof(f81,plain,(
    m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f51])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f21])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f90,plain,(
    ! [X2,X0,X1] :
      ( k3_tarski(k2_tarski(X1,X2)) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f66,f60])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f19])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f14,axiom,(
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

fof(f33,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f45,plain,(
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
    inference(nnf_transformation,[],[f34])).

fof(f46,plain,(
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
    inference(flattening,[],[f45])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ v3_pre_topc(X2,X0)
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f24])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f67,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f83,plain,(
    ~ m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f51])).

fof(f92,plain,(
    ~ m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(definition_unfolding,[],[f83,f60])).

fof(f13,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( m1_connsp_2(X1,X0,X2)
               => r2_hidden(X2,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_hidden(X2,X1)
              | ~ m1_connsp_2(X1,X0,X2)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_hidden(X2,X1)
              | ~ m1_connsp_2(X1,X0,X2)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X1)
      | ~ m1_connsp_2(X1,X0,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f39])).

fof(f41,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f40])).

fof(f42,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            & ~ r2_hidden(sK0(X0,X1,X2),X0) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( r2_hidden(sK0(X0,X1,X2),X1)
          | r2_hidden(sK0(X0,X1,X2),X0)
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
              & ~ r2_hidden(sK0(X0,X1,X2),X0) )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( r2_hidden(sK0(X0,X1,X2),X1)
            | r2_hidden(sK0(X0,X1,X2),X0)
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).

fof(f54,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f43])).

fof(f87,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k3_tarski(k2_tarski(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f54,f60])).

fof(f93,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k3_tarski(k2_tarski(X0,X1)))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f87])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(X2,X0)
      | ~ r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f64,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ v1_xboole_0(X1)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_7,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_16,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_343,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_16])).

cnf(c_344,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_343])).

cnf(c_11163,plain,
    ( ~ r2_hidden(sK2,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_344])).

cnf(c_17,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k3_tarski(k2_tarski(X2,X0)),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_28,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_556,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k3_tarski(k2_tarski(X2,X0)),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_28])).

cnf(c_557,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ v3_pre_topc(X1,sK1)
    | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_556])).

cnf(c_29,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_561,plain,
    ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
    | ~ v3_pre_topc(X1,sK1)
    | ~ v3_pre_topc(X0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_557,c_29])).

cnf(c_562,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ v3_pre_topc(X1,sK1)
    | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(renaming,[status(thm)],[c_561])).

cnf(c_1185,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | v3_pre_topc(X1,sK1) != iProver_top
    | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_562])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1194,plain,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_23,plain,
    ( m1_connsp_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_18,plain,
    ( ~ m1_connsp_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_377,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_23,c_18])).

cnf(c_30,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_414,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_377,c_30])).

cnf(c_415,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_414])).

cnf(c_419,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_415,c_29,c_28])).

cnf(c_1190,plain,
    ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_419])).

cnf(c_1528,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1194,c_1190])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_34,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_1914,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1528,c_34])).

cnf(c_26,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1193,plain,
    ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_1529,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1193,c_1190])).

cnf(c_1950,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1529,c_34])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | k4_subset_1(X1,X2,X0) = k3_tarski(k2_tarski(X2,X0)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1198,plain,
    ( k4_subset_1(X0,X1,X2) = k3_tarski(k2_tarski(X1,X2))
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3188,plain,
    ( k4_subset_1(u1_struct_0(sK1),sK3,X0) = k3_tarski(k2_tarski(sK3,X0))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1950,c_1198])).

cnf(c_4259,plain,
    ( k4_subset_1(u1_struct_0(sK1),sK3,sK4) = k3_tarski(k2_tarski(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_1914,c_3188])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | m1_subset_1(k4_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1199,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_4584,plain,
    ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4259,c_1199])).

cnf(c_8834,plain,
    ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4584,c_34,c_1528,c_1529])).

cnf(c_20,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_504,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_30])).

cnf(c_505,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_504])).

cnf(c_509,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_505,c_29,c_28])).

cnf(c_15,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_525,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_509,c_15])).

cnf(c_1186,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X1,X0) != iProver_top
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_14,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1197,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2187,plain,
    ( v3_pre_topc(X0,sK1) != iProver_top
    | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X1,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1186,c_1197])).

cnf(c_24,negated_conjecture,
    ( ~ m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1195,plain,
    ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2334,plain,
    ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top
    | m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2187,c_1195])).

cnf(c_8846,plain,
    ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top
    | r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_8834,c_2334])).

cnf(c_19,plain,
    ( ~ m1_connsp_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X2,X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_174,plain,
    ( ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_connsp_2(X0,X1,X2)
    | r2_hidden(X2,X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_19,c_18])).

cnf(c_175,plain,
    ( ~ m1_connsp_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | r2_hidden(X2,X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_174])).

cnf(c_354,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | r2_hidden(X0,X2)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(resolution,[status(thm)],[c_23,c_175])).

cnf(c_435,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | r2_hidden(X0,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_354,c_30])).

cnf(c_436,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | r2_hidden(X1,X0)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_435])).

cnf(c_440,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | r2_hidden(X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_436,c_29,c_28])).

cnf(c_1189,plain,
    ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
    | r2_hidden(X1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_440])).

cnf(c_1462,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | r2_hidden(sK2,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1194,c_1189])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k3_tarski(k2_tarski(X2,X1))) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1705,plain,
    ( r2_hidden(sK2,k3_tarski(k2_tarski(X0,sK4)))
    | ~ r2_hidden(sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_8787,plain,
    ( r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4)))
    | ~ r2_hidden(sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_1705])).

cnf(c_8790,plain,
    ( r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) = iProver_top
    | r2_hidden(sK2,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8787])).

cnf(c_8971,plain,
    ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8846,c_34,c_1462,c_1528,c_1529,c_2334,c_4584,c_8790])).

cnf(c_8976,plain,
    ( v3_pre_topc(sK4,sK1) != iProver_top
    | v3_pre_topc(sK3,sK1) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1185,c_8971])).

cnf(c_2056,plain,
    ( ~ v3_pre_topc(X0,sK1)
    | v3_pre_topc(k3_tarski(k2_tarski(X0,sK4)),sK1)
    | ~ v3_pre_topc(sK4,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_562])).

cnf(c_2553,plain,
    ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1)
    | ~ v3_pre_topc(sK4,sK1)
    | ~ v3_pre_topc(sK3,sK1)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_2056])).

cnf(c_2554,plain,
    ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) = iProver_top
    | v3_pre_topc(sK4,sK1) != iProver_top
    | v3_pre_topc(sK3,sK1) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2553])).

cnf(c_8979,plain,
    ( v3_pre_topc(sK4,sK1) != iProver_top
    | v3_pre_topc(sK3,sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8976,c_34,c_1462,c_1528,c_1529,c_2334,c_2554,c_4584,c_8790])).

cnf(c_8981,plain,
    ( ~ v3_pre_topc(sK4,sK1)
    | ~ v3_pre_topc(sK3,sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_8979])).

cnf(c_1401,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,sK2)))
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | r2_hidden(sK2,X0) ),
    inference(instantiation,[status(thm)],[c_440])).

cnf(c_6320,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ m1_subset_1(k1_xboole_0,u1_struct_0(k9_yellow_6(sK1,sK2)))
    | r2_hidden(sK2,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_1401])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1200,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2446,plain,
    ( r2_hidden(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1193,c_1200])).

cnf(c_21,plain,
    ( v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_480,plain,
    ( v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_30])).

cnf(c_481,plain,
    ( v3_pre_topc(X0,sK1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_480])).

cnf(c_485,plain,
    ( v3_pre_topc(X0,sK1)
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_481,c_29,c_28])).

cnf(c_1187,plain,
    ( v3_pre_topc(X0,sK1) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_485])).

cnf(c_3033,plain,
    ( v3_pre_topc(sK3,sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2446,c_1187])).

cnf(c_3042,plain,
    ( v3_pre_topc(sK3,sK1)
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3033])).

cnf(c_2445,plain,
    ( r2_hidden(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1194,c_1200])).

cnf(c_3018,plain,
    ( v3_pre_topc(sK4,sK1) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2445,c_1187])).

cnf(c_3027,plain,
    ( v3_pre_topc(sK4,sK1)
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))
    | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3018])).

cnf(c_8,plain,
    ( m1_subset_1(X0,X1)
    | ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1453,plain,
    ( m1_subset_1(k1_xboole_0,X0)
    | ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1762,plain,
    ( m1_subset_1(k1_xboole_0,u1_struct_0(k9_yellow_6(sK1,sK2)))
    | ~ v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2)))
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_1453])).

cnf(c_1539,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1529])).

cnf(c_1538,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1528])).

cnf(c_6,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f58])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_11163,c_8981,c_6320,c_3042,c_3027,c_1762,c_1539,c_1538,c_6,c_27])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n009.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:46:11 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.52/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.52/1.00  
% 3.52/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.52/1.00  
% 3.52/1.00  ------  iProver source info
% 3.52/1.00  
% 3.52/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.52/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.52/1.00  git: non_committed_changes: false
% 3.52/1.00  git: last_make_outside_of_git: false
% 3.52/1.00  
% 3.52/1.00  ------ 
% 3.52/1.00  
% 3.52/1.00  ------ Input Options
% 3.52/1.00  
% 3.52/1.00  --out_options                           all
% 3.52/1.00  --tptp_safe_out                         true
% 3.52/1.00  --problem_path                          ""
% 3.52/1.00  --include_path                          ""
% 3.52/1.00  --clausifier                            res/vclausify_rel
% 3.52/1.00  --clausifier_options                    --mode clausify
% 3.52/1.00  --stdin                                 false
% 3.52/1.00  --stats_out                             all
% 3.52/1.00  
% 3.52/1.00  ------ General Options
% 3.52/1.00  
% 3.52/1.00  --fof                                   false
% 3.52/1.00  --time_out_real                         305.
% 3.52/1.00  --time_out_virtual                      -1.
% 3.52/1.00  --symbol_type_check                     false
% 3.52/1.00  --clausify_out                          false
% 3.52/1.00  --sig_cnt_out                           false
% 3.52/1.00  --trig_cnt_out                          false
% 3.52/1.00  --trig_cnt_out_tolerance                1.
% 3.52/1.00  --trig_cnt_out_sk_spl                   false
% 3.52/1.00  --abstr_cl_out                          false
% 3.52/1.00  
% 3.52/1.00  ------ Global Options
% 3.52/1.00  
% 3.52/1.00  --schedule                              default
% 3.52/1.00  --add_important_lit                     false
% 3.52/1.00  --prop_solver_per_cl                    1000
% 3.52/1.00  --min_unsat_core                        false
% 3.52/1.00  --soft_assumptions                      false
% 3.52/1.00  --soft_lemma_size                       3
% 3.52/1.00  --prop_impl_unit_size                   0
% 3.52/1.00  --prop_impl_unit                        []
% 3.52/1.00  --share_sel_clauses                     true
% 3.52/1.00  --reset_solvers                         false
% 3.52/1.00  --bc_imp_inh                            [conj_cone]
% 3.52/1.00  --conj_cone_tolerance                   3.
% 3.52/1.00  --extra_neg_conj                        none
% 3.52/1.00  --large_theory_mode                     true
% 3.52/1.00  --prolific_symb_bound                   200
% 3.52/1.00  --lt_threshold                          2000
% 3.52/1.00  --clause_weak_htbl                      true
% 3.52/1.00  --gc_record_bc_elim                     false
% 3.52/1.00  
% 3.52/1.00  ------ Preprocessing Options
% 3.52/1.00  
% 3.52/1.00  --preprocessing_flag                    true
% 3.52/1.00  --time_out_prep_mult                    0.1
% 3.52/1.00  --splitting_mode                        input
% 3.52/1.00  --splitting_grd                         true
% 3.52/1.00  --splitting_cvd                         false
% 3.52/1.00  --splitting_cvd_svl                     false
% 3.52/1.00  --splitting_nvd                         32
% 3.52/1.00  --sub_typing                            true
% 3.52/1.00  --prep_gs_sim                           true
% 3.52/1.00  --prep_unflatten                        true
% 3.52/1.00  --prep_res_sim                          true
% 3.52/1.00  --prep_upred                            true
% 3.52/1.00  --prep_sem_filter                       exhaustive
% 3.52/1.00  --prep_sem_filter_out                   false
% 3.52/1.00  --pred_elim                             true
% 3.52/1.00  --res_sim_input                         true
% 3.52/1.00  --eq_ax_congr_red                       true
% 3.52/1.00  --pure_diseq_elim                       true
% 3.52/1.00  --brand_transform                       false
% 3.52/1.00  --non_eq_to_eq                          false
% 3.52/1.00  --prep_def_merge                        true
% 3.52/1.00  --prep_def_merge_prop_impl              false
% 3.52/1.00  --prep_def_merge_mbd                    true
% 3.52/1.00  --prep_def_merge_tr_red                 false
% 3.52/1.00  --prep_def_merge_tr_cl                  false
% 3.52/1.00  --smt_preprocessing                     true
% 3.52/1.00  --smt_ac_axioms                         fast
% 3.52/1.00  --preprocessed_out                      false
% 3.52/1.00  --preprocessed_stats                    false
% 3.52/1.00  
% 3.52/1.00  ------ Abstraction refinement Options
% 3.52/1.00  
% 3.52/1.00  --abstr_ref                             []
% 3.52/1.00  --abstr_ref_prep                        false
% 3.52/1.00  --abstr_ref_until_sat                   false
% 3.52/1.00  --abstr_ref_sig_restrict                funpre
% 3.52/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.52/1.00  --abstr_ref_under                       []
% 3.52/1.00  
% 3.52/1.00  ------ SAT Options
% 3.52/1.00  
% 3.52/1.00  --sat_mode                              false
% 3.52/1.00  --sat_fm_restart_options                ""
% 3.52/1.00  --sat_gr_def                            false
% 3.52/1.00  --sat_epr_types                         true
% 3.52/1.00  --sat_non_cyclic_types                  false
% 3.52/1.00  --sat_finite_models                     false
% 3.52/1.00  --sat_fm_lemmas                         false
% 3.52/1.00  --sat_fm_prep                           false
% 3.52/1.00  --sat_fm_uc_incr                        true
% 3.52/1.00  --sat_out_model                         small
% 3.52/1.00  --sat_out_clauses                       false
% 3.52/1.00  
% 3.52/1.00  ------ QBF Options
% 3.52/1.00  
% 3.52/1.00  --qbf_mode                              false
% 3.52/1.00  --qbf_elim_univ                         false
% 3.52/1.00  --qbf_dom_inst                          none
% 3.52/1.00  --qbf_dom_pre_inst                      false
% 3.52/1.00  --qbf_sk_in                             false
% 3.52/1.00  --qbf_pred_elim                         true
% 3.52/1.00  --qbf_split                             512
% 3.52/1.00  
% 3.52/1.00  ------ BMC1 Options
% 3.52/1.00  
% 3.52/1.00  --bmc1_incremental                      false
% 3.52/1.00  --bmc1_axioms                           reachable_all
% 3.52/1.00  --bmc1_min_bound                        0
% 3.52/1.00  --bmc1_max_bound                        -1
% 3.52/1.00  --bmc1_max_bound_default                -1
% 3.52/1.00  --bmc1_symbol_reachability              true
% 3.52/1.00  --bmc1_property_lemmas                  false
% 3.52/1.00  --bmc1_k_induction                      false
% 3.52/1.00  --bmc1_non_equiv_states                 false
% 3.52/1.00  --bmc1_deadlock                         false
% 3.52/1.00  --bmc1_ucm                              false
% 3.52/1.00  --bmc1_add_unsat_core                   none
% 3.52/1.00  --bmc1_unsat_core_children              false
% 3.52/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.52/1.00  --bmc1_out_stat                         full
% 3.52/1.00  --bmc1_ground_init                      false
% 3.52/1.00  --bmc1_pre_inst_next_state              false
% 3.52/1.00  --bmc1_pre_inst_state                   false
% 3.52/1.00  --bmc1_pre_inst_reach_state             false
% 3.52/1.00  --bmc1_out_unsat_core                   false
% 3.52/1.00  --bmc1_aig_witness_out                  false
% 3.52/1.00  --bmc1_verbose                          false
% 3.52/1.00  --bmc1_dump_clauses_tptp                false
% 3.52/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.52/1.00  --bmc1_dump_file                        -
% 3.52/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.52/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.52/1.00  --bmc1_ucm_extend_mode                  1
% 3.52/1.00  --bmc1_ucm_init_mode                    2
% 3.52/1.00  --bmc1_ucm_cone_mode                    none
% 3.52/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.52/1.00  --bmc1_ucm_relax_model                  4
% 3.52/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.52/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.52/1.00  --bmc1_ucm_layered_model                none
% 3.52/1.00  --bmc1_ucm_max_lemma_size               10
% 3.52/1.00  
% 3.52/1.00  ------ AIG Options
% 3.52/1.00  
% 3.52/1.00  --aig_mode                              false
% 3.52/1.00  
% 3.52/1.00  ------ Instantiation Options
% 3.52/1.00  
% 3.52/1.00  --instantiation_flag                    true
% 3.52/1.00  --inst_sos_flag                         false
% 3.52/1.00  --inst_sos_phase                        true
% 3.52/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.52/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.52/1.00  --inst_lit_sel_side                     num_symb
% 3.52/1.00  --inst_solver_per_active                1400
% 3.52/1.00  --inst_solver_calls_frac                1.
% 3.52/1.00  --inst_passive_queue_type               priority_queues
% 3.52/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.52/1.00  --inst_passive_queues_freq              [25;2]
% 3.52/1.00  --inst_dismatching                      true
% 3.52/1.00  --inst_eager_unprocessed_to_passive     true
% 3.52/1.00  --inst_prop_sim_given                   true
% 3.52/1.00  --inst_prop_sim_new                     false
% 3.52/1.00  --inst_subs_new                         false
% 3.52/1.00  --inst_eq_res_simp                      false
% 3.52/1.00  --inst_subs_given                       false
% 3.52/1.00  --inst_orphan_elimination               true
% 3.52/1.00  --inst_learning_loop_flag               true
% 3.52/1.00  --inst_learning_start                   3000
% 3.52/1.00  --inst_learning_factor                  2
% 3.52/1.00  --inst_start_prop_sim_after_learn       3
% 3.52/1.00  --inst_sel_renew                        solver
% 3.52/1.00  --inst_lit_activity_flag                true
% 3.52/1.00  --inst_restr_to_given                   false
% 3.52/1.00  --inst_activity_threshold               500
% 3.52/1.00  --inst_out_proof                        true
% 3.52/1.00  
% 3.52/1.00  ------ Resolution Options
% 3.52/1.00  
% 3.52/1.00  --resolution_flag                       true
% 3.52/1.00  --res_lit_sel                           adaptive
% 3.52/1.00  --res_lit_sel_side                      none
% 3.52/1.00  --res_ordering                          kbo
% 3.52/1.00  --res_to_prop_solver                    active
% 3.52/1.00  --res_prop_simpl_new                    false
% 3.52/1.00  --res_prop_simpl_given                  true
% 3.52/1.00  --res_passive_queue_type                priority_queues
% 3.52/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.52/1.00  --res_passive_queues_freq               [15;5]
% 3.52/1.00  --res_forward_subs                      full
% 3.52/1.00  --res_backward_subs                     full
% 3.52/1.00  --res_forward_subs_resolution           true
% 3.52/1.00  --res_backward_subs_resolution          true
% 3.52/1.00  --res_orphan_elimination                true
% 3.52/1.00  --res_time_limit                        2.
% 3.52/1.00  --res_out_proof                         true
% 3.52/1.00  
% 3.52/1.00  ------ Superposition Options
% 3.52/1.00  
% 3.52/1.00  --superposition_flag                    true
% 3.52/1.00  --sup_passive_queue_type                priority_queues
% 3.52/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.52/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.52/1.00  --demod_completeness_check              fast
% 3.52/1.00  --demod_use_ground                      true
% 3.52/1.00  --sup_to_prop_solver                    passive
% 3.52/1.00  --sup_prop_simpl_new                    true
% 3.52/1.00  --sup_prop_simpl_given                  true
% 3.52/1.00  --sup_fun_splitting                     false
% 3.52/1.00  --sup_smt_interval                      50000
% 3.52/1.00  
% 3.52/1.00  ------ Superposition Simplification Setup
% 3.52/1.00  
% 3.52/1.00  --sup_indices_passive                   []
% 3.52/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.52/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_full_bw                           [BwDemod]
% 3.52/1.00  --sup_immed_triv                        [TrivRules]
% 3.52/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.52/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_immed_bw_main                     []
% 3.52/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.52/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.52/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.52/1.00  
% 3.52/1.00  ------ Combination Options
% 3.52/1.00  
% 3.52/1.00  --comb_res_mult                         3
% 3.52/1.00  --comb_sup_mult                         2
% 3.52/1.00  --comb_inst_mult                        10
% 3.52/1.00  
% 3.52/1.00  ------ Debug Options
% 3.52/1.00  
% 3.52/1.00  --dbg_backtrace                         false
% 3.52/1.00  --dbg_dump_prop_clauses                 false
% 3.52/1.00  --dbg_dump_prop_clauses_file            -
% 3.52/1.00  --dbg_out_stat                          false
% 3.52/1.00  ------ Parsing...
% 3.52/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.52/1.00  
% 3.52/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 3.52/1.00  
% 3.52/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.52/1.00  
% 3.52/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.52/1.00  ------ Proving...
% 3.52/1.00  ------ Problem Properties 
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  clauses                                 25
% 3.52/1.00  conjectures                             4
% 3.52/1.00  EPR                                     6
% 3.52/1.00  Horn                                    22
% 3.52/1.00  unary                                   6
% 3.52/1.00  binary                                  3
% 3.52/1.00  lits                                    66
% 3.52/1.00  lits eq                                 4
% 3.52/1.00  fd_pure                                 0
% 3.52/1.00  fd_pseudo                               0
% 3.52/1.00  fd_cond                                 0
% 3.52/1.00  fd_pseudo_cond                          3
% 3.52/1.00  AC symbols                              0
% 3.52/1.00  
% 3.52/1.00  ------ Schedule dynamic 5 is on 
% 3.52/1.00  
% 3.52/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  ------ 
% 3.52/1.00  Current options:
% 3.52/1.00  ------ 
% 3.52/1.00  
% 3.52/1.00  ------ Input Options
% 3.52/1.00  
% 3.52/1.00  --out_options                           all
% 3.52/1.00  --tptp_safe_out                         true
% 3.52/1.00  --problem_path                          ""
% 3.52/1.00  --include_path                          ""
% 3.52/1.00  --clausifier                            res/vclausify_rel
% 3.52/1.00  --clausifier_options                    --mode clausify
% 3.52/1.00  --stdin                                 false
% 3.52/1.00  --stats_out                             all
% 3.52/1.00  
% 3.52/1.00  ------ General Options
% 3.52/1.00  
% 3.52/1.00  --fof                                   false
% 3.52/1.00  --time_out_real                         305.
% 3.52/1.00  --time_out_virtual                      -1.
% 3.52/1.00  --symbol_type_check                     false
% 3.52/1.00  --clausify_out                          false
% 3.52/1.00  --sig_cnt_out                           false
% 3.52/1.00  --trig_cnt_out                          false
% 3.52/1.00  --trig_cnt_out_tolerance                1.
% 3.52/1.00  --trig_cnt_out_sk_spl                   false
% 3.52/1.00  --abstr_cl_out                          false
% 3.52/1.00  
% 3.52/1.00  ------ Global Options
% 3.52/1.00  
% 3.52/1.00  --schedule                              default
% 3.52/1.00  --add_important_lit                     false
% 3.52/1.00  --prop_solver_per_cl                    1000
% 3.52/1.00  --min_unsat_core                        false
% 3.52/1.00  --soft_assumptions                      false
% 3.52/1.00  --soft_lemma_size                       3
% 3.52/1.00  --prop_impl_unit_size                   0
% 3.52/1.00  --prop_impl_unit                        []
% 3.52/1.00  --share_sel_clauses                     true
% 3.52/1.00  --reset_solvers                         false
% 3.52/1.00  --bc_imp_inh                            [conj_cone]
% 3.52/1.00  --conj_cone_tolerance                   3.
% 3.52/1.00  --extra_neg_conj                        none
% 3.52/1.00  --large_theory_mode                     true
% 3.52/1.00  --prolific_symb_bound                   200
% 3.52/1.00  --lt_threshold                          2000
% 3.52/1.00  --clause_weak_htbl                      true
% 3.52/1.00  --gc_record_bc_elim                     false
% 3.52/1.00  
% 3.52/1.00  ------ Preprocessing Options
% 3.52/1.00  
% 3.52/1.00  --preprocessing_flag                    true
% 3.52/1.00  --time_out_prep_mult                    0.1
% 3.52/1.00  --splitting_mode                        input
% 3.52/1.00  --splitting_grd                         true
% 3.52/1.00  --splitting_cvd                         false
% 3.52/1.00  --splitting_cvd_svl                     false
% 3.52/1.00  --splitting_nvd                         32
% 3.52/1.00  --sub_typing                            true
% 3.52/1.00  --prep_gs_sim                           true
% 3.52/1.00  --prep_unflatten                        true
% 3.52/1.00  --prep_res_sim                          true
% 3.52/1.00  --prep_upred                            true
% 3.52/1.00  --prep_sem_filter                       exhaustive
% 3.52/1.00  --prep_sem_filter_out                   false
% 3.52/1.00  --pred_elim                             true
% 3.52/1.00  --res_sim_input                         true
% 3.52/1.00  --eq_ax_congr_red                       true
% 3.52/1.00  --pure_diseq_elim                       true
% 3.52/1.00  --brand_transform                       false
% 3.52/1.00  --non_eq_to_eq                          false
% 3.52/1.00  --prep_def_merge                        true
% 3.52/1.00  --prep_def_merge_prop_impl              false
% 3.52/1.00  --prep_def_merge_mbd                    true
% 3.52/1.00  --prep_def_merge_tr_red                 false
% 3.52/1.00  --prep_def_merge_tr_cl                  false
% 3.52/1.00  --smt_preprocessing                     true
% 3.52/1.00  --smt_ac_axioms                         fast
% 3.52/1.00  --preprocessed_out                      false
% 3.52/1.00  --preprocessed_stats                    false
% 3.52/1.00  
% 3.52/1.00  ------ Abstraction refinement Options
% 3.52/1.00  
% 3.52/1.00  --abstr_ref                             []
% 3.52/1.00  --abstr_ref_prep                        false
% 3.52/1.00  --abstr_ref_until_sat                   false
% 3.52/1.00  --abstr_ref_sig_restrict                funpre
% 3.52/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.52/1.00  --abstr_ref_under                       []
% 3.52/1.00  
% 3.52/1.00  ------ SAT Options
% 3.52/1.00  
% 3.52/1.00  --sat_mode                              false
% 3.52/1.00  --sat_fm_restart_options                ""
% 3.52/1.00  --sat_gr_def                            false
% 3.52/1.00  --sat_epr_types                         true
% 3.52/1.00  --sat_non_cyclic_types                  false
% 3.52/1.00  --sat_finite_models                     false
% 3.52/1.00  --sat_fm_lemmas                         false
% 3.52/1.00  --sat_fm_prep                           false
% 3.52/1.00  --sat_fm_uc_incr                        true
% 3.52/1.00  --sat_out_model                         small
% 3.52/1.00  --sat_out_clauses                       false
% 3.52/1.00  
% 3.52/1.00  ------ QBF Options
% 3.52/1.00  
% 3.52/1.00  --qbf_mode                              false
% 3.52/1.00  --qbf_elim_univ                         false
% 3.52/1.00  --qbf_dom_inst                          none
% 3.52/1.00  --qbf_dom_pre_inst                      false
% 3.52/1.00  --qbf_sk_in                             false
% 3.52/1.00  --qbf_pred_elim                         true
% 3.52/1.00  --qbf_split                             512
% 3.52/1.00  
% 3.52/1.00  ------ BMC1 Options
% 3.52/1.00  
% 3.52/1.00  --bmc1_incremental                      false
% 3.52/1.00  --bmc1_axioms                           reachable_all
% 3.52/1.00  --bmc1_min_bound                        0
% 3.52/1.00  --bmc1_max_bound                        -1
% 3.52/1.00  --bmc1_max_bound_default                -1
% 3.52/1.00  --bmc1_symbol_reachability              true
% 3.52/1.00  --bmc1_property_lemmas                  false
% 3.52/1.00  --bmc1_k_induction                      false
% 3.52/1.00  --bmc1_non_equiv_states                 false
% 3.52/1.00  --bmc1_deadlock                         false
% 3.52/1.00  --bmc1_ucm                              false
% 3.52/1.00  --bmc1_add_unsat_core                   none
% 3.52/1.00  --bmc1_unsat_core_children              false
% 3.52/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.52/1.00  --bmc1_out_stat                         full
% 3.52/1.00  --bmc1_ground_init                      false
% 3.52/1.00  --bmc1_pre_inst_next_state              false
% 3.52/1.00  --bmc1_pre_inst_state                   false
% 3.52/1.00  --bmc1_pre_inst_reach_state             false
% 3.52/1.00  --bmc1_out_unsat_core                   false
% 3.52/1.00  --bmc1_aig_witness_out                  false
% 3.52/1.00  --bmc1_verbose                          false
% 3.52/1.00  --bmc1_dump_clauses_tptp                false
% 3.52/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.52/1.00  --bmc1_dump_file                        -
% 3.52/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.52/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.52/1.00  --bmc1_ucm_extend_mode                  1
% 3.52/1.00  --bmc1_ucm_init_mode                    2
% 3.52/1.00  --bmc1_ucm_cone_mode                    none
% 3.52/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.52/1.00  --bmc1_ucm_relax_model                  4
% 3.52/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.52/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.52/1.00  --bmc1_ucm_layered_model                none
% 3.52/1.00  --bmc1_ucm_max_lemma_size               10
% 3.52/1.00  
% 3.52/1.00  ------ AIG Options
% 3.52/1.00  
% 3.52/1.00  --aig_mode                              false
% 3.52/1.00  
% 3.52/1.00  ------ Instantiation Options
% 3.52/1.00  
% 3.52/1.00  --instantiation_flag                    true
% 3.52/1.00  --inst_sos_flag                         false
% 3.52/1.00  --inst_sos_phase                        true
% 3.52/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.52/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.52/1.00  --inst_lit_sel_side                     none
% 3.52/1.00  --inst_solver_per_active                1400
% 3.52/1.00  --inst_solver_calls_frac                1.
% 3.52/1.00  --inst_passive_queue_type               priority_queues
% 3.52/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.52/1.00  --inst_passive_queues_freq              [25;2]
% 3.52/1.00  --inst_dismatching                      true
% 3.52/1.00  --inst_eager_unprocessed_to_passive     true
% 3.52/1.00  --inst_prop_sim_given                   true
% 3.52/1.00  --inst_prop_sim_new                     false
% 3.52/1.00  --inst_subs_new                         false
% 3.52/1.00  --inst_eq_res_simp                      false
% 3.52/1.00  --inst_subs_given                       false
% 3.52/1.00  --inst_orphan_elimination               true
% 3.52/1.00  --inst_learning_loop_flag               true
% 3.52/1.00  --inst_learning_start                   3000
% 3.52/1.00  --inst_learning_factor                  2
% 3.52/1.00  --inst_start_prop_sim_after_learn       3
% 3.52/1.00  --inst_sel_renew                        solver
% 3.52/1.00  --inst_lit_activity_flag                true
% 3.52/1.00  --inst_restr_to_given                   false
% 3.52/1.00  --inst_activity_threshold               500
% 3.52/1.00  --inst_out_proof                        true
% 3.52/1.00  
% 3.52/1.00  ------ Resolution Options
% 3.52/1.00  
% 3.52/1.00  --resolution_flag                       false
% 3.52/1.00  --res_lit_sel                           adaptive
% 3.52/1.00  --res_lit_sel_side                      none
% 3.52/1.00  --res_ordering                          kbo
% 3.52/1.00  --res_to_prop_solver                    active
% 3.52/1.00  --res_prop_simpl_new                    false
% 3.52/1.00  --res_prop_simpl_given                  true
% 3.52/1.00  --res_passive_queue_type                priority_queues
% 3.52/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.52/1.00  --res_passive_queues_freq               [15;5]
% 3.52/1.00  --res_forward_subs                      full
% 3.52/1.00  --res_backward_subs                     full
% 3.52/1.00  --res_forward_subs_resolution           true
% 3.52/1.00  --res_backward_subs_resolution          true
% 3.52/1.00  --res_orphan_elimination                true
% 3.52/1.00  --res_time_limit                        2.
% 3.52/1.00  --res_out_proof                         true
% 3.52/1.00  
% 3.52/1.00  ------ Superposition Options
% 3.52/1.00  
% 3.52/1.00  --superposition_flag                    true
% 3.52/1.00  --sup_passive_queue_type                priority_queues
% 3.52/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.52/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.52/1.00  --demod_completeness_check              fast
% 3.52/1.00  --demod_use_ground                      true
% 3.52/1.00  --sup_to_prop_solver                    passive
% 3.52/1.00  --sup_prop_simpl_new                    true
% 3.52/1.00  --sup_prop_simpl_given                  true
% 3.52/1.00  --sup_fun_splitting                     false
% 3.52/1.00  --sup_smt_interval                      50000
% 3.52/1.00  
% 3.52/1.00  ------ Superposition Simplification Setup
% 3.52/1.00  
% 3.52/1.00  --sup_indices_passive                   []
% 3.52/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.52/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.52/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_full_bw                           [BwDemod]
% 3.52/1.00  --sup_immed_triv                        [TrivRules]
% 3.52/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.52/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_immed_bw_main                     []
% 3.52/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.52/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.52/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.52/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.52/1.00  
% 3.52/1.00  ------ Combination Options
% 3.52/1.00  
% 3.52/1.00  --comb_res_mult                         3
% 3.52/1.00  --comb_sup_mult                         2
% 3.52/1.00  --comb_inst_mult                        10
% 3.52/1.00  
% 3.52/1.00  ------ Debug Options
% 3.52/1.00  
% 3.52/1.00  --dbg_backtrace                         false
% 3.52/1.00  --dbg_dump_prop_clauses                 false
% 3.52/1.00  --dbg_dump_prop_clauses_file            -
% 3.52/1.00  --dbg_out_stat                          false
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  ------ Proving...
% 3.52/1.00  
% 3.52/1.00  
% 3.52/1.00  % SZS status Theorem for theBenchmark.p
% 3.52/1.00  
% 3.52/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.52/1.00  
% 3.52/1.00  fof(f3,axiom,(
% 3.52/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f59,plain,(
% 3.52/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f3])).
% 3.52/1.00  
% 3.52/1.00  fof(f10,axiom,(
% 3.52/1.00    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f26,plain,(
% 3.52/1.00    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.52/1.00    inference(ennf_transformation,[],[f10])).
% 3.52/1.00  
% 3.52/1.00  fof(f69,plain,(
% 3.52/1.00    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f26])).
% 3.52/1.00  
% 3.52/1.00  fof(f11,axiom,(
% 3.52/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X2,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v3_pre_topc(k2_xboole_0(X1,X2),X0))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f27,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f11])).
% 3.52/1.00  
% 3.52/1.00  fof(f28,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.52/1.00    inference(flattening,[],[f27])).
% 3.52/1.00  
% 3.52/1.00  fof(f70,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f28])).
% 3.52/1.00  
% 3.52/1.00  fof(f4,axiom,(
% 3.52/1.00    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f60,plain,(
% 3.52/1.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.52/1.00    inference(cnf_transformation,[],[f4])).
% 3.52/1.00  
% 3.52/1.00  fof(f91,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (v3_pre_topc(k3_tarski(k2_tarski(X1,X2)),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.52/1.00    inference(definition_unfolding,[],[f70,f60])).
% 3.52/1.00  
% 3.52/1.00  fof(f16,conjecture,(
% 3.52/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f17,negated_conjecture,(
% 3.52/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.52/1.00    inference(negated_conjecture,[],[f16])).
% 3.52/1.00  
% 3.52/1.00  fof(f37,plain,(
% 3.52/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f17])).
% 3.52/1.00  
% 3.52/1.00  fof(f38,plain,(
% 3.52/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f37])).
% 3.52/1.00  
% 3.52/1.00  fof(f50,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) => (~m1_subset_1(k2_xboole_0(X2,sK4),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.52/1.00    introduced(choice_axiom,[])).
% 3.52/1.00  
% 3.52/1.00  fof(f49,plain,(
% 3.52/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) => (? [X3] : (~m1_subset_1(k2_xboole_0(sK3,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.52/1.00    introduced(choice_axiom,[])).
% 3.52/1.00  
% 3.52/1.00  fof(f48,plain,(
% 3.52/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,sK2))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,sK2)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,sK2)))) & m1_subset_1(sK2,u1_struct_0(X0)))) )),
% 3.52/1.00    introduced(choice_axiom,[])).
% 3.52/1.00  
% 3.52/1.00  fof(f47,plain,(
% 3.52/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(sK1,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(sK1,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(sK1,X1)))) & m1_subset_1(X1,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 3.52/1.00    introduced(choice_axiom,[])).
% 3.52/1.00  
% 3.52/1.00  fof(f51,plain,(
% 3.52/1.00    (((~m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))) & m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))) & m1_subset_1(sK2,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 3.52/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f38,f50,f49,f48,f47])).
% 3.52/1.00  
% 3.52/1.00  fof(f79,plain,(
% 3.52/1.00    l1_pre_topc(sK1)),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f78,plain,(
% 3.52/1.00    v2_pre_topc(sK1)),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f82,plain,(
% 3.52/1.00    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f15,axiom,(
% 3.52/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => m1_connsp_2(X2,X0,X1))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f35,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_connsp_2(X2,X0,X1) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f15])).
% 3.52/1.00  
% 3.52/1.00  fof(f36,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_connsp_2(X2,X0,X1) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f35])).
% 3.52/1.00  
% 3.52/1.00  fof(f76,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (m1_connsp_2(X2,X0,X1) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f36])).
% 3.52/1.00  
% 3.52/1.00  fof(f12,axiom,(
% 3.52/1.00    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X2] : (m1_connsp_2(X2,X0,X1) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f29,plain,(
% 3.52/1.00    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_connsp_2(X2,X0,X1)) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f12])).
% 3.52/1.00  
% 3.52/1.00  fof(f30,plain,(
% 3.52/1.00    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_connsp_2(X2,X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f29])).
% 3.52/1.00  
% 3.52/1.00  fof(f71,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_connsp_2(X2,X0,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f30])).
% 3.52/1.00  
% 3.52/1.00  fof(f77,plain,(
% 3.52/1.00    ~v2_struct_0(sK1)),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f80,plain,(
% 3.52/1.00    m1_subset_1(sK2,u1_struct_0(sK1))),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f81,plain,(
% 3.52/1.00    m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f7,axiom,(
% 3.52/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f21,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 3.52/1.00    inference(ennf_transformation,[],[f7])).
% 3.52/1.00  
% 3.52/1.00  fof(f22,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.52/1.00    inference(flattening,[],[f21])).
% 3.52/1.00  
% 3.52/1.00  fof(f66,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.52/1.00    inference(cnf_transformation,[],[f22])).
% 3.52/1.00  
% 3.52/1.00  fof(f90,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (k3_tarski(k2_tarski(X1,X2)) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.52/1.00    inference(definition_unfolding,[],[f66,f60])).
% 3.52/1.00  
% 3.52/1.00  fof(f6,axiom,(
% 3.52/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f19,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 3.52/1.00    inference(ennf_transformation,[],[f6])).
% 3.52/1.00  
% 3.52/1.00  fof(f20,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.52/1.00    inference(flattening,[],[f19])).
% 3.52/1.00  
% 3.52/1.00  fof(f65,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.52/1.00    inference(cnf_transformation,[],[f20])).
% 3.52/1.00  
% 3.52/1.00  fof(f14,axiom,(
% 3.52/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f33,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f14])).
% 3.52/1.00  
% 3.52/1.00  fof(f34,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f33])).
% 3.52/1.00  
% 3.52/1.00  fof(f45,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | (~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2))) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(nnf_transformation,[],[f34])).
% 3.52/1.00  
% 3.52/1.00  fof(f46,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2)) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f45])).
% 3.52/1.00  
% 3.52/1.00  fof(f75,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f46])).
% 3.52/1.00  
% 3.52/1.00  fof(f9,axiom,(
% 3.52/1.00    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f24,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 3.52/1.00    inference(ennf_transformation,[],[f9])).
% 3.52/1.00  
% 3.52/1.00  fof(f25,plain,(
% 3.52/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.52/1.00    inference(flattening,[],[f24])).
% 3.52/1.00  
% 3.52/1.00  fof(f68,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f25])).
% 3.52/1.00  
% 3.52/1.00  fof(f8,axiom,(
% 3.52/1.00    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f23,plain,(
% 3.52/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 3.52/1.00    inference(ennf_transformation,[],[f8])).
% 3.52/1.00  
% 3.52/1.00  fof(f67,plain,(
% 3.52/1.00    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f23])).
% 3.52/1.00  
% 3.52/1.00  fof(f83,plain,(
% 3.52/1.00    ~m1_subset_1(k2_xboole_0(sK3,sK4),u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.52/1.00    inference(cnf_transformation,[],[f51])).
% 3.52/1.00  
% 3.52/1.00  fof(f92,plain,(
% 3.52/1.00    ~m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2)))),
% 3.52/1.00    inference(definition_unfolding,[],[f83,f60])).
% 3.52/1.00  
% 3.52/1.00  fof(f13,axiom,(
% 3.52/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (m1_connsp_2(X1,X0,X2) => r2_hidden(X2,X1)))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f31,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,X1) | ~m1_connsp_2(X1,X0,X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f13])).
% 3.52/1.00  
% 3.52/1.00  fof(f32,plain,(
% 3.52/1.00    ! [X0] : (! [X1] : (! [X2] : (r2_hidden(X2,X1) | ~m1_connsp_2(X1,X0,X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.52/1.00    inference(flattening,[],[f31])).
% 3.52/1.00  
% 3.52/1.00  fof(f72,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,X1) | ~m1_connsp_2(X1,X0,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f32])).
% 3.52/1.00  
% 3.52/1.00  fof(f1,axiom,(
% 3.52/1.00    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f39,plain,(
% 3.52/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.52/1.00    inference(nnf_transformation,[],[f1])).
% 3.52/1.00  
% 3.52/1.00  fof(f40,plain,(
% 3.52/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.52/1.00    inference(flattening,[],[f39])).
% 3.52/1.00  
% 3.52/1.00  fof(f41,plain,(
% 3.52/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.52/1.00    inference(rectify,[],[f40])).
% 3.52/1.00  
% 3.52/1.00  fof(f42,plain,(
% 3.52/1.00    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.52/1.00    introduced(choice_axiom,[])).
% 3.52/1.00  
% 3.52/1.00  fof(f43,plain,(
% 3.52/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.52/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).
% 3.52/1.00  
% 3.52/1.00  fof(f54,plain,(
% 3.52/1.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 3.52/1.00    inference(cnf_transformation,[],[f43])).
% 3.52/1.00  
% 3.52/1.00  fof(f87,plain,(
% 3.52/1.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k3_tarski(k2_tarski(X0,X1)) != X2) )),
% 3.52/1.00    inference(definition_unfolding,[],[f54,f60])).
% 3.52/1.00  
% 3.52/1.00  fof(f93,plain,(
% 3.52/1.00    ( ! [X4,X0,X1] : (r2_hidden(X4,k3_tarski(k2_tarski(X0,X1))) | ~r2_hidden(X4,X1)) )),
% 3.52/1.00    inference(equality_resolution,[],[f87])).
% 3.52/1.00  
% 3.52/1.00  fof(f5,axiom,(
% 3.52/1.00    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f18,plain,(
% 3.52/1.00    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.52/1.00    inference(ennf_transformation,[],[f5])).
% 3.52/1.00  
% 3.52/1.00  fof(f44,plain,(
% 3.52/1.00    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.52/1.00    inference(nnf_transformation,[],[f18])).
% 3.52/1.00  
% 3.52/1.00  fof(f61,plain,(
% 3.52/1.00    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f44])).
% 3.52/1.00  
% 3.52/1.00  fof(f74,plain,(
% 3.52/1.00    ( ! [X2,X0,X1] : (v3_pre_topc(X2,X0) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f46])).
% 3.52/1.00  
% 3.52/1.00  fof(f64,plain,(
% 3.52/1.00    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~v1_xboole_0(X1) | ~v1_xboole_0(X0)) )),
% 3.52/1.00    inference(cnf_transformation,[],[f44])).
% 3.52/1.00  
% 3.52/1.00  fof(f2,axiom,(
% 3.52/1.00    v1_xboole_0(k1_xboole_0)),
% 3.52/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.52/1.00  
% 3.52/1.00  fof(f58,plain,(
% 3.52/1.00    v1_xboole_0(k1_xboole_0)),
% 3.52/1.00    inference(cnf_transformation,[],[f2])).
% 3.52/1.00  
% 3.52/1.00  cnf(c_7,plain,
% 3.52/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 3.52/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_16,plain,
% 3.52/1.00      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X1,X0) ),
% 3.52/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_343,plain,
% 3.52/1.00      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 3.52/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_16]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_344,plain,
% 3.52/1.00      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 3.52/1.00      inference(unflattening,[status(thm)],[c_343]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_11163,plain,
% 3.52/1.00      ( ~ r2_hidden(sK2,k1_xboole_0) ),
% 3.52/1.00      inference(instantiation,[status(thm)],[c_344]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_17,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,X1)
% 3.52/1.00      | ~ v3_pre_topc(X2,X1)
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X2,X0)),X1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_28,negated_conjecture,
% 3.52/1.00      ( l1_pre_topc(sK1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_556,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,X1)
% 3.52/1.00      | ~ v3_pre_topc(X2,X1)
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X2,X0)),X1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | sK1 != X1 ),
% 3.52/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_28]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_557,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | ~ v3_pre_topc(X1,sK1)
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ v2_pre_topc(sK1) ),
% 3.52/1.00      inference(unflattening,[status(thm)],[c_556]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_29,negated_conjecture,
% 3.52/1.00      ( v2_pre_topc(sK1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_561,plain,
% 3.52/1.00      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
% 3.52/1.00      | ~ v3_pre_topc(X1,sK1)
% 3.52/1.00      | ~ v3_pre_topc(X0,sK1) ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_557,c_29]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_562,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | ~ v3_pre_topc(X1,sK1)
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.00      inference(renaming,[status(thm)],[c_561]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1185,plain,
% 3.52/1.00      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.52/1.00      | v3_pre_topc(X1,sK1) != iProver_top
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X1,X0)),sK1) = iProver_top
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_562]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_25,negated_conjecture,
% 3.52/1.00      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.52/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1194,plain,
% 3.52/1.00      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_23,plain,
% 3.52/1.00      ( m1_connsp_2(X0,X1,X2)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_18,plain,
% 3.52/1.00      ( ~ m1_connsp_2(X0,X1,X2)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f71]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_377,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.52/1.00      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(resolution,[status(thm)],[c_23,c_18]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_30,negated_conjecture,
% 3.52/1.00      ( ~ v2_struct_0(sK1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f77]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_414,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.52/1.00      | m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1)
% 3.52/1.00      | sK1 != X1 ),
% 3.52/1.00      inference(resolution_lifted,[status(thm)],[c_377,c_30]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_415,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ v2_pre_topc(sK1)
% 3.52/1.00      | ~ l1_pre_topc(sK1) ),
% 3.52/1.00      inference(unflattening,[status(thm)],[c_414]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_419,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_415,c_29,c_28]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1190,plain,
% 3.52/1.00      ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
% 3.52/1.00      | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_419]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1528,plain,
% 3.52/1.00      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.52/1.00      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1194,c_1190]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_27,negated_conjecture,
% 3.52/1.00      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 3.52/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_34,plain,
% 3.52/1.00      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1914,plain,
% 3.52/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_1528,c_34]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_26,negated_conjecture,
% 3.52/1.00      ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.52/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1193,plain,
% 3.52/1.00      ( m1_subset_1(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1529,plain,
% 3.52/1.00      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.52/1.00      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1193,c_1190]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1950,plain,
% 3.52/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_1529,c_34]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_13,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.52/1.00      | k4_subset_1(X1,X2,X0) = k3_tarski(k2_tarski(X2,X0)) ),
% 3.52/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1198,plain,
% 3.52/1.00      ( k4_subset_1(X0,X1,X2) = k3_tarski(k2_tarski(X1,X2))
% 3.52/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
% 3.52/1.00      | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_3188,plain,
% 3.52/1.00      ( k4_subset_1(u1_struct_0(sK1),sK3,X0) = k3_tarski(k2_tarski(sK3,X0))
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1950,c_1198]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_4259,plain,
% 3.52/1.00      ( k4_subset_1(u1_struct_0(sK1),sK3,sK4) = k3_tarski(k2_tarski(sK3,sK4)) ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1914,c_3188]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_12,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.52/1.00      | m1_subset_1(k4_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 3.52/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1199,plain,
% 3.52/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.52/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 3.52/1.00      | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_4584,plain,
% 3.52/1.00      ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
% 3.52/1.00      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_4259,c_1199]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8834,plain,
% 3.52/1.00      ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_4584,c_34,c_1528,c_1529]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_20,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,X1)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ r2_hidden(X2,X0)
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_504,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,X1)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | ~ r2_hidden(X2,X0)
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1)
% 3.52/1.00      | sK1 != X1 ),
% 3.52/1.00      inference(resolution_lifted,[status(thm)],[c_20,c_30]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_505,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ r2_hidden(X1,X0)
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.00      | ~ v2_pre_topc(sK1)
% 3.52/1.00      | ~ l1_pre_topc(sK1) ),
% 3.52/1.00      inference(unflattening,[status(thm)],[c_504]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_509,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ r2_hidden(X1,X0)
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_505,c_29,c_28]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_15,plain,
% 3.52/1.00      ( m1_subset_1(X0,X1)
% 3.52/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.52/1.00      | ~ r2_hidden(X0,X2) ),
% 3.52/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_525,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ r2_hidden(X1,X0)
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
% 3.52/1.00      inference(forward_subsumption_resolution,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_509,c_15]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1186,plain,
% 3.52/1.00      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | r2_hidden(X1,X0) != iProver_top
% 3.52/1.00      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_14,plain,
% 3.52/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1197,plain,
% 3.52/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 3.52/1.00      | r2_hidden(X0,X1) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_2187,plain,
% 3.52/1.00      ( v3_pre_topc(X0,sK1) != iProver_top
% 3.52/1.00      | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) = iProver_top
% 3.52/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | r2_hidden(X1,X0) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1186,c_1197]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_24,negated_conjecture,
% 3.52/1.00      ( ~ m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.52/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1195,plain,
% 3.52/1.00      ( m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),u1_struct_0(k9_yellow_6(sK1,sK2))) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_2334,plain,
% 3.52/1.00      ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top
% 3.52/1.00      | m1_subset_1(k3_tarski(k2_tarski(sK3,sK4)),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_2187,c_1195]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8846,plain,
% 3.52/1.00      ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top
% 3.52/1.00      | r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_8834,c_2334]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_19,plain,
% 3.52/1.00      ( ~ m1_connsp_2(X0,X1,X2)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.00      | r2_hidden(X2,X0)
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_174,plain,
% 3.52/1.00      ( ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_connsp_2(X0,X1,X2)
% 3.52/1.00      | r2_hidden(X2,X0)
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_19,c_18]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_175,plain,
% 3.52/1.00      ( ~ m1_connsp_2(X0,X1,X2)
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.00      | r2_hidden(X2,X0)
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(renaming,[status(thm)],[c_174]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_354,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.52/1.00      | r2_hidden(X0,X2)
% 3.52/1.00      | v2_struct_0(X1)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1) ),
% 3.52/1.00      inference(resolution,[status(thm)],[c_23,c_175]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_435,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.52/1.00      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.52/1.00      | r2_hidden(X0,X2)
% 3.52/1.00      | ~ v2_pre_topc(X1)
% 3.52/1.00      | ~ l1_pre_topc(X1)
% 3.52/1.00      | sK1 != X1 ),
% 3.52/1.00      inference(resolution_lifted,[status(thm)],[c_354,c_30]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_436,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | r2_hidden(X1,X0)
% 3.52/1.00      | ~ v2_pre_topc(sK1)
% 3.52/1.00      | ~ l1_pre_topc(sK1) ),
% 3.52/1.00      inference(unflattening,[status(thm)],[c_435]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_440,plain,
% 3.52/1.00      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.00      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.00      | r2_hidden(X1,X0) ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_436,c_29,c_28]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1189,plain,
% 3.52/1.00      ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top
% 3.52/1.00      | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
% 3.52/1.00      | r2_hidden(X1,X0) = iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_440]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1462,plain,
% 3.52/1.00      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.52/1.00      | r2_hidden(sK2,sK4) = iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1194,c_1189]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_3,plain,
% 3.52/1.00      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,k3_tarski(k2_tarski(X2,X1))) ),
% 3.52/1.00      inference(cnf_transformation,[],[f93]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_1705,plain,
% 3.52/1.00      ( r2_hidden(sK2,k3_tarski(k2_tarski(X0,sK4)))
% 3.52/1.00      | ~ r2_hidden(sK2,sK4) ),
% 3.52/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8787,plain,
% 3.52/1.00      ( r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4)))
% 3.52/1.00      | ~ r2_hidden(sK2,sK4) ),
% 3.52/1.00      inference(instantiation,[status(thm)],[c_1705]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8790,plain,
% 3.52/1.00      ( r2_hidden(sK2,k3_tarski(k2_tarski(sK3,sK4))) = iProver_top
% 3.52/1.00      | r2_hidden(sK2,sK4) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_8787]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8971,plain,
% 3.52/1.00      ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) != iProver_top ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.00                [status(thm)],
% 3.52/1.00                [c_8846,c_34,c_1462,c_1528,c_1529,c_2334,c_4584,c_8790]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8976,plain,
% 3.52/1.00      ( v3_pre_topc(sK4,sK1) != iProver_top
% 3.52/1.00      | v3_pre_topc(sK3,sK1) != iProver_top
% 3.52/1.00      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.52/1.00      inference(superposition,[status(thm)],[c_1185,c_8971]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_2056,plain,
% 3.52/1.00      ( ~ v3_pre_topc(X0,sK1)
% 3.52/1.00      | v3_pre_topc(k3_tarski(k2_tarski(X0,sK4)),sK1)
% 3.52/1.00      | ~ v3_pre_topc(sK4,sK1)
% 3.52/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.00      inference(instantiation,[status(thm)],[c_562]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_2553,plain,
% 3.52/1.00      ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1)
% 3.52/1.00      | ~ v3_pre_topc(sK4,sK1)
% 3.52/1.00      | ~ v3_pre_topc(sK3,sK1)
% 3.52/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.00      inference(instantiation,[status(thm)],[c_2056]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_2554,plain,
% 3.52/1.00      ( v3_pre_topc(k3_tarski(k2_tarski(sK3,sK4)),sK1) = iProver_top
% 3.52/1.00      | v3_pre_topc(sK4,sK1) != iProver_top
% 3.52/1.00      | v3_pre_topc(sK3,sK1) != iProver_top
% 3.52/1.00      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.00      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 3.52/1.00      inference(predicate_to_equality,[status(thm)],[c_2553]) ).
% 3.52/1.00  
% 3.52/1.00  cnf(c_8979,plain,
% 3.52/1.00      ( v3_pre_topc(sK4,sK1) != iProver_top
% 3.52/1.00      | v3_pre_topc(sK3,sK1) != iProver_top ),
% 3.52/1.00      inference(global_propositional_subsumption,
% 3.52/1.01                [status(thm)],
% 3.52/1.01                [c_8976,c_34,c_1462,c_1528,c_1529,c_2334,c_2554,c_4584,
% 3.52/1.01                 c_8790]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_8981,plain,
% 3.52/1.01      ( ~ v3_pre_topc(sK4,sK1) | ~ v3_pre_topc(sK3,sK1) ),
% 3.52/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_8979]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1401,plain,
% 3.52/1.01      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK1,sK2)))
% 3.52/1.01      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | r2_hidden(sK2,X0) ),
% 3.52/1.01      inference(instantiation,[status(thm)],[c_440]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_6320,plain,
% 3.52/1.01      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | ~ m1_subset_1(k1_xboole_0,u1_struct_0(k9_yellow_6(sK1,sK2)))
% 3.52/1.01      | r2_hidden(sK2,k1_xboole_0) ),
% 3.52/1.01      inference(instantiation,[status(thm)],[c_1401]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_11,plain,
% 3.52/1.01      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.52/1.01      inference(cnf_transformation,[],[f61]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1200,plain,
% 3.52/1.01      ( m1_subset_1(X0,X1) != iProver_top
% 3.52/1.01      | r2_hidden(X0,X1) = iProver_top
% 3.52/1.01      | v1_xboole_0(X1) = iProver_top ),
% 3.52/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_2446,plain,
% 3.52/1.01      ( r2_hidden(sK3,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.01      inference(superposition,[status(thm)],[c_1193,c_1200]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_21,plain,
% 3.52/1.01      ( v3_pre_topc(X0,X1)
% 3.52/1.01      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.01      | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.52/1.01      | v2_struct_0(X1)
% 3.52/1.01      | ~ v2_pre_topc(X1)
% 3.52/1.01      | ~ l1_pre_topc(X1) ),
% 3.52/1.01      inference(cnf_transformation,[],[f74]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_480,plain,
% 3.52/1.01      ( v3_pre_topc(X0,X1)
% 3.52/1.01      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.52/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.52/1.01      | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.52/1.01      | ~ v2_pre_topc(X1)
% 3.52/1.01      | ~ l1_pre_topc(X1)
% 3.52/1.01      | sK1 != X1 ),
% 3.52/1.01      inference(resolution_lifted,[status(thm)],[c_21,c_30]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_481,plain,
% 3.52/1.01      ( v3_pre_topc(X0,sK1)
% 3.52/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.01      | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1)))
% 3.52/1.01      | ~ v2_pre_topc(sK1)
% 3.52/1.01      | ~ l1_pre_topc(sK1) ),
% 3.52/1.01      inference(unflattening,[status(thm)],[c_480]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_485,plain,
% 3.52/1.01      ( v3_pre_topc(X0,sK1)
% 3.52/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 3.52/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.01      | ~ r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) ),
% 3.52/1.01      inference(global_propositional_subsumption,
% 3.52/1.01                [status(thm)],
% 3.52/1.01                [c_481,c_29,c_28]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1187,plain,
% 3.52/1.01      ( v3_pre_topc(X0,sK1) = iProver_top
% 3.52/1.01      | m1_subset_1(X1,u1_struct_0(sK1)) != iProver_top
% 3.52/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.01      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK1,X1))) != iProver_top ),
% 3.52/1.01      inference(predicate_to_equality,[status(thm)],[c_485]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_3033,plain,
% 3.52/1.01      ( v3_pre_topc(sK3,sK1) = iProver_top
% 3.52/1.01      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.52/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.01      inference(superposition,[status(thm)],[c_2446,c_1187]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_3042,plain,
% 3.52/1.01      ( v3_pre_topc(sK3,sK1)
% 3.52/1.01      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.52/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_3033]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_2445,plain,
% 3.52/1.01      ( r2_hidden(sK4,u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.01      inference(superposition,[status(thm)],[c_1194,c_1200]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_3018,plain,
% 3.52/1.01      ( v3_pre_topc(sK4,sK1) = iProver_top
% 3.52/1.01      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 3.52/1.01      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) = iProver_top ),
% 3.52/1.01      inference(superposition,[status(thm)],[c_2445,c_1187]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_3027,plain,
% 3.52/1.01      ( v3_pre_topc(sK4,sK1)
% 3.52/1.01      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | ~ m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))
% 3.52/1.01      | v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2))) ),
% 3.52/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_3018]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_8,plain,
% 3.52/1.01      ( m1_subset_1(X0,X1) | ~ v1_xboole_0(X0) | ~ v1_xboole_0(X1) ),
% 3.52/1.01      inference(cnf_transformation,[],[f64]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1453,plain,
% 3.52/1.01      ( m1_subset_1(k1_xboole_0,X0)
% 3.52/1.01      | ~ v1_xboole_0(X0)
% 3.52/1.01      | ~ v1_xboole_0(k1_xboole_0) ),
% 3.52/1.01      inference(instantiation,[status(thm)],[c_8]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1762,plain,
% 3.52/1.01      ( m1_subset_1(k1_xboole_0,u1_struct_0(k9_yellow_6(sK1,sK2)))
% 3.52/1.01      | ~ v1_xboole_0(u1_struct_0(k9_yellow_6(sK1,sK2)))
% 3.52/1.01      | ~ v1_xboole_0(k1_xboole_0) ),
% 3.52/1.01      inference(instantiation,[status(thm)],[c_1453]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1539,plain,
% 3.52/1.01      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_1529]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_1538,plain,
% 3.52/1.01      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 3.52/1.01      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 3.52/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_1528]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(c_6,plain,
% 3.52/1.01      ( v1_xboole_0(k1_xboole_0) ),
% 3.52/1.01      inference(cnf_transformation,[],[f58]) ).
% 3.52/1.01  
% 3.52/1.01  cnf(contradiction,plain,
% 3.52/1.01      ( $false ),
% 3.52/1.01      inference(minisat,
% 3.52/1.01                [status(thm)],
% 3.52/1.01                [c_11163,c_8981,c_6320,c_3042,c_3027,c_1762,c_1539,
% 3.52/1.01                 c_1538,c_6,c_27]) ).
% 3.52/1.01  
% 3.52/1.01  
% 3.52/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.52/1.01  
% 3.52/1.01  ------                               Statistics
% 3.52/1.01  
% 3.52/1.01  ------ General
% 3.52/1.01  
% 3.52/1.01  abstr_ref_over_cycles:                  0
% 3.52/1.01  abstr_ref_under_cycles:                 0
% 3.52/1.01  gc_basic_clause_elim:                   0
% 3.52/1.01  forced_gc_time:                         0
% 3.52/1.01  parsing_time:                           0.01
% 3.52/1.01  unif_index_cands_time:                  0.
% 3.52/1.01  unif_index_add_time:                    0.
% 3.52/1.01  orderings_time:                         0.
% 3.52/1.01  out_proof_time:                         0.011
% 3.52/1.01  total_time:                             0.351
% 3.52/1.01  num_of_symbols:                         52
% 3.52/1.01  num_of_terms:                           10836
% 3.52/1.01  
% 3.52/1.01  ------ Preprocessing
% 3.52/1.01  
% 3.52/1.01  num_of_splits:                          0
% 3.52/1.01  num_of_split_atoms:                     0
% 3.52/1.01  num_of_reused_defs:                     0
% 3.52/1.01  num_eq_ax_congr_red:                    23
% 3.52/1.01  num_of_sem_filtered_clauses:            1
% 3.52/1.01  num_of_subtypes:                        0
% 3.52/1.01  monotx_restored_types:                  0
% 3.52/1.01  sat_num_of_epr_types:                   0
% 3.52/1.01  sat_num_of_non_cyclic_types:            0
% 3.52/1.01  sat_guarded_non_collapsed_types:        0
% 3.52/1.01  num_pure_diseq_elim:                    0
% 3.52/1.01  simp_replaced_by:                       0
% 3.52/1.01  res_preprocessed:                       128
% 3.52/1.01  prep_upred:                             0
% 3.52/1.01  prep_unflattend:                        8
% 3.52/1.01  smt_new_axioms:                         0
% 3.52/1.01  pred_elim_cands:                        4
% 3.52/1.01  pred_elim:                              5
% 3.52/1.01  pred_elim_cl:                           5
% 3.52/1.01  pred_elim_cycles:                       7
% 3.52/1.01  merged_defs:                            0
% 3.52/1.01  merged_defs_ncl:                        0
% 3.52/1.01  bin_hyper_res:                          0
% 3.52/1.01  prep_cycles:                            4
% 3.52/1.01  pred_elim_time:                         0.006
% 3.52/1.01  splitting_time:                         0.
% 3.52/1.01  sem_filter_time:                        0.
% 3.52/1.01  monotx_time:                            0.001
% 3.52/1.01  subtype_inf_time:                       0.
% 3.52/1.01  
% 3.52/1.01  ------ Problem properties
% 3.52/1.01  
% 3.52/1.01  clauses:                                25
% 3.52/1.01  conjectures:                            4
% 3.52/1.01  epr:                                    6
% 3.52/1.01  horn:                                   22
% 3.52/1.01  ground:                                 5
% 3.52/1.01  unary:                                  6
% 3.52/1.01  binary:                                 3
% 3.52/1.01  lits:                                   66
% 3.52/1.01  lits_eq:                                4
% 3.52/1.01  fd_pure:                                0
% 3.52/1.01  fd_pseudo:                              0
% 3.52/1.01  fd_cond:                                0
% 3.52/1.01  fd_pseudo_cond:                         3
% 3.52/1.01  ac_symbols:                             0
% 3.52/1.01  
% 3.52/1.01  ------ Propositional Solver
% 3.52/1.01  
% 3.52/1.01  prop_solver_calls:                      28
% 3.52/1.01  prop_fast_solver_calls:                 1142
% 3.52/1.01  smt_solver_calls:                       0
% 3.52/1.01  smt_fast_solver_calls:                  0
% 3.52/1.01  prop_num_of_clauses:                    4708
% 3.52/1.01  prop_preprocess_simplified:             11323
% 3.52/1.01  prop_fo_subsumed:                       47
% 3.52/1.01  prop_solver_time:                       0.
% 3.52/1.01  smt_solver_time:                        0.
% 3.52/1.01  smt_fast_solver_time:                   0.
% 3.52/1.01  prop_fast_solver_time:                  0.
% 3.52/1.01  prop_unsat_core_time:                   0.
% 3.52/1.01  
% 3.52/1.01  ------ QBF
% 3.52/1.01  
% 3.52/1.01  qbf_q_res:                              0
% 3.52/1.01  qbf_num_tautologies:                    0
% 3.52/1.01  qbf_prep_cycles:                        0
% 3.52/1.01  
% 3.52/1.01  ------ BMC1
% 3.52/1.01  
% 3.52/1.01  bmc1_current_bound:                     -1
% 3.52/1.01  bmc1_last_solved_bound:                 -1
% 3.52/1.01  bmc1_unsat_core_size:                   -1
% 3.52/1.01  bmc1_unsat_core_parents_size:           -1
% 3.52/1.01  bmc1_merge_next_fun:                    0
% 3.52/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.52/1.01  
% 3.52/1.01  ------ Instantiation
% 3.52/1.01  
% 3.52/1.01  inst_num_of_clauses:                    1344
% 3.52/1.01  inst_num_in_passive:                    902
% 3.52/1.01  inst_num_in_active:                     436
% 3.52/1.01  inst_num_in_unprocessed:                5
% 3.52/1.01  inst_num_of_loops:                      593
% 3.52/1.01  inst_num_of_learning_restarts:          0
% 3.52/1.01  inst_num_moves_active_passive:          153
% 3.52/1.01  inst_lit_activity:                      0
% 3.52/1.01  inst_lit_activity_moves:                0
% 3.52/1.01  inst_num_tautologies:                   0
% 3.52/1.01  inst_num_prop_implied:                  0
% 3.52/1.01  inst_num_existing_simplified:           0
% 3.52/1.01  inst_num_eq_res_simplified:             0
% 3.52/1.01  inst_num_child_elim:                    0
% 3.52/1.01  inst_num_of_dismatching_blockings:      248
% 3.52/1.01  inst_num_of_non_proper_insts:           897
% 3.52/1.01  inst_num_of_duplicates:                 0
% 3.52/1.01  inst_inst_num_from_inst_to_res:         0
% 3.52/1.01  inst_dismatching_checking_time:         0.
% 3.52/1.01  
% 3.52/1.01  ------ Resolution
% 3.52/1.01  
% 3.52/1.01  res_num_of_clauses:                     0
% 3.52/1.01  res_num_in_passive:                     0
% 3.52/1.01  res_num_in_active:                      0
% 3.52/1.01  res_num_of_loops:                       132
% 3.52/1.01  res_forward_subset_subsumed:            55
% 3.52/1.01  res_backward_subset_subsumed:           0
% 3.52/1.01  res_forward_subsumed:                   0
% 3.52/1.01  res_backward_subsumed:                  0
% 3.52/1.01  res_forward_subsumption_resolution:     1
% 3.52/1.01  res_backward_subsumption_resolution:    0
% 3.52/1.01  res_clause_to_clause_subsumption:       775
% 3.52/1.01  res_orphan_elimination:                 0
% 3.52/1.01  res_tautology_del:                      42
% 3.52/1.01  res_num_eq_res_simplified:              0
% 3.52/1.01  res_num_sel_changes:                    0
% 3.52/1.01  res_moves_from_active_to_pass:          0
% 3.52/1.01  
% 3.52/1.01  ------ Superposition
% 3.52/1.01  
% 3.52/1.01  sup_time_total:                         0.
% 3.52/1.01  sup_time_generating:                    0.
% 3.52/1.01  sup_time_sim_full:                      0.
% 3.52/1.01  sup_time_sim_immed:                     0.
% 3.52/1.01  
% 3.52/1.01  sup_num_of_clauses:                     221
% 3.52/1.01  sup_num_in_active:                      111
% 3.52/1.01  sup_num_in_passive:                     110
% 3.52/1.01  sup_num_of_loops:                       118
% 3.52/1.01  sup_fw_superposition:                   161
% 3.52/1.01  sup_bw_superposition:                   122
% 3.52/1.01  sup_immediate_simplified:               57
% 3.52/1.01  sup_given_eliminated:                   0
% 3.52/1.01  comparisons_done:                       0
% 3.52/1.01  comparisons_avoided:                    0
% 3.52/1.01  
% 3.52/1.01  ------ Simplifications
% 3.52/1.01  
% 3.52/1.01  
% 3.52/1.01  sim_fw_subset_subsumed:                 38
% 3.52/1.01  sim_bw_subset_subsumed:                 8
% 3.52/1.01  sim_fw_subsumed:                        4
% 3.52/1.01  sim_bw_subsumed:                        0
% 3.52/1.01  sim_fw_subsumption_res:                 0
% 3.52/1.01  sim_bw_subsumption_res:                 0
% 3.52/1.01  sim_tautology_del:                      22
% 3.52/1.01  sim_eq_tautology_del:                   6
% 3.52/1.01  sim_eq_res_simp:                        6
% 3.52/1.01  sim_fw_demodulated:                     0
% 3.52/1.01  sim_bw_demodulated:                     0
% 3.52/1.01  sim_light_normalised:                   18
% 3.52/1.01  sim_joinable_taut:                      0
% 3.52/1.01  sim_joinable_simp:                      0
% 3.52/1.01  sim_ac_normalised:                      0
% 3.52/1.01  sim_smt_subsumption:                    0
% 3.52/1.01  
%------------------------------------------------------------------------------
