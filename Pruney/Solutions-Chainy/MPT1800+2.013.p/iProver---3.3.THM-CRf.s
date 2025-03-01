%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:24:04 EST 2020

% Result     : Theorem 2.57s
% Output     : CNFRefutation 2.57s
% Verified   : 
% Statistics : Number of formulae       :  200 (4080 expanded)
%              Number of clauses        :  133 ( 888 expanded)
%              Number of leaves         :   13 ( 938 expanded)
%              Depth                    :   26
%              Number of atoms          :  820 (33469 expanded)
%              Number of equality atoms :  216 (6052 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f62,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f10,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ( ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) )
          <=> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_pre_topc(X1,X0)
              & ~ v2_struct_0(X1) )
           => ( ( m1_pre_topc(X1,X0)
                & v1_tsep_1(X1,X0) )
            <=> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) )
          <~> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) )
          <~> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f38,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1)
            | ~ m1_pre_topc(X1,X0)
            | ~ v1_tsep_1(X1,X0) )
          & ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)
            | ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) ) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1)
            | ~ m1_pre_topc(X1,X0)
            | ~ v1_tsep_1(X1,X0) )
          & ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)
            | ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) ) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f41,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1)
            | ~ m1_pre_topc(X1,X0)
            | ~ v1_tsep_1(X1,X0) )
          & ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)
            | ( m1_pre_topc(X1,X0)
              & v1_tsep_1(X1,X0) ) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
     => ( ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,sK2)
          | ~ m1_pre_topc(sK2,X0)
          | ~ v1_tsep_1(sK2,X0) )
        & ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,sK2)
          | ( m1_pre_topc(sK2,X0)
            & v1_tsep_1(sK2,X0) ) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1)
              | ~ m1_pre_topc(X1,X0)
              | ~ v1_tsep_1(X1,X0) )
            & ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)
              | ( m1_pre_topc(X1,X0)
                & v1_tsep_1(X1,X0) ) )
            & m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,X1)
            | ~ m1_pre_topc(X1,sK1)
            | ~ v1_tsep_1(X1,sK1) )
          & ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,X1)
            | ( m1_pre_topc(X1,sK1)
              & v1_tsep_1(X1,sK1) ) )
          & m1_pre_topc(X1,sK1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
      | ~ m1_pre_topc(sK2,sK1)
      | ~ v1_tsep_1(sK2,sK1) )
    & ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
      | ( m1_pre_topc(sK2,sK1)
        & v1_tsep_1(sK2,sK1) ) )
    & m1_pre_topc(sK2,sK1)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f39,f41,f40])).

fof(f69,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
    | m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f67,plain,(
    m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f65,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( v1_tsep_1(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( u1_struct_0(X1) = X2
                 => v3_pre_topc(X2,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tsep_1(X1,X0)
          <=> ! [X2] :
                ( v3_pre_topc(X2,X0)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v1_tsep_1(X1,X0)
          <=> ! [X2] :
                ( v3_pre_topc(X2,X0)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f17])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tsep_1(X1,X0)
              | ? [X2] :
                  ( ~ v3_pre_topc(X2,X0)
                  & u1_struct_0(X1) = X2
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X2] :
                  ( v3_pre_topc(X2,X0)
                  | u1_struct_0(X1) != X2
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tsep_1(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tsep_1(X1,X0)
              | ? [X2] :
                  ( ~ v3_pre_topc(X2,X0)
                  & u1_struct_0(X1) = X2
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v3_pre_topc(X3,X0)
                  | u1_struct_0(X1) != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tsep_1(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f33])).

fof(f35,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ v3_pre_topc(X2,X0)
          & u1_struct_0(X1) = X2
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v3_pre_topc(sK0(X0,X1),X0)
        & u1_struct_0(X1) = sK0(X0,X1)
        & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v1_tsep_1(X1,X0)
              | ( ~ v3_pre_topc(sK0(X0,X1),X0)
                & u1_struct_0(X1) = sK0(X0,X1)
                & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) )
            & ( ! [X3] :
                  ( v3_pre_topc(X3,X0)
                  | u1_struct_0(X1) != X3
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v1_tsep_1(X1,X0) ) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f34,f35])).

fof(f50,plain,(
    ! [X0,X3,X1] :
      ( v3_pre_topc(X3,X0)
      | u1_struct_0(X1) != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v1_tsep_1(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f71,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(u1_struct_0(X1),X0)
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v1_tsep_1(X1,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f68,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
    | v1_tsep_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_pre_topc(X1,X0)
          <=> r2_hidden(X1,u1_pre_topc(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_pre_topc(X1,X0)
          <=> r2_hidden(X1,u1_pre_topc(X0)) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_pre_topc(X1,X0)
              | ~ r2_hidden(X1,u1_pre_topc(X0)) )
            & ( r2_hidden(X1,u1_pre_topc(X0))
              | ~ v3_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,u1_pre_topc(X0))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( r2_hidden(X1,u1_pre_topc(X0))
          <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r2_hidden(X1,u1_pre_topc(X0))
          <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r2_hidden(X1,u1_pre_topc(X0))
          <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( r2_hidden(X1,u1_pre_topc(X0))
              | u1_pre_topc(X0) != k5_tmap_1(X0,X1) )
            & ( u1_pre_topc(X0) = k5_tmap_1(X0,X1)
              | ~ r2_hidden(X1,u1_pre_topc(X0)) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f58,plain,(
    ! [X0,X1] :
      ( u1_pre_topc(X0) = k5_tmap_1(X0,X1)
      | ~ r2_hidden(X1,u1_pre_topc(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f63,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f64,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ( ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( u1_struct_0(X1) = X2
                 => u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) ) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ! [X2] :
                ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ! [X2] :
                ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2)
      | u1_struct_0(X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f72,plain,(
    ! [X0,X1] :
      ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,u1_struct_0(X1))
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f61])).

fof(f66,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v3_pre_topc(X1,X0) )
        <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v3_pre_topc(X1,X0) )
        <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v3_pre_topc(X1,X0) )
        <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v3_pre_topc(X1,X0) )
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            | ~ v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            | ~ v3_pre_topc(X1,X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v3_pre_topc(X1,X0) )
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            | ~ v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            | ~ v3_pre_topc(X1,X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f31])).

fof(f48,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
      | ~ v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f60,plain,(
    ! [X0,X1] :
      ( u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f45,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(X1,X0)
      | ~ r2_hidden(X1,u1_pre_topc(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,u1_pre_topc(X0))
      | u1_pre_topc(X0) != k5_tmap_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => r2_hidden(X1,k5_tmap_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,k5_tmap_1(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,k5_tmap_1(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,k5_tmap_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( m1_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f56,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v1_pre_topc(X0)
       => g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f13,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f12])).

fof(f43,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f54,plain,(
    ! [X0,X1] :
      ( v1_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f52,plain,(
    ! [X0,X1] :
      ( v1_tsep_1(X1,X0)
      | u1_struct_0(X1) = sK0(X0,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f70,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | ~ m1_pre_topc(sK2,sK1)
    | ~ v1_tsep_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f53,plain,(
    ! [X0,X1] :
      ( v1_tsep_1(X1,X0)
      | ~ v3_pre_topc(sK0(X0,X1),X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_19,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_21,negated_conjecture,
    ( m1_pre_topc(sK2,sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_23,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_159,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_21,c_23])).

cnf(c_589,plain,
    ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_159])).

cnf(c_590,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_589])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_592,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_590,c_25])).

cnf(c_2195,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(subtyping,[status(esa)],[c_592])).

cnf(c_2730,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2195])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v1_tsep_1(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_184,plain,
    ( ~ v1_tsep_1(X0,X1)
    | ~ m1_pre_topc(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10,c_19])).

cnf(c_185,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v1_tsep_1(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_184])).

cnf(c_22,negated_conjecture,
    ( v1_tsep_1(sK2,sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_231,plain,
    ( v1_tsep_1(sK2,sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(prop_impl,[status(thm)],[c_22])).

cnf(c_499,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_185,c_231])).

cnf(c_500,plain,
    ( ~ m1_pre_topc(sK2,sK1)
    | v3_pre_topc(u1_struct_0(sK2),sK1)
    | ~ l1_pre_topc(sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_499])).

cnf(c_502,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_500,c_25,c_23])).

cnf(c_2200,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(subtyping,[status(esa)],[c_502])).

cnf(c_2726,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
    | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2200])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,u1_pre_topc(X1))
    | ~ v3_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1165,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,u1_pre_topc(X1))
    | ~ v3_pre_topc(X0,X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_25])).

cnf(c_1166,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0,u1_pre_topc(sK1))
    | ~ v3_pre_topc(X0,sK1) ),
    inference(unflattening,[status(thm)],[c_1165])).

cnf(c_2181,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0_46,u1_pre_topc(sK1))
    | ~ v3_pre_topc(X0_46,sK1) ),
    inference(subtyping,[status(esa)],[c_1166])).

cnf(c_2742,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_46,u1_pre_topc(sK1)) = iProver_top
    | v3_pre_topc(X0_46,sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2181])).

cnf(c_3077,plain,
    ( r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top
    | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2730,c_2742])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_pre_topc(X1))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,X0) = u1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_729,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_pre_topc(X1))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,X0) = u1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_27])).

cnf(c_730,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0,u1_pre_topc(sK1))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | k5_tmap_1(sK1,X0) = u1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_729])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_734,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0,u1_pre_topc(sK1))
    | k5_tmap_1(sK1,X0) = u1_pre_topc(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_730,c_26,c_25])).

cnf(c_2192,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0_46,u1_pre_topc(sK1))
    | k5_tmap_1(sK1,X0_46) = u1_pre_topc(sK1) ),
    inference(subtyping,[status(esa)],[c_734])).

cnf(c_2731,plain,
    ( k5_tmap_1(sK1,X0_46) = u1_pre_topc(sK1)
    | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_46,u1_pre_topc(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2192])).

cnf(c_3114,plain,
    ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(sK1)
    | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2730,c_2731])).

cnf(c_17,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_171,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_17,c_19])).

cnf(c_172,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(renaming,[status(thm)],[c_171])).

cnf(c_581,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0))
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_172,c_159])).

cnf(c_582,plain,
    ( v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_581])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_584,plain,
    ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_582,c_27,c_26,c_25,c_24])).

cnf(c_2196,plain,
    ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(subtyping,[status(esa)],[c_584])).

cnf(c_3115,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3114,c_2196])).

cnf(c_3364,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_3077,c_3115])).

cnf(c_3631,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(superposition,[status(thm)],[c_2726,c_3364])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))))
    | v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_859,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))))
    | v3_pre_topc(X0,X1)
    | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_26])).

cnf(c_860,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
    | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
    | v3_pre_topc(X0,sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_859])).

cnf(c_864,plain,
    ( v3_pre_topc(X0,sK1)
    | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_860,c_25])).

cnf(c_865,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
    | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
    | v3_pre_topc(X0,sK1) ),
    inference(renaming,[status(thm)],[c_864])).

cnf(c_2187,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
    | ~ v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
    | v3_pre_topc(X0_46,sK1) ),
    inference(subtyping,[status(esa)],[c_865])).

cnf(c_2736,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))))) != iProver_top
    | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
    | v3_pre_topc(X0_46,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2187])).

cnf(c_3813,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2)))) != iProver_top
    | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
    | v3_pre_topc(X0_46,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_3631,c_2736])).

cnf(c_18,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_600,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_159])).

cnf(c_601,plain,
    ( v2_struct_0(sK2)
    | v2_struct_0(sK1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_600])).

cnf(c_603,plain,
    ( u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_601,c_27,c_26,c_25,c_24])).

cnf(c_2194,plain,
    ( u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_603])).

cnf(c_3844,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
    | v3_pre_topc(X0_46,sK1) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3813,c_2194])).

cnf(c_3868,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) != iProver_top
    | v3_pre_topc(X0_46,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_3631,c_3844])).

cnf(c_4059,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | v3_pre_topc(u1_struct_0(sK2),k8_tmap_1(sK1,sK2)) != iProver_top
    | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2730,c_3868])).

cnf(c_30,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_591,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_590])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_pre_topc(X1))
    | v3_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1180,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_pre_topc(X1))
    | v3_pre_topc(X0,X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_25])).

cnf(c_1181,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0,u1_pre_topc(sK1))
    | v3_pre_topc(X0,sK1) ),
    inference(unflattening,[status(thm)],[c_1180])).

cnf(c_2180,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0_46,u1_pre_topc(sK1))
    | v3_pre_topc(X0_46,sK1) ),
    inference(subtyping,[status(esa)],[c_1181])).

cnf(c_3020,plain,
    ( ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1))
    | v3_pre_topc(u1_struct_0(sK2),sK1) ),
    inference(instantiation,[status(thm)],[c_2180])).

cnf(c_3021,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top
    | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3020])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,u1_pre_topc(X1))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,X0) != u1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_750,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,u1_pre_topc(X1))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k5_tmap_1(X1,X0) != u1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_27])).

cnf(c_751,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0,u1_pre_topc(sK1))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | k5_tmap_1(sK1,X0) != u1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_750])).

cnf(c_755,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0,u1_pre_topc(sK1))
    | k5_tmap_1(sK1,X0) != u1_pre_topc(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_751,c_26,c_25])).

cnf(c_2191,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0_46,u1_pre_topc(sK1))
    | k5_tmap_1(sK1,X0_46) != u1_pre_topc(sK1) ),
    inference(subtyping,[status(esa)],[c_755])).

cnf(c_2732,plain,
    ( k5_tmap_1(sK1,X0_46) != u1_pre_topc(sK1)
    | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_46,u1_pre_topc(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2191])).

cnf(c_3155,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) != u1_pre_topc(sK1)
    | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2196,c_2732])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,k5_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_771,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r2_hidden(X0,k5_tmap_1(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_27])).

cnf(c_772,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0,k5_tmap_1(sK1,X0))
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_771])).

cnf(c_776,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0,k5_tmap_1(sK1,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_772,c_26,c_25])).

cnf(c_2190,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | r2_hidden(X0_46,k5_tmap_1(sK1,X0_46)) ),
    inference(subtyping,[status(esa)],[c_776])).

cnf(c_2733,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_46,k5_tmap_1(sK1,X0_46)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2190])).

cnf(c_2976,plain,
    ( r2_hidden(u1_struct_0(sK2),k5_tmap_1(sK1,u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2730,c_2733])).

cnf(c_2977,plain,
    ( r2_hidden(u1_struct_0(sK2),u1_pre_topc(k8_tmap_1(sK1,sK2))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2976,c_2196])).

cnf(c_11,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_630,plain,
    ( v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | l1_pre_topc(k8_tmap_1(X0,X1))
    | sK2 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_159])).

cnf(c_631,plain,
    ( v2_struct_0(sK1)
    | ~ v2_pre_topc(sK1)
    | l1_pre_topc(k8_tmap_1(sK1,sK2))
    | ~ l1_pre_topc(sK1) ),
    inference(unflattening,[status(thm)],[c_630])).

cnf(c_633,plain,
    ( l1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_631,c_27,c_26,c_25])).

cnf(c_1210,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,u1_pre_topc(X1))
    | v3_pre_topc(X0,X1)
    | k8_tmap_1(sK1,sK2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_633])).

cnf(c_1211,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2))))
    | ~ r2_hidden(X0,u1_pre_topc(k8_tmap_1(sK1,sK2)))
    | v3_pre_topc(X0,k8_tmap_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_1210])).

cnf(c_2178,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2))))
    | ~ r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2)))
    | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) ),
    inference(subtyping,[status(esa)],[c_1211])).

cnf(c_2745,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2)))) != iProver_top
    | r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2))) != iProver_top
    | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2178])).

cnf(c_2848,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2))) != iProver_top
    | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2745,c_2194])).

cnf(c_3235,plain,
    ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v3_pre_topc(u1_struct_0(sK2),k8_tmap_1(sK1,sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2977,c_2848])).

cnf(c_4062,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4059,c_30,c_591,c_3021,c_3155,c_3235])).

cnf(c_4067,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1) ),
    inference(superposition,[status(thm)],[c_4062,c_3364])).

cnf(c_0,plain,
    ( ~ l1_pre_topc(X0)
    | ~ v1_pre_topc(X0)
    | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_13,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | v1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_608,plain,
    ( v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | v1_pre_topc(k8_tmap_1(X0,X1))
    | sK2 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_159])).

cnf(c_609,plain,
    ( v2_struct_0(sK1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(sK1)
    | v1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(unflattening,[status(thm)],[c_608])).

cnf(c_611,plain,
    ( v1_pre_topc(k8_tmap_1(sK1,sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_609,c_27,c_26,c_25])).

cnf(c_660,plain,
    ( ~ l1_pre_topc(X0)
    | k8_tmap_1(sK1,sK2) != X0
    | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_611])).

cnf(c_661,plain,
    ( ~ l1_pre_topc(k8_tmap_1(sK1,sK2))
    | g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_660])).

cnf(c_663,plain,
    ( g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_661,c_27,c_26,c_25,c_631])).

cnf(c_2193,plain,
    ( g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
    inference(subtyping,[status(esa)],[c_663])).

cnf(c_2762,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
    inference(light_normalisation,[status(thm)],[c_2193,c_2194])).

cnf(c_4103,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
    inference(demodulation,[status(thm)],[c_4067,c_2762])).

cnf(c_8,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v1_tsep_1(X0,X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0) = u1_struct_0(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_425,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0) = u1_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_8,c_185])).

cnf(c_553,plain,
    ( v3_pre_topc(u1_struct_0(X0),X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0) = u1_struct_0(X0)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_425,c_159])).

cnf(c_554,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1)
    | ~ l1_pre_topc(sK1)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_553])).

cnf(c_556,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_554,c_25])).

cnf(c_2198,plain,
    ( v3_pre_topc(u1_struct_0(sK2),sK1)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(subtyping,[status(esa)],[c_556])).

cnf(c_2728,plain,
    ( sK0(sK1,sK2) = u1_struct_0(sK2)
    | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2198])).

cnf(c_3630,plain,
    ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(superposition,[status(thm)],[c_2728,c_3364])).

cnf(c_3934,plain,
    ( sK0(sK1,sK2) = u1_struct_0(sK2)
    | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3630,c_2977])).

cnf(c_20,negated_conjecture,
    ( ~ m1_pre_topc(sK2,sK1)
    | ~ v1_tsep_1(sK2,sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_229,plain,
    ( ~ v1_tsep_1(sK2,sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(prop_impl,[status(thm)],[c_23,c_20])).

cnf(c_474,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | sK0(X1,X0) = u1_struct_0(X0)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_229])).

cnf(c_475,plain,
    ( ~ m1_pre_topc(sK2,sK1)
    | ~ l1_pre_topc(sK1)
    | sK0(sK1,sK2) = u1_struct_0(sK2)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_474])).

cnf(c_477,plain,
    ( sK0(sK1,sK2) = u1_struct_0(sK2)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_475,c_25,c_23])).

cnf(c_2202,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(subtyping,[status(esa)],[c_477])).

cnf(c_3935,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
    | sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(superposition,[status(thm)],[c_3630,c_2762])).

cnf(c_3968,plain,
    ( sK0(sK1,sK2) = u1_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3934,c_2202,c_3935])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v1_tsep_1(X0,X1)
    | ~ v3_pre_topc(sK0(X1,X0),X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_485,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v3_pre_topc(sK0(X1,X0),X1)
    | ~ l1_pre_topc(X1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | sK2 != X0
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_229])).

cnf(c_486,plain,
    ( ~ m1_pre_topc(sK2,sK1)
    | ~ v3_pre_topc(sK0(sK1,sK2),sK1)
    | ~ l1_pre_topc(sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_485])).

cnf(c_488,plain,
    ( ~ v3_pre_topc(sK0(sK1,sK2),sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_486,c_25,c_23])).

cnf(c_2201,plain,
    ( ~ v3_pre_topc(sK0(sK1,sK2),sK1)
    | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
    inference(subtyping,[status(esa)],[c_488])).

cnf(c_2725,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | v3_pre_topc(sK0(sK1,sK2),sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2201])).

cnf(c_3973,plain,
    ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
    | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3968,c_2725])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4103,c_4062,c_3973])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:51:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.57/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.57/0.99  
% 2.57/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.57/0.99  
% 2.57/0.99  ------  iProver source info
% 2.57/0.99  
% 2.57/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.57/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.57/0.99  git: non_committed_changes: false
% 2.57/0.99  git: last_make_outside_of_git: false
% 2.57/0.99  
% 2.57/0.99  ------ 
% 2.57/0.99  
% 2.57/0.99  ------ Input Options
% 2.57/0.99  
% 2.57/0.99  --out_options                           all
% 2.57/0.99  --tptp_safe_out                         true
% 2.57/0.99  --problem_path                          ""
% 2.57/0.99  --include_path                          ""
% 2.57/0.99  --clausifier                            res/vclausify_rel
% 2.57/0.99  --clausifier_options                    --mode clausify
% 2.57/0.99  --stdin                                 false
% 2.57/0.99  --stats_out                             all
% 2.57/0.99  
% 2.57/0.99  ------ General Options
% 2.57/0.99  
% 2.57/0.99  --fof                                   false
% 2.57/0.99  --time_out_real                         305.
% 2.57/0.99  --time_out_virtual                      -1.
% 2.57/0.99  --symbol_type_check                     false
% 2.57/0.99  --clausify_out                          false
% 2.57/0.99  --sig_cnt_out                           false
% 2.57/0.99  --trig_cnt_out                          false
% 2.57/0.99  --trig_cnt_out_tolerance                1.
% 2.57/0.99  --trig_cnt_out_sk_spl                   false
% 2.57/0.99  --abstr_cl_out                          false
% 2.57/0.99  
% 2.57/0.99  ------ Global Options
% 2.57/0.99  
% 2.57/0.99  --schedule                              default
% 2.57/0.99  --add_important_lit                     false
% 2.57/0.99  --prop_solver_per_cl                    1000
% 2.57/0.99  --min_unsat_core                        false
% 2.57/0.99  --soft_assumptions                      false
% 2.57/0.99  --soft_lemma_size                       3
% 2.57/0.99  --prop_impl_unit_size                   0
% 2.57/0.99  --prop_impl_unit                        []
% 2.57/0.99  --share_sel_clauses                     true
% 2.57/0.99  --reset_solvers                         false
% 2.57/0.99  --bc_imp_inh                            [conj_cone]
% 2.57/0.99  --conj_cone_tolerance                   3.
% 2.57/0.99  --extra_neg_conj                        none
% 2.57/0.99  --large_theory_mode                     true
% 2.57/0.99  --prolific_symb_bound                   200
% 2.57/0.99  --lt_threshold                          2000
% 2.57/0.99  --clause_weak_htbl                      true
% 2.57/0.99  --gc_record_bc_elim                     false
% 2.57/0.99  
% 2.57/0.99  ------ Preprocessing Options
% 2.57/0.99  
% 2.57/0.99  --preprocessing_flag                    true
% 2.57/0.99  --time_out_prep_mult                    0.1
% 2.57/0.99  --splitting_mode                        input
% 2.57/0.99  --splitting_grd                         true
% 2.57/0.99  --splitting_cvd                         false
% 2.57/0.99  --splitting_cvd_svl                     false
% 2.57/0.99  --splitting_nvd                         32
% 2.57/0.99  --sub_typing                            true
% 2.57/0.99  --prep_gs_sim                           true
% 2.57/0.99  --prep_unflatten                        true
% 2.57/0.99  --prep_res_sim                          true
% 2.57/0.99  --prep_upred                            true
% 2.57/0.99  --prep_sem_filter                       exhaustive
% 2.57/0.99  --prep_sem_filter_out                   false
% 2.57/0.99  --pred_elim                             true
% 2.57/0.99  --res_sim_input                         true
% 2.57/0.99  --eq_ax_congr_red                       true
% 2.57/0.99  --pure_diseq_elim                       true
% 2.57/0.99  --brand_transform                       false
% 2.57/0.99  --non_eq_to_eq                          false
% 2.57/0.99  --prep_def_merge                        true
% 2.57/0.99  --prep_def_merge_prop_impl              false
% 2.57/1.00  --prep_def_merge_mbd                    true
% 2.57/1.00  --prep_def_merge_tr_red                 false
% 2.57/1.00  --prep_def_merge_tr_cl                  false
% 2.57/1.00  --smt_preprocessing                     true
% 2.57/1.00  --smt_ac_axioms                         fast
% 2.57/1.00  --preprocessed_out                      false
% 2.57/1.00  --preprocessed_stats                    false
% 2.57/1.00  
% 2.57/1.00  ------ Abstraction refinement Options
% 2.57/1.00  
% 2.57/1.00  --abstr_ref                             []
% 2.57/1.00  --abstr_ref_prep                        false
% 2.57/1.00  --abstr_ref_until_sat                   false
% 2.57/1.00  --abstr_ref_sig_restrict                funpre
% 2.57/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.57/1.00  --abstr_ref_under                       []
% 2.57/1.00  
% 2.57/1.00  ------ SAT Options
% 2.57/1.00  
% 2.57/1.00  --sat_mode                              false
% 2.57/1.00  --sat_fm_restart_options                ""
% 2.57/1.00  --sat_gr_def                            false
% 2.57/1.00  --sat_epr_types                         true
% 2.57/1.00  --sat_non_cyclic_types                  false
% 2.57/1.00  --sat_finite_models                     false
% 2.57/1.00  --sat_fm_lemmas                         false
% 2.57/1.00  --sat_fm_prep                           false
% 2.57/1.00  --sat_fm_uc_incr                        true
% 2.57/1.00  --sat_out_model                         small
% 2.57/1.00  --sat_out_clauses                       false
% 2.57/1.00  
% 2.57/1.00  ------ QBF Options
% 2.57/1.00  
% 2.57/1.00  --qbf_mode                              false
% 2.57/1.00  --qbf_elim_univ                         false
% 2.57/1.00  --qbf_dom_inst                          none
% 2.57/1.00  --qbf_dom_pre_inst                      false
% 2.57/1.00  --qbf_sk_in                             false
% 2.57/1.00  --qbf_pred_elim                         true
% 2.57/1.00  --qbf_split                             512
% 2.57/1.00  
% 2.57/1.00  ------ BMC1 Options
% 2.57/1.00  
% 2.57/1.00  --bmc1_incremental                      false
% 2.57/1.00  --bmc1_axioms                           reachable_all
% 2.57/1.00  --bmc1_min_bound                        0
% 2.57/1.00  --bmc1_max_bound                        -1
% 2.57/1.00  --bmc1_max_bound_default                -1
% 2.57/1.00  --bmc1_symbol_reachability              true
% 2.57/1.00  --bmc1_property_lemmas                  false
% 2.57/1.00  --bmc1_k_induction                      false
% 2.57/1.00  --bmc1_non_equiv_states                 false
% 2.57/1.00  --bmc1_deadlock                         false
% 2.57/1.00  --bmc1_ucm                              false
% 2.57/1.00  --bmc1_add_unsat_core                   none
% 2.57/1.00  --bmc1_unsat_core_children              false
% 2.57/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.57/1.00  --bmc1_out_stat                         full
% 2.57/1.00  --bmc1_ground_init                      false
% 2.57/1.00  --bmc1_pre_inst_next_state              false
% 2.57/1.00  --bmc1_pre_inst_state                   false
% 2.57/1.00  --bmc1_pre_inst_reach_state             false
% 2.57/1.00  --bmc1_out_unsat_core                   false
% 2.57/1.00  --bmc1_aig_witness_out                  false
% 2.57/1.00  --bmc1_verbose                          false
% 2.57/1.00  --bmc1_dump_clauses_tptp                false
% 2.57/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.57/1.00  --bmc1_dump_file                        -
% 2.57/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.57/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.57/1.00  --bmc1_ucm_extend_mode                  1
% 2.57/1.00  --bmc1_ucm_init_mode                    2
% 2.57/1.00  --bmc1_ucm_cone_mode                    none
% 2.57/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.57/1.00  --bmc1_ucm_relax_model                  4
% 2.57/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.57/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.57/1.00  --bmc1_ucm_layered_model                none
% 2.57/1.00  --bmc1_ucm_max_lemma_size               10
% 2.57/1.00  
% 2.57/1.00  ------ AIG Options
% 2.57/1.00  
% 2.57/1.00  --aig_mode                              false
% 2.57/1.00  
% 2.57/1.00  ------ Instantiation Options
% 2.57/1.00  
% 2.57/1.00  --instantiation_flag                    true
% 2.57/1.00  --inst_sos_flag                         false
% 2.57/1.00  --inst_sos_phase                        true
% 2.57/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.57/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.57/1.00  --inst_lit_sel_side                     num_symb
% 2.57/1.00  --inst_solver_per_active                1400
% 2.57/1.00  --inst_solver_calls_frac                1.
% 2.57/1.00  --inst_passive_queue_type               priority_queues
% 2.57/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.57/1.00  --inst_passive_queues_freq              [25;2]
% 2.57/1.00  --inst_dismatching                      true
% 2.57/1.00  --inst_eager_unprocessed_to_passive     true
% 2.57/1.00  --inst_prop_sim_given                   true
% 2.57/1.00  --inst_prop_sim_new                     false
% 2.57/1.00  --inst_subs_new                         false
% 2.57/1.00  --inst_eq_res_simp                      false
% 2.57/1.00  --inst_subs_given                       false
% 2.57/1.00  --inst_orphan_elimination               true
% 2.57/1.00  --inst_learning_loop_flag               true
% 2.57/1.00  --inst_learning_start                   3000
% 2.57/1.00  --inst_learning_factor                  2
% 2.57/1.00  --inst_start_prop_sim_after_learn       3
% 2.57/1.00  --inst_sel_renew                        solver
% 2.57/1.00  --inst_lit_activity_flag                true
% 2.57/1.00  --inst_restr_to_given                   false
% 2.57/1.00  --inst_activity_threshold               500
% 2.57/1.00  --inst_out_proof                        true
% 2.57/1.00  
% 2.57/1.00  ------ Resolution Options
% 2.57/1.00  
% 2.57/1.00  --resolution_flag                       true
% 2.57/1.00  --res_lit_sel                           adaptive
% 2.57/1.00  --res_lit_sel_side                      none
% 2.57/1.00  --res_ordering                          kbo
% 2.57/1.00  --res_to_prop_solver                    active
% 2.57/1.00  --res_prop_simpl_new                    false
% 2.57/1.00  --res_prop_simpl_given                  true
% 2.57/1.00  --res_passive_queue_type                priority_queues
% 2.57/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.57/1.00  --res_passive_queues_freq               [15;5]
% 2.57/1.00  --res_forward_subs                      full
% 2.57/1.00  --res_backward_subs                     full
% 2.57/1.00  --res_forward_subs_resolution           true
% 2.57/1.00  --res_backward_subs_resolution          true
% 2.57/1.00  --res_orphan_elimination                true
% 2.57/1.00  --res_time_limit                        2.
% 2.57/1.00  --res_out_proof                         true
% 2.57/1.00  
% 2.57/1.00  ------ Superposition Options
% 2.57/1.00  
% 2.57/1.00  --superposition_flag                    true
% 2.57/1.00  --sup_passive_queue_type                priority_queues
% 2.57/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.57/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.57/1.00  --demod_completeness_check              fast
% 2.57/1.00  --demod_use_ground                      true
% 2.57/1.00  --sup_to_prop_solver                    passive
% 2.57/1.00  --sup_prop_simpl_new                    true
% 2.57/1.00  --sup_prop_simpl_given                  true
% 2.57/1.00  --sup_fun_splitting                     false
% 2.57/1.00  --sup_smt_interval                      50000
% 2.57/1.00  
% 2.57/1.00  ------ Superposition Simplification Setup
% 2.57/1.00  
% 2.57/1.00  --sup_indices_passive                   []
% 2.57/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.57/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_full_bw                           [BwDemod]
% 2.57/1.00  --sup_immed_triv                        [TrivRules]
% 2.57/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.57/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_immed_bw_main                     []
% 2.57/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.57/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.00  
% 2.57/1.00  ------ Combination Options
% 2.57/1.00  
% 2.57/1.00  --comb_res_mult                         3
% 2.57/1.00  --comb_sup_mult                         2
% 2.57/1.00  --comb_inst_mult                        10
% 2.57/1.00  
% 2.57/1.00  ------ Debug Options
% 2.57/1.00  
% 2.57/1.00  --dbg_backtrace                         false
% 2.57/1.00  --dbg_dump_prop_clauses                 false
% 2.57/1.00  --dbg_dump_prop_clauses_file            -
% 2.57/1.00  --dbg_out_stat                          false
% 2.57/1.00  ------ Parsing...
% 2.57/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.57/1.00  
% 2.57/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e 
% 2.57/1.00  
% 2.57/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.57/1.00  
% 2.57/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.57/1.00  ------ Proving...
% 2.57/1.00  ------ Problem Properties 
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  clauses                                 32
% 2.57/1.00  conjectures                             0
% 2.57/1.00  EPR                                     0
% 2.57/1.00  Horn                                    29
% 2.57/1.00  unary                                   4
% 2.57/1.00  binary                                  8
% 2.57/1.00  lits                                    84
% 2.57/1.00  lits eq                                 21
% 2.57/1.00  fd_pure                                 0
% 2.57/1.00  fd_pseudo                               0
% 2.57/1.00  fd_cond                                 0
% 2.57/1.00  fd_pseudo_cond                          0
% 2.57/1.00  AC symbols                              0
% 2.57/1.00  
% 2.57/1.00  ------ Schedule dynamic 5 is on 
% 2.57/1.00  
% 2.57/1.00  ------ no conjectures: strip conj schedule 
% 2.57/1.00  
% 2.57/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  ------ 
% 2.57/1.00  Current options:
% 2.57/1.00  ------ 
% 2.57/1.00  
% 2.57/1.00  ------ Input Options
% 2.57/1.00  
% 2.57/1.00  --out_options                           all
% 2.57/1.00  --tptp_safe_out                         true
% 2.57/1.00  --problem_path                          ""
% 2.57/1.00  --include_path                          ""
% 2.57/1.00  --clausifier                            res/vclausify_rel
% 2.57/1.00  --clausifier_options                    --mode clausify
% 2.57/1.00  --stdin                                 false
% 2.57/1.00  --stats_out                             all
% 2.57/1.00  
% 2.57/1.00  ------ General Options
% 2.57/1.00  
% 2.57/1.00  --fof                                   false
% 2.57/1.00  --time_out_real                         305.
% 2.57/1.00  --time_out_virtual                      -1.
% 2.57/1.00  --symbol_type_check                     false
% 2.57/1.00  --clausify_out                          false
% 2.57/1.00  --sig_cnt_out                           false
% 2.57/1.00  --trig_cnt_out                          false
% 2.57/1.00  --trig_cnt_out_tolerance                1.
% 2.57/1.00  --trig_cnt_out_sk_spl                   false
% 2.57/1.00  --abstr_cl_out                          false
% 2.57/1.00  
% 2.57/1.00  ------ Global Options
% 2.57/1.00  
% 2.57/1.00  --schedule                              default
% 2.57/1.00  --add_important_lit                     false
% 2.57/1.00  --prop_solver_per_cl                    1000
% 2.57/1.00  --min_unsat_core                        false
% 2.57/1.00  --soft_assumptions                      false
% 2.57/1.00  --soft_lemma_size                       3
% 2.57/1.00  --prop_impl_unit_size                   0
% 2.57/1.00  --prop_impl_unit                        []
% 2.57/1.00  --share_sel_clauses                     true
% 2.57/1.00  --reset_solvers                         false
% 2.57/1.00  --bc_imp_inh                            [conj_cone]
% 2.57/1.00  --conj_cone_tolerance                   3.
% 2.57/1.00  --extra_neg_conj                        none
% 2.57/1.00  --large_theory_mode                     true
% 2.57/1.00  --prolific_symb_bound                   200
% 2.57/1.00  --lt_threshold                          2000
% 2.57/1.00  --clause_weak_htbl                      true
% 2.57/1.00  --gc_record_bc_elim                     false
% 2.57/1.00  
% 2.57/1.00  ------ Preprocessing Options
% 2.57/1.00  
% 2.57/1.00  --preprocessing_flag                    true
% 2.57/1.00  --time_out_prep_mult                    0.1
% 2.57/1.00  --splitting_mode                        input
% 2.57/1.00  --splitting_grd                         true
% 2.57/1.00  --splitting_cvd                         false
% 2.57/1.00  --splitting_cvd_svl                     false
% 2.57/1.00  --splitting_nvd                         32
% 2.57/1.00  --sub_typing                            true
% 2.57/1.00  --prep_gs_sim                           true
% 2.57/1.00  --prep_unflatten                        true
% 2.57/1.00  --prep_res_sim                          true
% 2.57/1.00  --prep_upred                            true
% 2.57/1.00  --prep_sem_filter                       exhaustive
% 2.57/1.00  --prep_sem_filter_out                   false
% 2.57/1.00  --pred_elim                             true
% 2.57/1.00  --res_sim_input                         true
% 2.57/1.00  --eq_ax_congr_red                       true
% 2.57/1.00  --pure_diseq_elim                       true
% 2.57/1.00  --brand_transform                       false
% 2.57/1.00  --non_eq_to_eq                          false
% 2.57/1.00  --prep_def_merge                        true
% 2.57/1.00  --prep_def_merge_prop_impl              false
% 2.57/1.00  --prep_def_merge_mbd                    true
% 2.57/1.00  --prep_def_merge_tr_red                 false
% 2.57/1.00  --prep_def_merge_tr_cl                  false
% 2.57/1.00  --smt_preprocessing                     true
% 2.57/1.00  --smt_ac_axioms                         fast
% 2.57/1.00  --preprocessed_out                      false
% 2.57/1.00  --preprocessed_stats                    false
% 2.57/1.00  
% 2.57/1.00  ------ Abstraction refinement Options
% 2.57/1.00  
% 2.57/1.00  --abstr_ref                             []
% 2.57/1.00  --abstr_ref_prep                        false
% 2.57/1.00  --abstr_ref_until_sat                   false
% 2.57/1.00  --abstr_ref_sig_restrict                funpre
% 2.57/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.57/1.00  --abstr_ref_under                       []
% 2.57/1.00  
% 2.57/1.00  ------ SAT Options
% 2.57/1.00  
% 2.57/1.00  --sat_mode                              false
% 2.57/1.00  --sat_fm_restart_options                ""
% 2.57/1.00  --sat_gr_def                            false
% 2.57/1.00  --sat_epr_types                         true
% 2.57/1.00  --sat_non_cyclic_types                  false
% 2.57/1.00  --sat_finite_models                     false
% 2.57/1.00  --sat_fm_lemmas                         false
% 2.57/1.00  --sat_fm_prep                           false
% 2.57/1.00  --sat_fm_uc_incr                        true
% 2.57/1.00  --sat_out_model                         small
% 2.57/1.00  --sat_out_clauses                       false
% 2.57/1.00  
% 2.57/1.00  ------ QBF Options
% 2.57/1.00  
% 2.57/1.00  --qbf_mode                              false
% 2.57/1.00  --qbf_elim_univ                         false
% 2.57/1.00  --qbf_dom_inst                          none
% 2.57/1.00  --qbf_dom_pre_inst                      false
% 2.57/1.00  --qbf_sk_in                             false
% 2.57/1.00  --qbf_pred_elim                         true
% 2.57/1.00  --qbf_split                             512
% 2.57/1.00  
% 2.57/1.00  ------ BMC1 Options
% 2.57/1.00  
% 2.57/1.00  --bmc1_incremental                      false
% 2.57/1.00  --bmc1_axioms                           reachable_all
% 2.57/1.00  --bmc1_min_bound                        0
% 2.57/1.00  --bmc1_max_bound                        -1
% 2.57/1.00  --bmc1_max_bound_default                -1
% 2.57/1.00  --bmc1_symbol_reachability              true
% 2.57/1.00  --bmc1_property_lemmas                  false
% 2.57/1.00  --bmc1_k_induction                      false
% 2.57/1.00  --bmc1_non_equiv_states                 false
% 2.57/1.00  --bmc1_deadlock                         false
% 2.57/1.00  --bmc1_ucm                              false
% 2.57/1.00  --bmc1_add_unsat_core                   none
% 2.57/1.00  --bmc1_unsat_core_children              false
% 2.57/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.57/1.00  --bmc1_out_stat                         full
% 2.57/1.00  --bmc1_ground_init                      false
% 2.57/1.00  --bmc1_pre_inst_next_state              false
% 2.57/1.00  --bmc1_pre_inst_state                   false
% 2.57/1.00  --bmc1_pre_inst_reach_state             false
% 2.57/1.00  --bmc1_out_unsat_core                   false
% 2.57/1.00  --bmc1_aig_witness_out                  false
% 2.57/1.00  --bmc1_verbose                          false
% 2.57/1.00  --bmc1_dump_clauses_tptp                false
% 2.57/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.57/1.00  --bmc1_dump_file                        -
% 2.57/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.57/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.57/1.00  --bmc1_ucm_extend_mode                  1
% 2.57/1.00  --bmc1_ucm_init_mode                    2
% 2.57/1.00  --bmc1_ucm_cone_mode                    none
% 2.57/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.57/1.00  --bmc1_ucm_relax_model                  4
% 2.57/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.57/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.57/1.00  --bmc1_ucm_layered_model                none
% 2.57/1.00  --bmc1_ucm_max_lemma_size               10
% 2.57/1.00  
% 2.57/1.00  ------ AIG Options
% 2.57/1.00  
% 2.57/1.00  --aig_mode                              false
% 2.57/1.00  
% 2.57/1.00  ------ Instantiation Options
% 2.57/1.00  
% 2.57/1.00  --instantiation_flag                    true
% 2.57/1.00  --inst_sos_flag                         false
% 2.57/1.00  --inst_sos_phase                        true
% 2.57/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.57/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.57/1.00  --inst_lit_sel_side                     none
% 2.57/1.00  --inst_solver_per_active                1400
% 2.57/1.00  --inst_solver_calls_frac                1.
% 2.57/1.00  --inst_passive_queue_type               priority_queues
% 2.57/1.00  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 2.57/1.00  --inst_passive_queues_freq              [25;2]
% 2.57/1.00  --inst_dismatching                      true
% 2.57/1.00  --inst_eager_unprocessed_to_passive     true
% 2.57/1.00  --inst_prop_sim_given                   true
% 2.57/1.00  --inst_prop_sim_new                     false
% 2.57/1.00  --inst_subs_new                         false
% 2.57/1.00  --inst_eq_res_simp                      false
% 2.57/1.00  --inst_subs_given                       false
% 2.57/1.00  --inst_orphan_elimination               true
% 2.57/1.00  --inst_learning_loop_flag               true
% 2.57/1.00  --inst_learning_start                   3000
% 2.57/1.00  --inst_learning_factor                  2
% 2.57/1.00  --inst_start_prop_sim_after_learn       3
% 2.57/1.00  --inst_sel_renew                        solver
% 2.57/1.00  --inst_lit_activity_flag                true
% 2.57/1.00  --inst_restr_to_given                   false
% 2.57/1.00  --inst_activity_threshold               500
% 2.57/1.00  --inst_out_proof                        true
% 2.57/1.00  
% 2.57/1.00  ------ Resolution Options
% 2.57/1.00  
% 2.57/1.00  --resolution_flag                       false
% 2.57/1.00  --res_lit_sel                           adaptive
% 2.57/1.00  --res_lit_sel_side                      none
% 2.57/1.00  --res_ordering                          kbo
% 2.57/1.00  --res_to_prop_solver                    active
% 2.57/1.00  --res_prop_simpl_new                    false
% 2.57/1.00  --res_prop_simpl_given                  true
% 2.57/1.00  --res_passive_queue_type                priority_queues
% 2.57/1.00  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 2.57/1.00  --res_passive_queues_freq               [15;5]
% 2.57/1.00  --res_forward_subs                      full
% 2.57/1.00  --res_backward_subs                     full
% 2.57/1.00  --res_forward_subs_resolution           true
% 2.57/1.00  --res_backward_subs_resolution          true
% 2.57/1.00  --res_orphan_elimination                true
% 2.57/1.00  --res_time_limit                        2.
% 2.57/1.00  --res_out_proof                         true
% 2.57/1.00  
% 2.57/1.00  ------ Superposition Options
% 2.57/1.00  
% 2.57/1.00  --superposition_flag                    true
% 2.57/1.00  --sup_passive_queue_type                priority_queues
% 2.57/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.57/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.57/1.00  --demod_completeness_check              fast
% 2.57/1.00  --demod_use_ground                      true
% 2.57/1.00  --sup_to_prop_solver                    passive
% 2.57/1.00  --sup_prop_simpl_new                    true
% 2.57/1.00  --sup_prop_simpl_given                  true
% 2.57/1.00  --sup_fun_splitting                     false
% 2.57/1.00  --sup_smt_interval                      50000
% 2.57/1.00  
% 2.57/1.00  ------ Superposition Simplification Setup
% 2.57/1.00  
% 2.57/1.00  --sup_indices_passive                   []
% 2.57/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.57/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_full_bw                           [BwDemod]
% 2.57/1.00  --sup_immed_triv                        [TrivRules]
% 2.57/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.57/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_immed_bw_main                     []
% 2.57/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.57/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.00  
% 2.57/1.00  ------ Combination Options
% 2.57/1.00  
% 2.57/1.00  --comb_res_mult                         3
% 2.57/1.00  --comb_sup_mult                         2
% 2.57/1.00  --comb_inst_mult                        10
% 2.57/1.00  
% 2.57/1.00  ------ Debug Options
% 2.57/1.00  
% 2.57/1.00  --dbg_backtrace                         false
% 2.57/1.00  --dbg_dump_prop_clauses                 false
% 2.57/1.00  --dbg_dump_prop_clauses_file            -
% 2.57/1.00  --dbg_out_stat                          false
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  ------ Proving...
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  % SZS status Theorem for theBenchmark.p
% 2.57/1.00  
% 2.57/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.57/1.00  
% 2.57/1.00  fof(f9,axiom,(
% 2.57/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f27,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(ennf_transformation,[],[f9])).
% 2.57/1.00  
% 2.57/1.00  fof(f62,plain,(
% 2.57/1.00    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f27])).
% 2.57/1.00  
% 2.57/1.00  fof(f10,conjecture,(
% 2.57/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f11,negated_conjecture,(
% 2.57/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1))))),
% 2.57/1.00    inference(negated_conjecture,[],[f10])).
% 2.57/1.00  
% 2.57/1.00  fof(f28,plain,(
% 2.57/1.00    ? [X0] : (? [X1] : (((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <~> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)) & (m1_pre_topc(X1,X0) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f11])).
% 2.57/1.00  
% 2.57/1.00  fof(f29,plain,(
% 2.57/1.00    ? [X0] : (? [X1] : (((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <~> g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1)) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f28])).
% 2.57/1.00  
% 2.57/1.00  fof(f38,plain,(
% 2.57/1.00    ? [X0] : (? [X1] : (((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1) | (~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0))) & (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) | (m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.57/1.00    inference(nnf_transformation,[],[f29])).
% 2.57/1.00  
% 2.57/1.00  fof(f39,plain,(
% 2.57/1.00    ? [X0] : (? [X1] : ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)) & (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) | (m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f38])).
% 2.57/1.00  
% 2.57/1.00  fof(f41,plain,(
% 2.57/1.00    ( ! [X0] : (? [X1] : ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)) & (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) | (m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,sK2) | ~m1_pre_topc(sK2,X0) | ~v1_tsep_1(sK2,X0)) & (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,sK2) | (m1_pre_topc(sK2,X0) & v1_tsep_1(sK2,X0))) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 2.57/1.00    introduced(choice_axiom,[])).
% 2.57/1.00  
% 2.57/1.00  fof(f40,plain,(
% 2.57/1.00    ? [X0] : (? [X1] : ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) != k8_tmap_1(X0,X1) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)) & (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = k8_tmap_1(X0,X1) | (m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,X1) | ~m1_pre_topc(X1,sK1) | ~v1_tsep_1(X1,sK1)) & (g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,X1) | (m1_pre_topc(X1,sK1) & v1_tsep_1(X1,sK1))) & m1_pre_topc(X1,sK1) & ~v2_struct_0(X1)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 2.57/1.00    introduced(choice_axiom,[])).
% 2.57/1.00  
% 2.57/1.00  fof(f42,plain,(
% 2.57/1.00    ((g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) | ~m1_pre_topc(sK2,sK1) | ~v1_tsep_1(sK2,sK1)) & (g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) | (m1_pre_topc(sK2,sK1) & v1_tsep_1(sK2,sK1))) & m1_pre_topc(sK2,sK1) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 2.57/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f39,f41,f40])).
% 2.57/1.00  
% 2.57/1.00  fof(f69,plain,(
% 2.57/1.00    g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) | m1_pre_topc(sK2,sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f67,plain,(
% 2.57/1.00    m1_pre_topc(sK2,sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f65,plain,(
% 2.57/1.00    l1_pre_topc(sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f4,axiom,(
% 2.57/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => (v1_tsep_1(X1,X0) <=> ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => v3_pre_topc(X2,X0))))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f17,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((v1_tsep_1(X1,X0) <=> ! [X2] : ((v3_pre_topc(X2,X0) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(ennf_transformation,[],[f4])).
% 2.57/1.00  
% 2.57/1.00  fof(f18,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((v1_tsep_1(X1,X0) <=> ! [X2] : (v3_pre_topc(X2,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(flattening,[],[f17])).
% 2.57/1.00  
% 2.57/1.00  fof(f33,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((v1_tsep_1(X1,X0) | ? [X2] : (~v3_pre_topc(X2,X0) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v3_pre_topc(X2,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tsep_1(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(nnf_transformation,[],[f18])).
% 2.57/1.00  
% 2.57/1.00  fof(f34,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((v1_tsep_1(X1,X0) | ? [X2] : (~v3_pre_topc(X2,X0) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v3_pre_topc(X3,X0) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tsep_1(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(rectify,[],[f33])).
% 2.57/1.00  
% 2.57/1.00  fof(f35,plain,(
% 2.57/1.00    ! [X1,X0] : (? [X2] : (~v3_pre_topc(X2,X0) & u1_struct_0(X1) = X2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v3_pre_topc(sK0(X0,X1),X0) & u1_struct_0(X1) = sK0(X0,X1) & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.57/1.00    introduced(choice_axiom,[])).
% 2.57/1.00  
% 2.57/1.00  fof(f36,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((v1_tsep_1(X1,X0) | (~v3_pre_topc(sK0(X0,X1),X0) & u1_struct_0(X1) = sK0(X0,X1) & m1_subset_1(sK0(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (v3_pre_topc(X3,X0) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~v1_tsep_1(X1,X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f34,f35])).
% 2.57/1.00  
% 2.57/1.00  fof(f50,plain,(
% 2.57/1.00    ( ! [X0,X3,X1] : (v3_pre_topc(X3,X0) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v1_tsep_1(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f36])).
% 2.57/1.00  
% 2.57/1.00  fof(f71,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v3_pre_topc(u1_struct_0(X1),X0) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~v1_tsep_1(X1,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(equality_resolution,[],[f50])).
% 2.57/1.00  
% 2.57/1.00  fof(f68,plain,(
% 2.57/1.00    g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) | v1_tsep_1(sK2,sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f2,axiom,(
% 2.57/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) <=> r2_hidden(X1,u1_pre_topc(X0)))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f14,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((v3_pre_topc(X1,X0) <=> r2_hidden(X1,u1_pre_topc(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(ennf_transformation,[],[f2])).
% 2.57/1.00  
% 2.57/1.00  fof(f30,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((v3_pre_topc(X1,X0) | ~r2_hidden(X1,u1_pre_topc(X0))) & (r2_hidden(X1,u1_pre_topc(X0)) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(nnf_transformation,[],[f14])).
% 2.57/1.00  
% 2.57/1.00  fof(f44,plain,(
% 2.57/1.00    ( ! [X0,X1] : (r2_hidden(X1,u1_pre_topc(X0)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f30])).
% 2.57/1.00  
% 2.57/1.00  fof(f7,axiom,(
% 2.57/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X1,u1_pre_topc(X0)) <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f23,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((r2_hidden(X1,u1_pre_topc(X0)) <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f7])).
% 2.57/1.00  
% 2.57/1.00  fof(f24,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((r2_hidden(X1,u1_pre_topc(X0)) <=> u1_pre_topc(X0) = k5_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f23])).
% 2.57/1.00  
% 2.57/1.00  fof(f37,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((r2_hidden(X1,u1_pre_topc(X0)) | u1_pre_topc(X0) != k5_tmap_1(X0,X1)) & (u1_pre_topc(X0) = k5_tmap_1(X0,X1) | ~r2_hidden(X1,u1_pre_topc(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.57/1.00    inference(nnf_transformation,[],[f24])).
% 2.57/1.00  
% 2.57/1.00  fof(f58,plain,(
% 2.57/1.00    ( ! [X0,X1] : (u1_pre_topc(X0) = k5_tmap_1(X0,X1) | ~r2_hidden(X1,u1_pre_topc(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f37])).
% 2.57/1.00  
% 2.57/1.00  fof(f63,plain,(
% 2.57/1.00    ~v2_struct_0(sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f64,plain,(
% 2.57/1.00    v2_pre_topc(sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f8,axiom,(
% 2.57/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f25,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((! [X2] : ((u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))) | (~m1_pre_topc(X1,X0) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f8])).
% 2.57/1.00  
% 2.57/1.00  fof(f26,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((! [X2] : (u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f25])).
% 2.57/1.00  
% 2.57/1.00  fof(f61,plain,(
% 2.57/1.00    ( ! [X2,X0,X1] : (u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f26])).
% 2.57/1.00  
% 2.57/1.00  fof(f72,plain,(
% 2.57/1.00    ( ! [X0,X1] : (u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,u1_struct_0(X1)) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(equality_resolution,[],[f61])).
% 2.57/1.00  
% 2.57/1.00  fof(f66,plain,(
% 2.57/1.00    ~v2_struct_0(sK2)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f3,axiom,(
% 2.57/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f15,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f3])).
% 2.57/1.00  
% 2.57/1.00  fof(f16,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.57/1.00    inference(flattening,[],[f15])).
% 2.57/1.00  
% 2.57/1.00  fof(f31,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.57/1.00    inference(nnf_transformation,[],[f16])).
% 2.57/1.00  
% 2.57/1.00  fof(f32,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v3_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_pre_topc(X1,X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.57/1.00    inference(flattening,[],[f31])).
% 2.57/1.00  
% 2.57/1.00  fof(f48,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v3_pre_topc(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f32])).
% 2.57/1.00  
% 2.57/1.00  fof(f60,plain,(
% 2.57/1.00    ( ! [X0,X1] : (u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f26])).
% 2.57/1.00  
% 2.57/1.00  fof(f45,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v3_pre_topc(X1,X0) | ~r2_hidden(X1,u1_pre_topc(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f30])).
% 2.57/1.00  
% 2.57/1.00  fof(f59,plain,(
% 2.57/1.00    ( ! [X0,X1] : (r2_hidden(X1,u1_pre_topc(X0)) | u1_pre_topc(X0) != k5_tmap_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f37])).
% 2.57/1.00  
% 2.57/1.00  fof(f6,axiom,(
% 2.57/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r2_hidden(X1,k5_tmap_1(X0,X1))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f21,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (r2_hidden(X1,k5_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f6])).
% 2.57/1.00  
% 2.57/1.00  fof(f22,plain,(
% 2.57/1.00    ! [X0] : (! [X1] : (r2_hidden(X1,k5_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f21])).
% 2.57/1.00  
% 2.57/1.00  fof(f57,plain,(
% 2.57/1.00    ( ! [X0,X1] : (r2_hidden(X1,k5_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f22])).
% 2.57/1.00  
% 2.57/1.00  fof(f5,axiom,(
% 2.57/1.00    ! [X0,X1] : ((m1_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f19,plain,(
% 2.57/1.00    ! [X0,X1] : ((l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))) | (~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.57/1.00    inference(ennf_transformation,[],[f5])).
% 2.57/1.00  
% 2.57/1.00  fof(f20,plain,(
% 2.57/1.00    ! [X0,X1] : ((l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.57/1.00    inference(flattening,[],[f19])).
% 2.57/1.00  
% 2.57/1.00  fof(f56,plain,(
% 2.57/1.00    ( ! [X0,X1] : (l1_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f20])).
% 2.57/1.00  
% 2.57/1.00  fof(f1,axiom,(
% 2.57/1.00    ! [X0] : (l1_pre_topc(X0) => (v1_pre_topc(X0) => g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0))),
% 2.57/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.57/1.00  
% 2.57/1.00  fof(f12,plain,(
% 2.57/1.00    ! [X0] : ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0)) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(ennf_transformation,[],[f1])).
% 2.57/1.00  
% 2.57/1.00  fof(f13,plain,(
% 2.57/1.00    ! [X0] : (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0) | ~l1_pre_topc(X0))),
% 2.57/1.00    inference(flattening,[],[f12])).
% 2.57/1.00  
% 2.57/1.00  fof(f43,plain,(
% 2.57/1.00    ( ! [X0] : (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f13])).
% 2.57/1.00  
% 2.57/1.00  fof(f54,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v1_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f20])).
% 2.57/1.00  
% 2.57/1.00  fof(f52,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v1_tsep_1(X1,X0) | u1_struct_0(X1) = sK0(X0,X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f36])).
% 2.57/1.00  
% 2.57/1.00  fof(f70,plain,(
% 2.57/1.00    g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) | ~m1_pre_topc(sK2,sK1) | ~v1_tsep_1(sK2,sK1)),
% 2.57/1.00    inference(cnf_transformation,[],[f42])).
% 2.57/1.00  
% 2.57/1.00  fof(f53,plain,(
% 2.57/1.00    ( ! [X0,X1] : (v1_tsep_1(X1,X0) | ~v3_pre_topc(sK0(X0,X1),X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.57/1.00    inference(cnf_transformation,[],[f36])).
% 2.57/1.00  
% 2.57/1.00  cnf(c_19,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_21,negated_conjecture,
% 2.57/1.00      ( m1_pre_topc(sK2,sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_23,negated_conjecture,
% 2.57/1.00      ( m1_pre_topc(sK2,sK1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_159,negated_conjecture,
% 2.57/1.00      ( m1_pre_topc(sK2,sK1) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_21,c_23]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_589,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_590,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ l1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_589]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_25,negated_conjecture,
% 2.57/1.00      ( l1_pre_topc(sK1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_592,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_590,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2195,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_592]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2730,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2195]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_10,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | ~ v1_tsep_1(X0,X1)
% 2.57/1.00      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f71]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_184,plain,
% 2.57/1.00      ( ~ v1_tsep_1(X0,X1)
% 2.57/1.00      | ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_10,c_19]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_185,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | ~ v1_tsep_1(X0,X1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(renaming,[status(thm)],[c_184]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_22,negated_conjecture,
% 2.57/1.00      ( v1_tsep_1(sK2,sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_231,plain,
% 2.57/1.00      ( v1_tsep_1(sK2,sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(prop_impl,[status(thm)],[c_22]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_499,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_185,c_231]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_500,plain,
% 2.57/1.00      ( ~ m1_pre_topc(sK2,sK1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_499]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_502,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_500,c_25,c_23]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2200,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_502]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2726,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2200]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | ~ v3_pre_topc(X0,X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f44]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1165,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | ~ v3_pre_topc(X0,X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_2,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1166,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | ~ v3_pre_topc(X0,sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_1165]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2181,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(sK1))
% 2.57/1.00      | ~ v3_pre_topc(X0_46,sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_1166]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2742,plain,
% 2.57/1.00      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(sK1)) = iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) != iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2181]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3077,plain,
% 2.57/1.00      ( r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2730,c_2742]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_16,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,X0) = u1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_27,negated_conjecture,
% 2.57/1.00      ( ~ v2_struct_0(sK1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_729,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,X0) = u1_pre_topc(X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_27]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_730,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | k5_tmap_1(sK1,X0) = u1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_729]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_26,negated_conjecture,
% 2.57/1.00      ( v2_pre_topc(sK1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_734,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | k5_tmap_1(sK1,X0) = u1_pre_topc(sK1) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_730,c_26,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2192,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(X0_46,u1_pre_topc(sK1))
% 2.57/1.00      | k5_tmap_1(sK1,X0_46) = u1_pre_topc(sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_734]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2731,plain,
% 2.57/1.00      ( k5_tmap_1(sK1,X0_46) = u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(sK1)) != iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2192]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3114,plain,
% 2.57/1.00      ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2730,c_2731]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_17,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | v2_struct_0(X0)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.57/1.00      inference(cnf_transformation,[],[f72]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_171,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | v2_struct_0(X0)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_17,c_19]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_172,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v2_struct_0(X0)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.57/1.00      inference(renaming,[status(thm)],[c_171]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_581,plain,
% 2.57/1.00      ( v2_struct_0(X0)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,u1_struct_0(X0)) = u1_pre_topc(k8_tmap_1(X1,X0))
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_172,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_582,plain,
% 2.57/1.00      ( v2_struct_0(sK2)
% 2.57/1.00      | v2_struct_0(sK1)
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_581]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_24,negated_conjecture,
% 2.57/1.00      ( ~ v2_struct_0(sK2) ),
% 2.57/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_584,plain,
% 2.57/1.00      ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_582,c_27,c_26,c_25,c_24]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2196,plain,
% 2.57/1.00      ( k5_tmap_1(sK1,u1_struct_0(sK2)) = u1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_584]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3115,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top ),
% 2.57/1.00      inference(demodulation,[status(thm)],[c_3114,c_2196]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3364,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_3077,c_3115]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3631,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2726,c_3364]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_4,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))))
% 2.57/1.00      | v3_pre_topc(X0,X1)
% 2.57/1.00      | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_859,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))))
% 2.57/1.00      | v3_pre_topc(X0,X1)
% 2.57/1.00      | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_4,c_26]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_860,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
% 2.57/1.00      | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
% 2.57/1.00      | v3_pre_topc(X0,sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_859]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_864,plain,
% 2.57/1.00      ( v3_pre_topc(X0,sK1)
% 2.57/1.00      | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
% 2.57/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))))) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_860,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_865,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
% 2.57/1.00      | ~ v3_pre_topc(X0,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
% 2.57/1.00      | v3_pre_topc(X0,sK1) ),
% 2.57/1.00      inference(renaming,[status(thm)],[c_864]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2187,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))))
% 2.57/1.00      | ~ v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)))
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_865]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2736,plain,
% 2.57/1.00      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2187]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3813,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2)))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_3631,c_2736]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_18,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | v2_struct_0(X0)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_600,plain,
% 2.57/1.00      ( v2_struct_0(X0)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_18,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_601,plain,
% 2.57/1.00      ( v2_struct_0(sK2)
% 2.57/1.00      | v2_struct_0(sK1)
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_600]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_603,plain,
% 2.57/1.00      ( u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_601,c_27,c_26,c_25,c_24]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2194,plain,
% 2.57/1.00      ( u1_struct_0(k8_tmap_1(sK1,sK2)) = u1_struct_0(sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_603]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3844,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) = iProver_top ),
% 2.57/1.00      inference(light_normalisation,[status(thm)],[c_3813,c_2194]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3868,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_3631,c_3844]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_4059,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),k8_tmap_1(sK1,sK2)) != iProver_top
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2730,c_3868]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_30,plain,
% 2.57/1.00      ( l1_pre_topc(sK1) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_591,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
% 2.57/1.00      | l1_pre_topc(sK1) != iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_590]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | v3_pre_topc(X0,X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f45]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1180,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | v3_pre_topc(X0,X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1181,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | v3_pre_topc(X0,sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_1180]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2180,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(X0_46,u1_pre_topc(sK1))
% 2.57/1.00      | v3_pre_topc(X0_46,sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_1181]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3020,plain,
% 2.57/1.00      ( ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | ~ r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1))
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) ),
% 2.57/1.00      inference(instantiation,[status(thm)],[c_2180]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3021,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) != iProver_top
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_3020]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_15,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,X0) != u1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_750,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | k5_tmap_1(X1,X0) != u1_pre_topc(X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_27]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_751,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | k5_tmap_1(sK1,X0) != u1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_750]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_755,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0,u1_pre_topc(sK1))
% 2.57/1.00      | k5_tmap_1(sK1,X0) != u1_pre_topc(sK1) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_751,c_26,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2191,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(sK1))
% 2.57/1.00      | k5_tmap_1(sK1,X0_46) != u1_pre_topc(sK1) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_755]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2732,plain,
% 2.57/1.00      ( k5_tmap_1(sK1,X0_46) != u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(sK1)) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2191]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3155,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) != u1_pre_topc(sK1)
% 2.57/1.00      | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2196,c_2732]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_14,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,k5_tmap_1(X1,X0))
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_771,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | r2_hidden(X0,k5_tmap_1(X1,X0))
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_27]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_772,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0,k5_tmap_1(sK1,X0))
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_771]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_776,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0,k5_tmap_1(sK1,X0)) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_772,c_26,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2190,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.57/1.00      | r2_hidden(X0_46,k5_tmap_1(sK1,X0_46)) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_776]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2733,plain,
% 2.57/1.00      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,k5_tmap_1(sK1,X0_46)) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2190]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2976,plain,
% 2.57/1.00      ( r2_hidden(u1_struct_0(sK2),k5_tmap_1(sK1,u1_struct_0(sK2))) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2730,c_2733]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2977,plain,
% 2.57/1.00      ( r2_hidden(u1_struct_0(sK2),u1_pre_topc(k8_tmap_1(sK1,sK2))) = iProver_top ),
% 2.57/1.00      inference(light_normalisation,[status(thm)],[c_2976,c_2196]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_11,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | l1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.57/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_630,plain,
% 2.57/1.00      ( v2_struct_0(X0)
% 2.57/1.00      | ~ v2_pre_topc(X0)
% 2.57/1.00      | ~ l1_pre_topc(X0)
% 2.57/1.00      | l1_pre_topc(k8_tmap_1(X0,X1))
% 2.57/1.00      | sK2 != X1
% 2.57/1.00      | sK1 != X0 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_631,plain,
% 2.57/1.00      ( v2_struct_0(sK1)
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | l1_pre_topc(k8_tmap_1(sK1,sK2))
% 2.57/1.00      | ~ l1_pre_topc(sK1) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_630]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_633,plain,
% 2.57/1.00      ( l1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_631,c_27,c_26,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1210,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(X1))
% 2.57/1.00      | v3_pre_topc(X0,X1)
% 2.57/1.00      | k8_tmap_1(sK1,sK2) != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_633]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_1211,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2))))
% 2.57/1.00      | ~ r2_hidden(X0,u1_pre_topc(k8_tmap_1(sK1,sK2)))
% 2.57/1.00      | v3_pre_topc(X0,k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_1210]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2178,plain,
% 2.57/1.00      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2))))
% 2.57/1.00      | ~ r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2)))
% 2.57/1.00      | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_1211]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2745,plain,
% 2.57/1.00      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(k8_tmap_1(sK1,sK2)))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2178]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2848,plain,
% 2.57/1.00      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | r2_hidden(X0_46,u1_pre_topc(k8_tmap_1(sK1,sK2))) != iProver_top
% 2.57/1.00      | v3_pre_topc(X0_46,k8_tmap_1(sK1,sK2)) = iProver_top ),
% 2.57/1.00      inference(light_normalisation,[status(thm)],[c_2745,c_2194]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3235,plain,
% 2.57/1.00      ( m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),k8_tmap_1(sK1,sK2)) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2977,c_2848]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_4062,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_4059,c_30,c_591,c_3021,c_3155,c_3235]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_4067,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1) ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_4062,c_3364]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_0,plain,
% 2.57/1.00      ( ~ l1_pre_topc(X0)
% 2.57/1.00      | ~ v1_pre_topc(X0)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
% 2.57/1.00      inference(cnf_transformation,[],[f43]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_13,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v2_struct_0(X1)
% 2.57/1.00      | ~ v2_pre_topc(X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | v1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.57/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_608,plain,
% 2.57/1.00      ( v2_struct_0(X0)
% 2.57/1.00      | ~ v2_pre_topc(X0)
% 2.57/1.00      | ~ l1_pre_topc(X0)
% 2.57/1.00      | v1_pre_topc(k8_tmap_1(X0,X1))
% 2.57/1.00      | sK2 != X1
% 2.57/1.00      | sK1 != X0 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_13,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_609,plain,
% 2.57/1.00      ( v2_struct_0(sK1)
% 2.57/1.00      | ~ v2_pre_topc(sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | v1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_608]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_611,plain,
% 2.57/1.00      ( v1_pre_topc(k8_tmap_1(sK1,sK2)) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_609,c_27,c_26,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_660,plain,
% 2.57/1.00      ( ~ l1_pre_topc(X0)
% 2.57/1.00      | k8_tmap_1(sK1,sK2) != X0
% 2.57/1.00      | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_611]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_661,plain,
% 2.57/1.00      ( ~ l1_pre_topc(k8_tmap_1(sK1,sK2))
% 2.57/1.00      | g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_660]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_663,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_661,c_27,c_26,c_25,c_631]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2193,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(k8_tmap_1(sK1,sK2)),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_663]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2762,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(k8_tmap_1(sK1,sK2))) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(light_normalisation,[status(thm)],[c_2193,c_2194]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_4103,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(demodulation,[status(thm)],[c_4067,c_2762]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_8,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v1_tsep_1(X0,X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK0(X1,X0) = u1_struct_0(X0) ),
% 2.57/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_425,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK0(X1,X0) = u1_struct_0(X0) ),
% 2.57/1.00      inference(resolution,[status(thm)],[c_8,c_185]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_553,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK0(X1,X0) = u1_struct_0(X0)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_425,c_159]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_554,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_553]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_556,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_554,c_25]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2198,plain,
% 2.57/1.00      ( v3_pre_topc(u1_struct_0(sK2),sK1)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_556]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2728,plain,
% 2.57/1.00      ( sK0(sK1,sK2) = u1_struct_0(sK2)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) = iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2198]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3630,plain,
% 2.57/1.00      ( u1_pre_topc(k8_tmap_1(sK1,sK2)) = u1_pre_topc(sK1)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_2728,c_3364]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3934,plain,
% 2.57/1.00      ( sK0(sK1,sK2) = u1_struct_0(sK2)
% 2.57/1.00      | r2_hidden(u1_struct_0(sK2),u1_pre_topc(sK1)) = iProver_top ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_3630,c_2977]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_20,negated_conjecture,
% 2.57/1.00      ( ~ m1_pre_topc(sK2,sK1)
% 2.57/1.00      | ~ v1_tsep_1(sK2,sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(cnf_transformation,[],[f70]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_229,plain,
% 2.57/1.00      ( ~ v1_tsep_1(sK2,sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(prop_impl,[status(thm)],[c_23,c_20]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_474,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | sK0(X1,X0) = u1_struct_0(X0)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_229]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_475,plain,
% 2.57/1.00      ( ~ m1_pre_topc(sK2,sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_474]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_477,plain,
% 2.57/1.00      ( sK0(sK1,sK2) = u1_struct_0(sK2)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_475,c_25,c_23]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2202,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_477]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3935,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) = k8_tmap_1(sK1,sK2)
% 2.57/1.00      | sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(superposition,[status(thm)],[c_3630,c_2762]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3968,plain,
% 2.57/1.00      ( sK0(sK1,sK2) = u1_struct_0(sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_3934,c_2202,c_3935]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_7,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | v1_tsep_1(X0,X1)
% 2.57/1.00      | ~ v3_pre_topc(sK0(X1,X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1) ),
% 2.57/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_485,plain,
% 2.57/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.57/1.00      | ~ v3_pre_topc(sK0(X1,X0),X1)
% 2.57/1.00      | ~ l1_pre_topc(X1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
% 2.57/1.00      | sK2 != X0
% 2.57/1.00      | sK1 != X1 ),
% 2.57/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_229]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_486,plain,
% 2.57/1.00      ( ~ m1_pre_topc(sK2,sK1)
% 2.57/1.00      | ~ v3_pre_topc(sK0(sK1,sK2),sK1)
% 2.57/1.00      | ~ l1_pre_topc(sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(unflattening,[status(thm)],[c_485]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_488,plain,
% 2.57/1.00      ( ~ v3_pre_topc(sK0(sK1,sK2),sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(global_propositional_subsumption,
% 2.57/1.00                [status(thm)],
% 2.57/1.00                [c_486,c_25,c_23]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2201,plain,
% 2.57/1.00      ( ~ v3_pre_topc(sK0(sK1,sK2),sK1)
% 2.57/1.00      | g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2) ),
% 2.57/1.00      inference(subtyping,[status(esa)],[c_488]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_2725,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
% 2.57/1.00      | v3_pre_topc(sK0(sK1,sK2),sK1) != iProver_top ),
% 2.57/1.00      inference(predicate_to_equality,[status(thm)],[c_2201]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(c_3973,plain,
% 2.57/1.00      ( g1_pre_topc(u1_struct_0(sK1),u1_pre_topc(sK1)) != k8_tmap_1(sK1,sK2)
% 2.57/1.00      | v3_pre_topc(u1_struct_0(sK2),sK1) != iProver_top ),
% 2.57/1.00      inference(demodulation,[status(thm)],[c_3968,c_2725]) ).
% 2.57/1.00  
% 2.57/1.00  cnf(contradiction,plain,
% 2.57/1.00      ( $false ),
% 2.57/1.00      inference(minisat,[status(thm)],[c_4103,c_4062,c_3973]) ).
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.57/1.00  
% 2.57/1.00  ------                               Statistics
% 2.57/1.00  
% 2.57/1.00  ------ General
% 2.57/1.00  
% 2.57/1.00  abstr_ref_over_cycles:                  0
% 2.57/1.00  abstr_ref_under_cycles:                 0
% 2.57/1.00  gc_basic_clause_elim:                   0
% 2.57/1.00  forced_gc_time:                         0
% 2.57/1.00  parsing_time:                           0.008
% 2.57/1.00  unif_index_cands_time:                  0.
% 2.57/1.00  unif_index_add_time:                    0.
% 2.57/1.00  orderings_time:                         0.
% 2.57/1.00  out_proof_time:                         0.01
% 2.57/1.00  total_time:                             0.135
% 2.57/1.00  num_of_symbols:                         53
% 2.57/1.00  num_of_terms:                           1614
% 2.57/1.00  
% 2.57/1.00  ------ Preprocessing
% 2.57/1.00  
% 2.57/1.00  num_of_splits:                          0
% 2.57/1.00  num_of_split_atoms:                     0
% 2.57/1.00  num_of_reused_defs:                     0
% 2.57/1.00  num_eq_ax_congr_red:                    5
% 2.57/1.00  num_of_sem_filtered_clauses:            1
% 2.57/1.00  num_of_subtypes:                        4
% 2.57/1.00  monotx_restored_types:                  0
% 2.57/1.00  sat_num_of_epr_types:                   0
% 2.57/1.00  sat_num_of_non_cyclic_types:            0
% 2.57/1.00  sat_guarded_non_collapsed_types:        0
% 2.57/1.00  num_pure_diseq_elim:                    0
% 2.57/1.00  simp_replaced_by:                       0
% 2.57/1.00  res_preprocessed:                       126
% 2.57/1.00  prep_upred:                             0
% 2.57/1.00  prep_unflattend:                        77
% 2.57/1.00  smt_new_axioms:                         0
% 2.57/1.00  pred_elim_cands:                        9
% 2.57/1.00  pred_elim:                              6
% 2.57/1.00  pred_elim_cl:                           -5
% 2.57/1.00  pred_elim_cycles:                       8
% 2.57/1.00  merged_defs:                            2
% 2.57/1.00  merged_defs_ncl:                        0
% 2.57/1.00  bin_hyper_res:                          2
% 2.57/1.00  prep_cycles:                            3
% 2.57/1.00  pred_elim_time:                         0.034
% 2.57/1.00  splitting_time:                         0.
% 2.57/1.00  sem_filter_time:                        0.
% 2.57/1.00  monotx_time:                            0.
% 2.57/1.00  subtype_inf_time:                       0.
% 2.57/1.00  
% 2.57/1.00  ------ Problem properties
% 2.57/1.00  
% 2.57/1.00  clauses:                                32
% 2.57/1.00  conjectures:                            0
% 2.57/1.00  epr:                                    0
% 2.57/1.00  horn:                                   29
% 2.57/1.00  ground:                                 11
% 2.57/1.00  unary:                                  4
% 2.57/1.00  binary:                                 8
% 2.57/1.00  lits:                                   84
% 2.57/1.00  lits_eq:                                21
% 2.57/1.00  fd_pure:                                0
% 2.57/1.00  fd_pseudo:                              0
% 2.57/1.00  fd_cond:                                0
% 2.57/1.00  fd_pseudo_cond:                         0
% 2.57/1.00  ac_symbols:                             0
% 2.57/1.00  
% 2.57/1.00  ------ Propositional Solver
% 2.57/1.00  
% 2.57/1.00  prop_solver_calls:                      24
% 2.57/1.00  prop_fast_solver_calls:                 1271
% 2.57/1.00  smt_solver_calls:                       0
% 2.57/1.00  smt_fast_solver_calls:                  0
% 2.57/1.00  prop_num_of_clauses:                    1007
% 2.57/1.00  prop_preprocess_simplified:             4017
% 2.57/1.00  prop_fo_subsumed:                       59
% 2.57/1.00  prop_solver_time:                       0.
% 2.57/1.00  smt_solver_time:                        0.
% 2.57/1.00  smt_fast_solver_time:                   0.
% 2.57/1.00  prop_fast_solver_time:                  0.
% 2.57/1.00  prop_unsat_core_time:                   0.
% 2.57/1.00  
% 2.57/1.00  ------ QBF
% 2.57/1.00  
% 2.57/1.00  qbf_q_res:                              0
% 2.57/1.00  qbf_num_tautologies:                    0
% 2.57/1.00  qbf_prep_cycles:                        0
% 2.57/1.00  
% 2.57/1.00  ------ BMC1
% 2.57/1.00  
% 2.57/1.00  bmc1_current_bound:                     -1
% 2.57/1.00  bmc1_last_solved_bound:                 -1
% 2.57/1.00  bmc1_unsat_core_size:                   -1
% 2.57/1.00  bmc1_unsat_core_parents_size:           -1
% 2.57/1.00  bmc1_merge_next_fun:                    0
% 2.57/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.57/1.00  
% 2.57/1.00  ------ Instantiation
% 2.57/1.00  
% 2.57/1.00  inst_num_of_clauses:                    215
% 2.57/1.00  inst_num_in_passive:                    32
% 2.57/1.00  inst_num_in_active:                     170
% 2.57/1.00  inst_num_in_unprocessed:                13
% 2.57/1.00  inst_num_of_loops:                      230
% 2.57/1.00  inst_num_of_learning_restarts:          0
% 2.57/1.00  inst_num_moves_active_passive:          55
% 2.57/1.00  inst_lit_activity:                      0
% 2.57/1.00  inst_lit_activity_moves:                0
% 2.57/1.00  inst_num_tautologies:                   0
% 2.57/1.00  inst_num_prop_implied:                  0
% 2.57/1.00  inst_num_existing_simplified:           0
% 2.57/1.00  inst_num_eq_res_simplified:             0
% 2.57/1.00  inst_num_child_elim:                    0
% 2.57/1.00  inst_num_of_dismatching_blockings:      44
% 2.57/1.00  inst_num_of_non_proper_insts:           249
% 2.57/1.00  inst_num_of_duplicates:                 0
% 2.57/1.00  inst_inst_num_from_inst_to_res:         0
% 2.57/1.00  inst_dismatching_checking_time:         0.
% 2.57/1.00  
% 2.57/1.00  ------ Resolution
% 2.57/1.00  
% 2.57/1.00  res_num_of_clauses:                     0
% 2.57/1.00  res_num_in_passive:                     0
% 2.57/1.00  res_num_in_active:                      0
% 2.57/1.00  res_num_of_loops:                       129
% 2.57/1.00  res_forward_subset_subsumed:            27
% 2.57/1.00  res_backward_subset_subsumed:           2
% 2.57/1.00  res_forward_subsumed:                   0
% 2.57/1.00  res_backward_subsumed:                  3
% 2.57/1.00  res_forward_subsumption_resolution:     0
% 2.57/1.00  res_backward_subsumption_resolution:    0
% 2.57/1.00  res_clause_to_clause_subsumption:       78
% 2.57/1.00  res_orphan_elimination:                 0
% 2.57/1.00  res_tautology_del:                      66
% 2.57/1.00  res_num_eq_res_simplified:              0
% 2.57/1.00  res_num_sel_changes:                    0
% 2.57/1.00  res_moves_from_active_to_pass:          0
% 2.57/1.00  
% 2.57/1.00  ------ Superposition
% 2.57/1.00  
% 2.57/1.00  sup_time_total:                         0.
% 2.57/1.00  sup_time_generating:                    0.
% 2.57/1.00  sup_time_sim_full:                      0.
% 2.57/1.00  sup_time_sim_immed:                     0.
% 2.57/1.00  
% 2.57/1.00  sup_num_of_clauses:                     30
% 2.57/1.00  sup_num_in_active:                      22
% 2.57/1.00  sup_num_in_passive:                     8
% 2.57/1.00  sup_num_of_loops:                       44
% 2.57/1.00  sup_fw_superposition:                   17
% 2.57/1.00  sup_bw_superposition:                   18
% 2.57/1.00  sup_immediate_simplified:               9
% 2.57/1.00  sup_given_eliminated:                   0
% 2.57/1.00  comparisons_done:                       0
% 2.57/1.00  comparisons_avoided:                    6
% 2.57/1.00  
% 2.57/1.00  ------ Simplifications
% 2.57/1.00  
% 2.57/1.00  
% 2.57/1.00  sim_fw_subset_subsumed:                 5
% 2.57/1.00  sim_bw_subset_subsumed:                 13
% 2.57/1.00  sim_fw_subsumed:                        0
% 2.57/1.00  sim_bw_subsumed:                        0
% 2.57/1.00  sim_fw_subsumption_res:                 0
% 2.57/1.00  sim_bw_subsumption_res:                 0
% 2.57/1.00  sim_tautology_del:                      11
% 2.57/1.00  sim_eq_tautology_del:                   1
% 2.57/1.00  sim_eq_res_simp:                        1
% 2.57/1.00  sim_fw_demodulated:                     1
% 2.57/1.00  sim_bw_demodulated:                     12
% 2.57/1.00  sim_light_normalised:                   14
% 2.57/1.00  sim_joinable_taut:                      0
% 2.57/1.00  sim_joinable_simp:                      0
% 2.57/1.00  sim_ac_normalised:                      0
% 2.57/1.00  sim_smt_subsumption:                    0
% 2.57/1.00  
%------------------------------------------------------------------------------
