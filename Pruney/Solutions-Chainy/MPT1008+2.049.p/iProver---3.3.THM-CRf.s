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
% DateTime   : Thu Dec  3 12:05:14 EST 2020

% Result     : Theorem 1.94s
% Output     : CNFRefutation 1.94s
% Verified   : 
% Statistics : Number of formulae       :  143 ( 372 expanded)
%              Number of clauses        :   72 (  94 expanded)
%              Number of leaves         :   20 (  91 expanded)
%              Depth                    :   24
%              Number of atoms          :  370 ( 942 expanded)
%              Number of equality atoms :  185 ( 480 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
     => v1_xboole_0(X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f21,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | ? [X1] : r2_hidden(X1,X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f36])).

fof(f43,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f17,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X2,k1_tarski(X0),X1)
          & v1_funct_1(X2) )
       => ( k1_xboole_0 != X1
         => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2) ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f34,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f35,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f34])).

fof(f41,plain,
    ( ? [X0,X1,X2] :
        ( k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2)
        & k1_xboole_0 != X1
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
   => ( k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)
      & k1_xboole_0 != sK2
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))
      & v1_funct_2(sK3,k1_tarski(sK1),sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)
    & k1_xboole_0 != sK2
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))
    & v1_funct_2(sK3,k1_tarski(sK1),sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f35,f41])).

fof(f68,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) ),
    inference(cnf_transformation,[],[f42])).

fof(f3,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f71,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f46,f47])).

fof(f72,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f45,f71])).

fof(f81,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
    inference(definition_unfolding,[],[f68,f72])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ~ ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(flattening,[],[f38])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X1,X2) = X0
      | k1_tarski(X2) = X0
      | k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( k2_enumset1(X1,X1,X1,X2) = X0
      | k2_enumset1(X2,X2,X2,X2) = X0
      | k2_enumset1(X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2)) ) ),
    inference(definition_unfolding,[],[f49,f71,f72,f72,f71])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( k1_tarski(X0) = k1_relat_1(X1)
       => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f26])).

fof(f60,plain,(
    ! [X0,X1] :
      ( k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k1_tarski(X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1)
      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f60,f72,f72])).

fof(f66,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f42])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f70,plain,(
    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f42])).

fof(f80,plain,(
    k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(definition_unfolding,[],[f70,f72,f72])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f58,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f32])).

fof(f65,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f67,plain,(
    v1_funct_2(sK3,k1_tarski(sK1),sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f82,plain,(
    v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
    inference(definition_unfolding,[],[f67,f72])).

fof(f69,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f42])).

fof(f9,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f9])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f12,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f61,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1] : ~ v1_xboole_0(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : ~ v1_xboole_0(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f73,plain,(
    ! [X0,X1] : ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f48,f71])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_827,plain,
    ( r2_hidden(sK0(X0_48),X0_48)
    | v1_xboole_0(X0_48) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1145,plain,
    ( r2_hidden(sK0(X0_48),X0_48) = iProver_top
    | v1_xboole_0(X0_48) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_827])).

cnf(c_9,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_305,plain,
    ( v4_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_22])).

cnf(c_306,plain,
    ( v4_relat_1(sK3,X0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_305])).

cnf(c_338,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | X2 != X1
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_306])).

cnf(c_339,plain,
    ( r1_tarski(k1_relat_1(sK3),X0)
    | ~ v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_338])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_317,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_22])).

cnf(c_318,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_317])).

cnf(c_343,plain,
    ( r1_tarski(k1_relat_1(sK3),X0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_339,c_318])).

cnf(c_808,plain,
    ( r1_tarski(k1_relat_1(sK3),X0_48)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48)) ),
    inference(subtyping,[status(esa)],[c_343])).

cnf(c_1159,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48))
    | r1_tarski(k1_relat_1(sK3),X0_48) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_808])).

cnf(c_1541,plain,
    ( r1_tarski(k1_relat_1(sK3),k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1159])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
    | k2_enumset1(X1,X1,X1,X2) = X0
    | k2_enumset1(X2,X2,X2,X2) = X0
    | k2_enumset1(X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_820,plain,
    ( ~ r1_tarski(X0_48,k2_enumset1(X1_48,X1_48,X1_48,X2_48))
    | k2_enumset1(X1_48,X1_48,X1_48,X2_48) = X0_48
    | k2_enumset1(X2_48,X2_48,X2_48,X2_48) = X0_48
    | k2_enumset1(X1_48,X1_48,X1_48,X1_48) = X0_48
    | k1_xboole_0 = X0_48 ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1152,plain,
    ( k2_enumset1(X0_48,X0_48,X0_48,X1_48) = X2_48
    | k2_enumset1(X1_48,X1_48,X1_48,X1_48) = X2_48
    | k2_enumset1(X0_48,X0_48,X0_48,X0_48) = X2_48
    | k1_xboole_0 = X2_48
    | r1_tarski(X2_48,k2_enumset1(X0_48,X0_48,X0_48,X1_48)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_820])).

cnf(c_1816,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k1_relat_1(sK3)
    | k1_relat_1(sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1541,c_1152])).

cnf(c_14,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_277,plain,
    ( ~ v1_relat_1(X0)
    | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
    | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_24])).

cnf(c_278,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_277])).

cnf(c_811,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(X0_48,X0_48,X0_48,X0_48) != k1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48)) = k2_relat_1(sK3) ),
    inference(subtyping,[status(esa)],[c_278])).

cnf(c_879,plain,
    ( ~ v1_relat_1(sK3)
    | k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
    | k2_enumset1(sK1,sK1,sK1,sK1) != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_811])).

cnf(c_830,plain,
    ( X0_49 = X0_49 ),
    theory(equality)).

cnf(c_1265,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_830])).

cnf(c_809,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48)) ),
    inference(subtyping,[status(esa)],[c_318])).

cnf(c_1268,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_809])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_296,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_22])).

cnf(c_297,plain,
    ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_296])).

cnf(c_810,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48))
    | k2_relset_1(X0_48,X1_48,sK3) = k2_relat_1(sK3) ),
    inference(subtyping,[status(esa)],[c_297])).

cnf(c_1275,plain,
    ( k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
    inference(equality_resolution,[status(thm)],[c_810])).

cnf(c_20,negated_conjecture,
    ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_814,negated_conjecture,
    ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1277,plain,
    ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_1275,c_814])).

cnf(c_1938,plain,
    ( k1_relat_1(sK3) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1816,c_879,c_1265,c_1268,c_1277])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_816,plain,
    ( ~ v1_relat_1(X0_48)
    | k1_relat_1(X0_48) != k1_xboole_0
    | k1_xboole_0 = X0_48 ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1154,plain,
    ( k1_relat_1(X0_48) != k1_xboole_0
    | k1_xboole_0 = X0_48
    | v1_relat_1(X0_48) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_816])).

cnf(c_1952,plain,
    ( sK3 = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1938,c_1154])).

cnf(c_1269,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1268])).

cnf(c_2019,plain,
    ( sK3 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1952,c_1265,c_1269])).

cnf(c_19,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_23,negated_conjecture,
    ( v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_256,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k2_enumset1(sK1,sK1,sK1,sK1) != X1
    | sK2 != X2
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_23])).

cnf(c_257,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))
    | ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3))
    | ~ v1_funct_1(sK3)
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_256])).

cnf(c_21,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_261,plain,
    ( ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_257,c_24,c_22,c_21])).

cnf(c_812,plain,
    ( ~ r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1))
    | r2_hidden(k1_funct_1(sK3,X0_48),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
    inference(subtyping,[status(esa)],[c_261])).

cnf(c_1156,plain,
    ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_48),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_812])).

cnf(c_1370,plain,
    ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(sK3,X0_48),k2_relat_1(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1156,c_1275])).

cnf(c_2025,plain,
    ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(k1_xboole_0,X0_48),k2_relat_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2019,c_1370])).

cnf(c_10,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_819,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_2045,plain,
    ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
    | r2_hidden(k1_funct_1(k1_xboole_0,X0_48),k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2025,c_819])).

cnf(c_1,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_826,plain,
    ( r1_tarski(k1_xboole_0,X0_48) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1146,plain,
    ( r1_tarski(k1_xboole_0,X0_48) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_826])).

cnf(c_15,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_815,plain,
    ( ~ r1_tarski(X0_48,X1_48)
    | ~ r2_hidden(X1_48,X0_48) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1155,plain,
    ( r1_tarski(X0_48,X1_48) != iProver_top
    | r2_hidden(X1_48,X0_48) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_815])).

cnf(c_1702,plain,
    ( r2_hidden(X0_48,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1146,c_1155])).

cnf(c_2294,plain,
    ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2045,c_1702])).

cnf(c_2298,plain,
    ( v1_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1145,c_2294])).

cnf(c_2,plain,
    ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_69,plain,
    ( v1_xboole_0(k2_enumset1(X0,X0,X0,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_71,plain,
    ( v1_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_69])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2298,c_71])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n011.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 17:13:12 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  % Running in FOF mode
% 1.94/0.96  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.94/0.96  
% 1.94/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.94/0.96  
% 1.94/0.96  ------  iProver source info
% 1.94/0.96  
% 1.94/0.96  git: date: 2020-06-30 10:37:57 +0100
% 1.94/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.94/0.96  git: non_committed_changes: false
% 1.94/0.96  git: last_make_outside_of_git: false
% 1.94/0.96  
% 1.94/0.96  ------ 
% 1.94/0.96  
% 1.94/0.96  ------ Input Options
% 1.94/0.96  
% 1.94/0.96  --out_options                           all
% 1.94/0.96  --tptp_safe_out                         true
% 1.94/0.96  --problem_path                          ""
% 1.94/0.96  --include_path                          ""
% 1.94/0.96  --clausifier                            res/vclausify_rel
% 1.94/0.96  --clausifier_options                    --mode clausify
% 1.94/0.96  --stdin                                 false
% 1.94/0.96  --stats_out                             all
% 1.94/0.96  
% 1.94/0.96  ------ General Options
% 1.94/0.96  
% 1.94/0.96  --fof                                   false
% 1.94/0.96  --time_out_real                         305.
% 1.94/0.96  --time_out_virtual                      -1.
% 1.94/0.96  --symbol_type_check                     false
% 1.94/0.96  --clausify_out                          false
% 1.94/0.96  --sig_cnt_out                           false
% 1.94/0.96  --trig_cnt_out                          false
% 1.94/0.96  --trig_cnt_out_tolerance                1.
% 1.94/0.96  --trig_cnt_out_sk_spl                   false
% 1.94/0.96  --abstr_cl_out                          false
% 1.94/0.96  
% 1.94/0.96  ------ Global Options
% 1.94/0.96  
% 1.94/0.96  --schedule                              default
% 1.94/0.96  --add_important_lit                     false
% 1.94/0.96  --prop_solver_per_cl                    1000
% 1.94/0.96  --min_unsat_core                        false
% 1.94/0.96  --soft_assumptions                      false
% 1.94/0.96  --soft_lemma_size                       3
% 1.94/0.96  --prop_impl_unit_size                   0
% 1.94/0.96  --prop_impl_unit                        []
% 1.94/0.96  --share_sel_clauses                     true
% 1.94/0.96  --reset_solvers                         false
% 1.94/0.96  --bc_imp_inh                            [conj_cone]
% 1.94/0.96  --conj_cone_tolerance                   3.
% 1.94/0.96  --extra_neg_conj                        none
% 1.94/0.96  --large_theory_mode                     true
% 1.94/0.96  --prolific_symb_bound                   200
% 1.94/0.96  --lt_threshold                          2000
% 1.94/0.96  --clause_weak_htbl                      true
% 1.94/0.96  --gc_record_bc_elim                     false
% 1.94/0.96  
% 1.94/0.96  ------ Preprocessing Options
% 1.94/0.96  
% 1.94/0.96  --preprocessing_flag                    true
% 1.94/0.96  --time_out_prep_mult                    0.1
% 1.94/0.96  --splitting_mode                        input
% 1.94/0.96  --splitting_grd                         true
% 1.94/0.96  --splitting_cvd                         false
% 1.94/0.96  --splitting_cvd_svl                     false
% 1.94/0.96  --splitting_nvd                         32
% 1.94/0.96  --sub_typing                            true
% 1.94/0.96  --prep_gs_sim                           true
% 1.94/0.96  --prep_unflatten                        true
% 1.94/0.96  --prep_res_sim                          true
% 1.94/0.96  --prep_upred                            true
% 1.94/0.96  --prep_sem_filter                       exhaustive
% 1.94/0.96  --prep_sem_filter_out                   false
% 1.94/0.96  --pred_elim                             true
% 1.94/0.96  --res_sim_input                         true
% 1.94/0.96  --eq_ax_congr_red                       true
% 1.94/0.96  --pure_diseq_elim                       true
% 1.94/0.96  --brand_transform                       false
% 1.94/0.96  --non_eq_to_eq                          false
% 1.94/0.96  --prep_def_merge                        true
% 1.94/0.96  --prep_def_merge_prop_impl              false
% 1.94/0.96  --prep_def_merge_mbd                    true
% 1.94/0.96  --prep_def_merge_tr_red                 false
% 1.94/0.96  --prep_def_merge_tr_cl                  false
% 1.94/0.96  --smt_preprocessing                     true
% 1.94/0.96  --smt_ac_axioms                         fast
% 1.94/0.96  --preprocessed_out                      false
% 1.94/0.96  --preprocessed_stats                    false
% 1.94/0.96  
% 1.94/0.96  ------ Abstraction refinement Options
% 1.94/0.96  
% 1.94/0.96  --abstr_ref                             []
% 1.94/0.96  --abstr_ref_prep                        false
% 1.94/0.96  --abstr_ref_until_sat                   false
% 1.94/0.96  --abstr_ref_sig_restrict                funpre
% 1.94/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.94/0.96  --abstr_ref_under                       []
% 1.94/0.96  
% 1.94/0.96  ------ SAT Options
% 1.94/0.96  
% 1.94/0.96  --sat_mode                              false
% 1.94/0.96  --sat_fm_restart_options                ""
% 1.94/0.96  --sat_gr_def                            false
% 1.94/0.96  --sat_epr_types                         true
% 1.94/0.96  --sat_non_cyclic_types                  false
% 1.94/0.96  --sat_finite_models                     false
% 1.94/0.96  --sat_fm_lemmas                         false
% 1.94/0.96  --sat_fm_prep                           false
% 1.94/0.96  --sat_fm_uc_incr                        true
% 1.94/0.96  --sat_out_model                         small
% 1.94/0.96  --sat_out_clauses                       false
% 1.94/0.96  
% 1.94/0.96  ------ QBF Options
% 1.94/0.96  
% 1.94/0.96  --qbf_mode                              false
% 1.94/0.96  --qbf_elim_univ                         false
% 1.94/0.96  --qbf_dom_inst                          none
% 1.94/0.96  --qbf_dom_pre_inst                      false
% 1.94/0.96  --qbf_sk_in                             false
% 1.94/0.96  --qbf_pred_elim                         true
% 1.94/0.96  --qbf_split                             512
% 1.94/0.96  
% 1.94/0.96  ------ BMC1 Options
% 1.94/0.96  
% 1.94/0.96  --bmc1_incremental                      false
% 1.94/0.96  --bmc1_axioms                           reachable_all
% 1.94/0.96  --bmc1_min_bound                        0
% 1.94/0.96  --bmc1_max_bound                        -1
% 1.94/0.96  --bmc1_max_bound_default                -1
% 1.94/0.96  --bmc1_symbol_reachability              true
% 1.94/0.96  --bmc1_property_lemmas                  false
% 1.94/0.96  --bmc1_k_induction                      false
% 1.94/0.96  --bmc1_non_equiv_states                 false
% 1.94/0.96  --bmc1_deadlock                         false
% 1.94/0.96  --bmc1_ucm                              false
% 1.94/0.96  --bmc1_add_unsat_core                   none
% 1.94/0.96  --bmc1_unsat_core_children              false
% 1.94/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.94/0.96  --bmc1_out_stat                         full
% 1.94/0.96  --bmc1_ground_init                      false
% 1.94/0.96  --bmc1_pre_inst_next_state              false
% 1.94/0.96  --bmc1_pre_inst_state                   false
% 1.94/0.96  --bmc1_pre_inst_reach_state             false
% 1.94/0.96  --bmc1_out_unsat_core                   false
% 1.94/0.96  --bmc1_aig_witness_out                  false
% 1.94/0.96  --bmc1_verbose                          false
% 1.94/0.96  --bmc1_dump_clauses_tptp                false
% 1.94/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.94/0.96  --bmc1_dump_file                        -
% 1.94/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.94/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.94/0.96  --bmc1_ucm_extend_mode                  1
% 1.94/0.96  --bmc1_ucm_init_mode                    2
% 1.94/0.96  --bmc1_ucm_cone_mode                    none
% 1.94/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.94/0.96  --bmc1_ucm_relax_model                  4
% 1.94/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.94/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.94/0.96  --bmc1_ucm_layered_model                none
% 1.94/0.96  --bmc1_ucm_max_lemma_size               10
% 1.94/0.96  
% 1.94/0.96  ------ AIG Options
% 1.94/0.96  
% 1.94/0.96  --aig_mode                              false
% 1.94/0.96  
% 1.94/0.96  ------ Instantiation Options
% 1.94/0.96  
% 1.94/0.96  --instantiation_flag                    true
% 1.94/0.96  --inst_sos_flag                         false
% 1.94/0.96  --inst_sos_phase                        true
% 1.94/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.94/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.94/0.96  --inst_lit_sel_side                     num_symb
% 1.94/0.96  --inst_solver_per_active                1400
% 1.94/0.96  --inst_solver_calls_frac                1.
% 1.94/0.96  --inst_passive_queue_type               priority_queues
% 1.94/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.94/0.96  --inst_passive_queues_freq              [25;2]
% 1.94/0.96  --inst_dismatching                      true
% 1.94/0.96  --inst_eager_unprocessed_to_passive     true
% 1.94/0.96  --inst_prop_sim_given                   true
% 1.94/0.96  --inst_prop_sim_new                     false
% 1.94/0.96  --inst_subs_new                         false
% 1.94/0.96  --inst_eq_res_simp                      false
% 1.94/0.96  --inst_subs_given                       false
% 1.94/0.96  --inst_orphan_elimination               true
% 1.94/0.96  --inst_learning_loop_flag               true
% 1.94/0.96  --inst_learning_start                   3000
% 1.94/0.96  --inst_learning_factor                  2
% 1.94/0.96  --inst_start_prop_sim_after_learn       3
% 1.94/0.96  --inst_sel_renew                        solver
% 1.94/0.96  --inst_lit_activity_flag                true
% 1.94/0.96  --inst_restr_to_given                   false
% 1.94/0.96  --inst_activity_threshold               500
% 1.94/0.96  --inst_out_proof                        true
% 1.94/0.96  
% 1.94/0.96  ------ Resolution Options
% 1.94/0.96  
% 1.94/0.96  --resolution_flag                       true
% 1.94/0.96  --res_lit_sel                           adaptive
% 1.94/0.96  --res_lit_sel_side                      none
% 1.94/0.96  --res_ordering                          kbo
% 1.94/0.96  --res_to_prop_solver                    active
% 1.94/0.96  --res_prop_simpl_new                    false
% 1.94/0.96  --res_prop_simpl_given                  true
% 1.94/0.96  --res_passive_queue_type                priority_queues
% 1.94/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.94/0.96  --res_passive_queues_freq               [15;5]
% 1.94/0.96  --res_forward_subs                      full
% 1.94/0.96  --res_backward_subs                     full
% 1.94/0.96  --res_forward_subs_resolution           true
% 1.94/0.96  --res_backward_subs_resolution          true
% 1.94/0.96  --res_orphan_elimination                true
% 1.94/0.96  --res_time_limit                        2.
% 1.94/0.96  --res_out_proof                         true
% 1.94/0.96  
% 1.94/0.96  ------ Superposition Options
% 1.94/0.96  
% 1.94/0.96  --superposition_flag                    true
% 1.94/0.96  --sup_passive_queue_type                priority_queues
% 1.94/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.94/0.96  --sup_passive_queues_freq               [8;1;4]
% 1.94/0.96  --demod_completeness_check              fast
% 1.94/0.96  --demod_use_ground                      true
% 1.94/0.96  --sup_to_prop_solver                    passive
% 1.94/0.96  --sup_prop_simpl_new                    true
% 1.94/0.96  --sup_prop_simpl_given                  true
% 1.94/0.96  --sup_fun_splitting                     false
% 1.94/0.96  --sup_smt_interval                      50000
% 1.94/0.96  
% 1.94/0.96  ------ Superposition Simplification Setup
% 1.94/0.96  
% 1.94/0.96  --sup_indices_passive                   []
% 1.94/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 1.94/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_full_bw                           [BwDemod]
% 1.94/0.96  --sup_immed_triv                        [TrivRules]
% 1.94/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.94/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_immed_bw_main                     []
% 1.94/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.94/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 1.94/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.94/0.96  
% 1.94/0.96  ------ Combination Options
% 1.94/0.96  
% 1.94/0.96  --comb_res_mult                         3
% 1.94/0.96  --comb_sup_mult                         2
% 1.94/0.96  --comb_inst_mult                        10
% 1.94/0.96  
% 1.94/0.96  ------ Debug Options
% 1.94/0.96  
% 1.94/0.96  --dbg_backtrace                         false
% 1.94/0.96  --dbg_dump_prop_clauses                 false
% 1.94/0.96  --dbg_dump_prop_clauses_file            -
% 1.94/0.96  --dbg_out_stat                          false
% 1.94/0.96  ------ Parsing...
% 1.94/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.94/0.96  
% 1.94/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.94/0.96  
% 1.94/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.94/0.96  
% 1.94/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.94/0.96  ------ Proving...
% 1.94/0.96  ------ Problem Properties 
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  clauses                                 20
% 1.94/0.96  conjectures                             2
% 1.94/0.96  EPR                                     3
% 1.94/0.96  Horn                                    18
% 1.94/0.96  unary                                   10
% 1.94/0.96  binary                                  6
% 1.94/0.96  lits                                    36
% 1.94/0.96  lits eq                                 18
% 1.94/0.96  fd_pure                                 0
% 1.94/0.96  fd_pseudo                               0
% 1.94/0.96  fd_cond                                 2
% 1.94/0.96  fd_pseudo_cond                          1
% 1.94/0.96  AC symbols                              0
% 1.94/0.96  
% 1.94/0.96  ------ Schedule dynamic 5 is on 
% 1.94/0.96  
% 1.94/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  ------ 
% 1.94/0.96  Current options:
% 1.94/0.96  ------ 
% 1.94/0.96  
% 1.94/0.96  ------ Input Options
% 1.94/0.96  
% 1.94/0.96  --out_options                           all
% 1.94/0.96  --tptp_safe_out                         true
% 1.94/0.96  --problem_path                          ""
% 1.94/0.96  --include_path                          ""
% 1.94/0.96  --clausifier                            res/vclausify_rel
% 1.94/0.96  --clausifier_options                    --mode clausify
% 1.94/0.96  --stdin                                 false
% 1.94/0.96  --stats_out                             all
% 1.94/0.96  
% 1.94/0.96  ------ General Options
% 1.94/0.96  
% 1.94/0.96  --fof                                   false
% 1.94/0.96  --time_out_real                         305.
% 1.94/0.96  --time_out_virtual                      -1.
% 1.94/0.96  --symbol_type_check                     false
% 1.94/0.96  --clausify_out                          false
% 1.94/0.96  --sig_cnt_out                           false
% 1.94/0.96  --trig_cnt_out                          false
% 1.94/0.96  --trig_cnt_out_tolerance                1.
% 1.94/0.96  --trig_cnt_out_sk_spl                   false
% 1.94/0.96  --abstr_cl_out                          false
% 1.94/0.96  
% 1.94/0.96  ------ Global Options
% 1.94/0.96  
% 1.94/0.96  --schedule                              default
% 1.94/0.96  --add_important_lit                     false
% 1.94/0.96  --prop_solver_per_cl                    1000
% 1.94/0.96  --min_unsat_core                        false
% 1.94/0.96  --soft_assumptions                      false
% 1.94/0.96  --soft_lemma_size                       3
% 1.94/0.96  --prop_impl_unit_size                   0
% 1.94/0.96  --prop_impl_unit                        []
% 1.94/0.96  --share_sel_clauses                     true
% 1.94/0.96  --reset_solvers                         false
% 1.94/0.96  --bc_imp_inh                            [conj_cone]
% 1.94/0.96  --conj_cone_tolerance                   3.
% 1.94/0.96  --extra_neg_conj                        none
% 1.94/0.96  --large_theory_mode                     true
% 1.94/0.96  --prolific_symb_bound                   200
% 1.94/0.96  --lt_threshold                          2000
% 1.94/0.96  --clause_weak_htbl                      true
% 1.94/0.96  --gc_record_bc_elim                     false
% 1.94/0.96  
% 1.94/0.96  ------ Preprocessing Options
% 1.94/0.96  
% 1.94/0.96  --preprocessing_flag                    true
% 1.94/0.96  --time_out_prep_mult                    0.1
% 1.94/0.96  --splitting_mode                        input
% 1.94/0.96  --splitting_grd                         true
% 1.94/0.96  --splitting_cvd                         false
% 1.94/0.96  --splitting_cvd_svl                     false
% 1.94/0.96  --splitting_nvd                         32
% 1.94/0.96  --sub_typing                            true
% 1.94/0.96  --prep_gs_sim                           true
% 1.94/0.96  --prep_unflatten                        true
% 1.94/0.96  --prep_res_sim                          true
% 1.94/0.96  --prep_upred                            true
% 1.94/0.96  --prep_sem_filter                       exhaustive
% 1.94/0.96  --prep_sem_filter_out                   false
% 1.94/0.96  --pred_elim                             true
% 1.94/0.96  --res_sim_input                         true
% 1.94/0.96  --eq_ax_congr_red                       true
% 1.94/0.96  --pure_diseq_elim                       true
% 1.94/0.96  --brand_transform                       false
% 1.94/0.96  --non_eq_to_eq                          false
% 1.94/0.96  --prep_def_merge                        true
% 1.94/0.96  --prep_def_merge_prop_impl              false
% 1.94/0.96  --prep_def_merge_mbd                    true
% 1.94/0.96  --prep_def_merge_tr_red                 false
% 1.94/0.96  --prep_def_merge_tr_cl                  false
% 1.94/0.96  --smt_preprocessing                     true
% 1.94/0.96  --smt_ac_axioms                         fast
% 1.94/0.96  --preprocessed_out                      false
% 1.94/0.96  --preprocessed_stats                    false
% 1.94/0.96  
% 1.94/0.96  ------ Abstraction refinement Options
% 1.94/0.96  
% 1.94/0.96  --abstr_ref                             []
% 1.94/0.96  --abstr_ref_prep                        false
% 1.94/0.96  --abstr_ref_until_sat                   false
% 1.94/0.96  --abstr_ref_sig_restrict                funpre
% 1.94/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 1.94/0.96  --abstr_ref_under                       []
% 1.94/0.96  
% 1.94/0.96  ------ SAT Options
% 1.94/0.96  
% 1.94/0.96  --sat_mode                              false
% 1.94/0.96  --sat_fm_restart_options                ""
% 1.94/0.96  --sat_gr_def                            false
% 1.94/0.96  --sat_epr_types                         true
% 1.94/0.96  --sat_non_cyclic_types                  false
% 1.94/0.96  --sat_finite_models                     false
% 1.94/0.96  --sat_fm_lemmas                         false
% 1.94/0.96  --sat_fm_prep                           false
% 1.94/0.96  --sat_fm_uc_incr                        true
% 1.94/0.96  --sat_out_model                         small
% 1.94/0.96  --sat_out_clauses                       false
% 1.94/0.96  
% 1.94/0.96  ------ QBF Options
% 1.94/0.96  
% 1.94/0.96  --qbf_mode                              false
% 1.94/0.96  --qbf_elim_univ                         false
% 1.94/0.96  --qbf_dom_inst                          none
% 1.94/0.96  --qbf_dom_pre_inst                      false
% 1.94/0.96  --qbf_sk_in                             false
% 1.94/0.96  --qbf_pred_elim                         true
% 1.94/0.96  --qbf_split                             512
% 1.94/0.96  
% 1.94/0.96  ------ BMC1 Options
% 1.94/0.96  
% 1.94/0.96  --bmc1_incremental                      false
% 1.94/0.96  --bmc1_axioms                           reachable_all
% 1.94/0.96  --bmc1_min_bound                        0
% 1.94/0.96  --bmc1_max_bound                        -1
% 1.94/0.96  --bmc1_max_bound_default                -1
% 1.94/0.96  --bmc1_symbol_reachability              true
% 1.94/0.96  --bmc1_property_lemmas                  false
% 1.94/0.96  --bmc1_k_induction                      false
% 1.94/0.96  --bmc1_non_equiv_states                 false
% 1.94/0.96  --bmc1_deadlock                         false
% 1.94/0.96  --bmc1_ucm                              false
% 1.94/0.96  --bmc1_add_unsat_core                   none
% 1.94/0.96  --bmc1_unsat_core_children              false
% 1.94/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 1.94/0.96  --bmc1_out_stat                         full
% 1.94/0.96  --bmc1_ground_init                      false
% 1.94/0.96  --bmc1_pre_inst_next_state              false
% 1.94/0.96  --bmc1_pre_inst_state                   false
% 1.94/0.96  --bmc1_pre_inst_reach_state             false
% 1.94/0.96  --bmc1_out_unsat_core                   false
% 1.94/0.96  --bmc1_aig_witness_out                  false
% 1.94/0.96  --bmc1_verbose                          false
% 1.94/0.96  --bmc1_dump_clauses_tptp                false
% 1.94/0.96  --bmc1_dump_unsat_core_tptp             false
% 1.94/0.96  --bmc1_dump_file                        -
% 1.94/0.96  --bmc1_ucm_expand_uc_limit              128
% 1.94/0.96  --bmc1_ucm_n_expand_iterations          6
% 1.94/0.96  --bmc1_ucm_extend_mode                  1
% 1.94/0.96  --bmc1_ucm_init_mode                    2
% 1.94/0.96  --bmc1_ucm_cone_mode                    none
% 1.94/0.96  --bmc1_ucm_reduced_relation_type        0
% 1.94/0.96  --bmc1_ucm_relax_model                  4
% 1.94/0.96  --bmc1_ucm_full_tr_after_sat            true
% 1.94/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 1.94/0.96  --bmc1_ucm_layered_model                none
% 1.94/0.96  --bmc1_ucm_max_lemma_size               10
% 1.94/0.96  
% 1.94/0.96  ------ AIG Options
% 1.94/0.96  
% 1.94/0.96  --aig_mode                              false
% 1.94/0.96  
% 1.94/0.96  ------ Instantiation Options
% 1.94/0.96  
% 1.94/0.96  --instantiation_flag                    true
% 1.94/0.96  --inst_sos_flag                         false
% 1.94/0.96  --inst_sos_phase                        true
% 1.94/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.94/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.94/0.96  --inst_lit_sel_side                     none
% 1.94/0.96  --inst_solver_per_active                1400
% 1.94/0.96  --inst_solver_calls_frac                1.
% 1.94/0.96  --inst_passive_queue_type               priority_queues
% 1.94/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.94/0.96  --inst_passive_queues_freq              [25;2]
% 1.94/0.96  --inst_dismatching                      true
% 1.94/0.96  --inst_eager_unprocessed_to_passive     true
% 1.94/0.96  --inst_prop_sim_given                   true
% 1.94/0.96  --inst_prop_sim_new                     false
% 1.94/0.96  --inst_subs_new                         false
% 1.94/0.96  --inst_eq_res_simp                      false
% 1.94/0.96  --inst_subs_given                       false
% 1.94/0.96  --inst_orphan_elimination               true
% 1.94/0.96  --inst_learning_loop_flag               true
% 1.94/0.96  --inst_learning_start                   3000
% 1.94/0.96  --inst_learning_factor                  2
% 1.94/0.96  --inst_start_prop_sim_after_learn       3
% 1.94/0.96  --inst_sel_renew                        solver
% 1.94/0.96  --inst_lit_activity_flag                true
% 1.94/0.96  --inst_restr_to_given                   false
% 1.94/0.96  --inst_activity_threshold               500
% 1.94/0.96  --inst_out_proof                        true
% 1.94/0.96  
% 1.94/0.96  ------ Resolution Options
% 1.94/0.96  
% 1.94/0.96  --resolution_flag                       false
% 1.94/0.96  --res_lit_sel                           adaptive
% 1.94/0.96  --res_lit_sel_side                      none
% 1.94/0.96  --res_ordering                          kbo
% 1.94/0.96  --res_to_prop_solver                    active
% 1.94/0.96  --res_prop_simpl_new                    false
% 1.94/0.96  --res_prop_simpl_given                  true
% 1.94/0.96  --res_passive_queue_type                priority_queues
% 1.94/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.94/0.96  --res_passive_queues_freq               [15;5]
% 1.94/0.96  --res_forward_subs                      full
% 1.94/0.96  --res_backward_subs                     full
% 1.94/0.96  --res_forward_subs_resolution           true
% 1.94/0.96  --res_backward_subs_resolution          true
% 1.94/0.96  --res_orphan_elimination                true
% 1.94/0.96  --res_time_limit                        2.
% 1.94/0.96  --res_out_proof                         true
% 1.94/0.96  
% 1.94/0.96  ------ Superposition Options
% 1.94/0.96  
% 1.94/0.96  --superposition_flag                    true
% 1.94/0.96  --sup_passive_queue_type                priority_queues
% 1.94/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.94/0.96  --sup_passive_queues_freq               [8;1;4]
% 1.94/0.96  --demod_completeness_check              fast
% 1.94/0.96  --demod_use_ground                      true
% 1.94/0.96  --sup_to_prop_solver                    passive
% 1.94/0.96  --sup_prop_simpl_new                    true
% 1.94/0.96  --sup_prop_simpl_given                  true
% 1.94/0.96  --sup_fun_splitting                     false
% 1.94/0.96  --sup_smt_interval                      50000
% 1.94/0.96  
% 1.94/0.96  ------ Superposition Simplification Setup
% 1.94/0.96  
% 1.94/0.96  --sup_indices_passive                   []
% 1.94/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.94/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 1.94/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_full_bw                           [BwDemod]
% 1.94/0.96  --sup_immed_triv                        [TrivRules]
% 1.94/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.94/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_immed_bw_main                     []
% 1.94/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.94/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 1.94/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.94/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.94/0.96  
% 1.94/0.96  ------ Combination Options
% 1.94/0.96  
% 1.94/0.96  --comb_res_mult                         3
% 1.94/0.96  --comb_sup_mult                         2
% 1.94/0.96  --comb_inst_mult                        10
% 1.94/0.96  
% 1.94/0.96  ------ Debug Options
% 1.94/0.96  
% 1.94/0.96  --dbg_backtrace                         false
% 1.94/0.96  --dbg_dump_prop_clauses                 false
% 1.94/0.96  --dbg_dump_prop_clauses_file            -
% 1.94/0.96  --dbg_out_stat                          false
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  ------ Proving...
% 1.94/0.96  
% 1.94/0.96  
% 1.94/0.96  % SZS status Theorem for theBenchmark.p
% 1.94/0.96  
% 1.94/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 1.94/0.96  
% 1.94/0.96  fof(f1,axiom,(
% 1.94/0.96    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f19,plain,(
% 1.94/0.96    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) => v1_xboole_0(X0))),
% 1.94/0.96    inference(unused_predicate_definition_removal,[],[f1])).
% 1.94/0.96  
% 1.94/0.96  fof(f21,plain,(
% 1.94/0.96    ! [X0] : (v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0))),
% 1.94/0.96    inference(ennf_transformation,[],[f19])).
% 1.94/0.96  
% 1.94/0.96  fof(f36,plain,(
% 1.94/0.96    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.94/0.96    introduced(choice_axiom,[])).
% 1.94/0.96  
% 1.94/0.96  fof(f37,plain,(
% 1.94/0.96    ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0))),
% 1.94/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f36])).
% 1.94/0.96  
% 1.94/0.96  fof(f43,plain,(
% 1.94/0.96    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f37])).
% 1.94/0.96  
% 1.94/0.96  fof(f8,axiom,(
% 1.94/0.96    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f23,plain,(
% 1.94/0.96    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.94/0.96    inference(ennf_transformation,[],[f8])).
% 1.94/0.96  
% 1.94/0.96  fof(f40,plain,(
% 1.94/0.96    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.94/0.96    inference(nnf_transformation,[],[f23])).
% 1.94/0.96  
% 1.94/0.96  fof(f54,plain,(
% 1.94/0.96    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f40])).
% 1.94/0.96  
% 1.94/0.96  fof(f14,axiom,(
% 1.94/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f20,plain,(
% 1.94/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.94/0.96    inference(pure_predicate_removal,[],[f14])).
% 1.94/0.96  
% 1.94/0.96  fof(f30,plain,(
% 1.94/0.96    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.94/0.96    inference(ennf_transformation,[],[f20])).
% 1.94/0.96  
% 1.94/0.96  fof(f63,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.94/0.96    inference(cnf_transformation,[],[f30])).
% 1.94/0.96  
% 1.94/0.96  fof(f17,conjecture,(
% 1.94/0.96    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f18,negated_conjecture,(
% 1.94/0.96    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => k1_tarski(k1_funct_1(X2,X0)) = k2_relset_1(k1_tarski(X0),X1,X2)))),
% 1.94/0.96    inference(negated_conjecture,[],[f17])).
% 1.94/0.96  
% 1.94/0.96  fof(f34,plain,(
% 1.94/0.96    ? [X0,X1,X2] : ((k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)))),
% 1.94/0.96    inference(ennf_transformation,[],[f18])).
% 1.94/0.96  
% 1.94/0.96  fof(f35,plain,(
% 1.94/0.96    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2))),
% 1.94/0.96    inference(flattening,[],[f34])).
% 1.94/0.96  
% 1.94/0.96  fof(f41,plain,(
% 1.94/0.96    ? [X0,X1,X2] : (k1_tarski(k1_funct_1(X2,X0)) != k2_relset_1(k1_tarski(X0),X1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3))),
% 1.94/0.96    introduced(choice_axiom,[])).
% 1.94/0.96  
% 1.94/0.96  fof(f42,plain,(
% 1.94/0.96    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2))) & v1_funct_2(sK3,k1_tarski(sK1),sK2) & v1_funct_1(sK3)),
% 1.94/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f35,f41])).
% 1.94/0.96  
% 1.94/0.96  fof(f68,plain,(
% 1.94/0.96    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK1),sK2)))),
% 1.94/0.96    inference(cnf_transformation,[],[f42])).
% 1.94/0.96  
% 1.94/0.96  fof(f3,axiom,(
% 1.94/0.96    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f45,plain,(
% 1.94/0.96    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f3])).
% 1.94/0.96  
% 1.94/0.96  fof(f4,axiom,(
% 1.94/0.96    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f46,plain,(
% 1.94/0.96    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f4])).
% 1.94/0.96  
% 1.94/0.96  fof(f5,axiom,(
% 1.94/0.96    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f47,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f5])).
% 1.94/0.96  
% 1.94/0.96  fof(f71,plain,(
% 1.94/0.96    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.94/0.96    inference(definition_unfolding,[],[f46,f47])).
% 1.94/0.96  
% 1.94/0.96  fof(f72,plain,(
% 1.94/0.96    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 1.94/0.96    inference(definition_unfolding,[],[f45,f71])).
% 1.94/0.96  
% 1.94/0.96  fof(f81,plain,(
% 1.94/0.96    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))),
% 1.94/0.96    inference(definition_unfolding,[],[f68,f72])).
% 1.94/0.96  
% 1.94/0.96  fof(f13,axiom,(
% 1.94/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f29,plain,(
% 1.94/0.96    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.94/0.96    inference(ennf_transformation,[],[f13])).
% 1.94/0.96  
% 1.94/0.96  fof(f62,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.94/0.96    inference(cnf_transformation,[],[f29])).
% 1.94/0.96  
% 1.94/0.96  fof(f7,axiom,(
% 1.94/0.96    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> ~(k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f22,plain,(
% 1.94/0.96    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 1.94/0.96    inference(ennf_transformation,[],[f7])).
% 1.94/0.96  
% 1.94/0.96  fof(f38,plain,(
% 1.94/0.96    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 1.94/0.96    inference(nnf_transformation,[],[f22])).
% 1.94/0.96  
% 1.94/0.96  fof(f39,plain,(
% 1.94/0.96    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 1.94/0.96    inference(flattening,[],[f38])).
% 1.94/0.96  
% 1.94/0.96  fof(f49,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))) )),
% 1.94/0.96    inference(cnf_transformation,[],[f39])).
% 1.94/0.96  
% 1.94/0.96  fof(f78,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (k2_enumset1(X1,X1,X1,X2) = X0 | k2_enumset1(X2,X2,X2,X2) = X0 | k2_enumset1(X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))) )),
% 1.94/0.96    inference(definition_unfolding,[],[f49,f71,f72,f72,f71])).
% 1.94/0.96  
% 1.94/0.96  fof(f11,axiom,(
% 1.94/0.96    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_tarski(X0) = k1_relat_1(X1) => k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1)))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f26,plain,(
% 1.94/0.96    ! [X0,X1] : ((k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.94/0.96    inference(ennf_transformation,[],[f11])).
% 1.94/0.96  
% 1.94/0.96  fof(f27,plain,(
% 1.94/0.96    ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.94/0.96    inference(flattening,[],[f26])).
% 1.94/0.96  
% 1.94/0.96  fof(f60,plain,(
% 1.94/0.96    ( ! [X0,X1] : (k1_tarski(k1_funct_1(X1,X0)) = k2_relat_1(X1) | k1_tarski(X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.94/0.96    inference(cnf_transformation,[],[f27])).
% 1.94/0.96  
% 1.94/0.96  fof(f79,plain,(
% 1.94/0.96    ( ! [X0,X1] : (k2_enumset1(k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0),k1_funct_1(X1,X0)) = k2_relat_1(X1) | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.94/0.96    inference(definition_unfolding,[],[f60,f72,f72])).
% 1.94/0.96  
% 1.94/0.96  fof(f66,plain,(
% 1.94/0.96    v1_funct_1(sK3)),
% 1.94/0.96    inference(cnf_transformation,[],[f42])).
% 1.94/0.96  
% 1.94/0.96  fof(f15,axiom,(
% 1.94/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.94/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.96  
% 1.94/0.96  fof(f31,plain,(
% 1.94/0.96    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.94/0.96    inference(ennf_transformation,[],[f15])).
% 1.94/0.96  
% 1.94/0.96  fof(f64,plain,(
% 1.94/0.96    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.94/0.96    inference(cnf_transformation,[],[f31])).
% 1.94/0.96  
% 1.94/0.96  fof(f70,plain,(
% 1.94/0.96    k1_tarski(k1_funct_1(sK3,sK1)) != k2_relset_1(k1_tarski(sK1),sK2,sK3)),
% 1.94/0.96    inference(cnf_transformation,[],[f42])).
% 1.94/0.97  
% 1.94/0.97  fof(f80,plain,(
% 1.94/0.97    k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)),
% 1.94/0.97    inference(definition_unfolding,[],[f70,f72,f72])).
% 1.94/0.97  
% 1.94/0.97  fof(f10,axiom,(
% 1.94/0.97    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f24,plain,(
% 1.94/0.97    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 1.94/0.97    inference(ennf_transformation,[],[f10])).
% 1.94/0.97  
% 1.94/0.97  fof(f25,plain,(
% 1.94/0.97    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.94/0.97    inference(flattening,[],[f24])).
% 1.94/0.97  
% 1.94/0.97  fof(f58,plain,(
% 1.94/0.97    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 1.94/0.97    inference(cnf_transformation,[],[f25])).
% 1.94/0.97  
% 1.94/0.97  fof(f16,axiom,(
% 1.94/0.97    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f32,plain,(
% 1.94/0.97    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.94/0.97    inference(ennf_transformation,[],[f16])).
% 1.94/0.97  
% 1.94/0.97  fof(f33,plain,(
% 1.94/0.97    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.94/0.97    inference(flattening,[],[f32])).
% 1.94/0.97  
% 1.94/0.97  fof(f65,plain,(
% 1.94/0.97    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.94/0.97    inference(cnf_transformation,[],[f33])).
% 1.94/0.97  
% 1.94/0.97  fof(f67,plain,(
% 1.94/0.97    v1_funct_2(sK3,k1_tarski(sK1),sK2)),
% 1.94/0.97    inference(cnf_transformation,[],[f42])).
% 1.94/0.97  
% 1.94/0.97  fof(f82,plain,(
% 1.94/0.97    v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2)),
% 1.94/0.97    inference(definition_unfolding,[],[f67,f72])).
% 1.94/0.97  
% 1.94/0.97  fof(f69,plain,(
% 1.94/0.97    k1_xboole_0 != sK2),
% 1.94/0.97    inference(cnf_transformation,[],[f42])).
% 1.94/0.97  
% 1.94/0.97  fof(f9,axiom,(
% 1.94/0.97    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f57,plain,(
% 1.94/0.97    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 1.94/0.97    inference(cnf_transformation,[],[f9])).
% 1.94/0.97  
% 1.94/0.97  fof(f2,axiom,(
% 1.94/0.97    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f44,plain,(
% 1.94/0.97    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.94/0.97    inference(cnf_transformation,[],[f2])).
% 1.94/0.97  
% 1.94/0.97  fof(f12,axiom,(
% 1.94/0.97    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f28,plain,(
% 1.94/0.97    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.94/0.97    inference(ennf_transformation,[],[f12])).
% 1.94/0.97  
% 1.94/0.97  fof(f61,plain,(
% 1.94/0.97    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.94/0.97    inference(cnf_transformation,[],[f28])).
% 1.94/0.97  
% 1.94/0.97  fof(f6,axiom,(
% 1.94/0.97    ! [X0,X1] : ~v1_xboole_0(k2_tarski(X0,X1))),
% 1.94/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.94/0.97  
% 1.94/0.97  fof(f48,plain,(
% 1.94/0.97    ( ! [X0,X1] : (~v1_xboole_0(k2_tarski(X0,X1))) )),
% 1.94/0.97    inference(cnf_transformation,[],[f6])).
% 1.94/0.97  
% 1.94/0.97  fof(f73,plain,(
% 1.94/0.97    ( ! [X0,X1] : (~v1_xboole_0(k2_enumset1(X0,X0,X0,X1))) )),
% 1.94/0.97    inference(definition_unfolding,[],[f48,f71])).
% 1.94/0.97  
% 1.94/0.97  cnf(c_0,plain,
% 1.94/0.97      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f43]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_827,plain,
% 1.94/0.97      ( r2_hidden(sK0(X0_48),X0_48) | v1_xboole_0(X0_48) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_0]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1145,plain,
% 1.94/0.97      ( r2_hidden(sK0(X0_48),X0_48) = iProver_top
% 1.94/0.97      | v1_xboole_0(X0_48) = iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_827]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_9,plain,
% 1.94/0.97      ( ~ v4_relat_1(X0,X1)
% 1.94/0.97      | r1_tarski(k1_relat_1(X0),X1)
% 1.94/0.97      | ~ v1_relat_1(X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f54]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_17,plain,
% 1.94/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.94/0.97      | v4_relat_1(X0,X1) ),
% 1.94/0.97      inference(cnf_transformation,[],[f63]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_22,negated_conjecture,
% 1.94/0.97      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))) ),
% 1.94/0.97      inference(cnf_transformation,[],[f81]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_305,plain,
% 1.94/0.97      ( v4_relat_1(X0,X1)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.94/0.97      | sK3 != X0 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_17,c_22]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_306,plain,
% 1.94/0.97      ( v4_relat_1(sK3,X0)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_305]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_338,plain,
% 1.94/0.97      ( r1_tarski(k1_relat_1(X0),X1)
% 1.94/0.97      | ~ v1_relat_1(X0)
% 1.94/0.97      | X2 != X1
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
% 1.94/0.97      | sK3 != X0 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_9,c_306]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_339,plain,
% 1.94/0.97      ( r1_tarski(k1_relat_1(sK3),X0)
% 1.94/0.97      | ~ v1_relat_1(sK3)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_338]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_16,plain,
% 1.94/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.94/0.97      | v1_relat_1(X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f62]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_317,plain,
% 1.94/0.97      ( v1_relat_1(X0)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.94/0.97      | sK3 != X0 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_16,c_22]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_318,plain,
% 1.94/0.97      ( v1_relat_1(sK3)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_317]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_343,plain,
% 1.94/0.97      ( r1_tarski(k1_relat_1(sK3),X0)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.94/0.97      inference(global_propositional_subsumption,
% 1.94/0.97                [status(thm)],
% 1.94/0.97                [c_339,c_318]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_808,plain,
% 1.94/0.97      ( r1_tarski(k1_relat_1(sK3),X0_48)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48)) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_343]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1159,plain,
% 1.94/0.97      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48))
% 1.94/0.97      | r1_tarski(k1_relat_1(sK3),X0_48) = iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_808]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1541,plain,
% 1.94/0.97      ( r1_tarski(k1_relat_1(sK3),k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
% 1.94/0.97      inference(equality_resolution,[status(thm)],[c_1159]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_7,plain,
% 1.94/0.97      ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
% 1.94/0.97      | k2_enumset1(X1,X1,X1,X2) = X0
% 1.94/0.97      | k2_enumset1(X2,X2,X2,X2) = X0
% 1.94/0.97      | k2_enumset1(X1,X1,X1,X1) = X0
% 1.94/0.97      | k1_xboole_0 = X0 ),
% 1.94/0.97      inference(cnf_transformation,[],[f78]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_820,plain,
% 1.94/0.97      ( ~ r1_tarski(X0_48,k2_enumset1(X1_48,X1_48,X1_48,X2_48))
% 1.94/0.97      | k2_enumset1(X1_48,X1_48,X1_48,X2_48) = X0_48
% 1.94/0.97      | k2_enumset1(X2_48,X2_48,X2_48,X2_48) = X0_48
% 1.94/0.97      | k2_enumset1(X1_48,X1_48,X1_48,X1_48) = X0_48
% 1.94/0.97      | k1_xboole_0 = X0_48 ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_7]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1152,plain,
% 1.94/0.97      ( k2_enumset1(X0_48,X0_48,X0_48,X1_48) = X2_48
% 1.94/0.97      | k2_enumset1(X1_48,X1_48,X1_48,X1_48) = X2_48
% 1.94/0.97      | k2_enumset1(X0_48,X0_48,X0_48,X0_48) = X2_48
% 1.94/0.97      | k1_xboole_0 = X2_48
% 1.94/0.97      | r1_tarski(X2_48,k2_enumset1(X0_48,X0_48,X0_48,X1_48)) != iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_820]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1816,plain,
% 1.94/0.97      ( k2_enumset1(sK1,sK1,sK1,sK1) = k1_relat_1(sK3)
% 1.94/0.97      | k1_relat_1(sK3) = k1_xboole_0 ),
% 1.94/0.97      inference(superposition,[status(thm)],[c_1541,c_1152]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_14,plain,
% 1.94/0.97      ( ~ v1_funct_1(X0)
% 1.94/0.97      | ~ v1_relat_1(X0)
% 1.94/0.97      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 1.94/0.97      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f79]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_24,negated_conjecture,
% 1.94/0.97      ( v1_funct_1(sK3) ),
% 1.94/0.97      inference(cnf_transformation,[],[f66]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_277,plain,
% 1.94/0.97      ( ~ v1_relat_1(X0)
% 1.94/0.97      | k2_enumset1(X1,X1,X1,X1) != k1_relat_1(X0)
% 1.94/0.97      | k2_enumset1(k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1),k1_funct_1(X0,X1)) = k2_relat_1(X0)
% 1.94/0.97      | sK3 != X0 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_14,c_24]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_278,plain,
% 1.94/0.97      ( ~ v1_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(X0,X0,X0,X0) != k1_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0),k1_funct_1(sK3,X0)) = k2_relat_1(sK3) ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_277]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_811,plain,
% 1.94/0.97      ( ~ v1_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(X0_48,X0_48,X0_48,X0_48) != k1_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48),k1_funct_1(sK3,X0_48)) = k2_relat_1(sK3) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_278]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_879,plain,
% 1.94/0.97      ( ~ v1_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) = k2_relat_1(sK3)
% 1.94/0.97      | k2_enumset1(sK1,sK1,sK1,sK1) != k1_relat_1(sK3) ),
% 1.94/0.97      inference(instantiation,[status(thm)],[c_811]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_830,plain,( X0_49 = X0_49 ),theory(equality) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1265,plain,
% 1.94/0.97      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
% 1.94/0.97      inference(instantiation,[status(thm)],[c_830]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_809,plain,
% 1.94/0.97      ( v1_relat_1(sK3)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48)) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_318]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1268,plain,
% 1.94/0.97      ( v1_relat_1(sK3)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) ),
% 1.94/0.97      inference(instantiation,[status(thm)],[c_809]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_18,plain,
% 1.94/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.94/0.97      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f64]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_296,plain,
% 1.94/0.97      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.94/0.97      | sK3 != X2 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_18,c_22]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_297,plain,
% 1.94/0.97      ( k2_relset_1(X0,X1,sK3) = k2_relat_1(sK3)
% 1.94/0.97      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_296]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_810,plain,
% 1.94/0.97      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(X0_48,X1_48))
% 1.94/0.97      | k2_relset_1(X0_48,X1_48,sK3) = k2_relat_1(sK3) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_297]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1275,plain,
% 1.94/0.97      ( k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) = k2_relat_1(sK3) ),
% 1.94/0.97      inference(equality_resolution,[status(thm)],[c_810]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_20,negated_conjecture,
% 1.94/0.97      ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
% 1.94/0.97      inference(cnf_transformation,[],[f80]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_814,negated_conjecture,
% 1.94/0.97      ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_20]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1277,plain,
% 1.94/0.97      ( k2_enumset1(k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1),k1_funct_1(sK3,sK1)) != k2_relat_1(sK3) ),
% 1.94/0.97      inference(demodulation,[status(thm)],[c_1275,c_814]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1938,plain,
% 1.94/0.97      ( k1_relat_1(sK3) = k1_xboole_0 ),
% 1.94/0.97      inference(global_propositional_subsumption,
% 1.94/0.97                [status(thm)],
% 1.94/0.97                [c_1816,c_879,c_1265,c_1268,c_1277]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_13,plain,
% 1.94/0.97      ( ~ v1_relat_1(X0)
% 1.94/0.97      | k1_relat_1(X0) != k1_xboole_0
% 1.94/0.97      | k1_xboole_0 = X0 ),
% 1.94/0.97      inference(cnf_transformation,[],[f58]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_816,plain,
% 1.94/0.97      ( ~ v1_relat_1(X0_48)
% 1.94/0.97      | k1_relat_1(X0_48) != k1_xboole_0
% 1.94/0.97      | k1_xboole_0 = X0_48 ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_13]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1154,plain,
% 1.94/0.97      ( k1_relat_1(X0_48) != k1_xboole_0
% 1.94/0.97      | k1_xboole_0 = X0_48
% 1.94/0.97      | v1_relat_1(X0_48) != iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_816]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1952,plain,
% 1.94/0.97      ( sK3 = k1_xboole_0 | v1_relat_1(sK3) != iProver_top ),
% 1.94/0.97      inference(superposition,[status(thm)],[c_1938,c_1154]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1269,plain,
% 1.94/0.97      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2))
% 1.94/0.97      | v1_relat_1(sK3) = iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_1268]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2019,plain,
% 1.94/0.97      ( sK3 = k1_xboole_0 ),
% 1.94/0.97      inference(global_propositional_subsumption,
% 1.94/0.97                [status(thm)],
% 1.94/0.97                [c_1952,c_1265,c_1269]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_19,plain,
% 1.94/0.97      ( ~ v1_funct_2(X0,X1,X2)
% 1.94/0.97      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.94/0.97      | ~ r2_hidden(X3,X1)
% 1.94/0.97      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.94/0.97      | ~ v1_funct_1(X0)
% 1.94/0.97      | k1_xboole_0 = X2 ),
% 1.94/0.97      inference(cnf_transformation,[],[f65]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_23,negated_conjecture,
% 1.94/0.97      ( v1_funct_2(sK3,k2_enumset1(sK1,sK1,sK1,sK1),sK2) ),
% 1.94/0.97      inference(cnf_transformation,[],[f82]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_256,plain,
% 1.94/0.97      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.94/0.97      | ~ r2_hidden(X3,X1)
% 1.94/0.97      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.94/0.97      | ~ v1_funct_1(X0)
% 1.94/0.97      | k2_enumset1(sK1,sK1,sK1,sK1) != X1
% 1.94/0.97      | sK2 != X2
% 1.94/0.97      | sK3 != X0
% 1.94/0.97      | k1_xboole_0 = X2 ),
% 1.94/0.97      inference(resolution_lifted,[status(thm)],[c_19,c_23]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_257,plain,
% 1.94/0.97      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2)))
% 1.94/0.97      | ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
% 1.94/0.97      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3))
% 1.94/0.97      | ~ v1_funct_1(sK3)
% 1.94/0.97      | k1_xboole_0 = sK2 ),
% 1.94/0.97      inference(unflattening,[status(thm)],[c_256]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_21,negated_conjecture,
% 1.94/0.97      ( k1_xboole_0 != sK2 ),
% 1.94/0.97      inference(cnf_transformation,[],[f69]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_261,plain,
% 1.94/0.97      ( ~ r2_hidden(X0,k2_enumset1(sK1,sK1,sK1,sK1))
% 1.94/0.97      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
% 1.94/0.97      inference(global_propositional_subsumption,
% 1.94/0.97                [status(thm)],
% 1.94/0.97                [c_257,c_24,c_22,c_21]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_812,plain,
% 1.94/0.97      ( ~ r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1))
% 1.94/0.97      | r2_hidden(k1_funct_1(sK3,X0_48),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_261]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1156,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 1.94/0.97      | r2_hidden(k1_funct_1(sK3,X0_48),k2_relset_1(k2_enumset1(sK1,sK1,sK1,sK1),sK2,sK3)) = iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_812]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1370,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 1.94/0.97      | r2_hidden(k1_funct_1(sK3,X0_48),k2_relat_1(sK3)) = iProver_top ),
% 1.94/0.97      inference(light_normalisation,[status(thm)],[c_1156,c_1275]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2025,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 1.94/0.97      | r2_hidden(k1_funct_1(k1_xboole_0,X0_48),k2_relat_1(k1_xboole_0)) = iProver_top ),
% 1.94/0.97      inference(demodulation,[status(thm)],[c_2019,c_1370]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_10,plain,
% 1.94/0.97      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 1.94/0.97      inference(cnf_transformation,[],[f57]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_819,plain,
% 1.94/0.97      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_10]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2045,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top
% 1.94/0.97      | r2_hidden(k1_funct_1(k1_xboole_0,X0_48),k1_xboole_0) = iProver_top ),
% 1.94/0.97      inference(light_normalisation,[status(thm)],[c_2025,c_819]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1,plain,
% 1.94/0.97      ( r1_tarski(k1_xboole_0,X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f44]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_826,plain,
% 1.94/0.97      ( r1_tarski(k1_xboole_0,X0_48) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_1]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1146,plain,
% 1.94/0.97      ( r1_tarski(k1_xboole_0,X0_48) = iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_826]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_15,plain,
% 1.94/0.97      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X1,X0) ),
% 1.94/0.97      inference(cnf_transformation,[],[f61]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_815,plain,
% 1.94/0.97      ( ~ r1_tarski(X0_48,X1_48) | ~ r2_hidden(X1_48,X0_48) ),
% 1.94/0.97      inference(subtyping,[status(esa)],[c_15]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1155,plain,
% 1.94/0.97      ( r1_tarski(X0_48,X1_48) != iProver_top
% 1.94/0.97      | r2_hidden(X1_48,X0_48) != iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_815]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_1702,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k1_xboole_0) != iProver_top ),
% 1.94/0.97      inference(superposition,[status(thm)],[c_1146,c_1155]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2294,plain,
% 1.94/0.97      ( r2_hidden(X0_48,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 1.94/0.97      inference(forward_subsumption_resolution,
% 1.94/0.97                [status(thm)],
% 1.94/0.97                [c_2045,c_1702]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2298,plain,
% 1.94/0.97      ( v1_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
% 1.94/0.97      inference(superposition,[status(thm)],[c_1145,c_2294]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_2,plain,
% 1.94/0.97      ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X1)) ),
% 1.94/0.97      inference(cnf_transformation,[],[f73]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_69,plain,
% 1.94/0.97      ( v1_xboole_0(k2_enumset1(X0,X0,X0,X1)) != iProver_top ),
% 1.94/0.97      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(c_71,plain,
% 1.94/0.97      ( v1_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 1.94/0.97      inference(instantiation,[status(thm)],[c_69]) ).
% 1.94/0.97  
% 1.94/0.97  cnf(contradiction,plain,
% 1.94/0.97      ( $false ),
% 1.94/0.97      inference(minisat,[status(thm)],[c_2298,c_71]) ).
% 1.94/0.97  
% 1.94/0.97  
% 1.94/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 1.94/0.97  
% 1.94/0.97  ------                               Statistics
% 1.94/0.97  
% 1.94/0.97  ------ General
% 1.94/0.97  
% 1.94/0.97  abstr_ref_over_cycles:                  0
% 1.94/0.97  abstr_ref_under_cycles:                 0
% 1.94/0.97  gc_basic_clause_elim:                   0
% 1.94/0.97  forced_gc_time:                         0
% 1.94/0.97  parsing_time:                           0.013
% 1.94/0.97  unif_index_cands_time:                  0.
% 1.94/0.97  unif_index_add_time:                    0.
% 1.94/0.97  orderings_time:                         0.
% 1.94/0.97  out_proof_time:                         0.012
% 1.94/0.97  total_time:                             0.135
% 1.94/0.97  num_of_symbols:                         54
% 1.94/0.97  num_of_terms:                           2400
% 1.94/0.97  
% 1.94/0.97  ------ Preprocessing
% 1.94/0.97  
% 1.94/0.97  num_of_splits:                          0
% 1.94/0.97  num_of_split_atoms:                     0
% 1.94/0.97  num_of_reused_defs:                     0
% 1.94/0.97  num_eq_ax_congr_red:                    6
% 1.94/0.97  num_of_sem_filtered_clauses:            1
% 1.94/0.97  num_of_subtypes:                        3
% 1.94/0.97  monotx_restored_types:                  0
% 1.94/0.97  sat_num_of_epr_types:                   0
% 1.94/0.97  sat_num_of_non_cyclic_types:            0
% 1.94/0.97  sat_guarded_non_collapsed_types:        1
% 1.94/0.97  num_pure_diseq_elim:                    0
% 1.94/0.97  simp_replaced_by:                       0
% 1.94/0.97  res_preprocessed:                       118
% 1.94/0.97  prep_upred:                             0
% 1.94/0.97  prep_unflattend:                        55
% 1.94/0.97  smt_new_axioms:                         0
% 1.94/0.97  pred_elim_cands:                        4
% 1.94/0.97  pred_elim:                              4
% 1.94/0.97  pred_elim_cl:                           5
% 1.94/0.97  pred_elim_cycles:                       10
% 1.94/0.97  merged_defs:                            0
% 1.94/0.97  merged_defs_ncl:                        0
% 1.94/0.97  bin_hyper_res:                          0
% 1.94/0.97  prep_cycles:                            4
% 1.94/0.97  pred_elim_time:                         0.015
% 1.94/0.97  splitting_time:                         0.
% 1.94/0.97  sem_filter_time:                        0.
% 1.94/0.97  monotx_time:                            0.
% 1.94/0.97  subtype_inf_time:                       0.
% 1.94/0.97  
% 1.94/0.97  ------ Problem properties
% 1.94/0.97  
% 1.94/0.97  clauses:                                20
% 1.94/0.97  conjectures:                            2
% 1.94/0.97  epr:                                    3
% 1.94/0.97  horn:                                   18
% 1.94/0.97  ground:                                 4
% 1.94/0.97  unary:                                  10
% 1.94/0.97  binary:                                 6
% 1.94/0.97  lits:                                   36
% 1.94/0.97  lits_eq:                                18
% 1.94/0.97  fd_pure:                                0
% 1.94/0.97  fd_pseudo:                              0
% 1.94/0.97  fd_cond:                                2
% 1.94/0.97  fd_pseudo_cond:                         1
% 1.94/0.97  ac_symbols:                             0
% 1.94/0.97  
% 1.94/0.97  ------ Propositional Solver
% 1.94/0.97  
% 1.94/0.97  prop_solver_calls:                      27
% 1.94/0.97  prop_fast_solver_calls:                 643
% 1.94/0.97  smt_solver_calls:                       0
% 1.94/0.97  smt_fast_solver_calls:                  0
% 1.94/0.97  prop_num_of_clauses:                    706
% 1.94/0.97  prop_preprocess_simplified:             3613
% 1.94/0.97  prop_fo_subsumed:                       9
% 1.94/0.97  prop_solver_time:                       0.
% 1.94/0.97  smt_solver_time:                        0.
% 1.94/0.97  smt_fast_solver_time:                   0.
% 1.94/0.97  prop_fast_solver_time:                  0.
% 1.94/0.97  prop_unsat_core_time:                   0.
% 1.94/0.97  
% 1.94/0.97  ------ QBF
% 1.94/0.97  
% 1.94/0.97  qbf_q_res:                              0
% 1.94/0.97  qbf_num_tautologies:                    0
% 1.94/0.97  qbf_prep_cycles:                        0
% 1.94/0.97  
% 1.94/0.97  ------ BMC1
% 1.94/0.97  
% 1.94/0.97  bmc1_current_bound:                     -1
% 1.94/0.97  bmc1_last_solved_bound:                 -1
% 1.94/0.97  bmc1_unsat_core_size:                   -1
% 1.94/0.97  bmc1_unsat_core_parents_size:           -1
% 1.94/0.97  bmc1_merge_next_fun:                    0
% 1.94/0.97  bmc1_unsat_core_clauses_time:           0.
% 1.94/0.97  
% 1.94/0.97  ------ Instantiation
% 1.94/0.97  
% 1.94/0.97  inst_num_of_clauses:                    233
% 1.94/0.97  inst_num_in_passive:                    52
% 1.94/0.97  inst_num_in_active:                     165
% 1.94/0.97  inst_num_in_unprocessed:                16
% 1.94/0.97  inst_num_of_loops:                      170
% 1.94/0.97  inst_num_of_learning_restarts:          0
% 1.94/0.97  inst_num_moves_active_passive:          2
% 1.94/0.97  inst_lit_activity:                      0
% 1.94/0.97  inst_lit_activity_moves:                0
% 1.94/0.97  inst_num_tautologies:                   0
% 1.94/0.97  inst_num_prop_implied:                  0
% 1.94/0.97  inst_num_existing_simplified:           0
% 1.94/0.97  inst_num_eq_res_simplified:             0
% 1.94/0.97  inst_num_child_elim:                    0
% 1.94/0.97  inst_num_of_dismatching_blockings:      63
% 1.94/0.97  inst_num_of_non_proper_insts:           208
% 1.94/0.97  inst_num_of_duplicates:                 0
% 1.94/0.97  inst_inst_num_from_inst_to_res:         0
% 1.94/0.97  inst_dismatching_checking_time:         0.
% 1.94/0.97  
% 1.94/0.97  ------ Resolution
% 1.94/0.97  
% 1.94/0.97  res_num_of_clauses:                     0
% 1.94/0.97  res_num_in_passive:                     0
% 1.94/0.97  res_num_in_active:                      0
% 1.94/0.97  res_num_of_loops:                       122
% 1.94/0.97  res_forward_subset_subsumed:            40
% 1.94/0.97  res_backward_subset_subsumed:           2
% 1.94/0.97  res_forward_subsumed:                   2
% 1.94/0.97  res_backward_subsumed:                  0
% 1.94/0.97  res_forward_subsumption_resolution:     0
% 1.94/0.97  res_backward_subsumption_resolution:    0
% 1.94/0.97  res_clause_to_clause_subsumption:       66
% 1.94/0.97  res_orphan_elimination:                 0
% 1.94/0.97  res_tautology_del:                      51
% 1.94/0.97  res_num_eq_res_simplified:              0
% 1.94/0.97  res_num_sel_changes:                    0
% 1.94/0.97  res_moves_from_active_to_pass:          0
% 1.94/0.97  
% 1.94/0.97  ------ Superposition
% 1.94/0.97  
% 1.94/0.97  sup_time_total:                         0.
% 1.94/0.97  sup_time_generating:                    0.
% 1.94/0.97  sup_time_sim_full:                      0.
% 1.94/0.97  sup_time_sim_immed:                     0.
% 1.94/0.97  
% 1.94/0.97  sup_num_of_clauses:                     28
% 1.94/0.97  sup_num_in_active:                      20
% 1.94/0.97  sup_num_in_passive:                     8
% 1.94/0.97  sup_num_of_loops:                       32
% 1.94/0.97  sup_fw_superposition:                   14
% 1.94/0.97  sup_bw_superposition:                   2
% 1.94/0.97  sup_immediate_simplified:               9
% 1.94/0.97  sup_given_eliminated:                   0
% 1.94/0.97  comparisons_done:                       0
% 1.94/0.97  comparisons_avoided:                    0
% 1.94/0.97  
% 1.94/0.97  ------ Simplifications
% 1.94/0.97  
% 1.94/0.97  
% 1.94/0.97  sim_fw_subset_subsumed:                 1
% 1.94/0.97  sim_bw_subset_subsumed:                 0
% 1.94/0.97  sim_fw_subsumed:                        3
% 1.94/0.97  sim_bw_subsumed:                        0
% 1.94/0.97  sim_fw_subsumption_res:                 1
% 1.94/0.97  sim_bw_subsumption_res:                 0
% 1.94/0.97  sim_tautology_del:                      0
% 1.94/0.97  sim_eq_tautology_del:                   5
% 1.94/0.97  sim_eq_res_simp:                        0
% 1.94/0.97  sim_fw_demodulated:                     0
% 1.94/0.97  sim_bw_demodulated:                     13
% 1.94/0.97  sim_light_normalised:                   7
% 1.94/0.97  sim_joinable_taut:                      0
% 1.94/0.97  sim_joinable_simp:                      0
% 1.94/0.97  sim_ac_normalised:                      0
% 1.94/0.97  sim_smt_subsumption:                    0
% 1.94/0.97  
%------------------------------------------------------------------------------
