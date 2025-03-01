%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:10 EST 2020

% Result     : Theorem 0.78s
% Output     : CNFRefutation 0.78s
% Verified   : 
% Statistics : Number of formulae       :  116 ( 294 expanded)
%              Number of clauses        :   52 (  76 expanded)
%              Number of leaves         :   16 (  65 expanded)
%              Depth                    :   17
%              Number of atoms          :  393 (1374 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f13,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(X1,X0) )
         => r3_orders_1(u1_orders_2(X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v6_orders_2(X1,X0) )
           => r3_orders_1(u1_orders_2(X0),X1) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f16,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v6_orders_2(X1,X0) )
           => r3_orders_1(u1_orders_2(X0),X1) ) ) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f17,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v6_orders_2(X1,X0) )
           => r3_orders_1(u1_orders_2(X0),X1) ) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r3_orders_1(u1_orders_2(X0),X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v6_orders_2(X1,X0) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r3_orders_1(u1_orders_2(X0),X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v6_orders_2(X1,X0) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0) ) ),
    inference(flattening,[],[f31])).

fof(f43,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r3_orders_1(u1_orders_2(X0),X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v6_orders_2(X1,X0) )
     => ( ~ r3_orders_1(u1_orders_2(X0),sK2)
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0)))
        & v6_orders_2(sK2,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r3_orders_1(u1_orders_2(X0),X1)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(X1,X0) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0) )
   => ( ? [X1] :
          ( ~ r3_orders_1(u1_orders_2(sK1),X1)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
          & v6_orders_2(X1,sK1) )
      & l1_orders_2(sK1)
      & v5_orders_2(sK1)
      & v4_orders_2(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( ~ r3_orders_1(u1_orders_2(sK1),sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    & v6_orders_2(sK2,sK1)
    & l1_orders_2(sK1)
    & v5_orders_2(sK1)
    & v4_orders_2(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f32,f43,f42])).

fof(f71,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f44])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) )
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f33,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f33])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(X1,X0)
          & r4_relat_2(X2,X0) )
       => r4_relat_2(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( r4_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r4_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( r4_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r4_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f27])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( r4_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r4_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(X1,X0)
          & r8_relat_2(X2,X0) )
       => r8_relat_2(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( r8_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r8_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( r8_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r8_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f29])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( r8_relat_2(X2,X1)
      | ~ r1_tarski(X1,X0)
      | ~ r8_relat_2(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( r3_orders_1(X0,X1)
        <=> ( r6_relat_2(X0,X1)
            & r4_relat_2(X0,X1)
            & r8_relat_2(X0,X1)
            & r1_relat_2(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r3_orders_1(X0,X1)
        <=> ( r6_relat_2(X0,X1)
            & r4_relat_2(X0,X1)
            & r8_relat_2(X0,X1)
            & r1_relat_2(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r3_orders_1(X0,X1)
            | ~ r6_relat_2(X0,X1)
            | ~ r4_relat_2(X0,X1)
            | ~ r8_relat_2(X0,X1)
            | ~ r1_relat_2(X0,X1) )
          & ( ( r6_relat_2(X0,X1)
              & r4_relat_2(X0,X1)
              & r8_relat_2(X0,X1)
              & r1_relat_2(X0,X1) )
            | ~ r3_orders_1(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r3_orders_1(X0,X1)
            | ~ r6_relat_2(X0,X1)
            | ~ r4_relat_2(X0,X1)
            | ~ r8_relat_2(X0,X1)
            | ~ r1_relat_2(X0,X1) )
          & ( ( r6_relat_2(X0,X1)
              & r4_relat_2(X0,X1)
              & r8_relat_2(X0,X1)
              & r1_relat_2(X0,X1) )
            | ~ r3_orders_1(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f38])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r3_orders_1(X0,X1)
      | ~ r6_relat_2(X0,X1)
      | ~ r4_relat_2(X0,X1)
      | ~ r8_relat_2(X0,X1)
      | ~ r1_relat_2(X0,X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r7_relat_2(X1,X0)
      <=> ( r6_relat_2(X1,X0)
          & r1_relat_2(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r7_relat_2(X1,X0)
      <=> ( r6_relat_2(X1,X0)
          & r1_relat_2(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ( r7_relat_2(X1,X0)
          | ~ r6_relat_2(X1,X0)
          | ~ r1_relat_2(X1,X0) )
        & ( ( r6_relat_2(X1,X0)
            & r1_relat_2(X1,X0) )
          | ~ r7_relat_2(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( ( r7_relat_2(X1,X0)
          | ~ r6_relat_2(X1,X0)
          | ~ r1_relat_2(X1,X0) )
        & ( ( r6_relat_2(X1,X0)
            & r1_relat_2(X1,X0) )
          | ~ r7_relat_2(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f40])).

fof(f63,plain,(
    ! [X0,X1] :
      ( r6_relat_2(X1,X0)
      | ~ r7_relat_2(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f70,plain,(
    v6_orders_2(sK2,sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v6_orders_2(X1,X0)
          <=> r7_relat_2(u1_orders_2(X0),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v6_orders_2(X1,X0)
          <=> r7_relat_2(u1_orders_2(X0),X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v6_orders_2(X1,X0)
              | ~ r7_relat_2(u1_orders_2(X0),X1) )
            & ( r7_relat_2(u1_orders_2(X0),X1)
              | ~ v6_orders_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r7_relat_2(u1_orders_2(X0),X1)
      | ~ v6_orders_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f69,plain,(
    l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f61,plain,(
    ! [X0] :
      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f72,plain,(
    ~ r3_orders_1(u1_orders_2(sK1),sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_relat_2(X1,X0)
      | ~ r7_relat_2(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ( v4_orders_2(X0)
      <=> r8_relat_2(u1_orders_2(X0),u1_struct_0(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ( v4_orders_2(X0)
      <=> r8_relat_2(u1_orders_2(X0),u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X0] :
      ( ( ( v4_orders_2(X0)
          | ~ r8_relat_2(u1_orders_2(X0),u1_struct_0(X0)) )
        & ( r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))
          | ~ v4_orders_2(X0) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f52,plain,(
    ! [X0] :
      ( r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))
      | ~ v4_orders_2(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ( v5_orders_2(X0)
      <=> r4_relat_2(u1_orders_2(X0),u1_struct_0(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ( v5_orders_2(X0)
      <=> r4_relat_2(u1_orders_2(X0),u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X0] :
      ( ( ( v5_orders_2(X0)
          | ~ r4_relat_2(u1_orders_2(X0),u1_struct_0(X0)) )
        & ( r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))
          | ~ v5_orders_2(X0) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f54,plain,(
    ! [X0] :
      ( r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))
      | ~ v5_orders_2(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f68,plain,(
    v5_orders_2(sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f67,plain,(
    v4_orders_2(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_23,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_379,plain,
    ( r2_hidden(X0,u1_struct_0(sK1))
    | ~ r2_hidden(X0,sK2) ),
    inference(resolution,[status(thm)],[c_2,c_23])).

cnf(c_963,plain,
    ( r2_hidden(X0_51,u1_struct_0(sK1))
    | ~ r2_hidden(X0_51,sK2) ),
    inference(subtyping,[status(esa)],[c_379])).

cnf(c_1066,plain,
    ( r2_hidden(sK0(sK2,u1_struct_0(sK1)),u1_struct_0(sK1))
    | ~ r2_hidden(sK0(sK2,u1_struct_0(sK1)),sK2) ),
    inference(instantiation,[status(thm)],[c_963])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_970,plain,
    ( ~ r2_hidden(sK0(X0_49,X1_49),X1_49)
    | r1_tarski(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1047,plain,
    ( ~ r2_hidden(sK0(X0_49,u1_struct_0(sK1)),u1_struct_0(sK1))
    | r1_tarski(X0_49,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_970])).

cnf(c_1054,plain,
    ( ~ r2_hidden(sK0(sK2,u1_struct_0(sK1)),u1_struct_0(sK1))
    | r1_tarski(sK2,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1047])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_969,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X0_49)
    | r1_tarski(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1048,plain,
    ( r2_hidden(sK0(X0_49,u1_struct_0(sK1)),X0_49)
    | r1_tarski(X0_49,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_969])).

cnf(c_1050,plain,
    ( r2_hidden(sK0(sK2,u1_struct_0(sK1)),sK2)
    | r1_tarski(sK2,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1048])).

cnf(c_20,plain,
    ( ~ r4_relat_2(X0,X1)
    | r4_relat_2(X0,X2)
    | ~ r1_tarski(X2,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_967,plain,
    ( ~ r4_relat_2(X0_49,X1_49)
    | r4_relat_2(X0_49,X2_49)
    | ~ r1_tarski(X2_49,X1_49)
    | ~ v1_relat_1(X0_49) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1031,plain,
    ( ~ r4_relat_2(u1_orders_2(sK1),X0_49)
    | r4_relat_2(u1_orders_2(sK1),X1_49)
    | ~ r1_tarski(X1_49,X0_49)
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_967])).

cnf(c_1042,plain,
    ( r4_relat_2(u1_orders_2(sK1),X0_49)
    | ~ r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | ~ r1_tarski(X0_49,u1_struct_0(sK1))
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_1031])).

cnf(c_1044,plain,
    ( ~ r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | r4_relat_2(u1_orders_2(sK1),sK2)
    | ~ r1_tarski(sK2,u1_struct_0(sK1))
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_1042])).

cnf(c_21,plain,
    ( ~ r8_relat_2(X0,X1)
    | r8_relat_2(X0,X2)
    | ~ r1_tarski(X2,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_966,plain,
    ( ~ r8_relat_2(X0_49,X1_49)
    | r8_relat_2(X0_49,X2_49)
    | ~ r1_tarski(X2_49,X1_49)
    | ~ v1_relat_1(X0_49) ),
    inference(subtyping,[status(esa)],[c_21])).

cnf(c_1025,plain,
    ( ~ r8_relat_2(u1_orders_2(sK1),X0_49)
    | r8_relat_2(u1_orders_2(sK1),X1_49)
    | ~ r1_tarski(X1_49,X0_49)
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_966])).

cnf(c_1037,plain,
    ( r8_relat_2(u1_orders_2(sK1),X0_49)
    | ~ r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | ~ r1_tarski(X0_49,u1_struct_0(sK1))
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_1025])).

cnf(c_1039,plain,
    ( ~ r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | r8_relat_2(u1_orders_2(sK1),sK2)
    | ~ r1_tarski(sK2,u1_struct_0(sK1))
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(instantiation,[status(thm)],[c_1037])).

cnf(c_11,plain,
    ( ~ r1_relat_2(X0,X1)
    | ~ r6_relat_2(X0,X1)
    | r3_orders_1(X0,X1)
    | ~ r4_relat_2(X0,X1)
    | ~ r8_relat_2(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_18,plain,
    ( r6_relat_2(X0,X1)
    | ~ r7_relat_2(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_24,negated_conjecture,
    ( v6_orders_2(sK2,sK1) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_6,plain,
    ( r7_relat_2(u1_orders_2(X0),X1)
    | ~ v6_orders_2(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_25,negated_conjecture,
    ( l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_319,plain,
    ( r7_relat_2(u1_orders_2(sK1),X0)
    | ~ v6_orders_2(X0,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(resolution,[status(thm)],[c_6,c_25])).

cnf(c_358,plain,
    ( r7_relat_2(u1_orders_2(sK1),sK2)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(resolution,[status(thm)],[c_24,c_319])).

cnf(c_360,plain,
    ( r7_relat_2(u1_orders_2(sK1),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_358,c_23])).

cnf(c_433,plain,
    ( r6_relat_2(u1_orders_2(sK1),sK2)
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(resolution,[status(thm)],[c_18,c_360])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_16,plain,
    ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_313,plain,
    ( m1_subset_1(u1_orders_2(sK1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK1)))) ),
    inference(resolution,[status(thm)],[c_16,c_25])).

cnf(c_390,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK1)))
    | v1_relat_1(u1_orders_2(sK1)) ),
    inference(resolution,[status(thm)],[c_3,c_313])).

cnf(c_4,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_396,plain,
    ( v1_relat_1(u1_orders_2(sK1)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_390,c_4])).

cnf(c_435,plain,
    ( r6_relat_2(u1_orders_2(sK1),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_433,c_396])).

cnf(c_448,plain,
    ( ~ r1_relat_2(u1_orders_2(sK1),sK2)
    | r3_orders_1(u1_orders_2(sK1),sK2)
    | ~ r4_relat_2(u1_orders_2(sK1),sK2)
    | ~ r8_relat_2(u1_orders_2(sK1),sK2)
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(resolution,[status(thm)],[c_11,c_435])).

cnf(c_22,negated_conjecture,
    ( ~ r3_orders_1(u1_orders_2(sK1),sK2) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_19,plain,
    ( r1_relat_2(X0,X1)
    | ~ r7_relat_2(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_423,plain,
    ( r1_relat_2(u1_orders_2(sK1),sK2)
    | ~ v1_relat_1(u1_orders_2(sK1)) ),
    inference(resolution,[status(thm)],[c_19,c_360])).

cnf(c_450,plain,
    ( ~ r8_relat_2(u1_orders_2(sK1),sK2)
    | ~ r4_relat_2(u1_orders_2(sK1),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_448,c_22,c_396,c_423])).

cnf(c_451,plain,
    ( ~ r4_relat_2(u1_orders_2(sK1),sK2)
    | ~ r8_relat_2(u1_orders_2(sK1),sK2) ),
    inference(renaming,[status(thm)],[c_450])).

cnf(c_8,plain,
    ( r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))
    | ~ v4_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_68,plain,
    ( r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | ~ v4_orders_2(sK1)
    | ~ l1_orders_2(sK1) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_10,plain,
    ( r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_64,plain,
    ( r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
    | ~ v5_orders_2(sK1)
    | ~ l1_orders_2(sK1) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_26,negated_conjecture,
    ( v5_orders_2(sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_27,negated_conjecture,
    ( v4_orders_2(sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1066,c_1054,c_1050,c_1044,c_1039,c_451,c_396,c_68,c_64,c_25,c_26,c_27])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n014.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 19:05:37 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 0.78/0.96  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.78/0.96  
% 0.78/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.78/0.96  
% 0.78/0.96  ------  iProver source info
% 0.78/0.96  
% 0.78/0.96  git: date: 2020-06-30 10:37:57 +0100
% 0.78/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.78/0.96  git: non_committed_changes: false
% 0.78/0.96  git: last_make_outside_of_git: false
% 0.78/0.96  
% 0.78/0.96  ------ 
% 0.78/0.96  
% 0.78/0.96  ------ Input Options
% 0.78/0.96  
% 0.78/0.96  --out_options                           all
% 0.78/0.96  --tptp_safe_out                         true
% 0.78/0.96  --problem_path                          ""
% 0.78/0.96  --include_path                          ""
% 0.78/0.96  --clausifier                            res/vclausify_rel
% 0.78/0.96  --clausifier_options                    --mode clausify
% 0.78/0.96  --stdin                                 false
% 0.78/0.96  --stats_out                             all
% 0.78/0.96  
% 0.78/0.96  ------ General Options
% 0.78/0.96  
% 0.78/0.96  --fof                                   false
% 0.78/0.96  --time_out_real                         305.
% 0.78/0.96  --time_out_virtual                      -1.
% 0.78/0.96  --symbol_type_check                     false
% 0.78/0.96  --clausify_out                          false
% 0.78/0.96  --sig_cnt_out                           false
% 0.78/0.96  --trig_cnt_out                          false
% 0.78/0.96  --trig_cnt_out_tolerance                1.
% 0.78/0.96  --trig_cnt_out_sk_spl                   false
% 0.78/0.96  --abstr_cl_out                          false
% 0.78/0.96  
% 0.78/0.96  ------ Global Options
% 0.78/0.96  
% 0.78/0.96  --schedule                              default
% 0.78/0.96  --add_important_lit                     false
% 0.78/0.96  --prop_solver_per_cl                    1000
% 0.78/0.96  --min_unsat_core                        false
% 0.78/0.96  --soft_assumptions                      false
% 0.78/0.96  --soft_lemma_size                       3
% 0.78/0.96  --prop_impl_unit_size                   0
% 0.78/0.96  --prop_impl_unit                        []
% 0.78/0.96  --share_sel_clauses                     true
% 0.78/0.96  --reset_solvers                         false
% 0.78/0.96  --bc_imp_inh                            [conj_cone]
% 0.78/0.96  --conj_cone_tolerance                   3.
% 0.78/0.96  --extra_neg_conj                        none
% 0.78/0.96  --large_theory_mode                     true
% 0.78/0.96  --prolific_symb_bound                   200
% 0.78/0.96  --lt_threshold                          2000
% 0.78/0.96  --clause_weak_htbl                      true
% 0.78/0.96  --gc_record_bc_elim                     false
% 0.78/0.96  
% 0.78/0.96  ------ Preprocessing Options
% 0.78/0.96  
% 0.78/0.96  --preprocessing_flag                    true
% 0.78/0.96  --time_out_prep_mult                    0.1
% 0.78/0.96  --splitting_mode                        input
% 0.78/0.96  --splitting_grd                         true
% 0.78/0.96  --splitting_cvd                         false
% 0.78/0.96  --splitting_cvd_svl                     false
% 0.78/0.96  --splitting_nvd                         32
% 0.78/0.96  --sub_typing                            true
% 0.78/0.96  --prep_gs_sim                           true
% 0.78/0.96  --prep_unflatten                        true
% 0.78/0.96  --prep_res_sim                          true
% 0.78/0.96  --prep_upred                            true
% 0.78/0.96  --prep_sem_filter                       exhaustive
% 0.78/0.96  --prep_sem_filter_out                   false
% 0.78/0.96  --pred_elim                             true
% 0.78/0.96  --res_sim_input                         true
% 0.78/0.96  --eq_ax_congr_red                       true
% 0.78/0.96  --pure_diseq_elim                       true
% 0.78/0.96  --brand_transform                       false
% 0.78/0.96  --non_eq_to_eq                          false
% 0.78/0.96  --prep_def_merge                        true
% 0.78/0.96  --prep_def_merge_prop_impl              false
% 0.78/0.96  --prep_def_merge_mbd                    true
% 0.78/0.96  --prep_def_merge_tr_red                 false
% 0.78/0.96  --prep_def_merge_tr_cl                  false
% 0.78/0.96  --smt_preprocessing                     true
% 0.78/0.96  --smt_ac_axioms                         fast
% 0.78/0.96  --preprocessed_out                      false
% 0.78/0.96  --preprocessed_stats                    false
% 0.78/0.96  
% 0.78/0.96  ------ Abstraction refinement Options
% 0.78/0.96  
% 0.78/0.96  --abstr_ref                             []
% 0.78/0.96  --abstr_ref_prep                        false
% 0.78/0.96  --abstr_ref_until_sat                   false
% 0.78/0.96  --abstr_ref_sig_restrict                funpre
% 0.78/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 0.78/0.96  --abstr_ref_under                       []
% 0.78/0.96  
% 0.78/0.96  ------ SAT Options
% 0.78/0.96  
% 0.78/0.96  --sat_mode                              false
% 0.78/0.96  --sat_fm_restart_options                ""
% 0.78/0.96  --sat_gr_def                            false
% 0.78/0.96  --sat_epr_types                         true
% 0.78/0.96  --sat_non_cyclic_types                  false
% 0.78/0.96  --sat_finite_models                     false
% 0.78/0.96  --sat_fm_lemmas                         false
% 0.78/0.96  --sat_fm_prep                           false
% 0.78/0.96  --sat_fm_uc_incr                        true
% 0.78/0.96  --sat_out_model                         small
% 0.78/0.96  --sat_out_clauses                       false
% 0.78/0.96  
% 0.78/0.96  ------ QBF Options
% 0.78/0.96  
% 0.78/0.96  --qbf_mode                              false
% 0.78/0.96  --qbf_elim_univ                         false
% 0.78/0.96  --qbf_dom_inst                          none
% 0.78/0.96  --qbf_dom_pre_inst                      false
% 0.78/0.96  --qbf_sk_in                             false
% 0.78/0.96  --qbf_pred_elim                         true
% 0.78/0.96  --qbf_split                             512
% 0.78/0.96  
% 0.78/0.96  ------ BMC1 Options
% 0.78/0.96  
% 0.78/0.96  --bmc1_incremental                      false
% 0.78/0.96  --bmc1_axioms                           reachable_all
% 0.78/0.96  --bmc1_min_bound                        0
% 0.78/0.96  --bmc1_max_bound                        -1
% 0.78/0.96  --bmc1_max_bound_default                -1
% 0.78/0.96  --bmc1_symbol_reachability              true
% 0.78/0.96  --bmc1_property_lemmas                  false
% 0.78/0.96  --bmc1_k_induction                      false
% 0.78/0.96  --bmc1_non_equiv_states                 false
% 0.78/0.96  --bmc1_deadlock                         false
% 0.78/0.96  --bmc1_ucm                              false
% 0.78/0.96  --bmc1_add_unsat_core                   none
% 0.78/0.96  --bmc1_unsat_core_children              false
% 0.78/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 0.78/0.96  --bmc1_out_stat                         full
% 0.78/0.96  --bmc1_ground_init                      false
% 0.78/0.96  --bmc1_pre_inst_next_state              false
% 0.78/0.96  --bmc1_pre_inst_state                   false
% 0.78/0.96  --bmc1_pre_inst_reach_state             false
% 0.78/0.96  --bmc1_out_unsat_core                   false
% 0.78/0.96  --bmc1_aig_witness_out                  false
% 0.78/0.96  --bmc1_verbose                          false
% 0.78/0.96  --bmc1_dump_clauses_tptp                false
% 0.78/0.96  --bmc1_dump_unsat_core_tptp             false
% 0.78/0.96  --bmc1_dump_file                        -
% 0.78/0.96  --bmc1_ucm_expand_uc_limit              128
% 0.78/0.96  --bmc1_ucm_n_expand_iterations          6
% 0.78/0.96  --bmc1_ucm_extend_mode                  1
% 0.78/0.96  --bmc1_ucm_init_mode                    2
% 0.78/0.96  --bmc1_ucm_cone_mode                    none
% 0.78/0.96  --bmc1_ucm_reduced_relation_type        0
% 0.78/0.96  --bmc1_ucm_relax_model                  4
% 0.78/0.96  --bmc1_ucm_full_tr_after_sat            true
% 0.78/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 0.78/0.96  --bmc1_ucm_layered_model                none
% 0.78/0.96  --bmc1_ucm_max_lemma_size               10
% 0.78/0.96  
% 0.78/0.96  ------ AIG Options
% 0.78/0.96  
% 0.78/0.96  --aig_mode                              false
% 0.78/0.96  
% 0.78/0.96  ------ Instantiation Options
% 0.78/0.96  
% 0.78/0.96  --instantiation_flag                    true
% 0.78/0.96  --inst_sos_flag                         false
% 0.78/0.96  --inst_sos_phase                        true
% 0.78/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.78/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.78/0.96  --inst_lit_sel_side                     num_symb
% 0.78/0.96  --inst_solver_per_active                1400
% 0.78/0.96  --inst_solver_calls_frac                1.
% 0.78/0.96  --inst_passive_queue_type               priority_queues
% 0.78/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.78/0.96  --inst_passive_queues_freq              [25;2]
% 0.78/0.96  --inst_dismatching                      true
% 0.78/0.96  --inst_eager_unprocessed_to_passive     true
% 0.78/0.96  --inst_prop_sim_given                   true
% 0.78/0.96  --inst_prop_sim_new                     false
% 0.78/0.96  --inst_subs_new                         false
% 0.78/0.96  --inst_eq_res_simp                      false
% 0.78/0.96  --inst_subs_given                       false
% 0.78/0.96  --inst_orphan_elimination               true
% 0.78/0.96  --inst_learning_loop_flag               true
% 0.78/0.96  --inst_learning_start                   3000
% 0.78/0.96  --inst_learning_factor                  2
% 0.78/0.96  --inst_start_prop_sim_after_learn       3
% 0.78/0.96  --inst_sel_renew                        solver
% 0.78/0.96  --inst_lit_activity_flag                true
% 0.78/0.96  --inst_restr_to_given                   false
% 0.78/0.96  --inst_activity_threshold               500
% 0.78/0.96  --inst_out_proof                        true
% 0.78/0.96  
% 0.78/0.96  ------ Resolution Options
% 0.78/0.96  
% 0.78/0.96  --resolution_flag                       true
% 0.78/0.96  --res_lit_sel                           adaptive
% 0.78/0.96  --res_lit_sel_side                      none
% 0.78/0.96  --res_ordering                          kbo
% 0.78/0.96  --res_to_prop_solver                    active
% 0.78/0.96  --res_prop_simpl_new                    false
% 0.78/0.96  --res_prop_simpl_given                  true
% 0.78/0.96  --res_passive_queue_type                priority_queues
% 0.78/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.78/0.96  --res_passive_queues_freq               [15;5]
% 0.78/0.96  --res_forward_subs                      full
% 0.78/0.96  --res_backward_subs                     full
% 0.78/0.96  --res_forward_subs_resolution           true
% 0.78/0.96  --res_backward_subs_resolution          true
% 0.78/0.96  --res_orphan_elimination                true
% 0.78/0.96  --res_time_limit                        2.
% 0.78/0.96  --res_out_proof                         true
% 0.78/0.96  
% 0.78/0.96  ------ Superposition Options
% 0.78/0.96  
% 0.78/0.96  --superposition_flag                    true
% 0.78/0.96  --sup_passive_queue_type                priority_queues
% 0.78/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.78/0.96  --sup_passive_queues_freq               [8;1;4]
% 0.78/0.96  --demod_completeness_check              fast
% 0.78/0.96  --demod_use_ground                      true
% 0.78/0.96  --sup_to_prop_solver                    passive
% 0.78/0.96  --sup_prop_simpl_new                    true
% 0.78/0.96  --sup_prop_simpl_given                  true
% 0.78/0.96  --sup_fun_splitting                     false
% 0.78/0.96  --sup_smt_interval                      50000
% 0.78/0.96  
% 0.78/0.96  ------ Superposition Simplification Setup
% 0.78/0.96  
% 0.78/0.96  --sup_indices_passive                   []
% 0.78/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 0.78/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_full_bw                           [BwDemod]
% 0.78/0.96  --sup_immed_triv                        [TrivRules]
% 0.78/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.78/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_immed_bw_main                     []
% 0.78/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.78/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 0.78/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.78/0.96  
% 0.78/0.96  ------ Combination Options
% 0.78/0.96  
% 0.78/0.96  --comb_res_mult                         3
% 0.78/0.96  --comb_sup_mult                         2
% 0.78/0.96  --comb_inst_mult                        10
% 0.78/0.96  
% 0.78/0.96  ------ Debug Options
% 0.78/0.96  
% 0.78/0.96  --dbg_backtrace                         false
% 0.78/0.96  --dbg_dump_prop_clauses                 false
% 0.78/0.96  --dbg_dump_prop_clauses_file            -
% 0.78/0.96  --dbg_out_stat                          false
% 0.78/0.96  ------ Parsing...
% 0.78/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.78/0.96  
% 0.78/0.96  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 0.78/0.96  
% 0.78/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.78/0.96  ------ Proving...
% 0.78/0.96  ------ Problem Properties 
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  clauses                                 11
% 0.78/0.96  conjectures                             0
% 0.78/0.96  EPR                                     2
% 0.78/0.96  Horn                                    10
% 0.78/0.96  unary                                   4
% 0.78/0.96  binary                                  5
% 0.78/0.96  lits                                    22
% 0.78/0.96  lits eq                                 0
% 0.78/0.96  fd_pure                                 0
% 0.78/0.96  fd_pseudo                               0
% 0.78/0.96  fd_cond                                 0
% 0.78/0.96  fd_pseudo_cond                          0
% 0.78/0.96  AC symbols                              0
% 0.78/0.96  
% 0.78/0.96  ------ Schedule dynamic 5 is on 
% 0.78/0.96  
% 0.78/0.96  ------ no conjectures: strip conj schedule 
% 0.78/0.96  
% 0.78/0.96  ------ no equalities: superposition off 
% 0.78/0.96  
% 0.78/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  ------ 
% 0.78/0.96  Current options:
% 0.78/0.96  ------ 
% 0.78/0.96  
% 0.78/0.96  ------ Input Options
% 0.78/0.96  
% 0.78/0.96  --out_options                           all
% 0.78/0.96  --tptp_safe_out                         true
% 0.78/0.96  --problem_path                          ""
% 0.78/0.96  --include_path                          ""
% 0.78/0.96  --clausifier                            res/vclausify_rel
% 0.78/0.96  --clausifier_options                    --mode clausify
% 0.78/0.96  --stdin                                 false
% 0.78/0.96  --stats_out                             all
% 0.78/0.96  
% 0.78/0.96  ------ General Options
% 0.78/0.96  
% 0.78/0.96  --fof                                   false
% 0.78/0.96  --time_out_real                         305.
% 0.78/0.96  --time_out_virtual                      -1.
% 0.78/0.96  --symbol_type_check                     false
% 0.78/0.96  --clausify_out                          false
% 0.78/0.96  --sig_cnt_out                           false
% 0.78/0.96  --trig_cnt_out                          false
% 0.78/0.96  --trig_cnt_out_tolerance                1.
% 0.78/0.96  --trig_cnt_out_sk_spl                   false
% 0.78/0.96  --abstr_cl_out                          false
% 0.78/0.96  
% 0.78/0.96  ------ Global Options
% 0.78/0.96  
% 0.78/0.96  --schedule                              default
% 0.78/0.96  --add_important_lit                     false
% 0.78/0.96  --prop_solver_per_cl                    1000
% 0.78/0.96  --min_unsat_core                        false
% 0.78/0.96  --soft_assumptions                      false
% 0.78/0.96  --soft_lemma_size                       3
% 0.78/0.96  --prop_impl_unit_size                   0
% 0.78/0.96  --prop_impl_unit                        []
% 0.78/0.96  --share_sel_clauses                     true
% 0.78/0.96  --reset_solvers                         false
% 0.78/0.96  --bc_imp_inh                            [conj_cone]
% 0.78/0.96  --conj_cone_tolerance                   3.
% 0.78/0.96  --extra_neg_conj                        none
% 0.78/0.96  --large_theory_mode                     true
% 0.78/0.96  --prolific_symb_bound                   200
% 0.78/0.96  --lt_threshold                          2000
% 0.78/0.96  --clause_weak_htbl                      true
% 0.78/0.96  --gc_record_bc_elim                     false
% 0.78/0.96  
% 0.78/0.96  ------ Preprocessing Options
% 0.78/0.96  
% 0.78/0.96  --preprocessing_flag                    true
% 0.78/0.96  --time_out_prep_mult                    0.1
% 0.78/0.96  --splitting_mode                        input
% 0.78/0.96  --splitting_grd                         true
% 0.78/0.96  --splitting_cvd                         false
% 0.78/0.96  --splitting_cvd_svl                     false
% 0.78/0.96  --splitting_nvd                         32
% 0.78/0.96  --sub_typing                            true
% 0.78/0.96  --prep_gs_sim                           true
% 0.78/0.96  --prep_unflatten                        true
% 0.78/0.96  --prep_res_sim                          true
% 0.78/0.96  --prep_upred                            true
% 0.78/0.96  --prep_sem_filter                       exhaustive
% 0.78/0.96  --prep_sem_filter_out                   false
% 0.78/0.96  --pred_elim                             true
% 0.78/0.96  --res_sim_input                         true
% 0.78/0.96  --eq_ax_congr_red                       true
% 0.78/0.96  --pure_diseq_elim                       true
% 0.78/0.96  --brand_transform                       false
% 0.78/0.96  --non_eq_to_eq                          false
% 0.78/0.96  --prep_def_merge                        true
% 0.78/0.96  --prep_def_merge_prop_impl              false
% 0.78/0.96  --prep_def_merge_mbd                    true
% 0.78/0.96  --prep_def_merge_tr_red                 false
% 0.78/0.96  --prep_def_merge_tr_cl                  false
% 0.78/0.96  --smt_preprocessing                     true
% 0.78/0.96  --smt_ac_axioms                         fast
% 0.78/0.96  --preprocessed_out                      false
% 0.78/0.96  --preprocessed_stats                    false
% 0.78/0.96  
% 0.78/0.96  ------ Abstraction refinement Options
% 0.78/0.96  
% 0.78/0.96  --abstr_ref                             []
% 0.78/0.96  --abstr_ref_prep                        false
% 0.78/0.96  --abstr_ref_until_sat                   false
% 0.78/0.96  --abstr_ref_sig_restrict                funpre
% 0.78/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 0.78/0.96  --abstr_ref_under                       []
% 0.78/0.96  
% 0.78/0.96  ------ SAT Options
% 0.78/0.96  
% 0.78/0.96  --sat_mode                              false
% 0.78/0.96  --sat_fm_restart_options                ""
% 0.78/0.96  --sat_gr_def                            false
% 0.78/0.96  --sat_epr_types                         true
% 0.78/0.96  --sat_non_cyclic_types                  false
% 0.78/0.96  --sat_finite_models                     false
% 0.78/0.96  --sat_fm_lemmas                         false
% 0.78/0.96  --sat_fm_prep                           false
% 0.78/0.96  --sat_fm_uc_incr                        true
% 0.78/0.96  --sat_out_model                         small
% 0.78/0.96  --sat_out_clauses                       false
% 0.78/0.96  
% 0.78/0.96  ------ QBF Options
% 0.78/0.96  
% 0.78/0.96  --qbf_mode                              false
% 0.78/0.96  --qbf_elim_univ                         false
% 0.78/0.96  --qbf_dom_inst                          none
% 0.78/0.96  --qbf_dom_pre_inst                      false
% 0.78/0.96  --qbf_sk_in                             false
% 0.78/0.96  --qbf_pred_elim                         true
% 0.78/0.96  --qbf_split                             512
% 0.78/0.96  
% 0.78/0.96  ------ BMC1 Options
% 0.78/0.96  
% 0.78/0.96  --bmc1_incremental                      false
% 0.78/0.96  --bmc1_axioms                           reachable_all
% 0.78/0.96  --bmc1_min_bound                        0
% 0.78/0.96  --bmc1_max_bound                        -1
% 0.78/0.96  --bmc1_max_bound_default                -1
% 0.78/0.96  --bmc1_symbol_reachability              true
% 0.78/0.96  --bmc1_property_lemmas                  false
% 0.78/0.96  --bmc1_k_induction                      false
% 0.78/0.96  --bmc1_non_equiv_states                 false
% 0.78/0.96  --bmc1_deadlock                         false
% 0.78/0.96  --bmc1_ucm                              false
% 0.78/0.96  --bmc1_add_unsat_core                   none
% 0.78/0.96  --bmc1_unsat_core_children              false
% 0.78/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 0.78/0.96  --bmc1_out_stat                         full
% 0.78/0.96  --bmc1_ground_init                      false
% 0.78/0.96  --bmc1_pre_inst_next_state              false
% 0.78/0.96  --bmc1_pre_inst_state                   false
% 0.78/0.96  --bmc1_pre_inst_reach_state             false
% 0.78/0.96  --bmc1_out_unsat_core                   false
% 0.78/0.96  --bmc1_aig_witness_out                  false
% 0.78/0.96  --bmc1_verbose                          false
% 0.78/0.96  --bmc1_dump_clauses_tptp                false
% 0.78/0.96  --bmc1_dump_unsat_core_tptp             false
% 0.78/0.96  --bmc1_dump_file                        -
% 0.78/0.96  --bmc1_ucm_expand_uc_limit              128
% 0.78/0.96  --bmc1_ucm_n_expand_iterations          6
% 0.78/0.96  --bmc1_ucm_extend_mode                  1
% 0.78/0.96  --bmc1_ucm_init_mode                    2
% 0.78/0.96  --bmc1_ucm_cone_mode                    none
% 0.78/0.96  --bmc1_ucm_reduced_relation_type        0
% 0.78/0.96  --bmc1_ucm_relax_model                  4
% 0.78/0.96  --bmc1_ucm_full_tr_after_sat            true
% 0.78/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 0.78/0.96  --bmc1_ucm_layered_model                none
% 0.78/0.96  --bmc1_ucm_max_lemma_size               10
% 0.78/0.96  
% 0.78/0.96  ------ AIG Options
% 0.78/0.96  
% 0.78/0.96  --aig_mode                              false
% 0.78/0.96  
% 0.78/0.96  ------ Instantiation Options
% 0.78/0.96  
% 0.78/0.96  --instantiation_flag                    true
% 0.78/0.96  --inst_sos_flag                         false
% 0.78/0.96  --inst_sos_phase                        true
% 0.78/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.78/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.78/0.96  --inst_lit_sel_side                     none
% 0.78/0.96  --inst_solver_per_active                1400
% 0.78/0.96  --inst_solver_calls_frac                1.
% 0.78/0.96  --inst_passive_queue_type               priority_queues
% 0.78/0.96  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 0.78/0.96  --inst_passive_queues_freq              [25;2]
% 0.78/0.96  --inst_dismatching                      true
% 0.78/0.96  --inst_eager_unprocessed_to_passive     true
% 0.78/0.96  --inst_prop_sim_given                   true
% 0.78/0.96  --inst_prop_sim_new                     false
% 0.78/0.96  --inst_subs_new                         false
% 0.78/0.96  --inst_eq_res_simp                      false
% 0.78/0.96  --inst_subs_given                       false
% 0.78/0.96  --inst_orphan_elimination               true
% 0.78/0.96  --inst_learning_loop_flag               true
% 0.78/0.96  --inst_learning_start                   3000
% 0.78/0.96  --inst_learning_factor                  2
% 0.78/0.96  --inst_start_prop_sim_after_learn       3
% 0.78/0.96  --inst_sel_renew                        solver
% 0.78/0.96  --inst_lit_activity_flag                true
% 0.78/0.96  --inst_restr_to_given                   false
% 0.78/0.96  --inst_activity_threshold               500
% 0.78/0.96  --inst_out_proof                        true
% 0.78/0.96  
% 0.78/0.96  ------ Resolution Options
% 0.78/0.96  
% 0.78/0.96  --resolution_flag                       false
% 0.78/0.96  --res_lit_sel                           adaptive
% 0.78/0.96  --res_lit_sel_side                      none
% 0.78/0.96  --res_ordering                          kbo
% 0.78/0.96  --res_to_prop_solver                    active
% 0.78/0.96  --res_prop_simpl_new                    false
% 0.78/0.96  --res_prop_simpl_given                  true
% 0.78/0.96  --res_passive_queue_type                priority_queues
% 0.78/0.96  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 0.78/0.96  --res_passive_queues_freq               [15;5]
% 0.78/0.96  --res_forward_subs                      full
% 0.78/0.96  --res_backward_subs                     full
% 0.78/0.96  --res_forward_subs_resolution           true
% 0.78/0.96  --res_backward_subs_resolution          true
% 0.78/0.96  --res_orphan_elimination                true
% 0.78/0.96  --res_time_limit                        2.
% 0.78/0.96  --res_out_proof                         true
% 0.78/0.96  
% 0.78/0.96  ------ Superposition Options
% 0.78/0.96  
% 0.78/0.96  --superposition_flag                    false
% 0.78/0.96  --sup_passive_queue_type                priority_queues
% 0.78/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.78/0.96  --sup_passive_queues_freq               [8;1;4]
% 0.78/0.96  --demod_completeness_check              fast
% 0.78/0.96  --demod_use_ground                      true
% 0.78/0.96  --sup_to_prop_solver                    passive
% 0.78/0.96  --sup_prop_simpl_new                    true
% 0.78/0.96  --sup_prop_simpl_given                  true
% 0.78/0.96  --sup_fun_splitting                     false
% 0.78/0.96  --sup_smt_interval                      50000
% 0.78/0.96  
% 0.78/0.96  ------ Superposition Simplification Setup
% 0.78/0.96  
% 0.78/0.96  --sup_indices_passive                   []
% 0.78/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.78/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 0.78/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_full_bw                           [BwDemod]
% 0.78/0.96  --sup_immed_triv                        [TrivRules]
% 0.78/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.78/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_immed_bw_main                     []
% 0.78/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.78/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 0.78/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.78/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.78/0.96  
% 0.78/0.96  ------ Combination Options
% 0.78/0.96  
% 0.78/0.96  --comb_res_mult                         3
% 0.78/0.96  --comb_sup_mult                         2
% 0.78/0.96  --comb_inst_mult                        10
% 0.78/0.96  
% 0.78/0.96  ------ Debug Options
% 0.78/0.96  
% 0.78/0.96  --dbg_backtrace                         false
% 0.78/0.96  --dbg_dump_prop_clauses                 false
% 0.78/0.96  --dbg_dump_prop_clauses_file            -
% 0.78/0.96  --dbg_out_stat                          false
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  ------ Proving...
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  % SZS status Theorem for theBenchmark.p
% 0.78/0.96  
% 0.78/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 0.78/0.96  
% 0.78/0.96  fof(f2,axiom,(
% 0.78/0.96    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f19,plain,(
% 0.78/0.96    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.78/0.96    inference(ennf_transformation,[],[f2])).
% 0.78/0.96  
% 0.78/0.96  fof(f47,plain,(
% 0.78/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.78/0.96    inference(cnf_transformation,[],[f19])).
% 0.78/0.96  
% 0.78/0.96  fof(f13,conjecture,(
% 0.78/0.96    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) => r3_orders_1(u1_orders_2(X0),X1)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f14,negated_conjecture,(
% 0.78/0.96    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) => r3_orders_1(u1_orders_2(X0),X1)))),
% 0.78/0.96    inference(negated_conjecture,[],[f13])).
% 0.78/0.96  
% 0.78/0.96  fof(f16,plain,(
% 0.78/0.96    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) => r3_orders_1(u1_orders_2(X0),X1)))),
% 0.78/0.96    inference(pure_predicate_removal,[],[f14])).
% 0.78/0.96  
% 0.78/0.96  fof(f17,plain,(
% 0.78/0.96    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) => r3_orders_1(u1_orders_2(X0),X1)))),
% 0.78/0.96    inference(pure_predicate_removal,[],[f16])).
% 0.78/0.96  
% 0.78/0.96  fof(f31,plain,(
% 0.78/0.96    ? [X0] : (? [X1] : (~r3_orders_1(u1_orders_2(X0),X1) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0)))),
% 0.78/0.96    inference(ennf_transformation,[],[f17])).
% 0.78/0.96  
% 0.78/0.96  fof(f32,plain,(
% 0.78/0.96    ? [X0] : (? [X1] : (~r3_orders_1(u1_orders_2(X0),X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0))),
% 0.78/0.96    inference(flattening,[],[f31])).
% 0.78/0.96  
% 0.78/0.96  fof(f43,plain,(
% 0.78/0.96    ( ! [X0] : (? [X1] : (~r3_orders_1(u1_orders_2(X0),X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) => (~r3_orders_1(u1_orders_2(X0),sK2) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(sK2,X0))) )),
% 0.78/0.96    introduced(choice_axiom,[])).
% 0.78/0.96  
% 0.78/0.96  fof(f42,plain,(
% 0.78/0.96    ? [X0] : (? [X1] : (~r3_orders_1(u1_orders_2(X0),X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X1,X0)) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0)) => (? [X1] : (~r3_orders_1(u1_orders_2(sK1),X1) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) & v6_orders_2(X1,sK1)) & l1_orders_2(sK1) & v5_orders_2(sK1) & v4_orders_2(sK1))),
% 0.78/0.96    introduced(choice_axiom,[])).
% 0.78/0.96  
% 0.78/0.96  fof(f44,plain,(
% 0.78/0.96    (~r3_orders_1(u1_orders_2(sK1),sK2) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) & v6_orders_2(sK2,sK1)) & l1_orders_2(sK1) & v5_orders_2(sK1) & v4_orders_2(sK1)),
% 0.78/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f32,f43,f42])).
% 0.78/0.96  
% 0.78/0.96  fof(f71,plain,(
% 0.78/0.96    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  fof(f1,axiom,(
% 0.78/0.96    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f15,plain,(
% 0.78/0.96    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)) => r1_tarski(X0,X1))),
% 0.78/0.96    inference(unused_predicate_definition_removal,[],[f1])).
% 0.78/0.96  
% 0.78/0.96  fof(f18,plain,(
% 0.78/0.96    ! [X0,X1] : (r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)))),
% 0.78/0.96    inference(ennf_transformation,[],[f15])).
% 0.78/0.96  
% 0.78/0.96  fof(f33,plain,(
% 0.78/0.96    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 0.78/0.96    introduced(choice_axiom,[])).
% 0.78/0.96  
% 0.78/0.96  fof(f34,plain,(
% 0.78/0.96    ! [X0,X1] : (r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 0.78/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f33])).
% 0.78/0.96  
% 0.78/0.96  fof(f46,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f34])).
% 0.78/0.96  
% 0.78/0.96  fof(f45,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f34])).
% 0.78/0.96  
% 0.78/0.96  fof(f11,axiom,(
% 0.78/0.96    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(X1,X0) & r4_relat_2(X2,X0)) => r4_relat_2(X2,X1)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f27,plain,(
% 0.78/0.96    ! [X0,X1,X2] : ((r4_relat_2(X2,X1) | (~r1_tarski(X1,X0) | ~r4_relat_2(X2,X0))) | ~v1_relat_1(X2))),
% 0.78/0.96    inference(ennf_transformation,[],[f11])).
% 0.78/0.96  
% 0.78/0.96  fof(f28,plain,(
% 0.78/0.96    ! [X0,X1,X2] : (r4_relat_2(X2,X1) | ~r1_tarski(X1,X0) | ~r4_relat_2(X2,X0) | ~v1_relat_1(X2))),
% 0.78/0.96    inference(flattening,[],[f27])).
% 0.78/0.96  
% 0.78/0.96  fof(f65,plain,(
% 0.78/0.96    ( ! [X2,X0,X1] : (r4_relat_2(X2,X1) | ~r1_tarski(X1,X0) | ~r4_relat_2(X2,X0) | ~v1_relat_1(X2)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f28])).
% 0.78/0.96  
% 0.78/0.96  fof(f12,axiom,(
% 0.78/0.96    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(X1,X0) & r8_relat_2(X2,X0)) => r8_relat_2(X2,X1)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f29,plain,(
% 0.78/0.96    ! [X0,X1,X2] : ((r8_relat_2(X2,X1) | (~r1_tarski(X1,X0) | ~r8_relat_2(X2,X0))) | ~v1_relat_1(X2))),
% 0.78/0.96    inference(ennf_transformation,[],[f12])).
% 0.78/0.96  
% 0.78/0.96  fof(f30,plain,(
% 0.78/0.96    ! [X0,X1,X2] : (r8_relat_2(X2,X1) | ~r1_tarski(X1,X0) | ~r8_relat_2(X2,X0) | ~v1_relat_1(X2))),
% 0.78/0.96    inference(flattening,[],[f29])).
% 0.78/0.96  
% 0.78/0.96  fof(f66,plain,(
% 0.78/0.96    ( ! [X2,X0,X1] : (r8_relat_2(X2,X1) | ~r1_tarski(X1,X0) | ~r8_relat_2(X2,X0) | ~v1_relat_1(X2)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f30])).
% 0.78/0.96  
% 0.78/0.96  fof(f8,axiom,(
% 0.78/0.96    ! [X0] : (v1_relat_1(X0) => ! [X1] : (r3_orders_1(X0,X1) <=> (r6_relat_2(X0,X1) & r4_relat_2(X0,X1) & r8_relat_2(X0,X1) & r1_relat_2(X0,X1))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f24,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : (r3_orders_1(X0,X1) <=> (r6_relat_2(X0,X1) & r4_relat_2(X0,X1) & r8_relat_2(X0,X1) & r1_relat_2(X0,X1))) | ~v1_relat_1(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f8])).
% 0.78/0.96  
% 0.78/0.96  fof(f38,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : ((r3_orders_1(X0,X1) | (~r6_relat_2(X0,X1) | ~r4_relat_2(X0,X1) | ~r8_relat_2(X0,X1) | ~r1_relat_2(X0,X1))) & ((r6_relat_2(X0,X1) & r4_relat_2(X0,X1) & r8_relat_2(X0,X1) & r1_relat_2(X0,X1)) | ~r3_orders_1(X0,X1))) | ~v1_relat_1(X0))),
% 0.78/0.96    inference(nnf_transformation,[],[f24])).
% 0.78/0.96  
% 0.78/0.96  fof(f39,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : ((r3_orders_1(X0,X1) | ~r6_relat_2(X0,X1) | ~r4_relat_2(X0,X1) | ~r8_relat_2(X0,X1) | ~r1_relat_2(X0,X1)) & ((r6_relat_2(X0,X1) & r4_relat_2(X0,X1) & r8_relat_2(X0,X1) & r1_relat_2(X0,X1)) | ~r3_orders_1(X0,X1))) | ~v1_relat_1(X0))),
% 0.78/0.96    inference(flattening,[],[f38])).
% 0.78/0.96  
% 0.78/0.96  fof(f60,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r3_orders_1(X0,X1) | ~r6_relat_2(X0,X1) | ~r4_relat_2(X0,X1) | ~r8_relat_2(X0,X1) | ~r1_relat_2(X0,X1) | ~v1_relat_1(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f39])).
% 0.78/0.96  
% 0.78/0.96  fof(f10,axiom,(
% 0.78/0.96    ! [X0,X1] : (v1_relat_1(X1) => (r7_relat_2(X1,X0) <=> (r6_relat_2(X1,X0) & r1_relat_2(X1,X0))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f26,plain,(
% 0.78/0.96    ! [X0,X1] : ((r7_relat_2(X1,X0) <=> (r6_relat_2(X1,X0) & r1_relat_2(X1,X0))) | ~v1_relat_1(X1))),
% 0.78/0.96    inference(ennf_transformation,[],[f10])).
% 0.78/0.96  
% 0.78/0.96  fof(f40,plain,(
% 0.78/0.96    ! [X0,X1] : (((r7_relat_2(X1,X0) | (~r6_relat_2(X1,X0) | ~r1_relat_2(X1,X0))) & ((r6_relat_2(X1,X0) & r1_relat_2(X1,X0)) | ~r7_relat_2(X1,X0))) | ~v1_relat_1(X1))),
% 0.78/0.96    inference(nnf_transformation,[],[f26])).
% 0.78/0.96  
% 0.78/0.96  fof(f41,plain,(
% 0.78/0.96    ! [X0,X1] : (((r7_relat_2(X1,X0) | ~r6_relat_2(X1,X0) | ~r1_relat_2(X1,X0)) & ((r6_relat_2(X1,X0) & r1_relat_2(X1,X0)) | ~r7_relat_2(X1,X0))) | ~v1_relat_1(X1))),
% 0.78/0.96    inference(flattening,[],[f40])).
% 0.78/0.96  
% 0.78/0.96  fof(f63,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r6_relat_2(X1,X0) | ~r7_relat_2(X1,X0) | ~v1_relat_1(X1)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f41])).
% 0.78/0.96  
% 0.78/0.96  fof(f70,plain,(
% 0.78/0.96    v6_orders_2(sK2,sK1)),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  fof(f5,axiom,(
% 0.78/0.96    ! [X0] : (l1_orders_2(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v6_orders_2(X1,X0) <=> r7_relat_2(u1_orders_2(X0),X1))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f21,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : ((v6_orders_2(X1,X0) <=> r7_relat_2(u1_orders_2(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f5])).
% 0.78/0.96  
% 0.78/0.96  fof(f35,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : (((v6_orders_2(X1,X0) | ~r7_relat_2(u1_orders_2(X0),X1)) & (r7_relat_2(u1_orders_2(X0),X1) | ~v6_orders_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(nnf_transformation,[],[f21])).
% 0.78/0.96  
% 0.78/0.96  fof(f50,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r7_relat_2(u1_orders_2(X0),X1) | ~v6_orders_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f35])).
% 0.78/0.96  
% 0.78/0.96  fof(f69,plain,(
% 0.78/0.96    l1_orders_2(sK1)),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  fof(f3,axiom,(
% 0.78/0.96    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f20,plain,(
% 0.78/0.96    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f3])).
% 0.78/0.96  
% 0.78/0.96  fof(f48,plain,(
% 0.78/0.96    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f20])).
% 0.78/0.96  
% 0.78/0.96  fof(f9,axiom,(
% 0.78/0.96    ! [X0] : (l1_orders_2(X0) => m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f25,plain,(
% 0.78/0.96    ! [X0] : (m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f9])).
% 0.78/0.96  
% 0.78/0.96  fof(f61,plain,(
% 0.78/0.96    ( ! [X0] : (m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0)))) | ~l1_orders_2(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f25])).
% 0.78/0.96  
% 0.78/0.96  fof(f4,axiom,(
% 0.78/0.96    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f49,plain,(
% 0.78/0.96    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 0.78/0.96    inference(cnf_transformation,[],[f4])).
% 0.78/0.96  
% 0.78/0.96  fof(f72,plain,(
% 0.78/0.96    ~r3_orders_1(u1_orders_2(sK1),sK2)),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  fof(f62,plain,(
% 0.78/0.96    ( ! [X0,X1] : (r1_relat_2(X1,X0) | ~r7_relat_2(X1,X0) | ~v1_relat_1(X1)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f41])).
% 0.78/0.96  
% 0.78/0.96  fof(f6,axiom,(
% 0.78/0.96    ! [X0] : (l1_orders_2(X0) => (v4_orders_2(X0) <=> r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f22,plain,(
% 0.78/0.96    ! [X0] : ((v4_orders_2(X0) <=> r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f6])).
% 0.78/0.96  
% 0.78/0.96  fof(f36,plain,(
% 0.78/0.96    ! [X0] : (((v4_orders_2(X0) | ~r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))) & (r8_relat_2(u1_orders_2(X0),u1_struct_0(X0)) | ~v4_orders_2(X0))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(nnf_transformation,[],[f22])).
% 0.78/0.96  
% 0.78/0.96  fof(f52,plain,(
% 0.78/0.96    ( ! [X0] : (r8_relat_2(u1_orders_2(X0),u1_struct_0(X0)) | ~v4_orders_2(X0) | ~l1_orders_2(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f36])).
% 0.78/0.96  
% 0.78/0.96  fof(f7,axiom,(
% 0.78/0.96    ! [X0] : (l1_orders_2(X0) => (v5_orders_2(X0) <=> r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))))),
% 0.78/0.96    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.78/0.96  
% 0.78/0.96  fof(f23,plain,(
% 0.78/0.96    ! [X0] : ((v5_orders_2(X0) <=> r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(ennf_transformation,[],[f7])).
% 0.78/0.96  
% 0.78/0.96  fof(f37,plain,(
% 0.78/0.96    ! [X0] : (((v5_orders_2(X0) | ~r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))) & (r4_relat_2(u1_orders_2(X0),u1_struct_0(X0)) | ~v5_orders_2(X0))) | ~l1_orders_2(X0))),
% 0.78/0.96    inference(nnf_transformation,[],[f23])).
% 0.78/0.96  
% 0.78/0.96  fof(f54,plain,(
% 0.78/0.96    ( ! [X0] : (r4_relat_2(u1_orders_2(X0),u1_struct_0(X0)) | ~v5_orders_2(X0) | ~l1_orders_2(X0)) )),
% 0.78/0.96    inference(cnf_transformation,[],[f37])).
% 0.78/0.96  
% 0.78/0.96  fof(f68,plain,(
% 0.78/0.96    v5_orders_2(sK1)),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  fof(f67,plain,(
% 0.78/0.96    v4_orders_2(sK1)),
% 0.78/0.96    inference(cnf_transformation,[],[f44])).
% 0.78/0.96  
% 0.78/0.96  cnf(c_2,plain,
% 0.78/0.96      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.78/0.96      | ~ r2_hidden(X2,X0)
% 0.78/0.96      | r2_hidden(X2,X1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f47]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_23,negated_conjecture,
% 0.78/0.96      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 0.78/0.96      inference(cnf_transformation,[],[f71]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_379,plain,
% 0.78/0.96      ( r2_hidden(X0,u1_struct_0(sK1)) | ~ r2_hidden(X0,sK2) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_2,c_23]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_963,plain,
% 0.78/0.96      ( r2_hidden(X0_51,u1_struct_0(sK1)) | ~ r2_hidden(X0_51,sK2) ),
% 0.78/0.96      inference(subtyping,[status(esa)],[c_379]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1066,plain,
% 0.78/0.96      ( r2_hidden(sK0(sK2,u1_struct_0(sK1)),u1_struct_0(sK1))
% 0.78/0.96      | ~ r2_hidden(sK0(sK2,u1_struct_0(sK1)),sK2) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_963]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_0,plain,
% 0.78/0.96      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f46]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_970,plain,
% 0.78/0.96      ( ~ r2_hidden(sK0(X0_49,X1_49),X1_49) | r1_tarski(X0_49,X1_49) ),
% 0.78/0.96      inference(subtyping,[status(esa)],[c_0]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1047,plain,
% 0.78/0.96      ( ~ r2_hidden(sK0(X0_49,u1_struct_0(sK1)),u1_struct_0(sK1))
% 0.78/0.96      | r1_tarski(X0_49,u1_struct_0(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_970]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1054,plain,
% 0.78/0.96      ( ~ r2_hidden(sK0(sK2,u1_struct_0(sK1)),u1_struct_0(sK1))
% 0.78/0.96      | r1_tarski(sK2,u1_struct_0(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1047]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1,plain,
% 0.78/0.96      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f45]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_969,plain,
% 0.78/0.96      ( r2_hidden(sK0(X0_49,X1_49),X0_49) | r1_tarski(X0_49,X1_49) ),
% 0.78/0.96      inference(subtyping,[status(esa)],[c_1]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1048,plain,
% 0.78/0.96      ( r2_hidden(sK0(X0_49,u1_struct_0(sK1)),X0_49)
% 0.78/0.96      | r1_tarski(X0_49,u1_struct_0(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_969]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1050,plain,
% 0.78/0.96      ( r2_hidden(sK0(sK2,u1_struct_0(sK1)),sK2)
% 0.78/0.96      | r1_tarski(sK2,u1_struct_0(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1048]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_20,plain,
% 0.78/0.96      ( ~ r4_relat_2(X0,X1)
% 0.78/0.96      | r4_relat_2(X0,X2)
% 0.78/0.96      | ~ r1_tarski(X2,X1)
% 0.78/0.96      | ~ v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f65]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_967,plain,
% 0.78/0.96      ( ~ r4_relat_2(X0_49,X1_49)
% 0.78/0.96      | r4_relat_2(X0_49,X2_49)
% 0.78/0.96      | ~ r1_tarski(X2_49,X1_49)
% 0.78/0.96      | ~ v1_relat_1(X0_49) ),
% 0.78/0.96      inference(subtyping,[status(esa)],[c_20]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1031,plain,
% 0.78/0.96      ( ~ r4_relat_2(u1_orders_2(sK1),X0_49)
% 0.78/0.96      | r4_relat_2(u1_orders_2(sK1),X1_49)
% 0.78/0.96      | ~ r1_tarski(X1_49,X0_49)
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_967]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1042,plain,
% 0.78/0.96      ( r4_relat_2(u1_orders_2(sK1),X0_49)
% 0.78/0.96      | ~ r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | ~ r1_tarski(X0_49,u1_struct_0(sK1))
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1031]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1044,plain,
% 0.78/0.96      ( ~ r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | r4_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r1_tarski(sK2,u1_struct_0(sK1))
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1042]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_21,plain,
% 0.78/0.96      ( ~ r8_relat_2(X0,X1)
% 0.78/0.96      | r8_relat_2(X0,X2)
% 0.78/0.96      | ~ r1_tarski(X2,X1)
% 0.78/0.96      | ~ v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f66]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_966,plain,
% 0.78/0.96      ( ~ r8_relat_2(X0_49,X1_49)
% 0.78/0.96      | r8_relat_2(X0_49,X2_49)
% 0.78/0.96      | ~ r1_tarski(X2_49,X1_49)
% 0.78/0.96      | ~ v1_relat_1(X0_49) ),
% 0.78/0.96      inference(subtyping,[status(esa)],[c_21]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1025,plain,
% 0.78/0.96      ( ~ r8_relat_2(u1_orders_2(sK1),X0_49)
% 0.78/0.96      | r8_relat_2(u1_orders_2(sK1),X1_49)
% 0.78/0.96      | ~ r1_tarski(X1_49,X0_49)
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_966]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1037,plain,
% 0.78/0.96      ( r8_relat_2(u1_orders_2(sK1),X0_49)
% 0.78/0.96      | ~ r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | ~ r1_tarski(X0_49,u1_struct_0(sK1))
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1025]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_1039,plain,
% 0.78/0.96      ( ~ r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | r8_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r1_tarski(sK2,u1_struct_0(sK1))
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_1037]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_11,plain,
% 0.78/0.96      ( ~ r1_relat_2(X0,X1)
% 0.78/0.96      | ~ r6_relat_2(X0,X1)
% 0.78/0.96      | r3_orders_1(X0,X1)
% 0.78/0.96      | ~ r4_relat_2(X0,X1)
% 0.78/0.96      | ~ r8_relat_2(X0,X1)
% 0.78/0.96      | ~ v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f60]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_18,plain,
% 0.78/0.96      ( r6_relat_2(X0,X1) | ~ r7_relat_2(X0,X1) | ~ v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f63]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_24,negated_conjecture,
% 0.78/0.96      ( v6_orders_2(sK2,sK1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f70]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_6,plain,
% 0.78/0.96      ( r7_relat_2(u1_orders_2(X0),X1)
% 0.78/0.96      | ~ v6_orders_2(X1,X0)
% 0.78/0.96      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 0.78/0.96      | ~ l1_orders_2(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f50]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_25,negated_conjecture,
% 0.78/0.96      ( l1_orders_2(sK1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f69]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_319,plain,
% 0.78/0.96      ( r7_relat_2(u1_orders_2(sK1),X0)
% 0.78/0.96      | ~ v6_orders_2(X0,sK1)
% 0.78/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_6,c_25]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_358,plain,
% 0.78/0.96      ( r7_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_24,c_319]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_360,plain,
% 0.78/0.96      ( r7_relat_2(u1_orders_2(sK1),sK2) ),
% 0.78/0.96      inference(global_propositional_subsumption,
% 0.78/0.96                [status(thm)],
% 0.78/0.96                [c_358,c_23]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_433,plain,
% 0.78/0.96      ( r6_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_18,c_360]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_3,plain,
% 0.78/0.96      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.78/0.96      | ~ v1_relat_1(X1)
% 0.78/0.96      | v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f48]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_16,plain,
% 0.78/0.96      ( m1_subset_1(u1_orders_2(X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X0))))
% 0.78/0.96      | ~ l1_orders_2(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f61]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_313,plain,
% 0.78/0.96      ( m1_subset_1(u1_orders_2(sK1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK1)))) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_16,c_25]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_390,plain,
% 0.78/0.96      ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK1)))
% 0.78/0.96      | v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_3,c_313]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_4,plain,
% 0.78/0.96      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 0.78/0.96      inference(cnf_transformation,[],[f49]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_396,plain,
% 0.78/0.96      ( v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(forward_subsumption_resolution,[status(thm)],[c_390,c_4]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_435,plain,
% 0.78/0.96      ( r6_relat_2(u1_orders_2(sK1),sK2) ),
% 0.78/0.96      inference(global_propositional_subsumption,
% 0.78/0.96                [status(thm)],
% 0.78/0.96                [c_433,c_396]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_448,plain,
% 0.78/0.96      ( ~ r1_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | r3_orders_1(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r4_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r8_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_11,c_435]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_22,negated_conjecture,
% 0.78/0.96      ( ~ r3_orders_1(u1_orders_2(sK1),sK2) ),
% 0.78/0.96      inference(cnf_transformation,[],[f72]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_19,plain,
% 0.78/0.96      ( r1_relat_2(X0,X1) | ~ r7_relat_2(X0,X1) | ~ v1_relat_1(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f62]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_423,plain,
% 0.78/0.96      ( r1_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ v1_relat_1(u1_orders_2(sK1)) ),
% 0.78/0.96      inference(resolution,[status(thm)],[c_19,c_360]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_450,plain,
% 0.78/0.96      ( ~ r8_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r4_relat_2(u1_orders_2(sK1),sK2) ),
% 0.78/0.96      inference(global_propositional_subsumption,
% 0.78/0.96                [status(thm)],
% 0.78/0.96                [c_448,c_22,c_396,c_423]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_451,plain,
% 0.78/0.96      ( ~ r4_relat_2(u1_orders_2(sK1),sK2)
% 0.78/0.96      | ~ r8_relat_2(u1_orders_2(sK1),sK2) ),
% 0.78/0.96      inference(renaming,[status(thm)],[c_450]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_8,plain,
% 0.78/0.96      ( r8_relat_2(u1_orders_2(X0),u1_struct_0(X0))
% 0.78/0.96      | ~ v4_orders_2(X0)
% 0.78/0.96      | ~ l1_orders_2(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f52]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_68,plain,
% 0.78/0.96      ( r8_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | ~ v4_orders_2(sK1)
% 0.78/0.96      | ~ l1_orders_2(sK1) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_8]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_10,plain,
% 0.78/0.96      ( r4_relat_2(u1_orders_2(X0),u1_struct_0(X0))
% 0.78/0.96      | ~ v5_orders_2(X0)
% 0.78/0.96      | ~ l1_orders_2(X0) ),
% 0.78/0.96      inference(cnf_transformation,[],[f54]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_64,plain,
% 0.78/0.96      ( r4_relat_2(u1_orders_2(sK1),u1_struct_0(sK1))
% 0.78/0.96      | ~ v5_orders_2(sK1)
% 0.78/0.96      | ~ l1_orders_2(sK1) ),
% 0.78/0.96      inference(instantiation,[status(thm)],[c_10]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_26,negated_conjecture,
% 0.78/0.96      ( v5_orders_2(sK1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f68]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(c_27,negated_conjecture,
% 0.78/0.96      ( v4_orders_2(sK1) ),
% 0.78/0.96      inference(cnf_transformation,[],[f67]) ).
% 0.78/0.96  
% 0.78/0.96  cnf(contradiction,plain,
% 0.78/0.96      ( $false ),
% 0.78/0.96      inference(minisat,
% 0.78/0.96                [status(thm)],
% 0.78/0.96                [c_1066,c_1054,c_1050,c_1044,c_1039,c_451,c_396,c_68,
% 0.78/0.96                 c_64,c_25,c_26,c_27]) ).
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  % SZS output end CNFRefutation for theBenchmark.p
% 0.78/0.96  
% 0.78/0.96  ------                               Statistics
% 0.78/0.96  
% 0.78/0.96  ------ General
% 0.78/0.96  
% 0.78/0.96  abstr_ref_over_cycles:                  0
% 0.78/0.96  abstr_ref_under_cycles:                 0
% 0.78/0.96  gc_basic_clause_elim:                   0
% 0.78/0.96  forced_gc_time:                         0
% 0.78/0.96  parsing_time:                           0.009
% 0.78/0.96  unif_index_cands_time:                  0.
% 0.78/0.96  unif_index_add_time:                    0.
% 0.78/0.96  orderings_time:                         0.
% 0.78/0.96  out_proof_time:                         0.009
% 0.78/0.96  total_time:                             0.054
% 0.78/0.96  num_of_symbols:                         55
% 0.78/0.96  num_of_terms:                           651
% 0.78/0.96  
% 0.78/0.96  ------ Preprocessing
% 0.78/0.96  
% 0.78/0.96  num_of_splits:                          0
% 0.78/0.96  num_of_split_atoms:                     0
% 0.78/0.96  num_of_reused_defs:                     0
% 0.78/0.96  num_eq_ax_congr_red:                    0
% 0.78/0.96  num_of_sem_filtered_clauses:            1
% 0.78/0.96  num_of_subtypes:                        3
% 0.78/0.96  monotx_restored_types:                  0
% 0.78/0.96  sat_num_of_epr_types:                   0
% 0.78/0.96  sat_num_of_non_cyclic_types:            0
% 0.78/0.96  sat_guarded_non_collapsed_types:        0
% 0.78/0.96  num_pure_diseq_elim:                    0
% 0.78/0.96  simp_replaced_by:                       0
% 0.78/0.96  res_preprocessed:                       51
% 0.78/0.96  prep_upred:                             0
% 0.78/0.96  prep_unflattend:                        0
% 0.78/0.96  smt_new_axioms:                         0
% 0.78/0.96  pred_elim_cands:                        5
% 0.78/0.96  pred_elim:                              9
% 0.78/0.96  pred_elim_cl:                           16
% 0.78/0.96  pred_elim_cycles:                       14
% 0.78/0.96  merged_defs:                            0
% 0.78/0.96  merged_defs_ncl:                        0
% 0.78/0.96  bin_hyper_res:                          0
% 0.78/0.96  prep_cycles:                            3
% 0.78/0.96  pred_elim_time:                         0.006
% 0.78/0.96  splitting_time:                         0.
% 0.78/0.96  sem_filter_time:                        0.
% 0.78/0.96  monotx_time:                            0.
% 0.78/0.96  subtype_inf_time:                       0.
% 0.78/0.96  
% 0.78/0.96  ------ Problem properties
% 0.78/0.96  
% 0.78/0.96  clauses:                                11
% 0.78/0.96  conjectures:                            0
% 0.78/0.96  epr:                                    2
% 0.78/0.96  horn:                                   10
% 0.78/0.96  ground:                                 4
% 0.78/0.96  unary:                                  4
% 0.78/0.96  binary:                                 5
% 0.78/0.96  lits:                                   22
% 0.78/0.96  lits_eq:                                0
% 0.78/0.96  fd_pure:                                0
% 0.78/0.96  fd_pseudo:                              0
% 0.78/0.96  fd_cond:                                0
% 0.78/0.96  fd_pseudo_cond:                         0
% 0.78/0.96  ac_symbols:                             0
% 0.78/0.96  
% 0.78/0.96  ------ Propositional Solver
% 0.78/0.96  
% 0.78/0.96  prop_solver_calls:                      18
% 0.78/0.96  prop_fast_solver_calls:                 351
% 0.78/0.96  smt_solver_calls:                       0
% 0.78/0.96  smt_fast_solver_calls:                  0
% 0.78/0.96  prop_num_of_clauses:                    204
% 0.78/0.96  prop_preprocess_simplified:             1594
% 0.78/0.96  prop_fo_subsumed:                       8
% 0.78/0.96  prop_solver_time:                       0.
% 0.78/0.96  smt_solver_time:                        0.
% 0.78/0.96  smt_fast_solver_time:                   0.
% 0.78/0.96  prop_fast_solver_time:                  0.
% 0.78/0.96  prop_unsat_core_time:                   0.
% 0.78/0.96  
% 0.78/0.96  ------ QBF
% 0.78/0.96  
% 0.78/0.96  qbf_q_res:                              0
% 0.78/0.96  qbf_num_tautologies:                    0
% 0.78/0.96  qbf_prep_cycles:                        0
% 0.78/0.96  
% 0.78/0.96  ------ BMC1
% 0.78/0.96  
% 0.78/0.96  bmc1_current_bound:                     -1
% 0.78/0.96  bmc1_last_solved_bound:                 -1
% 0.78/0.96  bmc1_unsat_core_size:                   -1
% 0.78/0.96  bmc1_unsat_core_parents_size:           -1
% 0.78/0.96  bmc1_merge_next_fun:                    0
% 0.78/0.96  bmc1_unsat_core_clauses_time:           0.
% 0.78/0.96  
% 0.78/0.96  ------ Instantiation
% 0.78/0.96  
% 0.78/0.96  inst_num_of_clauses:                    22
% 0.78/0.96  inst_num_in_passive:                    0
% 0.78/0.96  inst_num_in_active:                     18
% 0.78/0.96  inst_num_in_unprocessed:                3
% 0.78/0.96  inst_num_of_loops:                      22
% 0.78/0.96  inst_num_of_learning_restarts:          0
% 0.78/0.96  inst_num_moves_active_passive:          0
% 0.78/0.96  inst_lit_activity:                      0
% 0.78/0.96  inst_lit_activity_moves:                0
% 0.78/0.96  inst_num_tautologies:                   0
% 0.78/0.96  inst_num_prop_implied:                  0
% 0.78/0.96  inst_num_existing_simplified:           0
% 0.78/0.96  inst_num_eq_res_simplified:             0
% 0.78/0.96  inst_num_child_elim:                    0
% 0.78/0.96  inst_num_of_dismatching_blockings:      0
% 0.78/0.96  inst_num_of_non_proper_insts:           8
% 0.78/0.96  inst_num_of_duplicates:                 0
% 0.78/0.96  inst_inst_num_from_inst_to_res:         0
% 0.78/0.96  inst_dismatching_checking_time:         0.
% 0.78/0.96  
% 0.78/0.96  ------ Resolution
% 0.78/0.96  
% 0.78/0.96  res_num_of_clauses:                     0
% 0.78/0.96  res_num_in_passive:                     0
% 0.78/0.96  res_num_in_active:                      0
% 0.78/0.96  res_num_of_loops:                       54
% 0.78/0.96  res_forward_subset_subsumed:            0
% 0.78/0.96  res_backward_subset_subsumed:           0
% 0.78/0.96  res_forward_subsumed:                   0
% 0.78/0.96  res_backward_subsumed:                  0
% 0.78/0.96  res_forward_subsumption_resolution:     1
% 0.78/0.96  res_backward_subsumption_resolution:    0
% 0.78/0.96  res_clause_to_clause_subsumption:       13
% 0.78/0.96  res_orphan_elimination:                 0
% 0.78/0.96  res_tautology_del:                      6
% 0.78/0.96  res_num_eq_res_simplified:              0
% 0.78/0.96  res_num_sel_changes:                    0
% 0.78/0.96  res_moves_from_active_to_pass:          0
% 0.78/0.96  
% 0.78/0.96  ------ Superposition
% 0.78/0.96  
% 0.78/0.96  sup_time_total:                         0.
% 0.78/0.96  sup_time_generating:                    0.
% 0.78/0.96  sup_time_sim_full:                      0.
% 0.78/0.96  sup_time_sim_immed:                     0.
% 0.78/0.96  
% 0.78/0.96  sup_num_of_clauses:                     0
% 0.78/0.96  sup_num_in_active:                      0
% 0.78/0.96  sup_num_in_passive:                     0
% 0.78/0.96  sup_num_of_loops:                       0
% 0.78/0.96  sup_fw_superposition:                   0
% 0.78/0.96  sup_bw_superposition:                   0
% 0.78/0.96  sup_immediate_simplified:               0
% 0.78/0.96  sup_given_eliminated:                   0
% 0.78/0.96  comparisons_done:                       0
% 0.78/0.96  comparisons_avoided:                    0
% 0.78/0.96  
% 0.78/0.96  ------ Simplifications
% 0.78/0.96  
% 0.78/0.96  
% 0.78/0.96  sim_fw_subset_subsumed:                 0
% 0.78/0.96  sim_bw_subset_subsumed:                 0
% 0.78/0.96  sim_fw_subsumed:                        0
% 0.78/0.96  sim_bw_subsumed:                        0
% 0.78/0.96  sim_fw_subsumption_res:                 0
% 0.78/0.96  sim_bw_subsumption_res:                 0
% 0.78/0.96  sim_tautology_del:                      0
% 0.78/0.96  sim_eq_tautology_del:                   0
% 0.78/0.96  sim_eq_res_simp:                        0
% 0.78/0.96  sim_fw_demodulated:                     0
% 0.78/0.96  sim_bw_demodulated:                     0
% 0.78/0.96  sim_light_normalised:                   0
% 0.78/0.96  sim_joinable_taut:                      0
% 0.78/0.96  sim_joinable_simp:                      0
% 0.78/0.96  sim_ac_normalised:                      0
% 0.78/0.96  sim_smt_subsumption:                    0
% 0.78/0.96  
%------------------------------------------------------------------------------
