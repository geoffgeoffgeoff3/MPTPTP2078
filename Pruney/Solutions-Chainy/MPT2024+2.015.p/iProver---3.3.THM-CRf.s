%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:28:51 EST 2020

% Result     : Theorem 3.12s
% Output     : CNFRefutation 3.12s
% Verified   : 
% Statistics : Number of formulae       :  143 (1876 expanded)
%              Number of clauses        :   85 ( 371 expanded)
%              Number of leaves         :   15 ( 717 expanded)
%              Depth                    :   22
%              Number of atoms          :  608 (11451 expanded)
%              Number of equality atoms :  128 ( 505 expanded)
%              Maximal formula depth    :   12 (   6 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
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

fof(f27,plain,(
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
    inference(flattening,[],[f26])).

fof(f28,plain,(
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
    inference(rectify,[],[f27])).

fof(f29,plain,(
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

fof(f30,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f28,f29])).

fof(f42,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f65,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k2_xboole_0(X0,X1))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f42])).

fof(f9,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
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
    inference(negated_conjecture,[],[f9])).

fof(f24,plain,(
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
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
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
    inference(flattening,[],[f24])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
          & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
     => ( ~ m1_subset_1(k2_xboole_0(X2,sK5),u1_struct_0(k9_yellow_6(X0,X1)))
        & m1_subset_1(sK5,u1_struct_0(k9_yellow_6(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))
              & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
          & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
     => ( ? [X3] :
            ( ~ m1_subset_1(k2_xboole_0(sK4,X3),u1_struct_0(k9_yellow_6(X0,X1)))
            & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) )
        & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
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
                ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,sK3)))
                & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,sK3))) )
            & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,sK3))) )
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
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
                  ( ~ m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(sK2,X1)))
                  & m1_subset_1(X3,u1_struct_0(k9_yellow_6(sK2,X1))) )
              & m1_subset_1(X2,u1_struct_0(k9_yellow_6(sK2,X1))) )
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_pre_topc(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ~ m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3)))
    & m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3)))
    & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3)))
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f25,f38,f37,f36,f35])).

fof(f63,plain,(
    m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f39])).

fof(f7,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
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
    inference(ennf_transformation,[],[f7])).

fof(f21,plain,(
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
    inference(flattening,[],[f20])).

fof(f31,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( v3_pre_topc(X3,X0)
          & r2_hidden(X1,X3)
          & X2 = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( v3_pre_topc(sK1(X0,X1,X2),X0)
        & r2_hidden(X1,sK1(X0,X1,X2))
        & sK1(X0,X1,X2) = X2
        & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( v3_pre_topc(sK1(X0,X1,X2),X0)
                & r2_hidden(X1,sK1(X0,X1,X2))
                & sK1(X0,X1,X2) = X2
                & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f31])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( sK1(X0,X1,X2) = X2
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f58,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f39])).

fof(f59,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f39])).

fof(f60,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f39])).

fof(f61,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f39])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f62,plain,(
    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f39])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f13])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f11])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f8,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
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
    inference(ennf_transformation,[],[f8])).

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

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
    inference(nnf_transformation,[],[f23])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ v3_pre_topc(X2,X0)
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f16])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f48,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f64,plain,(
    ~ m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f39])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(sK1(X0,X1,X2),X0)
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X2,X0)
        & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & v3_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v3_pre_topc(k2_xboole_0(X1,X2),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(k2_xboole_0(X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X2,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,sK1(X0,X1,X2))
      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k2_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1023,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k2_xboole_0(X2,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1015,plain,
    ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1(X1,X0,X2) = X2 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_392,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1(X1,X0,X2) = X2
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_24])).

cnf(c_393,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2)
    | sK1(sK2,X1,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_392])).

cnf(c_23,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_22,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_397,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | sK1(sK2,X1,X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_393,c_23,c_22])).

cnf(c_1007,plain,
    ( sK1(sK2,X0,X1) = X1
    | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0))) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_397])).

cnf(c_1371,plain,
    ( sK1(sK2,sK3,sK5) = sK5
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1015,c_1007])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1118,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,sK3)))
    | ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | sK1(sK2,sK3,X0) = X0 ),
    inference(instantiation,[status(thm)],[c_397])).

cnf(c_1237,plain,
    ( ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | ~ m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3)))
    | sK1(sK2,sK3,sK5) = sK5 ),
    inference(instantiation,[status(thm)],[c_1118])).

cnf(c_1376,plain,
    ( sK1(sK2,sK3,sK5) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1371,c_21,c_19,c_1237])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_371,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_24])).

cnf(c_372,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_376,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_372,c_23,c_22])).

cnf(c_1008,plain,
    ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_376])).

cnf(c_1767,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1376,c_1008])).

cnf(c_28,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_30,plain,
    ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2441,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1767,c_28,c_30])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1014,plain,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1372,plain,
    ( sK1(sK2,sK3,sK4) = sK4
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1014,c_1007])).

cnf(c_1240,plain,
    ( ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | ~ m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3)))
    | sK1(sK2,sK3,sK4) = sK4 ),
    inference(instantiation,[status(thm)],[c_1118])).

cnf(c_1452,plain,
    ( sK1(sK2,sK3,sK4) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1372,c_21,c_20,c_1240])).

cnf(c_1768,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1452,c_1008])).

cnf(c_29,plain,
    ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2458,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1768,c_28,c_29])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | k4_subset_1(X1,X2,X0) = k2_xboole_0(X2,X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1019,plain,
    ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2462,plain,
    ( k4_subset_1(u1_struct_0(sK2),sK4,X0) = k2_xboole_0(sK4,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2458,c_1019])).

cnf(c_4997,plain,
    ( k4_subset_1(u1_struct_0(sK2),sK4,sK5) = k2_xboole_0(sK4,sK5) ),
    inference(superposition,[status(thm)],[c_2441,c_2462])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | m1_subset_1(k4_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1020,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_6909,plain,
    ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4997,c_1020])).

cnf(c_8640,plain,
    ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6909,c_28,c_29,c_30,c_1767,c_1768])).

cnf(c_15,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_342,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_24])).

cnf(c_343,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_342])).

cnf(c_347,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_343,c_23,c_22])).

cnf(c_9,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_363,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_347,c_9])).

cnf(c_1009,plain,
    ( v3_pre_topc(X0,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(X1,X0) != iProver_top
    | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_363])).

cnf(c_8,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1018,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1986,plain,
    ( v3_pre_topc(X0,sK2) != iProver_top
    | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(X1,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1009,c_1018])).

cnf(c_18,negated_conjecture,
    ( ~ m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1016,plain,
    ( m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4899,plain,
    ( v3_pre_topc(k2_xboole_0(sK4,sK5),sK2) != iProver_top
    | m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1986,c_1016])).

cnf(c_11,plain,
    ( v3_pre_topc(sK1(X0,X1,X2),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_273,plain,
    ( v3_pre_topc(sK1(X0,X1,X2),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_24])).

cnf(c_274,plain,
    ( v3_pre_topc(sK1(sK2,X0,X1),sK2)
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_273])).

cnf(c_278,plain,
    ( v3_pre_topc(sK1(sK2,X0,X1),sK2)
    | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0)))
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_274,c_23,c_22])).

cnf(c_1012,plain,
    ( v3_pre_topc(sK1(sK2,X0,X1),sK2) = iProver_top
    | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0))) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_278])).

cnf(c_1691,plain,
    ( v3_pre_topc(sK1(sK2,sK3,sK5),sK2) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1015,c_1012])).

cnf(c_1694,plain,
    ( v3_pre_topc(sK5,sK2) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1691,c_1376])).

cnf(c_10,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k2_xboole_0(X2,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_465,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X2,X1)
    | v3_pre_topc(k2_xboole_0(X2,X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_22])).

cnf(c_466,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ v3_pre_topc(X1,sK2)
    | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_465])).

cnf(c_470,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
    | ~ v3_pre_topc(X1,sK2)
    | ~ v3_pre_topc(X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_466,c_23])).

cnf(c_471,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ v3_pre_topc(X1,sK2)
    | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(renaming,[status(thm)],[c_470])).

cnf(c_1005,plain,
    ( v3_pre_topc(X0,sK2) != iProver_top
    | v3_pre_topc(X1,sK2) != iProver_top
    | v3_pre_topc(k2_xboole_0(X1,X0),sK2) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_471])).

cnf(c_2464,plain,
    ( v3_pre_topc(X0,sK2) != iProver_top
    | v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
    | v3_pre_topc(sK4,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2458,c_1005])).

cnf(c_1692,plain,
    ( v3_pre_topc(sK1(sK2,sK3,sK4),sK2) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1014,c_1012])).

cnf(c_1693,plain,
    ( v3_pre_topc(sK4,sK2) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1692,c_1452])).

cnf(c_2591,plain,
    ( v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
    | v3_pre_topc(X0,sK2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2464,c_28,c_1693])).

cnf(c_2592,plain,
    ( v3_pre_topc(X0,sK2) != iProver_top
    | v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(renaming,[status(thm)],[c_2591])).

cnf(c_2599,plain,
    ( v3_pre_topc(k2_xboole_0(sK4,sK5),sK2) = iProver_top
    | v3_pre_topc(sK5,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2441,c_2592])).

cnf(c_5146,plain,
    ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4899,c_28,c_1694,c_2599])).

cnf(c_8656,plain,
    ( r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8640,c_5146])).

cnf(c_8807,plain,
    ( r2_hidden(sK3,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1023,c_8656])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | r2_hidden(X0,sK1(X1,X0,X2))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_413,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
    | r2_hidden(X0,sK1(X1,X0,X2))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_24])).

cnf(c_414,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r2_hidden(X1,sK1(sK2,X1,X0))
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_413])).

cnf(c_418,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r2_hidden(X1,sK1(sK2,X1,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_414,c_23,c_22])).

cnf(c_1006,plain,
    ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(X1,sK1(sK2,X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_418])).

cnf(c_1455,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(sK3,sK1(sK2,sK3,sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1015,c_1006])).

cnf(c_1458,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(sK3,sK5) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1455,c_1376])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8807,c_1458,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.33  % Computer   : n011.cluster.edu
% 0.14/0.33  % Model      : x86_64 x86_64
% 0.14/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.33  % Memory     : 8042.1875MB
% 0.14/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.33  % CPULimit   : 60
% 0.14/0.33  % WCLimit    : 600
% 0.14/0.33  % DateTime   : Tue Dec  1 10:10:42 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.12/1.03  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.12/1.03  
% 3.12/1.03  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.12/1.03  
% 3.12/1.03  ------  iProver source info
% 3.12/1.03  
% 3.12/1.03  git: date: 2020-06-30 10:37:57 +0100
% 3.12/1.03  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.12/1.03  git: non_committed_changes: false
% 3.12/1.03  git: last_make_outside_of_git: false
% 3.12/1.03  
% 3.12/1.03  ------ 
% 3.12/1.03  
% 3.12/1.03  ------ Input Options
% 3.12/1.03  
% 3.12/1.03  --out_options                           all
% 3.12/1.03  --tptp_safe_out                         true
% 3.12/1.03  --problem_path                          ""
% 3.12/1.03  --include_path                          ""
% 3.12/1.03  --clausifier                            res/vclausify_rel
% 3.12/1.03  --clausifier_options                    ""
% 3.12/1.03  --stdin                                 false
% 3.12/1.03  --stats_out                             all
% 3.12/1.03  
% 3.12/1.03  ------ General Options
% 3.12/1.03  
% 3.12/1.03  --fof                                   false
% 3.12/1.03  --time_out_real                         305.
% 3.12/1.03  --time_out_virtual                      -1.
% 3.12/1.03  --symbol_type_check                     false
% 3.12/1.03  --clausify_out                          false
% 3.12/1.03  --sig_cnt_out                           false
% 3.12/1.03  --trig_cnt_out                          false
% 3.12/1.03  --trig_cnt_out_tolerance                1.
% 3.12/1.03  --trig_cnt_out_sk_spl                   false
% 3.12/1.03  --abstr_cl_out                          false
% 3.12/1.03  
% 3.12/1.03  ------ Global Options
% 3.12/1.03  
% 3.12/1.03  --schedule                              default
% 3.12/1.03  --add_important_lit                     false
% 3.12/1.03  --prop_solver_per_cl                    1000
% 3.12/1.03  --min_unsat_core                        false
% 3.12/1.03  --soft_assumptions                      false
% 3.12/1.03  --soft_lemma_size                       3
% 3.12/1.03  --prop_impl_unit_size                   0
% 3.12/1.03  --prop_impl_unit                        []
% 3.12/1.03  --share_sel_clauses                     true
% 3.12/1.03  --reset_solvers                         false
% 3.12/1.03  --bc_imp_inh                            [conj_cone]
% 3.12/1.03  --conj_cone_tolerance                   3.
% 3.12/1.03  --extra_neg_conj                        none
% 3.12/1.03  --large_theory_mode                     true
% 3.12/1.03  --prolific_symb_bound                   200
% 3.12/1.03  --lt_threshold                          2000
% 3.12/1.03  --clause_weak_htbl                      true
% 3.12/1.03  --gc_record_bc_elim                     false
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing Options
% 3.12/1.03  
% 3.12/1.03  --preprocessing_flag                    true
% 3.12/1.03  --time_out_prep_mult                    0.1
% 3.12/1.03  --splitting_mode                        input
% 3.12/1.03  --splitting_grd                         true
% 3.12/1.03  --splitting_cvd                         false
% 3.12/1.03  --splitting_cvd_svl                     false
% 3.12/1.03  --splitting_nvd                         32
% 3.12/1.03  --sub_typing                            true
% 3.12/1.03  --prep_gs_sim                           true
% 3.12/1.03  --prep_unflatten                        true
% 3.12/1.03  --prep_res_sim                          true
% 3.12/1.03  --prep_upred                            true
% 3.12/1.03  --prep_sem_filter                       exhaustive
% 3.12/1.03  --prep_sem_filter_out                   false
% 3.12/1.03  --pred_elim                             true
% 3.12/1.03  --res_sim_input                         true
% 3.12/1.03  --eq_ax_congr_red                       true
% 3.12/1.03  --pure_diseq_elim                       true
% 3.12/1.03  --brand_transform                       false
% 3.12/1.03  --non_eq_to_eq                          false
% 3.12/1.03  --prep_def_merge                        true
% 3.12/1.03  --prep_def_merge_prop_impl              false
% 3.12/1.03  --prep_def_merge_mbd                    true
% 3.12/1.03  --prep_def_merge_tr_red                 false
% 3.12/1.03  --prep_def_merge_tr_cl                  false
% 3.12/1.03  --smt_preprocessing                     true
% 3.12/1.03  --smt_ac_axioms                         fast
% 3.12/1.03  --preprocessed_out                      false
% 3.12/1.03  --preprocessed_stats                    false
% 3.12/1.03  
% 3.12/1.03  ------ Abstraction refinement Options
% 3.12/1.03  
% 3.12/1.03  --abstr_ref                             []
% 3.12/1.03  --abstr_ref_prep                        false
% 3.12/1.03  --abstr_ref_until_sat                   false
% 3.12/1.03  --abstr_ref_sig_restrict                funpre
% 3.12/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/1.03  --abstr_ref_under                       []
% 3.12/1.03  
% 3.12/1.03  ------ SAT Options
% 3.12/1.03  
% 3.12/1.03  --sat_mode                              false
% 3.12/1.03  --sat_fm_restart_options                ""
% 3.12/1.03  --sat_gr_def                            false
% 3.12/1.03  --sat_epr_types                         true
% 3.12/1.03  --sat_non_cyclic_types                  false
% 3.12/1.03  --sat_finite_models                     false
% 3.12/1.03  --sat_fm_lemmas                         false
% 3.12/1.03  --sat_fm_prep                           false
% 3.12/1.03  --sat_fm_uc_incr                        true
% 3.12/1.03  --sat_out_model                         small
% 3.12/1.03  --sat_out_clauses                       false
% 3.12/1.03  
% 3.12/1.03  ------ QBF Options
% 3.12/1.03  
% 3.12/1.03  --qbf_mode                              false
% 3.12/1.03  --qbf_elim_univ                         false
% 3.12/1.03  --qbf_dom_inst                          none
% 3.12/1.03  --qbf_dom_pre_inst                      false
% 3.12/1.03  --qbf_sk_in                             false
% 3.12/1.03  --qbf_pred_elim                         true
% 3.12/1.03  --qbf_split                             512
% 3.12/1.03  
% 3.12/1.03  ------ BMC1 Options
% 3.12/1.03  
% 3.12/1.03  --bmc1_incremental                      false
% 3.12/1.03  --bmc1_axioms                           reachable_all
% 3.12/1.03  --bmc1_min_bound                        0
% 3.12/1.03  --bmc1_max_bound                        -1
% 3.12/1.03  --bmc1_max_bound_default                -1
% 3.12/1.03  --bmc1_symbol_reachability              true
% 3.12/1.03  --bmc1_property_lemmas                  false
% 3.12/1.03  --bmc1_k_induction                      false
% 3.12/1.03  --bmc1_non_equiv_states                 false
% 3.12/1.03  --bmc1_deadlock                         false
% 3.12/1.03  --bmc1_ucm                              false
% 3.12/1.03  --bmc1_add_unsat_core                   none
% 3.12/1.03  --bmc1_unsat_core_children              false
% 3.12/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/1.03  --bmc1_out_stat                         full
% 3.12/1.03  --bmc1_ground_init                      false
% 3.12/1.03  --bmc1_pre_inst_next_state              false
% 3.12/1.03  --bmc1_pre_inst_state                   false
% 3.12/1.03  --bmc1_pre_inst_reach_state             false
% 3.12/1.03  --bmc1_out_unsat_core                   false
% 3.12/1.03  --bmc1_aig_witness_out                  false
% 3.12/1.03  --bmc1_verbose                          false
% 3.12/1.03  --bmc1_dump_clauses_tptp                false
% 3.12/1.03  --bmc1_dump_unsat_core_tptp             false
% 3.12/1.03  --bmc1_dump_file                        -
% 3.12/1.03  --bmc1_ucm_expand_uc_limit              128
% 3.12/1.03  --bmc1_ucm_n_expand_iterations          6
% 3.12/1.03  --bmc1_ucm_extend_mode                  1
% 3.12/1.03  --bmc1_ucm_init_mode                    2
% 3.12/1.03  --bmc1_ucm_cone_mode                    none
% 3.12/1.03  --bmc1_ucm_reduced_relation_type        0
% 3.12/1.03  --bmc1_ucm_relax_model                  4
% 3.12/1.03  --bmc1_ucm_full_tr_after_sat            true
% 3.12/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/1.03  --bmc1_ucm_layered_model                none
% 3.12/1.03  --bmc1_ucm_max_lemma_size               10
% 3.12/1.03  
% 3.12/1.03  ------ AIG Options
% 3.12/1.03  
% 3.12/1.03  --aig_mode                              false
% 3.12/1.03  
% 3.12/1.03  ------ Instantiation Options
% 3.12/1.03  
% 3.12/1.03  --instantiation_flag                    true
% 3.12/1.03  --inst_sos_flag                         true
% 3.12/1.03  --inst_sos_phase                        true
% 3.12/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/1.03  --inst_lit_sel_side                     num_symb
% 3.12/1.03  --inst_solver_per_active                1400
% 3.12/1.03  --inst_solver_calls_frac                1.
% 3.12/1.03  --inst_passive_queue_type               priority_queues
% 3.12/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/1.03  --inst_passive_queues_freq              [25;2]
% 3.12/1.03  --inst_dismatching                      true
% 3.12/1.03  --inst_eager_unprocessed_to_passive     true
% 3.12/1.03  --inst_prop_sim_given                   true
% 3.12/1.03  --inst_prop_sim_new                     false
% 3.12/1.03  --inst_subs_new                         false
% 3.12/1.03  --inst_eq_res_simp                      false
% 3.12/1.03  --inst_subs_given                       false
% 3.12/1.03  --inst_orphan_elimination               true
% 3.12/1.03  --inst_learning_loop_flag               true
% 3.12/1.03  --inst_learning_start                   3000
% 3.12/1.03  --inst_learning_factor                  2
% 3.12/1.03  --inst_start_prop_sim_after_learn       3
% 3.12/1.03  --inst_sel_renew                        solver
% 3.12/1.03  --inst_lit_activity_flag                true
% 3.12/1.03  --inst_restr_to_given                   false
% 3.12/1.03  --inst_activity_threshold               500
% 3.12/1.03  --inst_out_proof                        true
% 3.12/1.03  
% 3.12/1.03  ------ Resolution Options
% 3.12/1.03  
% 3.12/1.03  --resolution_flag                       true
% 3.12/1.03  --res_lit_sel                           adaptive
% 3.12/1.03  --res_lit_sel_side                      none
% 3.12/1.03  --res_ordering                          kbo
% 3.12/1.03  --res_to_prop_solver                    active
% 3.12/1.03  --res_prop_simpl_new                    false
% 3.12/1.03  --res_prop_simpl_given                  true
% 3.12/1.03  --res_passive_queue_type                priority_queues
% 3.12/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/1.03  --res_passive_queues_freq               [15;5]
% 3.12/1.03  --res_forward_subs                      full
% 3.12/1.03  --res_backward_subs                     full
% 3.12/1.03  --res_forward_subs_resolution           true
% 3.12/1.03  --res_backward_subs_resolution          true
% 3.12/1.03  --res_orphan_elimination                true
% 3.12/1.03  --res_time_limit                        2.
% 3.12/1.03  --res_out_proof                         true
% 3.12/1.03  
% 3.12/1.03  ------ Superposition Options
% 3.12/1.03  
% 3.12/1.03  --superposition_flag                    true
% 3.12/1.03  --sup_passive_queue_type                priority_queues
% 3.12/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/1.03  --sup_passive_queues_freq               [8;1;4]
% 3.12/1.03  --demod_completeness_check              fast
% 3.12/1.03  --demod_use_ground                      true
% 3.12/1.03  --sup_to_prop_solver                    passive
% 3.12/1.03  --sup_prop_simpl_new                    true
% 3.12/1.03  --sup_prop_simpl_given                  true
% 3.12/1.03  --sup_fun_splitting                     true
% 3.12/1.03  --sup_smt_interval                      50000
% 3.12/1.03  
% 3.12/1.03  ------ Superposition Simplification Setup
% 3.12/1.03  
% 3.12/1.03  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.12/1.03  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.12/1.03  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.12/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.12/1.03  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.12/1.03  --sup_immed_triv                        [TrivRules]
% 3.12/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_immed_bw_main                     []
% 3.12/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.12/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_input_bw                          []
% 3.12/1.03  
% 3.12/1.03  ------ Combination Options
% 3.12/1.03  
% 3.12/1.03  --comb_res_mult                         3
% 3.12/1.03  --comb_sup_mult                         2
% 3.12/1.03  --comb_inst_mult                        10
% 3.12/1.03  
% 3.12/1.03  ------ Debug Options
% 3.12/1.03  
% 3.12/1.03  --dbg_backtrace                         false
% 3.12/1.03  --dbg_dump_prop_clauses                 false
% 3.12/1.03  --dbg_dump_prop_clauses_file            -
% 3.12/1.03  --dbg_out_stat                          false
% 3.12/1.03  ------ Parsing...
% 3.12/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.12/1.03  ------ Proving...
% 3.12/1.03  ------ Problem Properties 
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  clauses                                 22
% 3.12/1.03  conjectures                             4
% 3.12/1.03  EPR                                     1
% 3.12/1.03  Horn                                    20
% 3.12/1.03  unary                                   4
% 3.12/1.03  binary                                  3
% 3.12/1.03  lits                                    61
% 3.12/1.03  lits eq                                 5
% 3.12/1.03  fd_pure                                 0
% 3.12/1.03  fd_pseudo                               0
% 3.12/1.03  fd_cond                                 0
% 3.12/1.03  fd_pseudo_cond                          3
% 3.12/1.03  AC symbols                              0
% 3.12/1.03  
% 3.12/1.03  ------ Schedule dynamic 5 is on 
% 3.12/1.03  
% 3.12/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  ------ 
% 3.12/1.03  Current options:
% 3.12/1.03  ------ 
% 3.12/1.03  
% 3.12/1.03  ------ Input Options
% 3.12/1.03  
% 3.12/1.03  --out_options                           all
% 3.12/1.03  --tptp_safe_out                         true
% 3.12/1.03  --problem_path                          ""
% 3.12/1.03  --include_path                          ""
% 3.12/1.03  --clausifier                            res/vclausify_rel
% 3.12/1.03  --clausifier_options                    ""
% 3.12/1.03  --stdin                                 false
% 3.12/1.03  --stats_out                             all
% 3.12/1.03  
% 3.12/1.03  ------ General Options
% 3.12/1.03  
% 3.12/1.03  --fof                                   false
% 3.12/1.03  --time_out_real                         305.
% 3.12/1.03  --time_out_virtual                      -1.
% 3.12/1.03  --symbol_type_check                     false
% 3.12/1.03  --clausify_out                          false
% 3.12/1.03  --sig_cnt_out                           false
% 3.12/1.03  --trig_cnt_out                          false
% 3.12/1.03  --trig_cnt_out_tolerance                1.
% 3.12/1.03  --trig_cnt_out_sk_spl                   false
% 3.12/1.03  --abstr_cl_out                          false
% 3.12/1.03  
% 3.12/1.03  ------ Global Options
% 3.12/1.03  
% 3.12/1.03  --schedule                              default
% 3.12/1.03  --add_important_lit                     false
% 3.12/1.03  --prop_solver_per_cl                    1000
% 3.12/1.03  --min_unsat_core                        false
% 3.12/1.03  --soft_assumptions                      false
% 3.12/1.03  --soft_lemma_size                       3
% 3.12/1.03  --prop_impl_unit_size                   0
% 3.12/1.03  --prop_impl_unit                        []
% 3.12/1.03  --share_sel_clauses                     true
% 3.12/1.03  --reset_solvers                         false
% 3.12/1.03  --bc_imp_inh                            [conj_cone]
% 3.12/1.03  --conj_cone_tolerance                   3.
% 3.12/1.03  --extra_neg_conj                        none
% 3.12/1.03  --large_theory_mode                     true
% 3.12/1.03  --prolific_symb_bound                   200
% 3.12/1.03  --lt_threshold                          2000
% 3.12/1.03  --clause_weak_htbl                      true
% 3.12/1.03  --gc_record_bc_elim                     false
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing Options
% 3.12/1.03  
% 3.12/1.03  --preprocessing_flag                    true
% 3.12/1.03  --time_out_prep_mult                    0.1
% 3.12/1.03  --splitting_mode                        input
% 3.12/1.03  --splitting_grd                         true
% 3.12/1.03  --splitting_cvd                         false
% 3.12/1.03  --splitting_cvd_svl                     false
% 3.12/1.03  --splitting_nvd                         32
% 3.12/1.03  --sub_typing                            true
% 3.12/1.03  --prep_gs_sim                           true
% 3.12/1.03  --prep_unflatten                        true
% 3.12/1.03  --prep_res_sim                          true
% 3.12/1.03  --prep_upred                            true
% 3.12/1.03  --prep_sem_filter                       exhaustive
% 3.12/1.03  --prep_sem_filter_out                   false
% 3.12/1.03  --pred_elim                             true
% 3.12/1.03  --res_sim_input                         true
% 3.12/1.03  --eq_ax_congr_red                       true
% 3.12/1.03  --pure_diseq_elim                       true
% 3.12/1.03  --brand_transform                       false
% 3.12/1.03  --non_eq_to_eq                          false
% 3.12/1.03  --prep_def_merge                        true
% 3.12/1.03  --prep_def_merge_prop_impl              false
% 3.12/1.03  --prep_def_merge_mbd                    true
% 3.12/1.03  --prep_def_merge_tr_red                 false
% 3.12/1.03  --prep_def_merge_tr_cl                  false
% 3.12/1.03  --smt_preprocessing                     true
% 3.12/1.03  --smt_ac_axioms                         fast
% 3.12/1.03  --preprocessed_out                      false
% 3.12/1.03  --preprocessed_stats                    false
% 3.12/1.03  
% 3.12/1.03  ------ Abstraction refinement Options
% 3.12/1.03  
% 3.12/1.03  --abstr_ref                             []
% 3.12/1.03  --abstr_ref_prep                        false
% 3.12/1.03  --abstr_ref_until_sat                   false
% 3.12/1.03  --abstr_ref_sig_restrict                funpre
% 3.12/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/1.03  --abstr_ref_under                       []
% 3.12/1.03  
% 3.12/1.03  ------ SAT Options
% 3.12/1.03  
% 3.12/1.03  --sat_mode                              false
% 3.12/1.03  --sat_fm_restart_options                ""
% 3.12/1.03  --sat_gr_def                            false
% 3.12/1.03  --sat_epr_types                         true
% 3.12/1.03  --sat_non_cyclic_types                  false
% 3.12/1.03  --sat_finite_models                     false
% 3.12/1.03  --sat_fm_lemmas                         false
% 3.12/1.03  --sat_fm_prep                           false
% 3.12/1.03  --sat_fm_uc_incr                        true
% 3.12/1.03  --sat_out_model                         small
% 3.12/1.03  --sat_out_clauses                       false
% 3.12/1.03  
% 3.12/1.03  ------ QBF Options
% 3.12/1.03  
% 3.12/1.03  --qbf_mode                              false
% 3.12/1.03  --qbf_elim_univ                         false
% 3.12/1.03  --qbf_dom_inst                          none
% 3.12/1.03  --qbf_dom_pre_inst                      false
% 3.12/1.03  --qbf_sk_in                             false
% 3.12/1.03  --qbf_pred_elim                         true
% 3.12/1.03  --qbf_split                             512
% 3.12/1.03  
% 3.12/1.03  ------ BMC1 Options
% 3.12/1.03  
% 3.12/1.03  --bmc1_incremental                      false
% 3.12/1.03  --bmc1_axioms                           reachable_all
% 3.12/1.03  --bmc1_min_bound                        0
% 3.12/1.03  --bmc1_max_bound                        -1
% 3.12/1.03  --bmc1_max_bound_default                -1
% 3.12/1.03  --bmc1_symbol_reachability              true
% 3.12/1.03  --bmc1_property_lemmas                  false
% 3.12/1.03  --bmc1_k_induction                      false
% 3.12/1.03  --bmc1_non_equiv_states                 false
% 3.12/1.03  --bmc1_deadlock                         false
% 3.12/1.03  --bmc1_ucm                              false
% 3.12/1.03  --bmc1_add_unsat_core                   none
% 3.12/1.03  --bmc1_unsat_core_children              false
% 3.12/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/1.03  --bmc1_out_stat                         full
% 3.12/1.03  --bmc1_ground_init                      false
% 3.12/1.03  --bmc1_pre_inst_next_state              false
% 3.12/1.03  --bmc1_pre_inst_state                   false
% 3.12/1.03  --bmc1_pre_inst_reach_state             false
% 3.12/1.03  --bmc1_out_unsat_core                   false
% 3.12/1.03  --bmc1_aig_witness_out                  false
% 3.12/1.03  --bmc1_verbose                          false
% 3.12/1.03  --bmc1_dump_clauses_tptp                false
% 3.12/1.03  --bmc1_dump_unsat_core_tptp             false
% 3.12/1.03  --bmc1_dump_file                        -
% 3.12/1.03  --bmc1_ucm_expand_uc_limit              128
% 3.12/1.03  --bmc1_ucm_n_expand_iterations          6
% 3.12/1.03  --bmc1_ucm_extend_mode                  1
% 3.12/1.03  --bmc1_ucm_init_mode                    2
% 3.12/1.03  --bmc1_ucm_cone_mode                    none
% 3.12/1.03  --bmc1_ucm_reduced_relation_type        0
% 3.12/1.03  --bmc1_ucm_relax_model                  4
% 3.12/1.03  --bmc1_ucm_full_tr_after_sat            true
% 3.12/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/1.03  --bmc1_ucm_layered_model                none
% 3.12/1.03  --bmc1_ucm_max_lemma_size               10
% 3.12/1.03  
% 3.12/1.03  ------ AIG Options
% 3.12/1.03  
% 3.12/1.03  --aig_mode                              false
% 3.12/1.03  
% 3.12/1.03  ------ Instantiation Options
% 3.12/1.03  
% 3.12/1.03  --instantiation_flag                    true
% 3.12/1.03  --inst_sos_flag                         true
% 3.12/1.03  --inst_sos_phase                        true
% 3.12/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/1.03  --inst_lit_sel_side                     none
% 3.12/1.03  --inst_solver_per_active                1400
% 3.12/1.03  --inst_solver_calls_frac                1.
% 3.12/1.03  --inst_passive_queue_type               priority_queues
% 3.12/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/1.03  --inst_passive_queues_freq              [25;2]
% 3.12/1.03  --inst_dismatching                      true
% 3.12/1.03  --inst_eager_unprocessed_to_passive     true
% 3.12/1.03  --inst_prop_sim_given                   true
% 3.12/1.03  --inst_prop_sim_new                     false
% 3.12/1.03  --inst_subs_new                         false
% 3.12/1.03  --inst_eq_res_simp                      false
% 3.12/1.03  --inst_subs_given                       false
% 3.12/1.03  --inst_orphan_elimination               true
% 3.12/1.03  --inst_learning_loop_flag               true
% 3.12/1.03  --inst_learning_start                   3000
% 3.12/1.03  --inst_learning_factor                  2
% 3.12/1.03  --inst_start_prop_sim_after_learn       3
% 3.12/1.03  --inst_sel_renew                        solver
% 3.12/1.03  --inst_lit_activity_flag                true
% 3.12/1.03  --inst_restr_to_given                   false
% 3.12/1.03  --inst_activity_threshold               500
% 3.12/1.03  --inst_out_proof                        true
% 3.12/1.03  
% 3.12/1.03  ------ Resolution Options
% 3.12/1.03  
% 3.12/1.03  --resolution_flag                       false
% 3.12/1.03  --res_lit_sel                           adaptive
% 3.12/1.03  --res_lit_sel_side                      none
% 3.12/1.03  --res_ordering                          kbo
% 3.12/1.03  --res_to_prop_solver                    active
% 3.12/1.03  --res_prop_simpl_new                    false
% 3.12/1.03  --res_prop_simpl_given                  true
% 3.12/1.03  --res_passive_queue_type                priority_queues
% 3.12/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/1.03  --res_passive_queues_freq               [15;5]
% 3.12/1.03  --res_forward_subs                      full
% 3.12/1.03  --res_backward_subs                     full
% 3.12/1.03  --res_forward_subs_resolution           true
% 3.12/1.03  --res_backward_subs_resolution          true
% 3.12/1.03  --res_orphan_elimination                true
% 3.12/1.03  --res_time_limit                        2.
% 3.12/1.03  --res_out_proof                         true
% 3.12/1.03  
% 3.12/1.03  ------ Superposition Options
% 3.12/1.03  
% 3.12/1.03  --superposition_flag                    true
% 3.12/1.03  --sup_passive_queue_type                priority_queues
% 3.12/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/1.03  --sup_passive_queues_freq               [8;1;4]
% 3.12/1.03  --demod_completeness_check              fast
% 3.12/1.03  --demod_use_ground                      true
% 3.12/1.03  --sup_to_prop_solver                    passive
% 3.12/1.03  --sup_prop_simpl_new                    true
% 3.12/1.03  --sup_prop_simpl_given                  true
% 3.12/1.03  --sup_fun_splitting                     true
% 3.12/1.03  --sup_smt_interval                      50000
% 3.12/1.03  
% 3.12/1.03  ------ Superposition Simplification Setup
% 3.12/1.03  
% 3.12/1.03  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.12/1.03  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.12/1.03  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.12/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.12/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.12/1.03  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.12/1.03  --sup_immed_triv                        [TrivRules]
% 3.12/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_immed_bw_main                     []
% 3.12/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.12/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/1.03  --sup_input_bw                          []
% 3.12/1.03  
% 3.12/1.03  ------ Combination Options
% 3.12/1.03  
% 3.12/1.03  --comb_res_mult                         3
% 3.12/1.03  --comb_sup_mult                         2
% 3.12/1.03  --comb_inst_mult                        10
% 3.12/1.03  
% 3.12/1.03  ------ Debug Options
% 3.12/1.03  
% 3.12/1.03  --dbg_backtrace                         false
% 3.12/1.03  --dbg_dump_prop_clauses                 false
% 3.12/1.03  --dbg_dump_prop_clauses_file            -
% 3.12/1.03  --dbg_out_stat                          false
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  ------ Proving...
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  % SZS status Theorem for theBenchmark.p
% 3.12/1.03  
% 3.12/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 3.12/1.03  
% 3.12/1.03  fof(f1,axiom,(
% 3.12/1.03    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f26,plain,(
% 3.12/1.03    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.12/1.03    inference(nnf_transformation,[],[f1])).
% 3.12/1.03  
% 3.12/1.03  fof(f27,plain,(
% 3.12/1.03    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.12/1.03    inference(flattening,[],[f26])).
% 3.12/1.03  
% 3.12/1.03  fof(f28,plain,(
% 3.12/1.03    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.12/1.03    inference(rectify,[],[f27])).
% 3.12/1.03  
% 3.12/1.03  fof(f29,plain,(
% 3.12/1.03    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f30,plain,(
% 3.12/1.03    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.12/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f28,f29])).
% 3.12/1.03  
% 3.12/1.03  fof(f42,plain,(
% 3.12/1.03    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 3.12/1.03    inference(cnf_transformation,[],[f30])).
% 3.12/1.03  
% 3.12/1.03  fof(f65,plain,(
% 3.12/1.03    ( ! [X4,X0,X1] : (r2_hidden(X4,k2_xboole_0(X0,X1)) | ~r2_hidden(X4,X1)) )),
% 3.12/1.03    inference(equality_resolution,[],[f42])).
% 3.12/1.03  
% 3.12/1.03  fof(f9,conjecture,(
% 3.12/1.03    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f10,negated_conjecture,(
% 3.12/1.03    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ! [X3] : (m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1))) => m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1)))))))),
% 3.12/1.03    inference(negated_conjecture,[],[f9])).
% 3.12/1.03  
% 3.12/1.03  fof(f24,plain,(
% 3.12/1.03    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.12/1.03    inference(ennf_transformation,[],[f10])).
% 3.12/1.03  
% 3.12/1.03  fof(f25,plain,(
% 3.12/1.03    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.12/1.03    inference(flattening,[],[f24])).
% 3.12/1.03  
% 3.12/1.03  fof(f38,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) => (~m1_subset_1(k2_xboole_0(X2,sK5),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(sK5,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f37,plain,(
% 3.12/1.03    ( ! [X0,X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) => (? [X3] : (~m1_subset_1(k2_xboole_0(sK4,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(X0,X1))))) )),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f36,plain,(
% 3.12/1.03    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,sK3))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,sK3)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,sK3)))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f35,plain,(
% 3.12/1.03    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(X0,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~m1_subset_1(k2_xboole_0(X2,X3),u1_struct_0(k9_yellow_6(sK2,X1))) & m1_subset_1(X3,u1_struct_0(k9_yellow_6(sK2,X1)))) & m1_subset_1(X2,u1_struct_0(k9_yellow_6(sK2,X1)))) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f39,plain,(
% 3.12/1.03    (((~m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) & m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3)))) & m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3)))) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 3.12/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f25,f38,f37,f36,f35])).
% 3.12/1.03  
% 3.12/1.03  fof(f63,plain,(
% 3.12/1.03    m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3)))),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f7,axiom,(
% 3.12/1.03    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) => ? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))))))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f20,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.12/1.03    inference(ennf_transformation,[],[f7])).
% 3.12/1.03  
% 3.12/1.03  fof(f21,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.03    inference(flattening,[],[f20])).
% 3.12/1.03  
% 3.12/1.03  fof(f31,plain,(
% 3.12/1.03    ! [X2,X1,X0] : (? [X3] : (v3_pre_topc(X3,X0) & r2_hidden(X1,X3) & X2 = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (v3_pre_topc(sK1(X0,X1,X2),X0) & r2_hidden(X1,sK1(X0,X1,X2)) & sK1(X0,X1,X2) = X2 & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.12/1.03    introduced(choice_axiom,[])).
% 3.12/1.03  
% 3.12/1.03  fof(f32,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : ((v3_pre_topc(sK1(X0,X1,X2),X0) & r2_hidden(X1,sK1(X0,X1,X2)) & sK1(X0,X1,X2) = X2 & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f21,f31])).
% 3.12/1.03  
% 3.12/1.03  fof(f52,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (sK1(X0,X1,X2) = X2 | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f32])).
% 3.12/1.03  
% 3.12/1.03  fof(f58,plain,(
% 3.12/1.03    ~v2_struct_0(sK2)),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f59,plain,(
% 3.12/1.03    v2_pre_topc(sK2)),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f60,plain,(
% 3.12/1.03    l1_pre_topc(sK2)),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f61,plain,(
% 3.12/1.03    m1_subset_1(sK3,u1_struct_0(sK2))),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f51,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f32])).
% 3.12/1.03  
% 3.12/1.03  fof(f62,plain,(
% 3.12/1.03    m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3)))),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f3,axiom,(
% 3.12/1.03    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f13,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 3.12/1.03    inference(ennf_transformation,[],[f3])).
% 3.12/1.03  
% 3.12/1.03  fof(f14,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.12/1.03    inference(flattening,[],[f13])).
% 3.12/1.03  
% 3.12/1.03  fof(f47,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (k2_xboole_0(X1,X2) = k4_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.12/1.03    inference(cnf_transformation,[],[f14])).
% 3.12/1.03  
% 3.12/1.03  fof(f2,axiom,(
% 3.12/1.03    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f11,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 3.12/1.03    inference(ennf_transformation,[],[f2])).
% 3.12/1.03  
% 3.12/1.03  fof(f12,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.12/1.03    inference(flattening,[],[f11])).
% 3.12/1.03  
% 3.12/1.03  fof(f46,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.12/1.03    inference(cnf_transformation,[],[f12])).
% 3.12/1.03  
% 3.12/1.03  fof(f8,axiom,(
% 3.12/1.03    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))))))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f22,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.12/1.03    inference(ennf_transformation,[],[f8])).
% 3.12/1.03  
% 3.12/1.03  fof(f23,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : ((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) <=> (v3_pre_topc(X2,X0) & r2_hidden(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.03    inference(flattening,[],[f22])).
% 3.12/1.03  
% 3.12/1.03  fof(f33,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | (~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2))) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.03    inference(nnf_transformation,[],[f23])).
% 3.12/1.03  
% 3.12/1.03  fof(f34,plain,(
% 3.12/1.03    ! [X0] : (! [X1] : (! [X2] : (((r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2)) & ((v3_pre_topc(X2,X0) & r2_hidden(X1,X2)) | ~r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.12/1.03    inference(flattening,[],[f33])).
% 3.12/1.03  
% 3.12/1.03  fof(f57,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (r2_hidden(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~v3_pre_topc(X2,X0) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f34])).
% 3.12/1.03  
% 3.12/1.03  fof(f5,axiom,(
% 3.12/1.03    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f16,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 3.12/1.03    inference(ennf_transformation,[],[f5])).
% 3.12/1.03  
% 3.12/1.03  fof(f17,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.12/1.03    inference(flattening,[],[f16])).
% 3.12/1.03  
% 3.12/1.03  fof(f49,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f17])).
% 3.12/1.03  
% 3.12/1.03  fof(f4,axiom,(
% 3.12/1.03    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f15,plain,(
% 3.12/1.03    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 3.12/1.03    inference(ennf_transformation,[],[f4])).
% 3.12/1.03  
% 3.12/1.03  fof(f48,plain,(
% 3.12/1.03    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f15])).
% 3.12/1.03  
% 3.12/1.03  fof(f64,plain,(
% 3.12/1.03    ~m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3)))),
% 3.12/1.03    inference(cnf_transformation,[],[f39])).
% 3.12/1.03  
% 3.12/1.03  fof(f54,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (v3_pre_topc(sK1(X0,X1,X2),X0) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f32])).
% 3.12/1.03  
% 3.12/1.03  fof(f6,axiom,(
% 3.12/1.03    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X2,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v3_pre_topc(k2_xboole_0(X1,X2),X0))),
% 3.12/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/1.03  
% 3.12/1.03  fof(f18,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.12/1.03    inference(ennf_transformation,[],[f6])).
% 3.12/1.03  
% 3.12/1.03  fof(f19,plain,(
% 3.12/1.03    ! [X0,X1,X2] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.12/1.03    inference(flattening,[],[f18])).
% 3.12/1.03  
% 3.12/1.03  fof(f50,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (v3_pre_topc(k2_xboole_0(X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X2,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f19])).
% 3.12/1.03  
% 3.12/1.03  fof(f53,plain,(
% 3.12/1.03    ( ! [X2,X0,X1] : (r2_hidden(X1,sK1(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.12/1.03    inference(cnf_transformation,[],[f32])).
% 3.12/1.03  
% 3.12/1.03  cnf(c_3,plain,
% 3.12/1.03      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,k2_xboole_0(X2,X1)) ),
% 3.12/1.03      inference(cnf_transformation,[],[f65]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1023,plain,
% 3.12/1.03      ( r2_hidden(X0,X1) != iProver_top
% 3.12/1.03      | r2_hidden(X0,k2_xboole_0(X2,X1)) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_19,negated_conjecture,
% 3.12/1.03      ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
% 3.12/1.03      inference(cnf_transformation,[],[f63]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1015,plain,
% 3.12/1.03      ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_13,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | v2_struct_0(X1)
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1)
% 3.12/1.03      | sK1(X1,X0,X2) = X2 ),
% 3.12/1.03      inference(cnf_transformation,[],[f52]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_24,negated_conjecture,
% 3.12/1.03      ( ~ v2_struct_0(sK2) ),
% 3.12/1.03      inference(cnf_transformation,[],[f58]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_392,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1)
% 3.12/1.03      | sK1(X1,X0,X2) = X2
% 3.12/1.03      | sK2 != X1 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_13,c_24]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_393,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | ~ v2_pre_topc(sK2)
% 3.12/1.03      | ~ l1_pre_topc(sK2)
% 3.12/1.03      | sK1(sK2,X1,X0) = X0 ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_392]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_23,negated_conjecture,
% 3.12/1.03      ( v2_pre_topc(sK2) ),
% 3.12/1.03      inference(cnf_transformation,[],[f59]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_22,negated_conjecture,
% 3.12/1.03      ( l1_pre_topc(sK2) ),
% 3.12/1.03      inference(cnf_transformation,[],[f60]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_397,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | sK1(sK2,X1,X0) = X0 ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_393,c_23,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1007,plain,
% 3.12/1.03      ( sK1(sK2,X0,X1) = X1
% 3.12/1.03      | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0))) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_397]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1371,plain,
% 3.12/1.03      ( sK1(sK2,sK3,sK5) = sK5
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1015,c_1007]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_21,negated_conjecture,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 3.12/1.03      inference(cnf_transformation,[],[f61]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1118,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,sK3)))
% 3.12/1.03      | ~ m1_subset_1(sK3,u1_struct_0(sK2))
% 3.12/1.03      | sK1(sK2,sK3,X0) = X0 ),
% 3.12/1.03      inference(instantiation,[status(thm)],[c_397]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1237,plain,
% 3.12/1.03      ( ~ m1_subset_1(sK3,u1_struct_0(sK2))
% 3.12/1.03      | ~ m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3)))
% 3.12/1.03      | sK1(sK2,sK3,sK5) = sK5 ),
% 3.12/1.03      inference(instantiation,[status(thm)],[c_1118]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1376,plain,
% 3.12/1.03      ( sK1(sK2,sK3,sK5) = sK5 ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_1371,c_21,c_19,c_1237]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_14,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | v2_struct_0(X1)
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1) ),
% 3.12/1.03      inference(cnf_transformation,[],[f51]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_371,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1)
% 3.12/1.03      | sK2 != X1 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_14,c_24]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_372,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ v2_pre_topc(sK2)
% 3.12/1.03      | ~ l1_pre_topc(sK2) ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_371]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_376,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_372,c_23,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1008,plain,
% 3.12/1.03      ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) != iProver_top
% 3.12/1.03      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | m1_subset_1(sK1(sK2,X1,X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_376]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1767,plain,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top
% 3.12/1.03      | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1376,c_1008]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_28,plain,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_30,plain,
% 3.12/1.03      ( m1_subset_1(sK5,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2441,plain,
% 3.12/1.03      ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_1767,c_28,c_30]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_20,negated_conjecture,
% 3.12/1.03      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) ),
% 3.12/1.03      inference(cnf_transformation,[],[f62]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1014,plain,
% 3.12/1.03      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1372,plain,
% 3.12/1.03      ( sK1(sK2,sK3,sK4) = sK4
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1014,c_1007]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1240,plain,
% 3.12/1.03      ( ~ m1_subset_1(sK3,u1_struct_0(sK2))
% 3.12/1.03      | ~ m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3)))
% 3.12/1.03      | sK1(sK2,sK3,sK4) = sK4 ),
% 3.12/1.03      inference(instantiation,[status(thm)],[c_1118]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1452,plain,
% 3.12/1.03      ( sK1(sK2,sK3,sK4) = sK4 ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_1372,c_21,c_20,c_1240]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1768,plain,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top
% 3.12/1.03      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1452,c_1008]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_29,plain,
% 3.12/1.03      ( m1_subset_1(sK4,u1_struct_0(k9_yellow_6(sK2,sK3))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2458,plain,
% 3.12/1.03      ( m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_1768,c_28,c_29]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_7,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.12/1.03      | k4_subset_1(X1,X2,X0) = k2_xboole_0(X2,X0) ),
% 3.12/1.03      inference(cnf_transformation,[],[f47]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1019,plain,
% 3.12/1.03      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
% 3.12/1.03      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
% 3.12/1.03      | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2462,plain,
% 3.12/1.03      ( k4_subset_1(u1_struct_0(sK2),sK4,X0) = k2_xboole_0(sK4,X0)
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_2458,c_1019]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_4997,plain,
% 3.12/1.03      ( k4_subset_1(u1_struct_0(sK2),sK4,sK5) = k2_xboole_0(sK4,sK5) ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_2441,c_2462]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_6,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.12/1.03      | m1_subset_1(k4_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 3.12/1.03      inference(cnf_transformation,[],[f46]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1020,plain,
% 3.12/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.12/1.03      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 3.12/1.03      | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_6909,plain,
% 3.12/1.03      ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
% 3.12/1.03      | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_4997,c_1020]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_8640,plain,
% 3.12/1.03      ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_6909,c_28,c_29,c_30,c_1767,c_1768]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_15,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,X1)
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ r2_hidden(X2,X0)
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.12/1.03      | v2_struct_0(X1)
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1) ),
% 3.12/1.03      inference(cnf_transformation,[],[f57]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_342,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,X1)
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ r2_hidden(X2,X0)
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(X1,X2)))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1)
% 3.12/1.03      | sK2 != X1 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_15,c_24]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_343,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ r2_hidden(X1,X0)
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ v2_pre_topc(sK2)
% 3.12/1.03      | ~ l1_pre_topc(sK2) ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_342]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_347,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ r2_hidden(X1,X0)
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_343,c_23,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_9,plain,
% 3.12/1.03      ( m1_subset_1(X0,X1)
% 3.12/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.12/1.03      | ~ r2_hidden(X0,X2) ),
% 3.12/1.03      inference(cnf_transformation,[],[f49]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_363,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,sK2)
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ r2_hidden(X1,X0)
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) ),
% 3.12/1.03      inference(forward_subsumption_resolution,[status(thm)],[c_347,c_9]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1009,plain,
% 3.12/1.03      ( v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | r2_hidden(X1,X0) != iProver_top
% 3.12/1.03      | r2_hidden(X0,u1_struct_0(k9_yellow_6(sK2,X1))) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_363]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_8,plain,
% 3.12/1.03      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.12/1.03      inference(cnf_transformation,[],[f48]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1018,plain,
% 3.12/1.03      ( m1_subset_1(X0,X1) = iProver_top
% 3.12/1.03      | r2_hidden(X0,X1) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1986,plain,
% 3.12/1.03      ( v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) = iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | r2_hidden(X1,X0) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1009,c_1018]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_18,negated_conjecture,
% 3.12/1.03      ( ~ m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) ),
% 3.12/1.03      inference(cnf_transformation,[],[f64]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1016,plain,
% 3.12/1.03      ( m1_subset_1(k2_xboole_0(sK4,sK5),u1_struct_0(k9_yellow_6(sK2,sK3))) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_4899,plain,
% 3.12/1.03      ( v3_pre_topc(k2_xboole_0(sK4,sK5),sK2) != iProver_top
% 3.12/1.03      | m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1986,c_1016]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_11,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(X0,X1,X2),X0)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
% 3.12/1.03      | v2_struct_0(X0)
% 3.12/1.03      | ~ v2_pre_topc(X0)
% 3.12/1.03      | ~ l1_pre_topc(X0) ),
% 3.12/1.03      inference(cnf_transformation,[],[f54]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_273,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(X0,X1,X2),X0)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X0,X1)))
% 3.12/1.03      | ~ v2_pre_topc(X0)
% 3.12/1.03      | ~ l1_pre_topc(X0)
% 3.12/1.03      | sK2 != X0 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_11,c_24]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_274,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(sK2,X0,X1),sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0)))
% 3.12/1.03      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 3.12/1.03      | ~ v2_pre_topc(sK2)
% 3.12/1.03      | ~ l1_pre_topc(sK2) ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_273]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_278,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(sK2,X0,X1),sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0)))
% 3.12/1.03      | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_274,c_23,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1012,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(sK2,X0,X1),sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(X1,u1_struct_0(k9_yellow_6(sK2,X0))) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_278]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1691,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(sK2,sK3,sK5),sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1015,c_1012]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1694,plain,
% 3.12/1.03      ( v3_pre_topc(sK5,sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(light_normalisation,[status(thm)],[c_1691,c_1376]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_10,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,X1)
% 3.12/1.03      | ~ v3_pre_topc(X2,X1)
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X2,X0),X1)
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1) ),
% 3.12/1.03      inference(cnf_transformation,[],[f50]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_465,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,X1)
% 3.12/1.03      | ~ v3_pre_topc(X2,X1)
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X2,X0),X1)
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | sK2 != X1 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_10,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_466,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,sK2)
% 3.12/1.03      | ~ v3_pre_topc(X1,sK2)
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ v2_pre_topc(sK2) ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_465]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_470,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
% 3.12/1.03      | ~ v3_pre_topc(X1,sK2)
% 3.12/1.03      | ~ v3_pre_topc(X0,sK2) ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_466,c_23]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_471,plain,
% 3.12/1.03      ( ~ v3_pre_topc(X0,sK2)
% 3.12/1.03      | ~ v3_pre_topc(X1,sK2)
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X1,X0),sK2)
% 3.12/1.03      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 3.12/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 3.12/1.03      inference(renaming,[status(thm)],[c_470]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1005,plain,
% 3.12/1.03      ( v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | v3_pre_topc(X1,sK2) != iProver_top
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(X1,X0),sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_471]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2464,plain,
% 3.12/1.03      ( v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
% 3.12/1.03      | v3_pre_topc(sK4,sK2) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_2458,c_1005]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1692,plain,
% 3.12/1.03      ( v3_pre_topc(sK1(sK2,sK3,sK4),sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1014,c_1012]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1693,plain,
% 3.12/1.03      ( v3_pre_topc(sK4,sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 3.12/1.03      inference(light_normalisation,[status(thm)],[c_1692,c_1452]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2591,plain,
% 3.12/1.03      ( v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
% 3.12/1.03      | v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_2464,c_28,c_1693]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2592,plain,
% 3.12/1.03      ( v3_pre_topc(X0,sK2) != iProver_top
% 3.12/1.03      | v3_pre_topc(k2_xboole_0(sK4,X0),sK2) = iProver_top
% 3.12/1.03      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 3.12/1.03      inference(renaming,[status(thm)],[c_2591]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_2599,plain,
% 3.12/1.03      ( v3_pre_topc(k2_xboole_0(sK4,sK5),sK2) = iProver_top
% 3.12/1.03      | v3_pre_topc(sK5,sK2) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_2441,c_2592]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_5146,plain,
% 3.12/1.03      ( m1_subset_1(k2_xboole_0(sK4,sK5),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 3.12/1.03      | r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_4899,c_28,c_1694,c_2599]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_8656,plain,
% 3.12/1.03      ( r2_hidden(sK3,k2_xboole_0(sK4,sK5)) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_8640,c_5146]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_8807,plain,
% 3.12/1.03      ( r2_hidden(sK3,sK5) != iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1023,c_8656]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_12,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | r2_hidden(X0,sK1(X1,X0,X2))
% 3.12/1.03      | v2_struct_0(X1)
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1) ),
% 3.12/1.03      inference(cnf_transformation,[],[f53]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_413,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.12/1.03      | ~ m1_subset_1(X2,u1_struct_0(k9_yellow_6(X1,X0)))
% 3.12/1.03      | r2_hidden(X0,sK1(X1,X0,X2))
% 3.12/1.03      | ~ v2_pre_topc(X1)
% 3.12/1.03      | ~ l1_pre_topc(X1)
% 3.12/1.03      | sK2 != X1 ),
% 3.12/1.03      inference(resolution_lifted,[status(thm)],[c_12,c_24]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_414,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | r2_hidden(X1,sK1(sK2,X1,X0))
% 3.12/1.03      | ~ v2_pre_topc(sK2)
% 3.12/1.03      | ~ l1_pre_topc(sK2) ),
% 3.12/1.03      inference(unflattening,[status(thm)],[c_413]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_418,plain,
% 3.12/1.03      ( ~ m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1)))
% 3.12/1.03      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 3.12/1.03      | r2_hidden(X1,sK1(sK2,X1,X0)) ),
% 3.12/1.03      inference(global_propositional_subsumption,
% 3.12/1.03                [status(thm)],
% 3.12/1.03                [c_414,c_23,c_22]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1006,plain,
% 3.12/1.03      ( m1_subset_1(X0,u1_struct_0(k9_yellow_6(sK2,X1))) != iProver_top
% 3.12/1.03      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | r2_hidden(X1,sK1(sK2,X1,X0)) = iProver_top ),
% 3.12/1.03      inference(predicate_to_equality,[status(thm)],[c_418]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1455,plain,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | r2_hidden(sK3,sK1(sK2,sK3,sK5)) = iProver_top ),
% 3.12/1.03      inference(superposition,[status(thm)],[c_1015,c_1006]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(c_1458,plain,
% 3.12/1.03      ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 3.12/1.03      | r2_hidden(sK3,sK5) = iProver_top ),
% 3.12/1.03      inference(light_normalisation,[status(thm)],[c_1455,c_1376]) ).
% 3.12/1.03  
% 3.12/1.03  cnf(contradiction,plain,
% 3.12/1.03      ( $false ),
% 3.12/1.03      inference(minisat,[status(thm)],[c_8807,c_1458,c_28]) ).
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 3.12/1.03  
% 3.12/1.03  ------                               Statistics
% 3.12/1.03  
% 3.12/1.03  ------ General
% 3.12/1.03  
% 3.12/1.03  abstr_ref_over_cycles:                  0
% 3.12/1.03  abstr_ref_under_cycles:                 0
% 3.12/1.03  gc_basic_clause_elim:                   0
% 3.12/1.03  forced_gc_time:                         0
% 3.12/1.03  parsing_time:                           0.01
% 3.12/1.03  unif_index_cands_time:                  0.
% 3.12/1.03  unif_index_add_time:                    0.
% 3.12/1.03  orderings_time:                         0.
% 3.12/1.03  out_proof_time:                         0.016
% 3.12/1.03  total_time:                             0.406
% 3.12/1.03  num_of_symbols:                         48
% 3.12/1.03  num_of_terms:                           10212
% 3.12/1.03  
% 3.12/1.03  ------ Preprocessing
% 3.12/1.03  
% 3.12/1.03  num_of_splits:                          0
% 3.12/1.03  num_of_split_atoms:                     0
% 3.12/1.03  num_of_reused_defs:                     0
% 3.12/1.03  num_eq_ax_congr_red:                    26
% 3.12/1.03  num_of_sem_filtered_clauses:            1
% 3.12/1.03  num_of_subtypes:                        0
% 3.12/1.03  monotx_restored_types:                  0
% 3.12/1.03  sat_num_of_epr_types:                   0
% 3.12/1.03  sat_num_of_non_cyclic_types:            0
% 3.12/1.03  sat_guarded_non_collapsed_types:        0
% 3.12/1.03  num_pure_diseq_elim:                    0
% 3.12/1.03  simp_replaced_by:                       0
% 3.12/1.03  res_preprocessed:                       112
% 3.12/1.03  prep_upred:                             0
% 3.12/1.03  prep_unflattend:                        8
% 3.12/1.03  smt_new_axioms:                         0
% 3.12/1.03  pred_elim_cands:                        3
% 3.12/1.03  pred_elim:                              3
% 3.12/1.03  pred_elim_cl:                           3
% 3.12/1.03  pred_elim_cycles:                       5
% 3.12/1.03  merged_defs:                            0
% 3.12/1.03  merged_defs_ncl:                        0
% 3.12/1.03  bin_hyper_res:                          0
% 3.12/1.03  prep_cycles:                            4
% 3.12/1.03  pred_elim_time:                         0.006
% 3.12/1.03  splitting_time:                         0.
% 3.12/1.03  sem_filter_time:                        0.
% 3.12/1.03  monotx_time:                            0.
% 3.12/1.03  subtype_inf_time:                       0.
% 3.12/1.03  
% 3.12/1.03  ------ Problem properties
% 3.12/1.03  
% 3.12/1.03  clauses:                                22
% 3.12/1.03  conjectures:                            4
% 3.12/1.03  epr:                                    1
% 3.12/1.03  horn:                                   20
% 3.12/1.03  ground:                                 4
% 3.12/1.03  unary:                                  4
% 3.12/1.03  binary:                                 3
% 3.12/1.03  lits:                                   61
% 3.12/1.03  lits_eq:                                5
% 3.12/1.03  fd_pure:                                0
% 3.12/1.03  fd_pseudo:                              0
% 3.12/1.03  fd_cond:                                0
% 3.12/1.03  fd_pseudo_cond:                         3
% 3.12/1.03  ac_symbols:                             0
% 3.12/1.03  
% 3.12/1.03  ------ Propositional Solver
% 3.12/1.03  
% 3.12/1.03  prop_solver_calls:                      30
% 3.12/1.03  prop_fast_solver_calls:                 1090
% 3.12/1.03  smt_solver_calls:                       0
% 3.12/1.03  smt_fast_solver_calls:                  0
% 3.12/1.03  prop_num_of_clauses:                    4474
% 3.12/1.03  prop_preprocess_simplified:             10558
% 3.12/1.03  prop_fo_subsumed:                       56
% 3.12/1.03  prop_solver_time:                       0.
% 3.12/1.03  smt_solver_time:                        0.
% 3.12/1.03  smt_fast_solver_time:                   0.
% 3.12/1.03  prop_fast_solver_time:                  0.
% 3.12/1.03  prop_unsat_core_time:                   0.
% 3.12/1.03  
% 3.12/1.03  ------ QBF
% 3.12/1.03  
% 3.12/1.03  qbf_q_res:                              0
% 3.12/1.03  qbf_num_tautologies:                    0
% 3.12/1.03  qbf_prep_cycles:                        0
% 3.12/1.03  
% 3.12/1.03  ------ BMC1
% 3.12/1.03  
% 3.12/1.03  bmc1_current_bound:                     -1
% 3.12/1.03  bmc1_last_solved_bound:                 -1
% 3.12/1.03  bmc1_unsat_core_size:                   -1
% 3.12/1.03  bmc1_unsat_core_parents_size:           -1
% 3.12/1.03  bmc1_merge_next_fun:                    0
% 3.12/1.03  bmc1_unsat_core_clauses_time:           0.
% 3.12/1.03  
% 3.12/1.03  ------ Instantiation
% 3.12/1.03  
% 3.12/1.03  inst_num_of_clauses:                    1283
% 3.12/1.03  inst_num_in_passive:                    480
% 3.12/1.03  inst_num_in_active:                     449
% 3.12/1.03  inst_num_in_unprocessed:                354
% 3.12/1.03  inst_num_of_loops:                      500
% 3.12/1.03  inst_num_of_learning_restarts:          0
% 3.12/1.03  inst_num_moves_active_passive:          48
% 3.12/1.03  inst_lit_activity:                      0
% 3.12/1.03  inst_lit_activity_moves:                0
% 3.12/1.03  inst_num_tautologies:                   0
% 3.12/1.03  inst_num_prop_implied:                  0
% 3.12/1.03  inst_num_existing_simplified:           0
% 3.12/1.03  inst_num_eq_res_simplified:             0
% 3.12/1.03  inst_num_child_elim:                    0
% 3.12/1.03  inst_num_of_dismatching_blockings:      338
% 3.12/1.03  inst_num_of_non_proper_insts:           1120
% 3.12/1.03  inst_num_of_duplicates:                 0
% 3.12/1.03  inst_inst_num_from_inst_to_res:         0
% 3.12/1.03  inst_dismatching_checking_time:         0.
% 3.12/1.03  
% 3.12/1.03  ------ Resolution
% 3.12/1.03  
% 3.12/1.03  res_num_of_clauses:                     0
% 3.12/1.03  res_num_in_passive:                     0
% 3.12/1.03  res_num_in_active:                      0
% 3.12/1.03  res_num_of_loops:                       116
% 3.12/1.03  res_forward_subset_subsumed:            50
% 3.12/1.03  res_backward_subset_subsumed:           0
% 3.12/1.03  res_forward_subsumed:                   0
% 3.12/1.03  res_backward_subsumed:                  0
% 3.12/1.03  res_forward_subsumption_resolution:     1
% 3.12/1.03  res_backward_subsumption_resolution:    0
% 3.12/1.03  res_clause_to_clause_subsumption:       655
% 3.12/1.03  res_orphan_elimination:                 0
% 3.12/1.03  res_tautology_del:                      47
% 3.12/1.03  res_num_eq_res_simplified:              0
% 3.12/1.03  res_num_sel_changes:                    0
% 3.12/1.03  res_moves_from_active_to_pass:          0
% 3.12/1.03  
% 3.12/1.03  ------ Superposition
% 3.12/1.03  
% 3.12/1.03  sup_time_total:                         0.
% 3.12/1.03  sup_time_generating:                    0.
% 3.12/1.03  sup_time_sim_full:                      0.
% 3.12/1.03  sup_time_sim_immed:                     0.
% 3.12/1.03  
% 3.12/1.03  sup_num_of_clauses:                     222
% 3.12/1.03  sup_num_in_active:                      98
% 3.12/1.03  sup_num_in_passive:                     124
% 3.12/1.03  sup_num_of_loops:                       98
% 3.12/1.03  sup_fw_superposition:                   154
% 3.12/1.03  sup_bw_superposition:                   105
% 3.12/1.03  sup_immediate_simplified:               53
% 3.12/1.03  sup_given_eliminated:                   0
% 3.12/1.03  comparisons_done:                       0
% 3.12/1.03  comparisons_avoided:                    0
% 3.12/1.03  
% 3.12/1.03  ------ Simplifications
% 3.12/1.03  
% 3.12/1.03  
% 3.12/1.03  sim_fw_subset_subsumed:                 10
% 3.12/1.03  sim_bw_subset_subsumed:                 9
% 3.12/1.03  sim_fw_subsumed:                        10
% 3.12/1.03  sim_bw_subsumed:                        1
% 3.12/1.03  sim_fw_subsumption_res:                 0
% 3.12/1.03  sim_bw_subsumption_res:                 0
% 3.12/1.03  sim_tautology_del:                      14
% 3.12/1.03  sim_eq_tautology_del:                   8
% 3.12/1.03  sim_eq_res_simp:                        6
% 3.12/1.03  sim_fw_demodulated:                     0
% 3.12/1.03  sim_bw_demodulated:                     0
% 3.12/1.03  sim_light_normalised:                   38
% 3.12/1.03  sim_joinable_taut:                      0
% 3.12/1.03  sim_joinable_simp:                      0
% 3.12/1.03  sim_ac_normalised:                      0
% 3.12/1.03  sim_smt_subsumption:                    0
% 3.12/1.03  
%------------------------------------------------------------------------------
