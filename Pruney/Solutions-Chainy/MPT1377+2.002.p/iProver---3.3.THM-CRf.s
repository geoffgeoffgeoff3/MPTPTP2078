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
% DateTime   : Thu Dec  3 12:18:08 EST 2020

% Result     : Theorem 3.19s
% Output     : CNFRefutation 3.19s
% Verified   : 
% Statistics : Number of formulae       :  185 (41562 expanded)
%              Number of clauses        :  121 (15856 expanded)
%              Number of leaves         :   13 (7392 expanded)
%              Depth                    :   31
%              Number of atoms          :  672 (184187 expanded)
%              Number of equality atoms :  313 (29574 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v2_compts_1(X1,X0) )
        <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v2_compts_1(X1,X0) )
          <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f13,plain,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v2_compts_1(X1,X0) )
          <=> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v2_compts_1(X1,X0) )
        <~> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f30,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v2_compts_1(X1,X0) )
        <~> ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f29])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            | ~ v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            | ~ v2_compts_1(X1,X0) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
            | ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v2_compts_1(X1,X0) ) ) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f30])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            | ~ v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            | ~ v2_compts_1(X1,X0) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
            | ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v2_compts_1(X1,X0) ) ) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f34])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            | ~ v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            | ~ v2_compts_1(X1,X0) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
            | ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v2_compts_1(X1,X0) ) ) )
     => ( ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
          | ~ v2_compts_1(sK1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
          | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ v2_compts_1(sK1,X0) )
        & ( ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
            & v2_compts_1(sK1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
          | ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0)))
            & v2_compts_1(sK1,X0) ) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
              | ~ v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
              | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v2_compts_1(X1,X0) )
            & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))
                & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
              | ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
                & v2_compts_1(X1,X0) ) ) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( ? [X1] :
          ( ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
            | ~ v2_compts_1(X1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
            | ~ v2_compts_1(X1,sK0) )
          & ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
              & v2_compts_1(X1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) )
            | ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
              & v2_compts_1(X1,sK0) ) ) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
      | ~ v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
      | ~ v2_compts_1(sK1,sK0) )
    & ( ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
        & v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) )
      | ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
        & v2_compts_1(sK1,sK0) ) )
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f35,f37,f36])).

fof(f62,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
    | v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
        & v1_pre_topc(k1_pre_topc(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
        & v1_pre_topc(k1_pre_topc(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
        & v1_pre_topc(k1_pre_topc(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f44,plain,(
    ! [X0,X1] :
      ( v1_pre_topc(k1_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f59,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f47,plain,(
    ! [X0] :
      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( l1_pre_topc(g1_pre_topc(X0,X1))
        & v1_pre_topc(g1_pre_topc(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( l1_pre_topc(g1_pre_topc(X0,X1))
        & v1_pre_topc(g1_pre_topc(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(g1_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ( v1_pre_topc(X0)
       => g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f15,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f14])).

fof(f39,plain,(
    ! [X0] :
      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
      | ~ v1_pre_topc(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f42,plain,(
    ! [X0,X1] :
      ( v1_pre_topc(g1_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2,X3] :
          ( g1_pre_topc(X0,X1) = g1_pre_topc(X2,X3)
         => ( X1 = X3
            & X0 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ! [X2,X3] :
          ( ( X1 = X3
            & X0 = X2 )
          | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] :
      ( X0 = X2
      | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f45,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( l1_pre_topc(X1)
         => ( m1_pre_topc(X0,X1)
          <=> m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( m1_pre_topc(X0,X1)
          <=> m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( m1_pre_topc(X0,X1)
              | ~ m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) )
            & ( m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
              | ~ m1_pre_topc(X0,X1) ) )
          | ~ l1_pre_topc(X1) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f53,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(X0,X1)
      | ~ m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
      | ~ l1_pre_topc(X1)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f46,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f63,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f38])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & v1_pre_topc(X2) )
             => ( k1_pre_topc(X0,X1) = X2
              <=> k2_struct_0(X2) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k1_pre_topc(X0,X1) = X2
              <=> k2_struct_0(X2) = X1 )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k1_pre_topc(X0,X1) = X2
              <=> k2_struct_0(X2) = X1 )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k1_pre_topc(X0,X1) = X2
                  | k2_struct_0(X2) != X1 )
                & ( k2_struct_0(X2) = X1
                  | k1_pre_topc(X0,X1) != X2 ) )
              | ~ m1_pre_topc(X2,X0)
              | ~ v1_pre_topc(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( k2_struct_0(X2) = X1
      | k1_pre_topc(X0,X1) != X2
      | ~ m1_pre_topc(X2,X0)
      | ~ v1_pre_topc(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f66,plain,(
    ! [X0,X1] :
      ( k2_struct_0(k1_pre_topc(X0,X1)) = X1
      | ~ m1_pre_topc(k1_pre_topc(X0,X1),X0)
      | ~ v1_pre_topc(k1_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f40])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( k1_pre_topc(X0,X1) = X2
      | k2_struct_0(X2) != X1
      | ~ m1_pre_topc(X2,X0)
      | ~ v1_pre_topc(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f65,plain,(
    ! [X2,X0] :
      ( k1_pre_topc(X0,k2_struct_0(X2)) = X2
      | ~ m1_pre_topc(X2,X0)
      | ~ v1_pre_topc(X2)
      | ~ m1_subset_1(k2_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f41])).

fof(f10,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( ( v2_compts_1(X1,X0)
              <=> v1_compts_1(k1_pre_topc(X0,X1)) )
              | k1_xboole_0 = X1
              | ~ v2_pre_topc(X0) )
            & ( ( v2_compts_1(X1,X0)
              <=> v1_compts_1(k1_pre_topc(X0,X1)) )
              | k1_xboole_0 != X1 ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( ( v2_compts_1(X1,X0)
              <=> v1_compts_1(k1_pre_topc(X0,X1)) )
              | k1_xboole_0 = X1
              | ~ v2_pre_topc(X0) )
            & ( ( v2_compts_1(X1,X0)
              <=> v1_compts_1(k1_pre_topc(X0,X1)) )
              | k1_xboole_0 != X1 ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( ( ( v2_compts_1(X1,X0)
                  | ~ v1_compts_1(k1_pre_topc(X0,X1)) )
                & ( v1_compts_1(k1_pre_topc(X0,X1))
                  | ~ v2_compts_1(X1,X0) ) )
              | k1_xboole_0 = X1
              | ~ v2_pre_topc(X0) )
            & ( ( ( v2_compts_1(X1,X0)
                  | ~ v1_compts_1(k1_pre_topc(X0,X1)) )
                & ( v1_compts_1(k1_pre_topc(X0,X1))
                  | ~ v2_compts_1(X1,X0) ) )
              | k1_xboole_0 != X1 ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f57,plain,(
    ! [X0,X1] :
      ( v2_compts_1(X1,X0)
      | ~ v1_compts_1(k1_pre_topc(X0,X1))
      | k1_xboole_0 = X1
      | ~ v2_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f58,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ( v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
        & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ( v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
        & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ( v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
        & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f49,plain,(
    ! [X0] :
      ( v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f64,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
    | ~ v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f56,plain,(
    ! [X0,X1] :
      ( v1_compts_1(k1_pre_topc(X0,X1))
      | ~ v2_compts_1(X1,X0)
      | k1_xboole_0 = X1
      | ~ v2_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f60,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
    | v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f55,plain,(
    ! [X0,X1] :
      ( v2_compts_1(X1,X0)
      | ~ v1_compts_1(k1_pre_topc(X0,X1))
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f67,plain,(
    ! [X0] :
      ( v2_compts_1(k1_xboole_0,X0)
      | ~ v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f55])).

fof(f54,plain,(
    ! [X0,X1] :
      ( v1_compts_1(k1_pre_topc(X0,X1))
      | ~ v2_compts_1(X1,X0)
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f68,plain,(
    ! [X0] :
      ( v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
      | ~ v2_compts_1(k1_xboole_0,X0)
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f54])).

cnf(c_21,negated_conjecture,
    ( v2_compts_1(sK1,sK0)
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1041,plain,
    ( v2_compts_1(sK1,sK0) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | v1_pre_topc(k1_pre_topc(X1,X0)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1055,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v1_pre_topc(k1_pre_topc(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1954,plain,
    ( v2_compts_1(sK1,sK0) = iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1041,c_1055])).

cnf(c_24,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_27,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_8,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_61,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_63,plain,
    ( m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_61])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | l1_pre_topc(g1_pre_topc(X1,X0)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1278,plain,
    ( ~ m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
    | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1279,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1278])).

cnf(c_1281,plain,
    ( m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1279])).

cnf(c_2040,plain,
    ( v2_compts_1(sK1,sK0) = iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1954,c_27,c_63,c_1281])).

cnf(c_1038,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_1053,plain,
    ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1058,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | l1_pre_topc(g1_pre_topc(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1506,plain,
    ( l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1053,c_1058])).

cnf(c_0,plain,
    ( ~ l1_pre_topc(X0)
    | ~ v1_pre_topc(X0)
    | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1060,plain,
    ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
    | l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1714,plain,
    ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
    | l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1506,c_1060])).

cnf(c_1300,plain,
    ( ~ l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
    | ~ v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
    | g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1301,plain,
    ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
    | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top
    | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1300])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | v1_pre_topc(g1_pre_topc(X1,X0)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1057,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | v1_pre_topc(g1_pre_topc(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1432,plain,
    ( l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1053,c_1057])).

cnf(c_2975,plain,
    ( l1_pre_topc(X0) != iProver_top
    | g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1714,c_1301,c_1432,c_1506])).

cnf(c_2976,plain,
    ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
    | l1_pre_topc(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_2975])).

cnf(c_2983,plain,
    ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))),u1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))) = g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)) ),
    inference(superposition,[status(thm)],[c_1038,c_2976])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | X2 = X1
    | g1_pre_topc(X2,X3) != g1_pre_topc(X1,X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1049,plain,
    ( X0 = X1
    | g1_pre_topc(X0,X2) != g1_pre_topc(X1,X3)
    | m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3076,plain,
    ( g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)) != g1_pre_topc(X0,X1)
    | u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = X0
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2983,c_1049])).

cnf(c_3161,plain,
    ( u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = u1_struct_0(sK0)
    | m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3076])).

cnf(c_3322,plain,
    ( u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3161,c_27,c_63])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_pre_topc(k1_pre_topc(X1,X0),X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1056,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | m1_pre_topc(k1_pre_topc(X1,X0),X1) = iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3385,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1056])).

cnf(c_4654,plain,
    ( m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3385,c_27,c_63,c_1281])).

cnf(c_4655,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
    inference(renaming,[status(thm)],[c_4654])).

cnf(c_13,plain,
    ( m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1048,plain,
    ( m1_pre_topc(X0,X1) = iProver_top
    | m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_4663,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),sK0) = iProver_top
    | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4655,c_1048])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1054,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4662,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4655,c_1054])).

cnf(c_4751,plain,
    ( l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4662,c_27,c_63,c_1281])).

cnf(c_4752,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
    inference(renaming,[status(thm)],[c_4751])).

cnf(c_4781,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),sK0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4663,c_27,c_63,c_1281,c_4662])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1042,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3329,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3322,c_1042])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_pre_topc(k1_pre_topc(X1,X0),X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_pre_topc(k1_pre_topc(X1,X0))
    | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_166,plain,
    ( ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2,c_6,c_5])).

cnf(c_167,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
    inference(renaming,[status(thm)],[c_166])).

cnf(c_1035,plain,
    ( k2_struct_0(k1_pre_topc(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_167])).

cnf(c_3381,plain,
    ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1035])).

cnf(c_4640,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3381,c_27,c_63,c_1281])).

cnf(c_4641,plain,
    ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(renaming,[status(thm)],[c_4640])).

cnf(c_4648,plain,
    ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_3329,c_4641])).

cnf(c_1,plain,
    ( ~ m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_pre_topc(X0)
    | k1_pre_topc(X1,k2_struct_0(X0)) = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1059,plain,
    ( k1_pre_topc(X0,k2_struct_0(X1)) = X1
    | m1_subset_1(k2_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | m1_pre_topc(X1,X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_4866,plain,
    ( k1_pre_topc(X0,k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1))) = k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1),X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4648,c_1059])).

cnf(c_4867,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(X0,sK1)
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1),X0) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4866,c_4648])).

cnf(c_4881,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4781,c_4867])).

cnf(c_4976,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4881,c_27,c_3329])).

cnf(c_4982,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
    | v2_compts_1(sK1,sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2040,c_4976])).

cnf(c_3386,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1055])).

cnf(c_4450,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3386,c_27,c_63,c_1281])).

cnf(c_4983,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4450,c_4976])).

cnf(c_4995,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4982,c_3329,c_4983])).

cnf(c_15,plain,
    ( v2_compts_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v1_compts_1(k1_pre_topc(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1047,plain,
    ( k1_xboole_0 = X0
    | v2_compts_1(X0,X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | v1_compts_1(k1_pre_topc(X1,X0)) != iProver_top
    | v2_pre_topc(X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3382,plain,
    ( k1_xboole_0 = X0
    | v2_compts_1(X0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top
    | v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1047])).

cnf(c_25,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_26,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_9,plain,
    ( ~ v2_pre_topc(X0)
    | v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_58,plain,
    ( v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_60,plain,
    ( v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_58])).

cnf(c_5609,plain,
    ( k1_xboole_0 = X0
    | v2_compts_1(X0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3382,c_26,c_27,c_60,c_63,c_1281])).

cnf(c_5620,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4995,c_5609])).

cnf(c_19,negated_conjecture,
    ( ~ v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
    | ~ v2_compts_1(sK1,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1043,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v2_compts_1(sK1,sK0) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3331,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v2_compts_1(sK1,sK0) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3322,c_1043])).

cnf(c_3344,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v2_compts_1(sK1,sK0) != iProver_top ),
    inference(backward_subsumption_resolution,[status(thm)],[c_3329,c_3331])).

cnf(c_16,plain,
    ( ~ v2_compts_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v1_compts_1(k1_pre_topc(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1046,plain,
    ( k1_xboole_0 = X0
    | v2_compts_1(X0,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
    | v1_compts_1(k1_pre_topc(X1,X0)) = iProver_top
    | v2_pre_topc(X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2345,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v2_compts_1(sK1,sK0) = iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top
    | v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1041,c_1046])).

cnf(c_23,negated_conjecture,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
    | v2_compts_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_28,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | v2_compts_1(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2456,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) = iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2345,c_26,c_27,c_28,c_60,c_63,c_1281])).

cnf(c_5005,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) = iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4995,c_2456])).

cnf(c_3588,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3329,c_1046])).

cnf(c_4016,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3588,c_26,c_27])).

cnf(c_5116,plain,
    ( sK1 = k1_xboole_0
    | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5005,c_4016])).

cnf(c_3587,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) = iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3329,c_1047])).

cnf(c_4007,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) = iProver_top
    | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3587,c_26,c_27])).

cnf(c_5122,plain,
    ( sK1 = k1_xboole_0
    | v2_compts_1(sK1,sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_5116,c_4007])).

cnf(c_5697,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5620,c_3329,c_3344,c_5116,c_5122])).

cnf(c_5703,plain,
    ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0) = k1_pre_topc(sK0,k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_5697,c_4995])).

cnf(c_17,plain,
    ( v2_compts_1(k1_xboole_0,X0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1045,plain,
    ( v2_compts_1(k1_xboole_0,X0) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3375,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1045])).

cnf(c_5239,plain,
    ( v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3375,c_27,c_63,c_1281])).

cnf(c_5240,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5239])).

cnf(c_6372,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5703,c_5240])).

cnf(c_18,plain,
    ( ~ v2_compts_1(k1_xboole_0,X0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
    | v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1044,plain,
    ( v2_compts_1(k1_xboole_0,X0) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3376,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top
    | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3322,c_1044])).

cnf(c_5247,plain,
    ( v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3376,c_27,c_63,c_1281])).

cnf(c_5248,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top ),
    inference(renaming,[status(thm)],[c_5247])).

cnf(c_6371,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_5703,c_5248])).

cnf(c_1039,plain,
    ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | v2_compts_1(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_5717,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
    | v2_compts_1(k1_xboole_0,sK0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_5697,c_1039])).

cnf(c_5715,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_5697,c_3329])).

cnf(c_5709,plain,
    ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
    | v2_compts_1(k1_xboole_0,sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5697,c_3344])).

cnf(c_36,plain,
    ( v2_compts_1(k1_xboole_0,X0) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) != iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_38,plain,
    ( v2_compts_1(k1_xboole_0,sK0) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_36])).

cnf(c_33,plain,
    ( v2_compts_1(k1_xboole_0,X0) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
    | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) = iProver_top
    | l1_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_35,plain,
    ( v2_compts_1(k1_xboole_0,sK0) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6372,c_6371,c_5717,c_5715,c_5709,c_38,c_35,c_27])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n017.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 10:28:31 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.19/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.19/0.98  
% 3.19/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.19/0.98  
% 3.19/0.98  ------  iProver source info
% 3.19/0.98  
% 3.19/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.19/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.19/0.98  git: non_committed_changes: false
% 3.19/0.98  git: last_make_outside_of_git: false
% 3.19/0.98  
% 3.19/0.98  ------ 
% 3.19/0.98  
% 3.19/0.98  ------ Input Options
% 3.19/0.98  
% 3.19/0.98  --out_options                           all
% 3.19/0.98  --tptp_safe_out                         true
% 3.19/0.98  --problem_path                          ""
% 3.19/0.98  --include_path                          ""
% 3.19/0.98  --clausifier                            res/vclausify_rel
% 3.19/0.98  --clausifier_options                    --mode clausify
% 3.19/0.98  --stdin                                 false
% 3.19/0.98  --stats_out                             all
% 3.19/0.98  
% 3.19/0.98  ------ General Options
% 3.19/0.98  
% 3.19/0.98  --fof                                   false
% 3.19/0.98  --time_out_real                         305.
% 3.19/0.98  --time_out_virtual                      -1.
% 3.19/0.98  --symbol_type_check                     false
% 3.19/0.98  --clausify_out                          false
% 3.19/0.98  --sig_cnt_out                           false
% 3.19/0.98  --trig_cnt_out                          false
% 3.19/0.98  --trig_cnt_out_tolerance                1.
% 3.19/0.98  --trig_cnt_out_sk_spl                   false
% 3.19/0.98  --abstr_cl_out                          false
% 3.19/0.98  
% 3.19/0.98  ------ Global Options
% 3.19/0.98  
% 3.19/0.98  --schedule                              default
% 3.19/0.98  --add_important_lit                     false
% 3.19/0.98  --prop_solver_per_cl                    1000
% 3.19/0.98  --min_unsat_core                        false
% 3.19/0.98  --soft_assumptions                      false
% 3.19/0.98  --soft_lemma_size                       3
% 3.19/0.98  --prop_impl_unit_size                   0
% 3.19/0.98  --prop_impl_unit                        []
% 3.19/0.98  --share_sel_clauses                     true
% 3.19/0.98  --reset_solvers                         false
% 3.19/0.98  --bc_imp_inh                            [conj_cone]
% 3.19/0.98  --conj_cone_tolerance                   3.
% 3.19/0.98  --extra_neg_conj                        none
% 3.19/0.98  --large_theory_mode                     true
% 3.19/0.98  --prolific_symb_bound                   200
% 3.19/0.98  --lt_threshold                          2000
% 3.19/0.98  --clause_weak_htbl                      true
% 3.19/0.98  --gc_record_bc_elim                     false
% 3.19/0.98  
% 3.19/0.98  ------ Preprocessing Options
% 3.19/0.98  
% 3.19/0.98  --preprocessing_flag                    true
% 3.19/0.98  --time_out_prep_mult                    0.1
% 3.19/0.98  --splitting_mode                        input
% 3.19/0.98  --splitting_grd                         true
% 3.19/0.98  --splitting_cvd                         false
% 3.19/0.98  --splitting_cvd_svl                     false
% 3.19/0.98  --splitting_nvd                         32
% 3.19/0.98  --sub_typing                            true
% 3.19/0.98  --prep_gs_sim                           true
% 3.19/0.98  --prep_unflatten                        true
% 3.19/0.98  --prep_res_sim                          true
% 3.19/0.98  --prep_upred                            true
% 3.19/0.98  --prep_sem_filter                       exhaustive
% 3.19/0.98  --prep_sem_filter_out                   false
% 3.19/0.98  --pred_elim                             true
% 3.19/0.98  --res_sim_input                         true
% 3.19/0.98  --eq_ax_congr_red                       true
% 3.19/0.98  --pure_diseq_elim                       true
% 3.19/0.98  --brand_transform                       false
% 3.19/0.98  --non_eq_to_eq                          false
% 3.19/0.98  --prep_def_merge                        true
% 3.19/0.98  --prep_def_merge_prop_impl              false
% 3.19/0.98  --prep_def_merge_mbd                    true
% 3.19/0.98  --prep_def_merge_tr_red                 false
% 3.19/0.98  --prep_def_merge_tr_cl                  false
% 3.19/0.98  --smt_preprocessing                     true
% 3.19/0.98  --smt_ac_axioms                         fast
% 3.19/0.98  --preprocessed_out                      false
% 3.19/0.98  --preprocessed_stats                    false
% 3.19/0.98  
% 3.19/0.98  ------ Abstraction refinement Options
% 3.19/0.98  
% 3.19/0.98  --abstr_ref                             []
% 3.19/0.98  --abstr_ref_prep                        false
% 3.19/0.98  --abstr_ref_until_sat                   false
% 3.19/0.98  --abstr_ref_sig_restrict                funpre
% 3.19/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.19/0.98  --abstr_ref_under                       []
% 3.19/0.98  
% 3.19/0.98  ------ SAT Options
% 3.19/0.98  
% 3.19/0.98  --sat_mode                              false
% 3.19/0.98  --sat_fm_restart_options                ""
% 3.19/0.98  --sat_gr_def                            false
% 3.19/0.98  --sat_epr_types                         true
% 3.19/0.98  --sat_non_cyclic_types                  false
% 3.19/0.98  --sat_finite_models                     false
% 3.19/0.98  --sat_fm_lemmas                         false
% 3.19/0.98  --sat_fm_prep                           false
% 3.19/0.98  --sat_fm_uc_incr                        true
% 3.19/0.98  --sat_out_model                         small
% 3.19/0.98  --sat_out_clauses                       false
% 3.19/0.98  
% 3.19/0.98  ------ QBF Options
% 3.19/0.98  
% 3.19/0.98  --qbf_mode                              false
% 3.19/0.98  --qbf_elim_univ                         false
% 3.19/0.98  --qbf_dom_inst                          none
% 3.19/0.98  --qbf_dom_pre_inst                      false
% 3.19/0.98  --qbf_sk_in                             false
% 3.19/0.98  --qbf_pred_elim                         true
% 3.19/0.98  --qbf_split                             512
% 3.19/0.98  
% 3.19/0.98  ------ BMC1 Options
% 3.19/0.98  
% 3.19/0.98  --bmc1_incremental                      false
% 3.19/0.98  --bmc1_axioms                           reachable_all
% 3.19/0.98  --bmc1_min_bound                        0
% 3.19/0.98  --bmc1_max_bound                        -1
% 3.19/0.98  --bmc1_max_bound_default                -1
% 3.19/0.98  --bmc1_symbol_reachability              true
% 3.19/0.98  --bmc1_property_lemmas                  false
% 3.19/0.98  --bmc1_k_induction                      false
% 3.19/0.98  --bmc1_non_equiv_states                 false
% 3.19/0.98  --bmc1_deadlock                         false
% 3.19/0.98  --bmc1_ucm                              false
% 3.19/0.98  --bmc1_add_unsat_core                   none
% 3.19/0.98  --bmc1_unsat_core_children              false
% 3.19/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.19/0.98  --bmc1_out_stat                         full
% 3.19/0.98  --bmc1_ground_init                      false
% 3.19/0.98  --bmc1_pre_inst_next_state              false
% 3.19/0.98  --bmc1_pre_inst_state                   false
% 3.19/0.98  --bmc1_pre_inst_reach_state             false
% 3.19/0.98  --bmc1_out_unsat_core                   false
% 3.19/0.98  --bmc1_aig_witness_out                  false
% 3.19/0.98  --bmc1_verbose                          false
% 3.19/0.98  --bmc1_dump_clauses_tptp                false
% 3.19/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.19/0.98  --bmc1_dump_file                        -
% 3.19/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.19/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.19/0.98  --bmc1_ucm_extend_mode                  1
% 3.19/0.98  --bmc1_ucm_init_mode                    2
% 3.19/0.98  --bmc1_ucm_cone_mode                    none
% 3.19/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.19/0.98  --bmc1_ucm_relax_model                  4
% 3.19/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.19/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.19/0.98  --bmc1_ucm_layered_model                none
% 3.19/0.98  --bmc1_ucm_max_lemma_size               10
% 3.19/0.98  
% 3.19/0.98  ------ AIG Options
% 3.19/0.98  
% 3.19/0.98  --aig_mode                              false
% 3.19/0.98  
% 3.19/0.98  ------ Instantiation Options
% 3.19/0.98  
% 3.19/0.98  --instantiation_flag                    true
% 3.19/0.98  --inst_sos_flag                         false
% 3.19/0.98  --inst_sos_phase                        true
% 3.19/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.19/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.19/0.98  --inst_lit_sel_side                     num_symb
% 3.19/0.98  --inst_solver_per_active                1400
% 3.19/0.98  --inst_solver_calls_frac                1.
% 3.19/0.98  --inst_passive_queue_type               priority_queues
% 3.19/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.19/0.98  --inst_passive_queues_freq              [25;2]
% 3.19/0.98  --inst_dismatching                      true
% 3.19/0.98  --inst_eager_unprocessed_to_passive     true
% 3.19/0.98  --inst_prop_sim_given                   true
% 3.19/0.98  --inst_prop_sim_new                     false
% 3.19/0.98  --inst_subs_new                         false
% 3.19/0.98  --inst_eq_res_simp                      false
% 3.19/0.98  --inst_subs_given                       false
% 3.19/0.98  --inst_orphan_elimination               true
% 3.19/0.98  --inst_learning_loop_flag               true
% 3.19/0.98  --inst_learning_start                   3000
% 3.19/0.98  --inst_learning_factor                  2
% 3.19/0.98  --inst_start_prop_sim_after_learn       3
% 3.19/0.98  --inst_sel_renew                        solver
% 3.19/0.98  --inst_lit_activity_flag                true
% 3.19/0.98  --inst_restr_to_given                   false
% 3.19/0.98  --inst_activity_threshold               500
% 3.19/0.98  --inst_out_proof                        true
% 3.19/0.98  
% 3.19/0.98  ------ Resolution Options
% 3.19/0.98  
% 3.19/0.98  --resolution_flag                       true
% 3.19/0.98  --res_lit_sel                           adaptive
% 3.19/0.98  --res_lit_sel_side                      none
% 3.19/0.98  --res_ordering                          kbo
% 3.19/0.98  --res_to_prop_solver                    active
% 3.19/0.98  --res_prop_simpl_new                    false
% 3.19/0.98  --res_prop_simpl_given                  true
% 3.19/0.98  --res_passive_queue_type                priority_queues
% 3.19/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.19/0.98  --res_passive_queues_freq               [15;5]
% 3.19/0.98  --res_forward_subs                      full
% 3.19/0.98  --res_backward_subs                     full
% 3.19/0.98  --res_forward_subs_resolution           true
% 3.19/0.98  --res_backward_subs_resolution          true
% 3.19/0.98  --res_orphan_elimination                true
% 3.19/0.98  --res_time_limit                        2.
% 3.19/0.98  --res_out_proof                         true
% 3.19/0.98  
% 3.19/0.98  ------ Superposition Options
% 3.19/0.98  
% 3.19/0.98  --superposition_flag                    true
% 3.19/0.98  --sup_passive_queue_type                priority_queues
% 3.19/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.19/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.19/0.98  --demod_completeness_check              fast
% 3.19/0.98  --demod_use_ground                      true
% 3.19/0.98  --sup_to_prop_solver                    passive
% 3.19/0.98  --sup_prop_simpl_new                    true
% 3.19/0.98  --sup_prop_simpl_given                  true
% 3.19/0.98  --sup_fun_splitting                     false
% 3.19/0.98  --sup_smt_interval                      50000
% 3.19/0.98  
% 3.19/0.98  ------ Superposition Simplification Setup
% 3.19/0.98  
% 3.19/0.98  --sup_indices_passive                   []
% 3.19/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.19/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_full_bw                           [BwDemod]
% 3.19/0.98  --sup_immed_triv                        [TrivRules]
% 3.19/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.19/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_immed_bw_main                     []
% 3.19/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.19/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.19/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.19/0.98  
% 3.19/0.98  ------ Combination Options
% 3.19/0.98  
% 3.19/0.98  --comb_res_mult                         3
% 3.19/0.98  --comb_sup_mult                         2
% 3.19/0.98  --comb_inst_mult                        10
% 3.19/0.98  
% 3.19/0.98  ------ Debug Options
% 3.19/0.98  
% 3.19/0.98  --dbg_backtrace                         false
% 3.19/0.98  --dbg_dump_prop_clauses                 false
% 3.19/0.98  --dbg_dump_prop_clauses_file            -
% 3.19/0.98  --dbg_out_stat                          false
% 3.19/0.98  ------ Parsing...
% 3.19/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.19/0.98  
% 3.19/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.19/0.98  
% 3.19/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.19/0.98  
% 3.19/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.19/0.98  ------ Proving...
% 3.19/0.98  ------ Problem Properties 
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  clauses                                 26
% 3.19/0.98  conjectures                             7
% 3.19/0.98  EPR                                     3
% 3.19/0.98  Horn                                    20
% 3.19/0.98  unary                                   2
% 3.19/0.98  binary                                  7
% 3.19/0.98  lits                                    79
% 3.19/0.98  lits eq                                 9
% 3.19/0.98  fd_pure                                 0
% 3.19/0.98  fd_pseudo                               0
% 3.19/0.98  fd_cond                                 2
% 3.19/0.98  fd_pseudo_cond                          2
% 3.19/0.98  AC symbols                              0
% 3.19/0.98  
% 3.19/0.98  ------ Schedule dynamic 5 is on 
% 3.19/0.98  
% 3.19/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  ------ 
% 3.19/0.98  Current options:
% 3.19/0.98  ------ 
% 3.19/0.98  
% 3.19/0.98  ------ Input Options
% 3.19/0.98  
% 3.19/0.98  --out_options                           all
% 3.19/0.98  --tptp_safe_out                         true
% 3.19/0.98  --problem_path                          ""
% 3.19/0.98  --include_path                          ""
% 3.19/0.98  --clausifier                            res/vclausify_rel
% 3.19/0.98  --clausifier_options                    --mode clausify
% 3.19/0.98  --stdin                                 false
% 3.19/0.98  --stats_out                             all
% 3.19/0.98  
% 3.19/0.98  ------ General Options
% 3.19/0.98  
% 3.19/0.98  --fof                                   false
% 3.19/0.98  --time_out_real                         305.
% 3.19/0.98  --time_out_virtual                      -1.
% 3.19/0.98  --symbol_type_check                     false
% 3.19/0.98  --clausify_out                          false
% 3.19/0.98  --sig_cnt_out                           false
% 3.19/0.98  --trig_cnt_out                          false
% 3.19/0.98  --trig_cnt_out_tolerance                1.
% 3.19/0.98  --trig_cnt_out_sk_spl                   false
% 3.19/0.98  --abstr_cl_out                          false
% 3.19/0.98  
% 3.19/0.98  ------ Global Options
% 3.19/0.98  
% 3.19/0.98  --schedule                              default
% 3.19/0.98  --add_important_lit                     false
% 3.19/0.98  --prop_solver_per_cl                    1000
% 3.19/0.98  --min_unsat_core                        false
% 3.19/0.98  --soft_assumptions                      false
% 3.19/0.98  --soft_lemma_size                       3
% 3.19/0.98  --prop_impl_unit_size                   0
% 3.19/0.98  --prop_impl_unit                        []
% 3.19/0.98  --share_sel_clauses                     true
% 3.19/0.98  --reset_solvers                         false
% 3.19/0.98  --bc_imp_inh                            [conj_cone]
% 3.19/0.98  --conj_cone_tolerance                   3.
% 3.19/0.98  --extra_neg_conj                        none
% 3.19/0.98  --large_theory_mode                     true
% 3.19/0.98  --prolific_symb_bound                   200
% 3.19/0.98  --lt_threshold                          2000
% 3.19/0.98  --clause_weak_htbl                      true
% 3.19/0.98  --gc_record_bc_elim                     false
% 3.19/0.98  
% 3.19/0.98  ------ Preprocessing Options
% 3.19/0.98  
% 3.19/0.98  --preprocessing_flag                    true
% 3.19/0.98  --time_out_prep_mult                    0.1
% 3.19/0.98  --splitting_mode                        input
% 3.19/0.98  --splitting_grd                         true
% 3.19/0.98  --splitting_cvd                         false
% 3.19/0.98  --splitting_cvd_svl                     false
% 3.19/0.98  --splitting_nvd                         32
% 3.19/0.98  --sub_typing                            true
% 3.19/0.98  --prep_gs_sim                           true
% 3.19/0.98  --prep_unflatten                        true
% 3.19/0.98  --prep_res_sim                          true
% 3.19/0.98  --prep_upred                            true
% 3.19/0.98  --prep_sem_filter                       exhaustive
% 3.19/0.98  --prep_sem_filter_out                   false
% 3.19/0.98  --pred_elim                             true
% 3.19/0.98  --res_sim_input                         true
% 3.19/0.98  --eq_ax_congr_red                       true
% 3.19/0.98  --pure_diseq_elim                       true
% 3.19/0.98  --brand_transform                       false
% 3.19/0.98  --non_eq_to_eq                          false
% 3.19/0.98  --prep_def_merge                        true
% 3.19/0.98  --prep_def_merge_prop_impl              false
% 3.19/0.98  --prep_def_merge_mbd                    true
% 3.19/0.98  --prep_def_merge_tr_red                 false
% 3.19/0.98  --prep_def_merge_tr_cl                  false
% 3.19/0.98  --smt_preprocessing                     true
% 3.19/0.98  --smt_ac_axioms                         fast
% 3.19/0.98  --preprocessed_out                      false
% 3.19/0.98  --preprocessed_stats                    false
% 3.19/0.98  
% 3.19/0.98  ------ Abstraction refinement Options
% 3.19/0.98  
% 3.19/0.98  --abstr_ref                             []
% 3.19/0.98  --abstr_ref_prep                        false
% 3.19/0.98  --abstr_ref_until_sat                   false
% 3.19/0.98  --abstr_ref_sig_restrict                funpre
% 3.19/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.19/0.98  --abstr_ref_under                       []
% 3.19/0.98  
% 3.19/0.98  ------ SAT Options
% 3.19/0.98  
% 3.19/0.98  --sat_mode                              false
% 3.19/0.98  --sat_fm_restart_options                ""
% 3.19/0.98  --sat_gr_def                            false
% 3.19/0.98  --sat_epr_types                         true
% 3.19/0.98  --sat_non_cyclic_types                  false
% 3.19/0.98  --sat_finite_models                     false
% 3.19/0.98  --sat_fm_lemmas                         false
% 3.19/0.98  --sat_fm_prep                           false
% 3.19/0.98  --sat_fm_uc_incr                        true
% 3.19/0.98  --sat_out_model                         small
% 3.19/0.98  --sat_out_clauses                       false
% 3.19/0.98  
% 3.19/0.98  ------ QBF Options
% 3.19/0.98  
% 3.19/0.98  --qbf_mode                              false
% 3.19/0.98  --qbf_elim_univ                         false
% 3.19/0.98  --qbf_dom_inst                          none
% 3.19/0.98  --qbf_dom_pre_inst                      false
% 3.19/0.98  --qbf_sk_in                             false
% 3.19/0.98  --qbf_pred_elim                         true
% 3.19/0.98  --qbf_split                             512
% 3.19/0.98  
% 3.19/0.98  ------ BMC1 Options
% 3.19/0.98  
% 3.19/0.98  --bmc1_incremental                      false
% 3.19/0.98  --bmc1_axioms                           reachable_all
% 3.19/0.98  --bmc1_min_bound                        0
% 3.19/0.98  --bmc1_max_bound                        -1
% 3.19/0.98  --bmc1_max_bound_default                -1
% 3.19/0.98  --bmc1_symbol_reachability              true
% 3.19/0.98  --bmc1_property_lemmas                  false
% 3.19/0.98  --bmc1_k_induction                      false
% 3.19/0.98  --bmc1_non_equiv_states                 false
% 3.19/0.98  --bmc1_deadlock                         false
% 3.19/0.98  --bmc1_ucm                              false
% 3.19/0.98  --bmc1_add_unsat_core                   none
% 3.19/0.98  --bmc1_unsat_core_children              false
% 3.19/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.19/0.98  --bmc1_out_stat                         full
% 3.19/0.98  --bmc1_ground_init                      false
% 3.19/0.98  --bmc1_pre_inst_next_state              false
% 3.19/0.98  --bmc1_pre_inst_state                   false
% 3.19/0.98  --bmc1_pre_inst_reach_state             false
% 3.19/0.98  --bmc1_out_unsat_core                   false
% 3.19/0.98  --bmc1_aig_witness_out                  false
% 3.19/0.98  --bmc1_verbose                          false
% 3.19/0.98  --bmc1_dump_clauses_tptp                false
% 3.19/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.19/0.98  --bmc1_dump_file                        -
% 3.19/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.19/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.19/0.98  --bmc1_ucm_extend_mode                  1
% 3.19/0.98  --bmc1_ucm_init_mode                    2
% 3.19/0.98  --bmc1_ucm_cone_mode                    none
% 3.19/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.19/0.98  --bmc1_ucm_relax_model                  4
% 3.19/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.19/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.19/0.98  --bmc1_ucm_layered_model                none
% 3.19/0.98  --bmc1_ucm_max_lemma_size               10
% 3.19/0.98  
% 3.19/0.98  ------ AIG Options
% 3.19/0.98  
% 3.19/0.98  --aig_mode                              false
% 3.19/0.98  
% 3.19/0.98  ------ Instantiation Options
% 3.19/0.98  
% 3.19/0.98  --instantiation_flag                    true
% 3.19/0.98  --inst_sos_flag                         false
% 3.19/0.98  --inst_sos_phase                        true
% 3.19/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.19/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.19/0.98  --inst_lit_sel_side                     none
% 3.19/0.98  --inst_solver_per_active                1400
% 3.19/0.98  --inst_solver_calls_frac                1.
% 3.19/0.98  --inst_passive_queue_type               priority_queues
% 3.19/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.19/0.98  --inst_passive_queues_freq              [25;2]
% 3.19/0.98  --inst_dismatching                      true
% 3.19/0.98  --inst_eager_unprocessed_to_passive     true
% 3.19/0.98  --inst_prop_sim_given                   true
% 3.19/0.98  --inst_prop_sim_new                     false
% 3.19/0.98  --inst_subs_new                         false
% 3.19/0.98  --inst_eq_res_simp                      false
% 3.19/0.98  --inst_subs_given                       false
% 3.19/0.98  --inst_orphan_elimination               true
% 3.19/0.98  --inst_learning_loop_flag               true
% 3.19/0.98  --inst_learning_start                   3000
% 3.19/0.98  --inst_learning_factor                  2
% 3.19/0.98  --inst_start_prop_sim_after_learn       3
% 3.19/0.98  --inst_sel_renew                        solver
% 3.19/0.98  --inst_lit_activity_flag                true
% 3.19/0.98  --inst_restr_to_given                   false
% 3.19/0.98  --inst_activity_threshold               500
% 3.19/0.98  --inst_out_proof                        true
% 3.19/0.98  
% 3.19/0.98  ------ Resolution Options
% 3.19/0.98  
% 3.19/0.98  --resolution_flag                       false
% 3.19/0.98  --res_lit_sel                           adaptive
% 3.19/0.98  --res_lit_sel_side                      none
% 3.19/0.98  --res_ordering                          kbo
% 3.19/0.98  --res_to_prop_solver                    active
% 3.19/0.98  --res_prop_simpl_new                    false
% 3.19/0.98  --res_prop_simpl_given                  true
% 3.19/0.98  --res_passive_queue_type                priority_queues
% 3.19/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.19/0.98  --res_passive_queues_freq               [15;5]
% 3.19/0.98  --res_forward_subs                      full
% 3.19/0.98  --res_backward_subs                     full
% 3.19/0.98  --res_forward_subs_resolution           true
% 3.19/0.98  --res_backward_subs_resolution          true
% 3.19/0.98  --res_orphan_elimination                true
% 3.19/0.98  --res_time_limit                        2.
% 3.19/0.98  --res_out_proof                         true
% 3.19/0.98  
% 3.19/0.98  ------ Superposition Options
% 3.19/0.98  
% 3.19/0.98  --superposition_flag                    true
% 3.19/0.98  --sup_passive_queue_type                priority_queues
% 3.19/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.19/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.19/0.98  --demod_completeness_check              fast
% 3.19/0.98  --demod_use_ground                      true
% 3.19/0.98  --sup_to_prop_solver                    passive
% 3.19/0.98  --sup_prop_simpl_new                    true
% 3.19/0.98  --sup_prop_simpl_given                  true
% 3.19/0.98  --sup_fun_splitting                     false
% 3.19/0.98  --sup_smt_interval                      50000
% 3.19/0.98  
% 3.19/0.98  ------ Superposition Simplification Setup
% 3.19/0.98  
% 3.19/0.98  --sup_indices_passive                   []
% 3.19/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.19/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.19/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_full_bw                           [BwDemod]
% 3.19/0.98  --sup_immed_triv                        [TrivRules]
% 3.19/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.19/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_immed_bw_main                     []
% 3.19/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.19/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.19/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.19/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.19/0.98  
% 3.19/0.98  ------ Combination Options
% 3.19/0.98  
% 3.19/0.98  --comb_res_mult                         3
% 3.19/0.98  --comb_sup_mult                         2
% 3.19/0.98  --comb_inst_mult                        10
% 3.19/0.98  
% 3.19/0.98  ------ Debug Options
% 3.19/0.98  
% 3.19/0.98  --dbg_backtrace                         false
% 3.19/0.98  --dbg_dump_prop_clauses                 false
% 3.19/0.98  --dbg_dump_prop_clauses_file            -
% 3.19/0.98  --dbg_out_stat                          false
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  ------ Proving...
% 3.19/0.98  
% 3.19/0.98  
% 3.19/0.98  % SZS status Theorem for theBenchmark.p
% 3.19/0.98  
% 3.19/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.19/0.98  
% 3.19/0.98  fof(f11,conjecture,(
% 3.19/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f12,negated_conjecture,(
% 3.19/0.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))))),
% 3.19/0.98    inference(negated_conjecture,[],[f11])).
% 3.19/0.98  
% 3.19/0.98  fof(f13,plain,(
% 3.19/0.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)) <=> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))))),
% 3.19/0.98    inference(pure_predicate_removal,[],[f12])).
% 3.19/0.98  
% 3.19/0.98  fof(f29,plain,(
% 3.19/0.98    ? [X0] : (? [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)) <~> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 3.19/0.98    inference(ennf_transformation,[],[f13])).
% 3.19/0.98  
% 3.19/0.98  fof(f30,plain,(
% 3.19/0.98    ? [X0] : (? [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)) <~> (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f29])).
% 3.19/0.98  
% 3.19/0.98  fof(f34,plain,(
% 3.19/0.98    ? [X0] : (? [X1] : (((~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_compts_1(X1,X0))) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 3.19/0.98    inference(nnf_transformation,[],[f30])).
% 3.19/0.98  
% 3.19/0.98  fof(f35,plain,(
% 3.19/0.98    ? [X0] : (? [X1] : ((~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_compts_1(X1,X0)) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f34])).
% 3.19/0.98  
% 3.19/0.98  fof(f37,plain,(
% 3.19/0.98    ( ! [X0] : (? [X1] : ((~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_compts_1(X1,X0)) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)))) => ((~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v2_compts_1(sK1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_compts_1(sK1,X0)) & ((m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(sK1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(sK1,X0))))) )),
% 3.19/0.98    introduced(choice_axiom,[])).
% 3.19/0.98  
% 3.19/0.98  fof(f36,plain,(
% 3.19/0.98    ? [X0] : (? [X1] : ((~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) | ~v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~v2_compts_1(X1,X0)) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v2_compts_1(X1,X0)))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (? [X1] : ((~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) | ~v2_compts_1(X1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) | ~v2_compts_1(X1,sK0)) & ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) & v2_compts_1(X1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))) | (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) & v2_compts_1(X1,sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 3.19/0.98    introduced(choice_axiom,[])).
% 3.19/0.98  
% 3.19/0.98  fof(f38,plain,(
% 3.19/0.98    ((~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) | ~v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~v2_compts_1(sK1,sK0)) & ((m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) & v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))) | (m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) & v2_compts_1(sK1,sK0)))) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 3.19/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f35,f37,f36])).
% 3.19/0.98  
% 3.19/0.98  fof(f62,plain,(
% 3.19/0.98    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) | v2_compts_1(sK1,sK0)),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f4,axiom,(
% 3.19/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => (m1_pre_topc(k1_pre_topc(X0,X1),X0) & v1_pre_topc(k1_pre_topc(X0,X1))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f19,plain,(
% 3.19/0.98    ! [X0,X1] : ((m1_pre_topc(k1_pre_topc(X0,X1),X0) & v1_pre_topc(k1_pre_topc(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 3.19/0.98    inference(ennf_transformation,[],[f4])).
% 3.19/0.98  
% 3.19/0.98  fof(f20,plain,(
% 3.19/0.98    ! [X0,X1] : ((m1_pre_topc(k1_pre_topc(X0,X1),X0) & v1_pre_topc(k1_pre_topc(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f19])).
% 3.19/0.98  
% 3.19/0.98  fof(f44,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v1_pre_topc(k1_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f20])).
% 3.19/0.98  
% 3.19/0.98  fof(f59,plain,(
% 3.19/0.98    l1_pre_topc(sK0)),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f6,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f22,plain,(
% 3.19/0.98    ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f6])).
% 3.19/0.98  
% 3.19/0.98  fof(f47,plain,(
% 3.19/0.98    ( ! [X0] : (m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f22])).
% 3.19/0.98  
% 3.19/0.98  fof(f3,axiom,(
% 3.19/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (l1_pre_topc(g1_pre_topc(X0,X1)) & v1_pre_topc(g1_pre_topc(X0,X1))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f18,plain,(
% 3.19/0.98    ! [X0,X1] : ((l1_pre_topc(g1_pre_topc(X0,X1)) & v1_pre_topc(g1_pre_topc(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.19/0.98    inference(ennf_transformation,[],[f3])).
% 3.19/0.98  
% 3.19/0.98  fof(f43,plain,(
% 3.19/0.98    ( ! [X0,X1] : (l1_pre_topc(g1_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.19/0.98    inference(cnf_transformation,[],[f18])).
% 3.19/0.98  
% 3.19/0.98  fof(f1,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => (v1_pre_topc(X0) => g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f14,plain,(
% 3.19/0.98    ! [X0] : ((g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0)) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f1])).
% 3.19/0.98  
% 3.19/0.98  fof(f15,plain,(
% 3.19/0.98    ! [X0] : (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f14])).
% 3.19/0.98  
% 3.19/0.98  fof(f39,plain,(
% 3.19/0.98    ( ! [X0] : (g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 | ~v1_pre_topc(X0) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f15])).
% 3.19/0.98  
% 3.19/0.98  fof(f42,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v1_pre_topc(g1_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.19/0.98    inference(cnf_transformation,[],[f18])).
% 3.19/0.98  
% 3.19/0.98  fof(f8,axiom,(
% 3.19/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2,X3] : (g1_pre_topc(X0,X1) = g1_pre_topc(X2,X3) => (X1 = X3 & X0 = X2)))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f25,plain,(
% 3.19/0.98    ! [X0,X1] : (! [X2,X3] : ((X1 = X3 & X0 = X2) | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.19/0.98    inference(ennf_transformation,[],[f8])).
% 3.19/0.98  
% 3.19/0.98  fof(f50,plain,(
% 3.19/0.98    ( ! [X2,X0,X3,X1] : (X0 = X2 | g1_pre_topc(X0,X1) != g1_pre_topc(X2,X3) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.19/0.98    inference(cnf_transformation,[],[f25])).
% 3.19/0.98  
% 3.19/0.98  fof(f45,plain,(
% 3.19/0.98    ( ! [X0,X1] : (m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f20])).
% 3.19/0.98  
% 3.19/0.98  fof(f9,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (l1_pre_topc(X1) => (m1_pre_topc(X0,X1) <=> m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f26,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : ((m1_pre_topc(X0,X1) <=> m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f9])).
% 3.19/0.98  
% 3.19/0.98  fof(f32,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (((m1_pre_topc(X0,X1) | ~m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))) & (m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) | ~m1_pre_topc(X0,X1))) | ~l1_pre_topc(X1)) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(nnf_transformation,[],[f26])).
% 3.19/0.98  
% 3.19/0.98  fof(f53,plain,(
% 3.19/0.98    ( ! [X0,X1] : (m1_pre_topc(X0,X1) | ~m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) | ~l1_pre_topc(X1) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f32])).
% 3.19/0.98  
% 3.19/0.98  fof(f5,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f21,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f5])).
% 3.19/0.98  
% 3.19/0.98  fof(f46,plain,(
% 3.19/0.98    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f21])).
% 3.19/0.98  
% 3.19/0.98  fof(f63,plain,(
% 3.19/0.98    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f2,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : ((m1_pre_topc(X2,X0) & v1_pre_topc(X2)) => (k1_pre_topc(X0,X1) = X2 <=> k2_struct_0(X2) = X1))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f16,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (! [X2] : ((k1_pre_topc(X0,X1) = X2 <=> k2_struct_0(X2) = X1) | (~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f2])).
% 3.19/0.98  
% 3.19/0.98  fof(f17,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (! [X2] : ((k1_pre_topc(X0,X1) = X2 <=> k2_struct_0(X2) = X1) | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f16])).
% 3.19/0.98  
% 3.19/0.98  fof(f31,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (! [X2] : (((k1_pre_topc(X0,X1) = X2 | k2_struct_0(X2) != X1) & (k2_struct_0(X2) = X1 | k1_pre_topc(X0,X1) != X2)) | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(nnf_transformation,[],[f17])).
% 3.19/0.98  
% 3.19/0.98  fof(f40,plain,(
% 3.19/0.98    ( ! [X2,X0,X1] : (k2_struct_0(X2) = X1 | k1_pre_topc(X0,X1) != X2 | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f31])).
% 3.19/0.98  
% 3.19/0.98  fof(f66,plain,(
% 3.19/0.98    ( ! [X0,X1] : (k2_struct_0(k1_pre_topc(X0,X1)) = X1 | ~m1_pre_topc(k1_pre_topc(X0,X1),X0) | ~v1_pre_topc(k1_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(equality_resolution,[],[f40])).
% 3.19/0.98  
% 3.19/0.98  fof(f41,plain,(
% 3.19/0.98    ( ! [X2,X0,X1] : (k1_pre_topc(X0,X1) = X2 | k2_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f31])).
% 3.19/0.98  
% 3.19/0.98  fof(f65,plain,(
% 3.19/0.98    ( ! [X2,X0] : (k1_pre_topc(X0,k2_struct_0(X2)) = X2 | ~m1_pre_topc(X2,X0) | ~v1_pre_topc(X2) | ~m1_subset_1(k2_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(equality_resolution,[],[f41])).
% 3.19/0.98  
% 3.19/0.98  fof(f10,axiom,(
% 3.19/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_pre_topc(X0) => ((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1)) & (k1_xboole_0 = X1 => (v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1)))))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f27,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (((((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1) | ~v2_pre_topc(X0)) & ((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 != X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(ennf_transformation,[],[f10])).
% 3.19/0.98  
% 3.19/0.98  fof(f28,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : ((((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 = X1 | ~v2_pre_topc(X0)) & ((v2_compts_1(X1,X0) <=> v1_compts_1(k1_pre_topc(X0,X1))) | k1_xboole_0 != X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f27])).
% 3.19/0.98  
% 3.19/0.98  fof(f33,plain,(
% 3.19/0.98    ! [X0] : (! [X1] : (((((v2_compts_1(X1,X0) | ~v1_compts_1(k1_pre_topc(X0,X1))) & (v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0))) | k1_xboole_0 = X1 | ~v2_pre_topc(X0)) & (((v2_compts_1(X1,X0) | ~v1_compts_1(k1_pre_topc(X0,X1))) & (v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0))) | k1_xboole_0 != X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.19/0.98    inference(nnf_transformation,[],[f28])).
% 3.19/0.98  
% 3.19/0.98  fof(f57,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v2_compts_1(X1,X0) | ~v1_compts_1(k1_pre_topc(X0,X1)) | k1_xboole_0 = X1 | ~v2_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f33])).
% 3.19/0.98  
% 3.19/0.98  fof(f58,plain,(
% 3.19/0.98    v2_pre_topc(sK0)),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f7,axiom,(
% 3.19/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => (v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))))),
% 3.19/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.19/0.98  
% 3.19/0.98  fof(f23,plain,(
% 3.19/0.98    ! [X0] : ((v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.19/0.98    inference(ennf_transformation,[],[f7])).
% 3.19/0.98  
% 3.19/0.98  fof(f24,plain,(
% 3.19/0.98    ! [X0] : ((v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) & v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.19/0.98    inference(flattening,[],[f23])).
% 3.19/0.98  
% 3.19/0.98  fof(f49,plain,(
% 3.19/0.98    ( ! [X0] : (v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f24])).
% 3.19/0.98  
% 3.19/0.98  fof(f64,plain,(
% 3.19/0.98    ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) | ~v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) | ~m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) | ~v2_compts_1(sK1,sK0)),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f56,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0) | k1_xboole_0 = X1 | ~v2_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f33])).
% 3.19/0.98  
% 3.19/0.98  fof(f60,plain,(
% 3.19/0.98    v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) | v2_compts_1(sK1,sK0)),
% 3.19/0.98    inference(cnf_transformation,[],[f38])).
% 3.19/0.98  
% 3.19/0.98  fof(f55,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v2_compts_1(X1,X0) | ~v1_compts_1(k1_pre_topc(X0,X1)) | k1_xboole_0 != X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f33])).
% 3.19/0.98  
% 3.19/0.98  fof(f67,plain,(
% 3.19/0.98    ( ! [X0] : (v2_compts_1(k1_xboole_0,X0) | ~v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(equality_resolution,[],[f55])).
% 3.19/0.98  
% 3.19/0.98  fof(f54,plain,(
% 3.19/0.98    ( ! [X0,X1] : (v1_compts_1(k1_pre_topc(X0,X1)) | ~v2_compts_1(X1,X0) | k1_xboole_0 != X1 | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(cnf_transformation,[],[f33])).
% 3.19/0.98  
% 3.19/0.98  fof(f68,plain,(
% 3.19/0.98    ( ! [X0] : (v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) | ~v2_compts_1(k1_xboole_0,X0) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.19/0.98    inference(equality_resolution,[],[f54])).
% 3.19/0.98  
% 3.19/0.98  cnf(c_21,negated_conjecture,
% 3.19/0.98      ( v2_compts_1(sK1,sK0)
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) ),
% 3.19/0.98      inference(cnf_transformation,[],[f62]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1041,plain,
% 3.19/0.98      ( v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_6,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | ~ l1_pre_topc(X1)
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(X1,X0)) ),
% 3.19/0.98      inference(cnf_transformation,[],[f44]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1055,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.19/0.98      | l1_pre_topc(X1) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(X1,X0)) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1954,plain,
% 3.19/0.98      ( v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_1041,c_1055]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_24,negated_conjecture,
% 3.19/0.98      ( l1_pre_topc(sK0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_27,plain,
% 3.19/0.98      ( l1_pre_topc(sK0) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_8,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 3.19/0.98      | ~ l1_pre_topc(X0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f47]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_61,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_63,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) = iProver_top
% 3.19/0.98      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.98      inference(instantiation,[status(thm)],[c_61]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(X1,X0)) ),
% 3.19/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1278,plain,
% 3.19/0.98      ( ~ m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0))))
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) ),
% 3.19/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1279,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_1278]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1281,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
% 3.19/0.98      inference(instantiation,[status(thm)],[c_1279]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_2040,plain,
% 3.19/0.98      ( v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_1954,c_27,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1038,plain,
% 3.19/0.98      ( l1_pre_topc(sK0) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1053,plain,
% 3.19/0.98      ( m1_subset_1(u1_pre_topc(X0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X0)))) = iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1058,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(X1,X0)) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1506,plain,
% 3.19/0.98      ( l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_1053,c_1058]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_0,plain,
% 3.19/0.98      ( ~ l1_pre_topc(X0)
% 3.19/0.98      | ~ v1_pre_topc(X0)
% 3.19/0.98      | g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0 ),
% 3.19/0.98      inference(cnf_transformation,[],[f39]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1060,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) = X0
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1714,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_1506,c_1060]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1300,plain,
% 3.19/0.98      ( ~ l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
% 3.19/0.98      | ~ v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
% 3.19/0.98      | g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) ),
% 3.19/0.98      inference(instantiation,[status(thm)],[c_0]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1301,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top
% 3.19/0.98      | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_1300]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.19/0.98      | v1_pre_topc(g1_pre_topc(X1,X0)) ),
% 3.19/0.98      inference(cnf_transformation,[],[f42]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1057,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 3.19/0.98      | v1_pre_topc(g1_pre_topc(X1,X0)) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1432,plain,
% 3.19/0.98      ( l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_1053,c_1057]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_2975,plain,
% 3.19/0.98      ( l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)) ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_1714,c_1301,c_1432,c_1506]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_2976,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))),u1_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))) = g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(renaming,[status(thm)],[c_2975]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_2983,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))),u1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))) = g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)) ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_1038,c_2976]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_12,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.19/0.98      | X2 = X1
% 3.19/0.98      | g1_pre_topc(X2,X3) != g1_pre_topc(X1,X0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f50]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1049,plain,
% 3.19/0.98      ( X0 = X1
% 3.19/0.98      | g1_pre_topc(X0,X2) != g1_pre_topc(X1,X3)
% 3.19/0.98      | m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3076,plain,
% 3.19/0.98      ( g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)) != g1_pre_topc(X0,X1)
% 3.19/0.98      | u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = X0
% 3.19/0.98      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_2983,c_1049]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3161,plain,
% 3.19/0.98      ( u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = u1_struct_0(sK0)
% 3.19/0.98      | m1_subset_1(u1_pre_topc(sK0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(sK0)))) != iProver_top ),
% 3.19/0.98      inference(equality_resolution,[status(thm)],[c_3076]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3322,plain,
% 3.19/0.98      ( u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = u1_struct_0(sK0) ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_3161,c_27,c_63]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_5,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(X1,X0),X1)
% 3.19/0.98      | ~ l1_pre_topc(X1) ),
% 3.19/0.98      inference(cnf_transformation,[],[f45]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1056,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(X1,X0),X1) = iProver_top
% 3.19/0.98      | l1_pre_topc(X1) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3385,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_3322,c_1056]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4654,plain,
% 3.19/0.98      ( m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_3385,c_27,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4655,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
% 3.19/0.98      inference(renaming,[status(thm)],[c_4654]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_13,plain,
% 3.19/0.98      ( m1_pre_topc(X0,X1)
% 3.19/0.98      | ~ m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
% 3.19/0.98      | ~ l1_pre_topc(X0)
% 3.19/0.98      | ~ l1_pre_topc(X1) ),
% 3.19/0.98      inference(cnf_transformation,[],[f53]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1048,plain,
% 3.19/0.98      ( m1_pre_topc(X0,X1) = iProver_top
% 3.19/0.98      | m1_pre_topc(X0,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | l1_pre_topc(X1) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4663,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),sK0) = iProver_top
% 3.19/0.98      | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top
% 3.19/0.98      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_4655,c_1048]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_7,plain,
% 3.19/0.98      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f46]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1054,plain,
% 3.19/0.98      ( m1_pre_topc(X0,X1) != iProver_top
% 3.19/0.98      | l1_pre_topc(X1) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4662,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_4655,c_1054]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4751,plain,
% 3.19/0.98      ( l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_4662,c_27,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4752,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
% 3.19/0.98      inference(renaming,[status(thm)],[c_4751]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4781,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0),sK0) = iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_4663,c_27,c_63,c_1281,c_4662]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_20,negated_conjecture,
% 3.19/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.19/0.98      inference(cnf_transformation,[],[f63]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1042,plain,
% 3.19/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) = iProver_top
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3329,plain,
% 3.19/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.19/0.98      inference(demodulation,[status(thm)],[c_3322,c_1042]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_2,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | ~ m1_pre_topc(k1_pre_topc(X1,X0),X1)
% 3.19/0.98      | ~ l1_pre_topc(X1)
% 3.19/0.98      | ~ v1_pre_topc(k1_pre_topc(X1,X0))
% 3.19/0.98      | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
% 3.19/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_166,plain,
% 3.19/0.98      ( ~ l1_pre_topc(X1)
% 3.19/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_2,c_6,c_5]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_167,plain,
% 3.19/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | ~ l1_pre_topc(X1)
% 3.19/0.98      | k2_struct_0(k1_pre_topc(X1,X0)) = X0 ),
% 3.19/0.98      inference(renaming,[status(thm)],[c_166]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1035,plain,
% 3.19/0.98      ( k2_struct_0(k1_pre_topc(X0,X1)) = X1
% 3.19/0.98      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_167]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3381,plain,
% 3.19/0.98      ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_3322,c_1035]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4640,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0 ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_3381,c_27,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4641,plain,
% 3.19/0.98      ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = X0
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.98      inference(renaming,[status(thm)],[c_4640]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4648,plain,
% 3.19/0.98      ( k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = sK1 ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_3329,c_4641]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1,plain,
% 3.19/0.98      ( ~ m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | ~ m1_pre_topc(X0,X1)
% 3.19/0.98      | ~ l1_pre_topc(X1)
% 3.19/0.98      | ~ v1_pre_topc(X0)
% 3.19/0.98      | k1_pre_topc(X1,k2_struct_0(X0)) = X0 ),
% 3.19/0.98      inference(cnf_transformation,[],[f65]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1059,plain,
% 3.19/0.98      ( k1_pre_topc(X0,k2_struct_0(X1)) = X1
% 3.19/0.98      | m1_subset_1(k2_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(X1,X0) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(X1) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4866,plain,
% 3.19/0.98      ( k1_pre_topc(X0,k2_struct_0(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1))) = k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1),X0) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_4648,c_1059]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4867,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(X0,sK1)
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.98      | m1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1),X0) != iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
% 3.19/0.98      inference(light_normalisation,[status(thm)],[c_4866,c_4648]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4881,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(sK0) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_4781,c_4867]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4976,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) != iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_4881,c_27,c_3329]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4982,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
% 3.19/0.98      | v2_compts_1(sK1,sK0) = iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_2040,c_4976]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3386,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_3322,c_1055]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4450,plain,
% 3.19/0.98      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | v1_pre_topc(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) = iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_3386,c_27,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4983,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1)
% 3.19/0.98      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_4450,c_4976]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_4995,plain,
% 3.19/0.98      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1) = k1_pre_topc(sK0,sK1) ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_4982,c_3329,c_4983]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_15,plain,
% 3.19/0.98      ( v2_compts_1(X0,X1)
% 3.19/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.98      | ~ v1_compts_1(k1_pre_topc(X1,X0))
% 3.19/0.98      | ~ v2_pre_topc(X1)
% 3.19/0.98      | ~ l1_pre_topc(X1)
% 3.19/0.98      | k1_xboole_0 = X0 ),
% 3.19/0.98      inference(cnf_transformation,[],[f57]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_1047,plain,
% 3.19/0.98      ( k1_xboole_0 = X0
% 3.19/0.98      | v2_compts_1(X0,X1) = iProver_top
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.19/0.98      | v1_compts_1(k1_pre_topc(X1,X0)) != iProver_top
% 3.19/0.98      | v2_pre_topc(X1) != iProver_top
% 3.19/0.98      | l1_pre_topc(X1) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_3382,plain,
% 3.19/0.98      ( k1_xboole_0 = X0
% 3.19/0.98      | v2_compts_1(X0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top
% 3.19/0.98      | v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.98      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.98      inference(superposition,[status(thm)],[c_3322,c_1047]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_25,negated_conjecture,
% 3.19/0.98      ( v2_pre_topc(sK0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f58]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_26,plain,
% 3.19/0.98      ( v2_pre_topc(sK0) = iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_9,plain,
% 3.19/0.98      ( ~ v2_pre_topc(X0)
% 3.19/0.98      | v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0)))
% 3.19/0.98      | ~ l1_pre_topc(X0) ),
% 3.19/0.98      inference(cnf_transformation,[],[f49]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_58,plain,
% 3.19/0.98      ( v2_pre_topc(X0) != iProver_top
% 3.19/0.98      | v2_pre_topc(g1_pre_topc(u1_struct_0(X0),u1_pre_topc(X0))) = iProver_top
% 3.19/0.98      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_60,plain,
% 3.19/0.98      ( v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.98      | v2_pre_topc(sK0) != iProver_top
% 3.19/0.98      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.98      inference(instantiation,[status(thm)],[c_58]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_5609,plain,
% 3.19/0.98      ( k1_xboole_0 = X0
% 3.19/0.98      | v2_compts_1(X0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.98      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.98      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),X0)) != iProver_top ),
% 3.19/0.98      inference(global_propositional_subsumption,
% 3.19/0.98                [status(thm)],
% 3.19/0.98                [c_3382,c_26,c_27,c_60,c_63,c_1281]) ).
% 3.19/0.98  
% 3.19/0.98  cnf(c_5620,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_4995,c_5609]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_19,negated_conjecture,
% 3.19/0.99      ( ~ v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
% 3.19/0.99      | ~ v2_compts_1(sK1,sK0)
% 3.19/0.99      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))))
% 3.19/0.99      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.19/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_1043,plain,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) != iProver_top
% 3.19/0.99      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))))) != iProver_top
% 3.19/0.99      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3331,plain,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) != iProver_top
% 3.19/0.99      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_3322,c_1043]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3344,plain,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) != iProver_top ),
% 3.19/0.99      inference(backward_subsumption_resolution,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_3329,c_3331]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_16,plain,
% 3.19/0.99      ( ~ v2_compts_1(X0,X1)
% 3.19/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X1,X0))
% 3.19/0.99      | ~ v2_pre_topc(X1)
% 3.19/0.99      | ~ l1_pre_topc(X1)
% 3.19/0.99      | k1_xboole_0 = X0 ),
% 3.19/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_1046,plain,
% 3.19/0.99      ( k1_xboole_0 = X0
% 3.19/0.99      | v2_compts_1(X0,X1) != iProver_top
% 3.19/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X1,X0)) = iProver_top
% 3.19/0.99      | v2_pre_topc(X1) != iProver_top
% 3.19/0.99      | l1_pre_topc(X1) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_2345,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top
% 3.19/0.99      | v2_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_1041,c_1046]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_23,negated_conjecture,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)))
% 3.19/0.99      | v2_compts_1(sK1,sK0) ),
% 3.19/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_28,plain,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_2456,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),sK1)) = iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_2345,c_26,c_27,c_28,c_60,c_63,c_1281]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5005,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_4995,c_2456]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3588,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top
% 3.19/0.99      | v2_pre_topc(sK0) != iProver_top
% 3.19/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_3329,c_1046]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_4016,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_3588,c_26,c_27]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5116,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) = iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_5005,c_4016]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3587,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top
% 3.19/0.99      | v2_pre_topc(sK0) != iProver_top
% 3.19/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_3329,c_1047]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_4007,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,sK1)) != iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_3587,c_26,c_27]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5122,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0 | v2_compts_1(sK1,sK0) = iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_5116,c_4007]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5697,plain,
% 3.19/0.99      ( sK1 = k1_xboole_0 ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_5620,c_3329,c_3344,c_5116,c_5122]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5703,plain,
% 3.19/0.99      ( k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0) = k1_pre_topc(sK0,k1_xboole_0) ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5697,c_4995]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_17,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,X0)
% 3.19/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
% 3.19/0.99      | ~ v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
% 3.19/0.99      | ~ l1_pre_topc(X0) ),
% 3.19/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_1045,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,X0) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) != iProver_top
% 3.19/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3375,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top
% 3.19/0.99      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_3322,c_1045]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5239,plain,
% 3.19/0.99      ( v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_3375,c_27,c_63,c_1281]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5240,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) != iProver_top ),
% 3.19/0.99      inference(renaming,[status(thm)],[c_5239]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_6372,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) != iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5703,c_5240]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_18,plain,
% 3.19/0.99      ( ~ v2_compts_1(k1_xboole_0,X0)
% 3.19/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X0,k1_xboole_0))
% 3.19/0.99      | ~ l1_pre_topc(X0) ),
% 3.19/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_1044,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,X0) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) = iProver_top
% 3.19/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_3376,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top
% 3.19/0.99      | l1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.99      inference(superposition,[status(thm)],[c_3322,c_1044]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5247,plain,
% 3.19/0.99      ( v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top ),
% 3.19/0.99      inference(global_propositional_subsumption,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_3376,c_27,c_63,c_1281]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5248,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0)),k1_xboole_0)) = iProver_top ),
% 3.19/0.99      inference(renaming,[status(thm)],[c_5247]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_6371,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) = iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5703,c_5248]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_1039,plain,
% 3.19/0.99      ( v2_compts_1(sK1,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | v2_compts_1(sK1,sK0) = iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5717,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) = iProver_top
% 3.19/0.99      | v2_compts_1(k1_xboole_0,sK0) = iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5697,c_1039]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5715,plain,
% 3.19/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5697,c_3329]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_5709,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,g1_pre_topc(u1_struct_0(sK0),u1_pre_topc(sK0))) != iProver_top
% 3.19/0.99      | v2_compts_1(k1_xboole_0,sK0) != iProver_top ),
% 3.19/0.99      inference(demodulation,[status(thm)],[c_5697,c_3344]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_36,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,X0) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) != iProver_top
% 3.19/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_38,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,sK0) = iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) != iProver_top
% 3.19/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.99      inference(instantiation,[status(thm)],[c_36]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_33,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,X0) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(X0,k1_xboole_0)) = iProver_top
% 3.19/0.99      | l1_pre_topc(X0) != iProver_top ),
% 3.19/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(c_35,plain,
% 3.19/0.99      ( v2_compts_1(k1_xboole_0,sK0) != iProver_top
% 3.19/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.19/0.99      | v1_compts_1(k1_pre_topc(sK0,k1_xboole_0)) = iProver_top
% 3.19/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 3.19/0.99      inference(instantiation,[status(thm)],[c_33]) ).
% 3.19/0.99  
% 3.19/0.99  cnf(contradiction,plain,
% 3.19/0.99      ( $false ),
% 3.19/0.99      inference(minisat,
% 3.19/0.99                [status(thm)],
% 3.19/0.99                [c_6372,c_6371,c_5717,c_5715,c_5709,c_38,c_35,c_27]) ).
% 3.19/0.99  
% 3.19/0.99  
% 3.19/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.19/0.99  
% 3.19/0.99  ------                               Statistics
% 3.19/0.99  
% 3.19/0.99  ------ General
% 3.19/0.99  
% 3.19/0.99  abstr_ref_over_cycles:                  0
% 3.19/0.99  abstr_ref_under_cycles:                 0
% 3.19/0.99  gc_basic_clause_elim:                   0
% 3.19/0.99  forced_gc_time:                         0
% 3.19/0.99  parsing_time:                           0.009
% 3.19/0.99  unif_index_cands_time:                  0.
% 3.19/0.99  unif_index_add_time:                    0.
% 3.19/0.99  orderings_time:                         0.
% 3.19/0.99  out_proof_time:                         0.013
% 3.19/0.99  total_time:                             0.239
% 3.19/0.99  num_of_symbols:                         47
% 3.19/0.99  num_of_terms:                           4860
% 3.19/0.99  
% 3.19/0.99  ------ Preprocessing
% 3.19/0.99  
% 3.19/0.99  num_of_splits:                          0
% 3.19/0.99  num_of_split_atoms:                     0
% 3.19/0.99  num_of_reused_defs:                     0
% 3.19/0.99  num_eq_ax_congr_red:                    2
% 3.19/0.99  num_of_sem_filtered_clauses:            1
% 3.19/0.99  num_of_subtypes:                        0
% 3.19/0.99  monotx_restored_types:                  0
% 3.19/0.99  sat_num_of_epr_types:                   0
% 3.19/0.99  sat_num_of_non_cyclic_types:            0
% 3.19/0.99  sat_guarded_non_collapsed_types:        0
% 3.19/0.99  num_pure_diseq_elim:                    0
% 3.19/0.99  simp_replaced_by:                       0
% 3.19/0.99  res_preprocessed:                       109
% 3.19/0.99  prep_upred:                             0
% 3.19/0.99  prep_unflattend:                        6
% 3.19/0.99  smt_new_axioms:                         0
% 3.19/0.99  pred_elim_cands:                        7
% 3.19/0.99  pred_elim:                              0
% 3.19/0.99  pred_elim_cl:                           0
% 3.19/0.99  pred_elim_cycles:                       2
% 3.19/0.99  merged_defs:                            0
% 3.19/0.99  merged_defs_ncl:                        0
% 3.19/0.99  bin_hyper_res:                          0
% 3.19/0.99  prep_cycles:                            3
% 3.19/0.99  pred_elim_time:                         0.006
% 3.19/0.99  splitting_time:                         0.
% 3.19/0.99  sem_filter_time:                        0.
% 3.19/0.99  monotx_time:                            0.001
% 3.19/0.99  subtype_inf_time:                       0.
% 3.19/0.99  
% 3.19/0.99  ------ Problem properties
% 3.19/0.99  
% 3.19/0.99  clauses:                                26
% 3.19/0.99  conjectures:                            7
% 3.19/0.99  epr:                                    3
% 3.19/0.99  horn:                                   20
% 3.19/0.99  ground:                                 7
% 3.19/0.99  unary:                                  2
% 3.19/0.99  binary:                                 7
% 3.19/0.99  lits:                                   79
% 3.19/0.99  lits_eq:                                9
% 3.19/0.99  fd_pure:                                0
% 3.19/0.99  fd_pseudo:                              0
% 3.19/0.99  fd_cond:                                2
% 3.19/0.99  fd_pseudo_cond:                         2
% 3.19/0.99  ac_symbols:                             0
% 3.19/0.99  
% 3.19/0.99  ------ Propositional Solver
% 3.19/0.99  
% 3.19/0.99  prop_solver_calls:                      25
% 3.19/0.99  prop_fast_solver_calls:                 1239
% 3.19/0.99  smt_solver_calls:                       0
% 3.19/0.99  smt_fast_solver_calls:                  0
% 3.19/0.99  prop_num_of_clauses:                    2047
% 3.19/0.99  prop_preprocess_simplified:             5716
% 3.19/0.99  prop_fo_subsumed:                       105
% 3.19/0.99  prop_solver_time:                       0.
% 3.19/0.99  smt_solver_time:                        0.
% 3.19/0.99  smt_fast_solver_time:                   0.
% 3.19/0.99  prop_fast_solver_time:                  0.
% 3.19/0.99  prop_unsat_core_time:                   0.
% 3.19/0.99  
% 3.19/0.99  ------ QBF
% 3.19/0.99  
% 3.19/0.99  qbf_q_res:                              0
% 3.19/0.99  qbf_num_tautologies:                    0
% 3.19/0.99  qbf_prep_cycles:                        0
% 3.19/0.99  
% 3.19/0.99  ------ BMC1
% 3.19/0.99  
% 3.19/0.99  bmc1_current_bound:                     -1
% 3.19/0.99  bmc1_last_solved_bound:                 -1
% 3.19/0.99  bmc1_unsat_core_size:                   -1
% 3.19/0.99  bmc1_unsat_core_parents_size:           -1
% 3.19/0.99  bmc1_merge_next_fun:                    0
% 3.19/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.19/0.99  
% 3.19/0.99  ------ Instantiation
% 3.19/0.99  
% 3.19/0.99  inst_num_of_clauses:                    634
% 3.19/0.99  inst_num_in_passive:                    149
% 3.19/0.99  inst_num_in_active:                     366
% 3.19/0.99  inst_num_in_unprocessed:                119
% 3.19/0.99  inst_num_of_loops:                      540
% 3.19/0.99  inst_num_of_learning_restarts:          0
% 3.19/0.99  inst_num_moves_active_passive:          169
% 3.19/0.99  inst_lit_activity:                      0
% 3.19/0.99  inst_lit_activity_moves:                0
% 3.19/0.99  inst_num_tautologies:                   0
% 3.19/0.99  inst_num_prop_implied:                  0
% 3.19/0.99  inst_num_existing_simplified:           0
% 3.19/0.99  inst_num_eq_res_simplified:             0
% 3.19/0.99  inst_num_child_elim:                    0
% 3.19/0.99  inst_num_of_dismatching_blockings:      445
% 3.19/0.99  inst_num_of_non_proper_insts:           1109
% 3.19/0.99  inst_num_of_duplicates:                 0
% 3.19/0.99  inst_inst_num_from_inst_to_res:         0
% 3.19/0.99  inst_dismatching_checking_time:         0.
% 3.19/0.99  
% 3.19/0.99  ------ Resolution
% 3.19/0.99  
% 3.19/0.99  res_num_of_clauses:                     0
% 3.19/0.99  res_num_in_passive:                     0
% 3.19/0.99  res_num_in_active:                      0
% 3.19/0.99  res_num_of_loops:                       112
% 3.19/0.99  res_forward_subset_subsumed:            49
% 3.19/0.99  res_backward_subset_subsumed:           0
% 3.19/0.99  res_forward_subsumed:                   0
% 3.19/0.99  res_backward_subsumed:                  0
% 3.19/0.99  res_forward_subsumption_resolution:     0
% 3.19/0.99  res_backward_subsumption_resolution:    0
% 3.19/0.99  res_clause_to_clause_subsumption:       273
% 3.19/0.99  res_orphan_elimination:                 0
% 3.19/0.99  res_tautology_del:                      124
% 3.19/0.99  res_num_eq_res_simplified:              0
% 3.19/0.99  res_num_sel_changes:                    0
% 3.19/0.99  res_moves_from_active_to_pass:          0
% 3.19/0.99  
% 3.19/0.99  ------ Superposition
% 3.19/0.99  
% 3.19/0.99  sup_time_total:                         0.
% 3.19/0.99  sup_time_generating:                    0.
% 3.19/0.99  sup_time_sim_full:                      0.
% 3.19/0.99  sup_time_sim_immed:                     0.
% 3.19/0.99  
% 3.19/0.99  sup_num_of_clauses:                     79
% 3.19/0.99  sup_num_in_active:                      50
% 3.19/0.99  sup_num_in_passive:                     29
% 3.19/0.99  sup_num_of_loops:                       107
% 3.19/0.99  sup_fw_superposition:                   68
% 3.19/0.99  sup_bw_superposition:                   116
% 3.19/0.99  sup_immediate_simplified:               57
% 3.19/0.99  sup_given_eliminated:                   0
% 3.19/0.99  comparisons_done:                       0
% 3.19/0.99  comparisons_avoided:                    3
% 3.19/0.99  
% 3.19/0.99  ------ Simplifications
% 3.19/0.99  
% 3.19/0.99  
% 3.19/0.99  sim_fw_subset_subsumed:                 31
% 3.19/0.99  sim_bw_subset_subsumed:                 26
% 3.19/0.99  sim_fw_subsumed:                        7
% 3.19/0.99  sim_bw_subsumed:                        2
% 3.19/0.99  sim_fw_subsumption_res:                 1
% 3.19/0.99  sim_bw_subsumption_res:                 1
% 3.19/0.99  sim_tautology_del:                      26
% 3.19/0.99  sim_eq_tautology_del:                   25
% 3.19/0.99  sim_eq_res_simp:                        0
% 3.19/0.99  sim_fw_demodulated:                     1
% 3.19/0.99  sim_bw_demodulated:                     40
% 3.19/0.99  sim_light_normalised:                   28
% 3.19/0.99  sim_joinable_taut:                      0
% 3.19/0.99  sim_joinable_simp:                      0
% 3.19/0.99  sim_ac_normalised:                      0
% 3.19/0.99  sim_smt_subsumption:                    0
% 3.19/0.99  
%------------------------------------------------------------------------------
