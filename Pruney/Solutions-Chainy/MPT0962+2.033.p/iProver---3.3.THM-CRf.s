%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:00:15 EST 2020

% Result     : Theorem 2.61s
% Output     : CNFRefutation 2.61s
% Verified   : 
% Statistics : Number of formulae       :  134 ( 847 expanded)
%              Number of clauses        :   78 ( 300 expanded)
%              Number of leaves         :   16 ( 154 expanded)
%              Depth                    :   26
%              Number of atoms          :  391 (3535 expanded)
%              Number of equality atoms :  150 ( 698 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f32])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f68,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f40])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( r1_tarski(k3_subset_1(X0,X1),X1)
      <=> k2_subset_1(X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k3_subset_1(X0,X1),X1)
      <=> k2_subset_1(X0) = X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( ( r1_tarski(k3_subset_1(X0,X1),X1)
          | k2_subset_1(X0) != X1 )
        & ( k2_subset_1(X0) = X1
          | ~ r1_tarski(k3_subset_1(X0,X1),X1) ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_subset_1(X0,X1),X1)
      | k2_subset_1(X0) != X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f69,plain,(
    ! [X0] :
      ( r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0))
      | ~ m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f48])).

fof(f6,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f5,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f19])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(k2_relat_1(X2),X1)
          & r1_tarski(k1_relat_1(X2),X0) )
       => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f15,conjecture,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( v1_funct_1(X1)
          & v1_relat_1(X1) )
       => ( r1_tarski(k2_relat_1(X1),X0)
         => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
            & v1_funct_2(X1,k1_relat_1(X1),X0)
            & v1_funct_1(X1) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f30,plain,(
    ? [X0,X1] :
      ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
        | ~ v1_funct_1(X1) )
      & r1_tarski(k2_relat_1(X1),X0)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f31,plain,(
    ? [X0,X1] :
      ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
        | ~ v1_funct_1(X1) )
      & r1_tarski(k2_relat_1(X1),X0)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f30])).

fof(f37,plain,
    ( ? [X0,X1] :
        ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
          | ~ v1_funct_1(X1) )
        & r1_tarski(k2_relat_1(X1),X0)
        & v1_funct_1(X1)
        & v1_relat_1(X1) )
   => ( ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
        | ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
        | ~ v1_funct_1(sK1) )
      & r1_tarski(k2_relat_1(sK1),sK0)
      & v1_funct_1(sK1)
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
      | ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
      | ~ v1_funct_1(sK1) )
    & r1_tarski(k2_relat_1(sK1),sK0)
    & v1_funct_1(sK1)
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f31,f37])).

fof(f63,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f26])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f66,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
    | ~ v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f64,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f65,plain,(
    r1_tarski(k2_relat_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f9,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f4,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_xboole_0(X1,X2)
              | ~ r1_tarski(X1,k3_subset_1(X0,X2)) )
            & ( r1_tarski(X1,k3_subset_1(X0,X2))
              | ~ r1_xboole_0(X1,X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,k3_subset_1(X0,X2))
      | ~ r1_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f42,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f14,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f29,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f61,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_3,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1020,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_8,plain,
    ( ~ m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))
    | r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_7,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_171,plain,
    ( r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8,c_7])).

cnf(c_1010,plain,
    ( r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_171])).

cnf(c_6,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1036,plain,
    ( r1_tarski(k3_subset_1(X0,X0),X0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1010,c_6])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X2)
    | r1_tarski(X0,X2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1019,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X2) != iProver_top
    | r1_tarski(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1949,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k3_subset_1(X0,X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1036,c_1019])).

cnf(c_14,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_27,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_328,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_27])).

cnf(c_329,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r1_tarski(k2_relat_1(sK1),X1)
    | ~ r1_tarski(k1_relat_1(sK1),X0) ),
    inference(unflattening,[status(thm)],[c_328])).

cnf(c_1008,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
    | r1_tarski(k2_relat_1(sK1),X1) != iProver_top
    | r1_tarski(k1_relat_1(sK1),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_329])).

cnf(c_18,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_24,negated_conjecture,
    ( ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | ~ v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_26,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_152,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_24,c_26])).

cnf(c_153,negated_conjecture,
    ( ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) ),
    inference(renaming,[status(thm)],[c_152])).

cnf(c_427,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_relat_1(sK1) != X1
    | sK0 != X2
    | sK1 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_153])).

cnf(c_428,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | k1_relset_1(k1_relat_1(sK1),sK0,sK1) != k1_relat_1(sK1)
    | k1_xboole_0 = sK0 ),
    inference(unflattening,[status(thm)],[c_427])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_436,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | k1_xboole_0 = sK0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_428,c_13])).

cnf(c_1003,plain,
    ( k1_xboole_0 = sK0
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_436])).

cnf(c_1277,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(k2_relat_1(sK1),sK0) != iProver_top
    | r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1008,c_1003])).

cnf(c_25,negated_conjecture,
    ( r1_tarski(k2_relat_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1278,plain,
    ( ~ r1_tarski(k2_relat_1(sK1),sK0)
    | ~ r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1))
    | sK0 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1277])).

cnf(c_1285,plain,
    ( r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1321,plain,
    ( sK0 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1277,c_25,c_1278,c_1285])).

cnf(c_1011,plain,
    ( r1_tarski(k2_relat_1(sK1),sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_1327,plain,
    ( r1_tarski(k2_relat_1(sK1),k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1321,c_1011])).

cnf(c_1948,plain,
    ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1327,c_1019])).

cnf(c_2209,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X1) = iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1948,c_1019])).

cnf(c_3439,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X1) = iProver_top
    | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1949,c_2209])).

cnf(c_12,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_63,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1017,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1033,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1017,c_6])).

cnf(c_1208,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(k2_relat_1(sK1),X0)
    | r1_tarski(k2_relat_1(sK1),X1) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1209,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X0) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1208])).

cnf(c_5,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1018,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_0,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1022,plain,
    ( r1_xboole_0(X0,X1) != iProver_top
    | r1_xboole_0(X1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1772,plain,
    ( r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1018,c_1022])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,k3_subset_1(X1,X2))
    | ~ r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1014,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,k3_subset_1(X1,X2)) = iProver_top
    | r1_xboole_0(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2569,plain,
    ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top
    | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1036,c_2209])).

cnf(c_3185,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X0) = iProver_top
    | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1014,c_2569])).

cnf(c_3746,plain,
    ( r1_tarski(k2_relat_1(sK1),X1) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3439,c_63,c_1033,c_1209,c_1772,c_3185])).

cnf(c_3747,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k2_relat_1(sK1),X1) = iProver_top ),
    inference(renaming,[status(thm)],[c_3746])).

cnf(c_3755,plain,
    ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1036,c_3747])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1021,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_4121,plain,
    ( k2_relat_1(sK1) = X0
    | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3755,c_1021])).

cnf(c_2210,plain,
    ( k2_relat_1(sK1) = X0
    | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1948,c_1021])).

cnf(c_22,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_302,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_relat_1(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_26])).

cnf(c_303,plain,
    ( v1_funct_2(sK1,k1_relat_1(sK1),k2_relat_1(sK1))
    | ~ v1_relat_1(sK1) ),
    inference(unflattening,[status(thm)],[c_302])).

cnf(c_305,plain,
    ( v1_funct_2(sK1,k1_relat_1(sK1),k2_relat_1(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_303,c_27])).

cnf(c_451,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | k2_relat_1(sK1) != sK0
    | k1_relat_1(sK1) != k1_relat_1(sK1)
    | sK1 != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_153,c_305])).

cnf(c_516,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | k2_relat_1(sK1) != sK0 ),
    inference(equality_resolution_simp,[status(thm)],[c_451])).

cnf(c_1199,plain,
    ( ~ r1_tarski(k2_relat_1(sK1),k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,k2_relat_1(sK1))
    | k2_relat_1(sK1) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1200,plain,
    ( k2_relat_1(sK1) = k1_xboole_0
    | r1_tarski(k2_relat_1(sK1),k1_xboole_0) != iProver_top
    | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1199])).

cnf(c_640,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1282,plain,
    ( k2_relat_1(sK1) != X0
    | k2_relat_1(sK1) = sK0
    | sK0 != X0 ),
    inference(instantiation,[status(thm)],[c_640])).

cnf(c_1283,plain,
    ( k2_relat_1(sK1) = sK0
    | k2_relat_1(sK1) != k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1282])).

cnf(c_1179,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0)))
    | ~ r1_tarski(k2_relat_1(sK1),sK0)
    | ~ r1_tarski(k1_relat_1(sK1),X0) ),
    inference(instantiation,[status(thm)],[c_329])).

cnf(c_1284,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
    | ~ r1_tarski(k2_relat_1(sK1),sK0)
    | ~ r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_1179])).

cnf(c_1491,plain,
    ( ~ r1_tarski(X0,k2_relat_1(sK1))
    | ~ r1_tarski(k1_xboole_0,X0)
    | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1492,plain,
    ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top
    | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1491])).

cnf(c_2464,plain,
    ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2210,c_25,c_516,c_1200,c_1278,c_1283,c_1284,c_1285,c_1327,c_1492])).

cnf(c_3444,plain,
    ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
    | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1949,c_2464])).

cnf(c_3743,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
    | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
    | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1014,c_3444])).

cnf(c_4535,plain,
    ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4121,c_63,c_1033,c_1772,c_3743])).

cnf(c_4540,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_1020,c_4535])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:08:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.61/1.02  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.61/1.02  
% 2.61/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.61/1.02  
% 2.61/1.02  ------  iProver source info
% 2.61/1.02  
% 2.61/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.61/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.61/1.02  git: non_committed_changes: false
% 2.61/1.02  git: last_make_outside_of_git: false
% 2.61/1.02  
% 2.61/1.02  ------ 
% 2.61/1.02  
% 2.61/1.02  ------ Input Options
% 2.61/1.02  
% 2.61/1.02  --out_options                           all
% 2.61/1.02  --tptp_safe_out                         true
% 2.61/1.02  --problem_path                          ""
% 2.61/1.02  --include_path                          ""
% 2.61/1.02  --clausifier                            res/vclausify_rel
% 2.61/1.02  --clausifier_options                    --mode clausify
% 2.61/1.02  --stdin                                 false
% 2.61/1.02  --stats_out                             all
% 2.61/1.02  
% 2.61/1.02  ------ General Options
% 2.61/1.02  
% 2.61/1.02  --fof                                   false
% 2.61/1.02  --time_out_real                         305.
% 2.61/1.02  --time_out_virtual                      -1.
% 2.61/1.02  --symbol_type_check                     false
% 2.61/1.02  --clausify_out                          false
% 2.61/1.02  --sig_cnt_out                           false
% 2.61/1.02  --trig_cnt_out                          false
% 2.61/1.02  --trig_cnt_out_tolerance                1.
% 2.61/1.02  --trig_cnt_out_sk_spl                   false
% 2.61/1.02  --abstr_cl_out                          false
% 2.61/1.02  
% 2.61/1.02  ------ Global Options
% 2.61/1.02  
% 2.61/1.02  --schedule                              default
% 2.61/1.02  --add_important_lit                     false
% 2.61/1.02  --prop_solver_per_cl                    1000
% 2.61/1.02  --min_unsat_core                        false
% 2.61/1.02  --soft_assumptions                      false
% 2.61/1.02  --soft_lemma_size                       3
% 2.61/1.02  --prop_impl_unit_size                   0
% 2.61/1.02  --prop_impl_unit                        []
% 2.61/1.02  --share_sel_clauses                     true
% 2.61/1.02  --reset_solvers                         false
% 2.61/1.02  --bc_imp_inh                            [conj_cone]
% 2.61/1.02  --conj_cone_tolerance                   3.
% 2.61/1.02  --extra_neg_conj                        none
% 2.61/1.02  --large_theory_mode                     true
% 2.61/1.02  --prolific_symb_bound                   200
% 2.61/1.02  --lt_threshold                          2000
% 2.61/1.02  --clause_weak_htbl                      true
% 2.61/1.02  --gc_record_bc_elim                     false
% 2.61/1.02  
% 2.61/1.02  ------ Preprocessing Options
% 2.61/1.02  
% 2.61/1.02  --preprocessing_flag                    true
% 2.61/1.02  --time_out_prep_mult                    0.1
% 2.61/1.02  --splitting_mode                        input
% 2.61/1.02  --splitting_grd                         true
% 2.61/1.02  --splitting_cvd                         false
% 2.61/1.02  --splitting_cvd_svl                     false
% 2.61/1.02  --splitting_nvd                         32
% 2.61/1.02  --sub_typing                            true
% 2.61/1.02  --prep_gs_sim                           true
% 2.61/1.02  --prep_unflatten                        true
% 2.61/1.02  --prep_res_sim                          true
% 2.61/1.02  --prep_upred                            true
% 2.61/1.02  --prep_sem_filter                       exhaustive
% 2.61/1.02  --prep_sem_filter_out                   false
% 2.61/1.02  --pred_elim                             true
% 2.61/1.02  --res_sim_input                         true
% 2.61/1.02  --eq_ax_congr_red                       true
% 2.61/1.02  --pure_diseq_elim                       true
% 2.61/1.02  --brand_transform                       false
% 2.61/1.02  --non_eq_to_eq                          false
% 2.61/1.02  --prep_def_merge                        true
% 2.61/1.02  --prep_def_merge_prop_impl              false
% 2.61/1.02  --prep_def_merge_mbd                    true
% 2.61/1.02  --prep_def_merge_tr_red                 false
% 2.61/1.02  --prep_def_merge_tr_cl                  false
% 2.61/1.02  --smt_preprocessing                     true
% 2.61/1.02  --smt_ac_axioms                         fast
% 2.61/1.02  --preprocessed_out                      false
% 2.61/1.02  --preprocessed_stats                    false
% 2.61/1.02  
% 2.61/1.02  ------ Abstraction refinement Options
% 2.61/1.02  
% 2.61/1.02  --abstr_ref                             []
% 2.61/1.02  --abstr_ref_prep                        false
% 2.61/1.02  --abstr_ref_until_sat                   false
% 2.61/1.02  --abstr_ref_sig_restrict                funpre
% 2.61/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.61/1.02  --abstr_ref_under                       []
% 2.61/1.02  
% 2.61/1.02  ------ SAT Options
% 2.61/1.02  
% 2.61/1.02  --sat_mode                              false
% 2.61/1.02  --sat_fm_restart_options                ""
% 2.61/1.02  --sat_gr_def                            false
% 2.61/1.02  --sat_epr_types                         true
% 2.61/1.02  --sat_non_cyclic_types                  false
% 2.61/1.02  --sat_finite_models                     false
% 2.61/1.02  --sat_fm_lemmas                         false
% 2.61/1.02  --sat_fm_prep                           false
% 2.61/1.03  --sat_fm_uc_incr                        true
% 2.61/1.03  --sat_out_model                         small
% 2.61/1.03  --sat_out_clauses                       false
% 2.61/1.03  
% 2.61/1.03  ------ QBF Options
% 2.61/1.03  
% 2.61/1.03  --qbf_mode                              false
% 2.61/1.03  --qbf_elim_univ                         false
% 2.61/1.03  --qbf_dom_inst                          none
% 2.61/1.03  --qbf_dom_pre_inst                      false
% 2.61/1.03  --qbf_sk_in                             false
% 2.61/1.03  --qbf_pred_elim                         true
% 2.61/1.03  --qbf_split                             512
% 2.61/1.03  
% 2.61/1.03  ------ BMC1 Options
% 2.61/1.03  
% 2.61/1.03  --bmc1_incremental                      false
% 2.61/1.03  --bmc1_axioms                           reachable_all
% 2.61/1.03  --bmc1_min_bound                        0
% 2.61/1.03  --bmc1_max_bound                        -1
% 2.61/1.03  --bmc1_max_bound_default                -1
% 2.61/1.03  --bmc1_symbol_reachability              true
% 2.61/1.03  --bmc1_property_lemmas                  false
% 2.61/1.03  --bmc1_k_induction                      false
% 2.61/1.03  --bmc1_non_equiv_states                 false
% 2.61/1.03  --bmc1_deadlock                         false
% 2.61/1.03  --bmc1_ucm                              false
% 2.61/1.03  --bmc1_add_unsat_core                   none
% 2.61/1.03  --bmc1_unsat_core_children              false
% 2.61/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 2.61/1.03  --bmc1_out_stat                         full
% 2.61/1.03  --bmc1_ground_init                      false
% 2.61/1.03  --bmc1_pre_inst_next_state              false
% 2.61/1.03  --bmc1_pre_inst_state                   false
% 2.61/1.03  --bmc1_pre_inst_reach_state             false
% 2.61/1.03  --bmc1_out_unsat_core                   false
% 2.61/1.03  --bmc1_aig_witness_out                  false
% 2.61/1.03  --bmc1_verbose                          false
% 2.61/1.03  --bmc1_dump_clauses_tptp                false
% 2.61/1.03  --bmc1_dump_unsat_core_tptp             false
% 2.61/1.03  --bmc1_dump_file                        -
% 2.61/1.03  --bmc1_ucm_expand_uc_limit              128
% 2.61/1.03  --bmc1_ucm_n_expand_iterations          6
% 2.61/1.03  --bmc1_ucm_extend_mode                  1
% 2.61/1.03  --bmc1_ucm_init_mode                    2
% 2.61/1.03  --bmc1_ucm_cone_mode                    none
% 2.61/1.03  --bmc1_ucm_reduced_relation_type        0
% 2.61/1.03  --bmc1_ucm_relax_model                  4
% 2.61/1.03  --bmc1_ucm_full_tr_after_sat            true
% 2.61/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 2.61/1.03  --bmc1_ucm_layered_model                none
% 2.61/1.03  --bmc1_ucm_max_lemma_size               10
% 2.61/1.03  
% 2.61/1.03  ------ AIG Options
% 2.61/1.03  
% 2.61/1.03  --aig_mode                              false
% 2.61/1.03  
% 2.61/1.03  ------ Instantiation Options
% 2.61/1.03  
% 2.61/1.03  --instantiation_flag                    true
% 2.61/1.03  --inst_sos_flag                         false
% 2.61/1.03  --inst_sos_phase                        true
% 2.61/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.61/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.61/1.03  --inst_lit_sel_side                     num_symb
% 2.61/1.03  --inst_solver_per_active                1400
% 2.61/1.03  --inst_solver_calls_frac                1.
% 2.61/1.03  --inst_passive_queue_type               priority_queues
% 2.61/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.61/1.03  --inst_passive_queues_freq              [25;2]
% 2.61/1.03  --inst_dismatching                      true
% 2.61/1.03  --inst_eager_unprocessed_to_passive     true
% 2.61/1.03  --inst_prop_sim_given                   true
% 2.61/1.03  --inst_prop_sim_new                     false
% 2.61/1.03  --inst_subs_new                         false
% 2.61/1.03  --inst_eq_res_simp                      false
% 2.61/1.03  --inst_subs_given                       false
% 2.61/1.03  --inst_orphan_elimination               true
% 2.61/1.03  --inst_learning_loop_flag               true
% 2.61/1.03  --inst_learning_start                   3000
% 2.61/1.03  --inst_learning_factor                  2
% 2.61/1.03  --inst_start_prop_sim_after_learn       3
% 2.61/1.03  --inst_sel_renew                        solver
% 2.61/1.03  --inst_lit_activity_flag                true
% 2.61/1.03  --inst_restr_to_given                   false
% 2.61/1.03  --inst_activity_threshold               500
% 2.61/1.03  --inst_out_proof                        true
% 2.61/1.03  
% 2.61/1.03  ------ Resolution Options
% 2.61/1.03  
% 2.61/1.03  --resolution_flag                       true
% 2.61/1.03  --res_lit_sel                           adaptive
% 2.61/1.03  --res_lit_sel_side                      none
% 2.61/1.03  --res_ordering                          kbo
% 2.61/1.03  --res_to_prop_solver                    active
% 2.61/1.03  --res_prop_simpl_new                    false
% 2.61/1.03  --res_prop_simpl_given                  true
% 2.61/1.03  --res_passive_queue_type                priority_queues
% 2.61/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.61/1.03  --res_passive_queues_freq               [15;5]
% 2.61/1.03  --res_forward_subs                      full
% 2.61/1.03  --res_backward_subs                     full
% 2.61/1.03  --res_forward_subs_resolution           true
% 2.61/1.03  --res_backward_subs_resolution          true
% 2.61/1.03  --res_orphan_elimination                true
% 2.61/1.03  --res_time_limit                        2.
% 2.61/1.03  --res_out_proof                         true
% 2.61/1.03  
% 2.61/1.03  ------ Superposition Options
% 2.61/1.03  
% 2.61/1.03  --superposition_flag                    true
% 2.61/1.03  --sup_passive_queue_type                priority_queues
% 2.61/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.61/1.03  --sup_passive_queues_freq               [8;1;4]
% 2.61/1.03  --demod_completeness_check              fast
% 2.61/1.03  --demod_use_ground                      true
% 2.61/1.03  --sup_to_prop_solver                    passive
% 2.61/1.03  --sup_prop_simpl_new                    true
% 2.61/1.03  --sup_prop_simpl_given                  true
% 2.61/1.03  --sup_fun_splitting                     false
% 2.61/1.03  --sup_smt_interval                      50000
% 2.61/1.03  
% 2.61/1.03  ------ Superposition Simplification Setup
% 2.61/1.03  
% 2.61/1.03  --sup_indices_passive                   []
% 2.61/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 2.61/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_full_bw                           [BwDemod]
% 2.61/1.03  --sup_immed_triv                        [TrivRules]
% 2.61/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.61/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_immed_bw_main                     []
% 2.61/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 2.61/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/1.03  
% 2.61/1.03  ------ Combination Options
% 2.61/1.03  
% 2.61/1.03  --comb_res_mult                         3
% 2.61/1.03  --comb_sup_mult                         2
% 2.61/1.03  --comb_inst_mult                        10
% 2.61/1.03  
% 2.61/1.03  ------ Debug Options
% 2.61/1.03  
% 2.61/1.03  --dbg_backtrace                         false
% 2.61/1.03  --dbg_dump_prop_clauses                 false
% 2.61/1.03  --dbg_dump_prop_clauses_file            -
% 2.61/1.03  --dbg_out_stat                          false
% 2.61/1.03  ------ Parsing...
% 2.61/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.61/1.03  
% 2.61/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.61/1.03  
% 2.61/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.61/1.03  
% 2.61/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.61/1.03  ------ Proving...
% 2.61/1.03  ------ Problem Properties 
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  clauses                                 23
% 2.61/1.03  conjectures                             1
% 2.61/1.03  EPR                                     5
% 2.61/1.03  Horn                                    21
% 2.61/1.03  unary                                   8
% 2.61/1.03  binary                                  5
% 2.61/1.03  lits                                    53
% 2.61/1.03  lits eq                                 18
% 2.61/1.03  fd_pure                                 0
% 2.61/1.03  fd_pseudo                               0
% 2.61/1.03  fd_cond                                 0
% 2.61/1.03  fd_pseudo_cond                          2
% 2.61/1.03  AC symbols                              0
% 2.61/1.03  
% 2.61/1.03  ------ Schedule dynamic 5 is on 
% 2.61/1.03  
% 2.61/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  ------ 
% 2.61/1.03  Current options:
% 2.61/1.03  ------ 
% 2.61/1.03  
% 2.61/1.03  ------ Input Options
% 2.61/1.03  
% 2.61/1.03  --out_options                           all
% 2.61/1.03  --tptp_safe_out                         true
% 2.61/1.03  --problem_path                          ""
% 2.61/1.03  --include_path                          ""
% 2.61/1.03  --clausifier                            res/vclausify_rel
% 2.61/1.03  --clausifier_options                    --mode clausify
% 2.61/1.03  --stdin                                 false
% 2.61/1.03  --stats_out                             all
% 2.61/1.03  
% 2.61/1.03  ------ General Options
% 2.61/1.03  
% 2.61/1.03  --fof                                   false
% 2.61/1.03  --time_out_real                         305.
% 2.61/1.03  --time_out_virtual                      -1.
% 2.61/1.03  --symbol_type_check                     false
% 2.61/1.03  --clausify_out                          false
% 2.61/1.03  --sig_cnt_out                           false
% 2.61/1.03  --trig_cnt_out                          false
% 2.61/1.03  --trig_cnt_out_tolerance                1.
% 2.61/1.03  --trig_cnt_out_sk_spl                   false
% 2.61/1.03  --abstr_cl_out                          false
% 2.61/1.03  
% 2.61/1.03  ------ Global Options
% 2.61/1.03  
% 2.61/1.03  --schedule                              default
% 2.61/1.03  --add_important_lit                     false
% 2.61/1.03  --prop_solver_per_cl                    1000
% 2.61/1.03  --min_unsat_core                        false
% 2.61/1.03  --soft_assumptions                      false
% 2.61/1.03  --soft_lemma_size                       3
% 2.61/1.03  --prop_impl_unit_size                   0
% 2.61/1.03  --prop_impl_unit                        []
% 2.61/1.03  --share_sel_clauses                     true
% 2.61/1.03  --reset_solvers                         false
% 2.61/1.03  --bc_imp_inh                            [conj_cone]
% 2.61/1.03  --conj_cone_tolerance                   3.
% 2.61/1.03  --extra_neg_conj                        none
% 2.61/1.03  --large_theory_mode                     true
% 2.61/1.03  --prolific_symb_bound                   200
% 2.61/1.03  --lt_threshold                          2000
% 2.61/1.03  --clause_weak_htbl                      true
% 2.61/1.03  --gc_record_bc_elim                     false
% 2.61/1.03  
% 2.61/1.03  ------ Preprocessing Options
% 2.61/1.03  
% 2.61/1.03  --preprocessing_flag                    true
% 2.61/1.03  --time_out_prep_mult                    0.1
% 2.61/1.03  --splitting_mode                        input
% 2.61/1.03  --splitting_grd                         true
% 2.61/1.03  --splitting_cvd                         false
% 2.61/1.03  --splitting_cvd_svl                     false
% 2.61/1.03  --splitting_nvd                         32
% 2.61/1.03  --sub_typing                            true
% 2.61/1.03  --prep_gs_sim                           true
% 2.61/1.03  --prep_unflatten                        true
% 2.61/1.03  --prep_res_sim                          true
% 2.61/1.03  --prep_upred                            true
% 2.61/1.03  --prep_sem_filter                       exhaustive
% 2.61/1.03  --prep_sem_filter_out                   false
% 2.61/1.03  --pred_elim                             true
% 2.61/1.03  --res_sim_input                         true
% 2.61/1.03  --eq_ax_congr_red                       true
% 2.61/1.03  --pure_diseq_elim                       true
% 2.61/1.03  --brand_transform                       false
% 2.61/1.03  --non_eq_to_eq                          false
% 2.61/1.03  --prep_def_merge                        true
% 2.61/1.03  --prep_def_merge_prop_impl              false
% 2.61/1.03  --prep_def_merge_mbd                    true
% 2.61/1.03  --prep_def_merge_tr_red                 false
% 2.61/1.03  --prep_def_merge_tr_cl                  false
% 2.61/1.03  --smt_preprocessing                     true
% 2.61/1.03  --smt_ac_axioms                         fast
% 2.61/1.03  --preprocessed_out                      false
% 2.61/1.03  --preprocessed_stats                    false
% 2.61/1.03  
% 2.61/1.03  ------ Abstraction refinement Options
% 2.61/1.03  
% 2.61/1.03  --abstr_ref                             []
% 2.61/1.03  --abstr_ref_prep                        false
% 2.61/1.03  --abstr_ref_until_sat                   false
% 2.61/1.03  --abstr_ref_sig_restrict                funpre
% 2.61/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 2.61/1.03  --abstr_ref_under                       []
% 2.61/1.03  
% 2.61/1.03  ------ SAT Options
% 2.61/1.03  
% 2.61/1.03  --sat_mode                              false
% 2.61/1.03  --sat_fm_restart_options                ""
% 2.61/1.03  --sat_gr_def                            false
% 2.61/1.03  --sat_epr_types                         true
% 2.61/1.03  --sat_non_cyclic_types                  false
% 2.61/1.03  --sat_finite_models                     false
% 2.61/1.03  --sat_fm_lemmas                         false
% 2.61/1.03  --sat_fm_prep                           false
% 2.61/1.03  --sat_fm_uc_incr                        true
% 2.61/1.03  --sat_out_model                         small
% 2.61/1.03  --sat_out_clauses                       false
% 2.61/1.03  
% 2.61/1.03  ------ QBF Options
% 2.61/1.03  
% 2.61/1.03  --qbf_mode                              false
% 2.61/1.03  --qbf_elim_univ                         false
% 2.61/1.03  --qbf_dom_inst                          none
% 2.61/1.03  --qbf_dom_pre_inst                      false
% 2.61/1.03  --qbf_sk_in                             false
% 2.61/1.03  --qbf_pred_elim                         true
% 2.61/1.03  --qbf_split                             512
% 2.61/1.03  
% 2.61/1.03  ------ BMC1 Options
% 2.61/1.03  
% 2.61/1.03  --bmc1_incremental                      false
% 2.61/1.03  --bmc1_axioms                           reachable_all
% 2.61/1.03  --bmc1_min_bound                        0
% 2.61/1.03  --bmc1_max_bound                        -1
% 2.61/1.03  --bmc1_max_bound_default                -1
% 2.61/1.03  --bmc1_symbol_reachability              true
% 2.61/1.03  --bmc1_property_lemmas                  false
% 2.61/1.03  --bmc1_k_induction                      false
% 2.61/1.03  --bmc1_non_equiv_states                 false
% 2.61/1.03  --bmc1_deadlock                         false
% 2.61/1.03  --bmc1_ucm                              false
% 2.61/1.03  --bmc1_add_unsat_core                   none
% 2.61/1.03  --bmc1_unsat_core_children              false
% 2.61/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 2.61/1.03  --bmc1_out_stat                         full
% 2.61/1.03  --bmc1_ground_init                      false
% 2.61/1.03  --bmc1_pre_inst_next_state              false
% 2.61/1.03  --bmc1_pre_inst_state                   false
% 2.61/1.03  --bmc1_pre_inst_reach_state             false
% 2.61/1.03  --bmc1_out_unsat_core                   false
% 2.61/1.03  --bmc1_aig_witness_out                  false
% 2.61/1.03  --bmc1_verbose                          false
% 2.61/1.03  --bmc1_dump_clauses_tptp                false
% 2.61/1.03  --bmc1_dump_unsat_core_tptp             false
% 2.61/1.03  --bmc1_dump_file                        -
% 2.61/1.03  --bmc1_ucm_expand_uc_limit              128
% 2.61/1.03  --bmc1_ucm_n_expand_iterations          6
% 2.61/1.03  --bmc1_ucm_extend_mode                  1
% 2.61/1.03  --bmc1_ucm_init_mode                    2
% 2.61/1.03  --bmc1_ucm_cone_mode                    none
% 2.61/1.03  --bmc1_ucm_reduced_relation_type        0
% 2.61/1.03  --bmc1_ucm_relax_model                  4
% 2.61/1.03  --bmc1_ucm_full_tr_after_sat            true
% 2.61/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 2.61/1.03  --bmc1_ucm_layered_model                none
% 2.61/1.03  --bmc1_ucm_max_lemma_size               10
% 2.61/1.03  
% 2.61/1.03  ------ AIG Options
% 2.61/1.03  
% 2.61/1.03  --aig_mode                              false
% 2.61/1.03  
% 2.61/1.03  ------ Instantiation Options
% 2.61/1.03  
% 2.61/1.03  --instantiation_flag                    true
% 2.61/1.03  --inst_sos_flag                         false
% 2.61/1.03  --inst_sos_phase                        true
% 2.61/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.61/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.61/1.03  --inst_lit_sel_side                     none
% 2.61/1.03  --inst_solver_per_active                1400
% 2.61/1.03  --inst_solver_calls_frac                1.
% 2.61/1.03  --inst_passive_queue_type               priority_queues
% 2.61/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.61/1.03  --inst_passive_queues_freq              [25;2]
% 2.61/1.03  --inst_dismatching                      true
% 2.61/1.03  --inst_eager_unprocessed_to_passive     true
% 2.61/1.03  --inst_prop_sim_given                   true
% 2.61/1.03  --inst_prop_sim_new                     false
% 2.61/1.03  --inst_subs_new                         false
% 2.61/1.03  --inst_eq_res_simp                      false
% 2.61/1.03  --inst_subs_given                       false
% 2.61/1.03  --inst_orphan_elimination               true
% 2.61/1.03  --inst_learning_loop_flag               true
% 2.61/1.03  --inst_learning_start                   3000
% 2.61/1.03  --inst_learning_factor                  2
% 2.61/1.03  --inst_start_prop_sim_after_learn       3
% 2.61/1.03  --inst_sel_renew                        solver
% 2.61/1.03  --inst_lit_activity_flag                true
% 2.61/1.03  --inst_restr_to_given                   false
% 2.61/1.03  --inst_activity_threshold               500
% 2.61/1.03  --inst_out_proof                        true
% 2.61/1.03  
% 2.61/1.03  ------ Resolution Options
% 2.61/1.03  
% 2.61/1.03  --resolution_flag                       false
% 2.61/1.03  --res_lit_sel                           adaptive
% 2.61/1.03  --res_lit_sel_side                      none
% 2.61/1.03  --res_ordering                          kbo
% 2.61/1.03  --res_to_prop_solver                    active
% 2.61/1.03  --res_prop_simpl_new                    false
% 2.61/1.03  --res_prop_simpl_given                  true
% 2.61/1.03  --res_passive_queue_type                priority_queues
% 2.61/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.61/1.03  --res_passive_queues_freq               [15;5]
% 2.61/1.03  --res_forward_subs                      full
% 2.61/1.03  --res_backward_subs                     full
% 2.61/1.03  --res_forward_subs_resolution           true
% 2.61/1.03  --res_backward_subs_resolution          true
% 2.61/1.03  --res_orphan_elimination                true
% 2.61/1.03  --res_time_limit                        2.
% 2.61/1.03  --res_out_proof                         true
% 2.61/1.03  
% 2.61/1.03  ------ Superposition Options
% 2.61/1.03  
% 2.61/1.03  --superposition_flag                    true
% 2.61/1.03  --sup_passive_queue_type                priority_queues
% 2.61/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.61/1.03  --sup_passive_queues_freq               [8;1;4]
% 2.61/1.03  --demod_completeness_check              fast
% 2.61/1.03  --demod_use_ground                      true
% 2.61/1.03  --sup_to_prop_solver                    passive
% 2.61/1.03  --sup_prop_simpl_new                    true
% 2.61/1.03  --sup_prop_simpl_given                  true
% 2.61/1.03  --sup_fun_splitting                     false
% 2.61/1.03  --sup_smt_interval                      50000
% 2.61/1.03  
% 2.61/1.03  ------ Superposition Simplification Setup
% 2.61/1.03  
% 2.61/1.03  --sup_indices_passive                   []
% 2.61/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 2.61/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_full_bw                           [BwDemod]
% 2.61/1.03  --sup_immed_triv                        [TrivRules]
% 2.61/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.61/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_immed_bw_main                     []
% 2.61/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 2.61/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/1.03  
% 2.61/1.03  ------ Combination Options
% 2.61/1.03  
% 2.61/1.03  --comb_res_mult                         3
% 2.61/1.03  --comb_sup_mult                         2
% 2.61/1.03  --comb_inst_mult                        10
% 2.61/1.03  
% 2.61/1.03  ------ Debug Options
% 2.61/1.03  
% 2.61/1.03  --dbg_backtrace                         false
% 2.61/1.03  --dbg_dump_prop_clauses                 false
% 2.61/1.03  --dbg_dump_prop_clauses_file            -
% 2.61/1.03  --dbg_out_stat                          false
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  ------ Proving...
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  % SZS status Theorem for theBenchmark.p
% 2.61/1.03  
% 2.61/1.03   Resolution empty clause
% 2.61/1.03  
% 2.61/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 2.61/1.03  
% 2.61/1.03  fof(f2,axiom,(
% 2.61/1.03    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f32,plain,(
% 2.61/1.03    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.61/1.03    inference(nnf_transformation,[],[f2])).
% 2.61/1.03  
% 2.61/1.03  fof(f33,plain,(
% 2.61/1.03    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.61/1.03    inference(flattening,[],[f32])).
% 2.61/1.03  
% 2.61/1.03  fof(f40,plain,(
% 2.61/1.03    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.61/1.03    inference(cnf_transformation,[],[f33])).
% 2.61/1.03  
% 2.61/1.03  fof(f68,plain,(
% 2.61/1.03    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.61/1.03    inference(equality_resolution,[],[f40])).
% 2.61/1.03  
% 2.61/1.03  fof(f7,axiom,(
% 2.61/1.03    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(k3_subset_1(X0,X1),X1) <=> k2_subset_1(X0) = X1))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f21,plain,(
% 2.61/1.03    ! [X0,X1] : ((r1_tarski(k3_subset_1(X0,X1),X1) <=> k2_subset_1(X0) = X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.61/1.03    inference(ennf_transformation,[],[f7])).
% 2.61/1.03  
% 2.61/1.03  fof(f34,plain,(
% 2.61/1.03    ! [X0,X1] : (((r1_tarski(k3_subset_1(X0,X1),X1) | k2_subset_1(X0) != X1) & (k2_subset_1(X0) = X1 | ~r1_tarski(k3_subset_1(X0,X1),X1))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.61/1.03    inference(nnf_transformation,[],[f21])).
% 2.61/1.03  
% 2.61/1.03  fof(f48,plain,(
% 2.61/1.03    ( ! [X0,X1] : (r1_tarski(k3_subset_1(X0,X1),X1) | k2_subset_1(X0) != X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f34])).
% 2.61/1.03  
% 2.61/1.03  fof(f69,plain,(
% 2.61/1.03    ( ! [X0] : (r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) | ~m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 2.61/1.03    inference(equality_resolution,[],[f48])).
% 2.61/1.03  
% 2.61/1.03  fof(f6,axiom,(
% 2.61/1.03    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f46,plain,(
% 2.61/1.03    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f6])).
% 2.61/1.03  
% 2.61/1.03  fof(f5,axiom,(
% 2.61/1.03    ! [X0] : k2_subset_1(X0) = X0),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f45,plain,(
% 2.61/1.03    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 2.61/1.03    inference(cnf_transformation,[],[f5])).
% 2.61/1.03  
% 2.61/1.03  fof(f3,axiom,(
% 2.61/1.03    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f19,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 2.61/1.03    inference(ennf_transformation,[],[f3])).
% 2.61/1.03  
% 2.61/1.03  fof(f20,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 2.61/1.03    inference(flattening,[],[f19])).
% 2.61/1.03  
% 2.61/1.03  fof(f43,plain,(
% 2.61/1.03    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f20])).
% 2.61/1.03  
% 2.61/1.03  fof(f12,axiom,(
% 2.61/1.03    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(k2_relat_1(X2),X1) & r1_tarski(k1_relat_1(X2),X0)) => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f24,plain,(
% 2.61/1.03    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | (~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0))) | ~v1_relat_1(X2))),
% 2.61/1.03    inference(ennf_transformation,[],[f12])).
% 2.61/1.03  
% 2.61/1.03  fof(f25,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2))),
% 2.61/1.03    inference(flattening,[],[f24])).
% 2.61/1.03  
% 2.61/1.03  fof(f53,plain,(
% 2.61/1.03    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f25])).
% 2.61/1.03  
% 2.61/1.03  fof(f15,conjecture,(
% 2.61/1.03    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f16,negated_conjecture,(
% 2.61/1.03    ~! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.61/1.03    inference(negated_conjecture,[],[f15])).
% 2.61/1.03  
% 2.61/1.03  fof(f30,plain,(
% 2.61/1.03    ? [X0,X1] : (((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0)) & (v1_funct_1(X1) & v1_relat_1(X1)))),
% 2.61/1.03    inference(ennf_transformation,[],[f16])).
% 2.61/1.03  
% 2.61/1.03  fof(f31,plain,(
% 2.61/1.03    ? [X0,X1] : ((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0) & v1_funct_1(X1) & v1_relat_1(X1))),
% 2.61/1.03    inference(flattening,[],[f30])).
% 2.61/1.03  
% 2.61/1.03  fof(f37,plain,(
% 2.61/1.03    ? [X0,X1] : ((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0) & v1_funct_1(X1) & v1_relat_1(X1)) => ((~m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) | ~v1_funct_2(sK1,k1_relat_1(sK1),sK0) | ~v1_funct_1(sK1)) & r1_tarski(k2_relat_1(sK1),sK0) & v1_funct_1(sK1) & v1_relat_1(sK1))),
% 2.61/1.03    introduced(choice_axiom,[])).
% 2.61/1.03  
% 2.61/1.03  fof(f38,plain,(
% 2.61/1.03    (~m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) | ~v1_funct_2(sK1,k1_relat_1(sK1),sK0) | ~v1_funct_1(sK1)) & r1_tarski(k2_relat_1(sK1),sK0) & v1_funct_1(sK1) & v1_relat_1(sK1)),
% 2.61/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f31,f37])).
% 2.61/1.03  
% 2.61/1.03  fof(f63,plain,(
% 2.61/1.03    v1_relat_1(sK1)),
% 2.61/1.03    inference(cnf_transformation,[],[f38])).
% 2.61/1.03  
% 2.61/1.03  fof(f13,axiom,(
% 2.61/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f26,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/1.03    inference(ennf_transformation,[],[f13])).
% 2.61/1.03  
% 2.61/1.03  fof(f27,plain,(
% 2.61/1.03    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/1.03    inference(flattening,[],[f26])).
% 2.61/1.03  
% 2.61/1.03  fof(f36,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/1.03    inference(nnf_transformation,[],[f27])).
% 2.61/1.03  
% 2.61/1.03  fof(f56,plain,(
% 2.61/1.03    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f36])).
% 2.61/1.03  
% 2.61/1.03  fof(f66,plain,(
% 2.61/1.03    ~m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) | ~v1_funct_2(sK1,k1_relat_1(sK1),sK0) | ~v1_funct_1(sK1)),
% 2.61/1.03    inference(cnf_transformation,[],[f38])).
% 2.61/1.03  
% 2.61/1.03  fof(f64,plain,(
% 2.61/1.03    v1_funct_1(sK1)),
% 2.61/1.03    inference(cnf_transformation,[],[f38])).
% 2.61/1.03  
% 2.61/1.03  fof(f11,axiom,(
% 2.61/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f23,plain,(
% 2.61/1.03    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/1.03    inference(ennf_transformation,[],[f11])).
% 2.61/1.03  
% 2.61/1.03  fof(f52,plain,(
% 2.61/1.03    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f23])).
% 2.61/1.03  
% 2.61/1.03  fof(f65,plain,(
% 2.61/1.03    r1_tarski(k2_relat_1(sK1),sK0)),
% 2.61/1.03    inference(cnf_transformation,[],[f38])).
% 2.61/1.03  
% 2.61/1.03  fof(f9,axiom,(
% 2.61/1.03    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f51,plain,(
% 2.61/1.03    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f9])).
% 2.61/1.03  
% 2.61/1.03  fof(f4,axiom,(
% 2.61/1.03    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f44,plain,(
% 2.61/1.03    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f4])).
% 2.61/1.03  
% 2.61/1.03  fof(f1,axiom,(
% 2.61/1.03    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f18,plain,(
% 2.61/1.03    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 2.61/1.03    inference(ennf_transformation,[],[f1])).
% 2.61/1.03  
% 2.61/1.03  fof(f39,plain,(
% 2.61/1.03    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f18])).
% 2.61/1.03  
% 2.61/1.03  fof(f8,axiom,(
% 2.61/1.03    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2)))))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f22,plain,(
% 2.61/1.03    ! [X0,X1] : (! [X2] : ((r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.61/1.03    inference(ennf_transformation,[],[f8])).
% 2.61/1.03  
% 2.61/1.03  fof(f35,plain,(
% 2.61/1.03    ! [X0,X1] : (! [X2] : (((r1_xboole_0(X1,X2) | ~r1_tarski(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,k3_subset_1(X0,X2)) | ~r1_xboole_0(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.61/1.03    inference(nnf_transformation,[],[f22])).
% 2.61/1.03  
% 2.61/1.03  fof(f49,plain,(
% 2.61/1.03    ( ! [X2,X0,X1] : (r1_tarski(X1,k3_subset_1(X0,X2)) | ~r1_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.61/1.03    inference(cnf_transformation,[],[f35])).
% 2.61/1.03  
% 2.61/1.03  fof(f42,plain,(
% 2.61/1.03    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f33])).
% 2.61/1.03  
% 2.61/1.03  fof(f14,axiom,(
% 2.61/1.03    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 2.61/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.61/1.03  
% 2.61/1.03  fof(f28,plain,(
% 2.61/1.03    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.61/1.03    inference(ennf_transformation,[],[f14])).
% 2.61/1.03  
% 2.61/1.03  fof(f29,plain,(
% 2.61/1.03    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.61/1.03    inference(flattening,[],[f28])).
% 2.61/1.03  
% 2.61/1.03  fof(f61,plain,(
% 2.61/1.03    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.61/1.03    inference(cnf_transformation,[],[f29])).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f68]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1020,plain,
% 2.61/1.03      ( r1_tarski(X0,X0) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_8,plain,
% 2.61/1.03      ( ~ m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))
% 2.61/1.03      | r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) ),
% 2.61/1.03      inference(cnf_transformation,[],[f69]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_7,plain,
% 2.61/1.03      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 2.61/1.03      inference(cnf_transformation,[],[f46]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_171,plain,
% 2.61/1.03      ( r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) ),
% 2.61/1.03      inference(global_propositional_subsumption,[status(thm)],[c_8,c_7]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1010,plain,
% 2.61/1.03      ( r1_tarski(k3_subset_1(X0,k2_subset_1(X0)),k2_subset_1(X0)) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_171]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_6,plain,
% 2.61/1.03      ( k2_subset_1(X0) = X0 ),
% 2.61/1.03      inference(cnf_transformation,[],[f45]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1036,plain,
% 2.61/1.03      ( r1_tarski(k3_subset_1(X0,X0),X0) = iProver_top ),
% 2.61/1.03      inference(light_normalisation,[status(thm)],[c_1010,c_6]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_4,plain,
% 2.61/1.03      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X2) | r1_tarski(X0,X2) ),
% 2.61/1.03      inference(cnf_transformation,[],[f43]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1019,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(X1,X2) != iProver_top
% 2.61/1.03      | r1_tarski(X0,X2) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1949,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(k3_subset_1(X0,X0),X1) = iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1036,c_1019]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_14,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(X0),X2)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(X0),X1)
% 2.61/1.03      | ~ v1_relat_1(X0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f53]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_27,negated_conjecture,
% 2.61/1.03      ( v1_relat_1(sK1) ),
% 2.61/1.03      inference(cnf_transformation,[],[f63]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_328,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(X0),X2)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(X0),X1)
% 2.61/1.03      | sK1 != X0 ),
% 2.61/1.03      inference(resolution_lifted,[status(thm)],[c_14,c_27]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_329,plain,
% 2.61/1.03      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(sK1),X1)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(sK1),X0) ),
% 2.61/1.03      inference(unflattening,[status(thm)],[c_328]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1008,plain,
% 2.61/1.03      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) != iProver_top
% 2.61/1.03      | r1_tarski(k1_relat_1(sK1),X0) != iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_329]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_18,plain,
% 2.61/1.03      ( v1_funct_2(X0,X1,X2)
% 2.61/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/1.03      | k1_relset_1(X1,X2,X0) != X1
% 2.61/1.03      | k1_xboole_0 = X2 ),
% 2.61/1.03      inference(cnf_transformation,[],[f56]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_24,negated_conjecture,
% 2.61/1.03      ( ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
% 2.61/1.03      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | ~ v1_funct_1(sK1) ),
% 2.61/1.03      inference(cnf_transformation,[],[f66]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_26,negated_conjecture,
% 2.61/1.03      ( v1_funct_1(sK1) ),
% 2.61/1.03      inference(cnf_transformation,[],[f64]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_152,plain,
% 2.61/1.03      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0) ),
% 2.61/1.03      inference(global_propositional_subsumption,[status(thm)],[c_24,c_26]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_153,negated_conjecture,
% 2.61/1.03      ( ~ v1_funct_2(sK1,k1_relat_1(sK1),sK0)
% 2.61/1.03      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) ),
% 2.61/1.03      inference(renaming,[status(thm)],[c_152]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_427,plain,
% 2.61/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/1.03      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | k1_relset_1(X1,X2,X0) != X1
% 2.61/1.03      | k1_relat_1(sK1) != X1
% 2.61/1.03      | sK0 != X2
% 2.61/1.03      | sK1 != X0
% 2.61/1.03      | k1_xboole_0 = X2 ),
% 2.61/1.03      inference(resolution_lifted,[status(thm)],[c_18,c_153]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_428,plain,
% 2.61/1.03      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | k1_relset_1(k1_relat_1(sK1),sK0,sK1) != k1_relat_1(sK1)
% 2.61/1.03      | k1_xboole_0 = sK0 ),
% 2.61/1.03      inference(unflattening,[status(thm)],[c_427]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_13,plain,
% 2.61/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/1.03      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f52]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_436,plain,
% 2.61/1.03      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | k1_xboole_0 = sK0 ),
% 2.61/1.03      inference(forward_subsumption_resolution,[status(thm)],[c_428,c_13]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1003,plain,
% 2.61/1.03      ( k1_xboole_0 = sK0
% 2.61/1.03      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0))) != iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_436]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1277,plain,
% 2.61/1.03      ( sK0 = k1_xboole_0
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),sK0) != iProver_top
% 2.61/1.03      | r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1008,c_1003]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_25,negated_conjecture,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),sK0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f65]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1278,plain,
% 2.61/1.03      ( ~ r1_tarski(k2_relat_1(sK1),sK0)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1))
% 2.61/1.03      | sK0 = k1_xboole_0 ),
% 2.61/1.03      inference(predicate_to_equality_rev,[status(thm)],[c_1277]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1285,plain,
% 2.61/1.03      ( r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_3]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1321,plain,
% 2.61/1.03      ( sK0 = k1_xboole_0 ),
% 2.61/1.03      inference(global_propositional_subsumption,
% 2.61/1.03                [status(thm)],
% 2.61/1.03                [c_1277,c_25,c_1278,c_1285]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1011,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),sK0) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1327,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),k1_xboole_0) = iProver_top ),
% 2.61/1.03      inference(demodulation,[status(thm)],[c_1321,c_1011]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1948,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1327,c_1019]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_2209,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) = iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1948,c_1019]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3439,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) = iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1949,c_2209]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_12,plain,
% 2.61/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 2.61/1.03      inference(cnf_transformation,[],[f51]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_63,plain,
% 2.61/1.03      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1017,plain,
% 2.61/1.03      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1033,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.61/1.03      inference(light_normalisation,[status(thm)],[c_1017,c_6]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1208,plain,
% 2.61/1.03      ( ~ r1_tarski(X0,X1)
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(sK1),X0)
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_4]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1209,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X0) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_1208]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_5,plain,
% 2.61/1.03      ( r1_xboole_0(X0,k1_xboole_0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f44]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1018,plain,
% 2.61/1.03      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_0,plain,
% 2.61/1.03      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f39]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1022,plain,
% 2.61/1.03      ( r1_xboole_0(X0,X1) != iProver_top | r1_xboole_0(X1,X0) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1772,plain,
% 2.61/1.03      ( r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1018,c_1022]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_11,plain,
% 2.61/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.61/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.61/1.03      | r1_tarski(X0,k3_subset_1(X1,X2))
% 2.61/1.03      | ~ r1_xboole_0(X0,X2) ),
% 2.61/1.03      inference(cnf_transformation,[],[f49]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1014,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.61/1.03      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 2.61/1.03      | r1_tarski(X0,k3_subset_1(X1,X2)) = iProver_top
% 2.61/1.03      | r1_xboole_0(X0,X2) != iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_2569,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1036,c_2209]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3185,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
% 2.61/1.03      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X0) = iProver_top
% 2.61/1.03      | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1014,c_2569]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3746,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),X1) = iProver_top
% 2.61/1.03      | r1_tarski(X0,X1) != iProver_top ),
% 2.61/1.03      inference(global_propositional_subsumption,
% 2.61/1.03                [status(thm)],
% 2.61/1.03                [c_3439,c_63,c_1033,c_1209,c_1772,c_3185]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3747,plain,
% 2.61/1.03      ( r1_tarski(X0,X1) != iProver_top
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),X1) = iProver_top ),
% 2.61/1.03      inference(renaming,[status(thm)],[c_3746]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3755,plain,
% 2.61/1.03      ( r1_tarski(k2_relat_1(sK1),X0) = iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1036,c_3747]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1,plain,
% 2.61/1.03      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 2.61/1.03      inference(cnf_transformation,[],[f42]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1021,plain,
% 2.61/1.03      ( X0 = X1
% 2.61/1.03      | r1_tarski(X1,X0) != iProver_top
% 2.61/1.03      | r1_tarski(X0,X1) != iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_4121,plain,
% 2.61/1.03      ( k2_relat_1(sK1) = X0 | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_3755,c_1021]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_2210,plain,
% 2.61/1.03      ( k2_relat_1(sK1) = X0
% 2.61/1.03      | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1948,c_1021]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_22,plain,
% 2.61/1.03      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 2.61/1.03      | ~ v1_funct_1(X0)
% 2.61/1.03      | ~ v1_relat_1(X0) ),
% 2.61/1.03      inference(cnf_transformation,[],[f61]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_302,plain,
% 2.61/1.03      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 2.61/1.03      | ~ v1_relat_1(X0)
% 2.61/1.03      | sK1 != X0 ),
% 2.61/1.03      inference(resolution_lifted,[status(thm)],[c_22,c_26]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_303,plain,
% 2.61/1.03      ( v1_funct_2(sK1,k1_relat_1(sK1),k2_relat_1(sK1)) | ~ v1_relat_1(sK1) ),
% 2.61/1.03      inference(unflattening,[status(thm)],[c_302]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_305,plain,
% 2.61/1.03      ( v1_funct_2(sK1,k1_relat_1(sK1),k2_relat_1(sK1)) ),
% 2.61/1.03      inference(global_propositional_subsumption,[status(thm)],[c_303,c_27]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_451,plain,
% 2.61/1.03      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | k2_relat_1(sK1) != sK0
% 2.61/1.03      | k1_relat_1(sK1) != k1_relat_1(sK1)
% 2.61/1.03      | sK1 != sK1 ),
% 2.61/1.03      inference(resolution_lifted,[status(thm)],[c_153,c_305]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_516,plain,
% 2.61/1.03      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | k2_relat_1(sK1) != sK0 ),
% 2.61/1.03      inference(equality_resolution_simp,[status(thm)],[c_451]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1199,plain,
% 2.61/1.03      ( ~ r1_tarski(k2_relat_1(sK1),k1_xboole_0)
% 2.61/1.03      | ~ r1_tarski(k1_xboole_0,k2_relat_1(sK1))
% 2.61/1.03      | k2_relat_1(sK1) = k1_xboole_0 ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_1]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1200,plain,
% 2.61/1.03      ( k2_relat_1(sK1) = k1_xboole_0
% 2.61/1.03      | r1_tarski(k2_relat_1(sK1),k1_xboole_0) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) != iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_1199]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_640,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1282,plain,
% 2.61/1.03      ( k2_relat_1(sK1) != X0 | k2_relat_1(sK1) = sK0 | sK0 != X0 ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_640]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1283,plain,
% 2.61/1.03      ( k2_relat_1(sK1) = sK0
% 2.61/1.03      | k2_relat_1(sK1) != k1_xboole_0
% 2.61/1.03      | sK0 != k1_xboole_0 ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_1282]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1179,plain,
% 2.61/1.03      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0)))
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(sK1),sK0)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(sK1),X0) ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_329]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1284,plain,
% 2.61/1.03      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK1),sK0)))
% 2.61/1.03      | ~ r1_tarski(k2_relat_1(sK1),sK0)
% 2.61/1.03      | ~ r1_tarski(k1_relat_1(sK1),k1_relat_1(sK1)) ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_1179]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1491,plain,
% 2.61/1.03      ( ~ r1_tarski(X0,k2_relat_1(sK1))
% 2.61/1.03      | ~ r1_tarski(k1_xboole_0,X0)
% 2.61/1.03      | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) ),
% 2.61/1.03      inference(instantiation,[status(thm)],[c_4]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_1492,plain,
% 2.61/1.03      ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,X0) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,k2_relat_1(sK1)) = iProver_top ),
% 2.61/1.03      inference(predicate_to_equality,[status(thm)],[c_1491]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_2464,plain,
% 2.61/1.03      ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(global_propositional_subsumption,
% 2.61/1.03                [status(thm)],
% 2.61/1.03                [c_2210,c_25,c_516,c_1200,c_1278,c_1283,c_1284,c_1285,c_1327,
% 2.61/1.03                 c_1492]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3444,plain,
% 2.61/1.03      ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
% 2.61/1.03      | r1_tarski(k1_xboole_0,k3_subset_1(X0,X0)) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1949,c_2464]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_3743,plain,
% 2.61/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
% 2.61/1.03      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
% 2.61/1.03      | r1_tarski(X0,k2_relat_1(sK1)) != iProver_top
% 2.61/1.03      | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1014,c_3444]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_4535,plain,
% 2.61/1.03      ( r1_tarski(X0,k2_relat_1(sK1)) != iProver_top ),
% 2.61/1.03      inference(global_propositional_subsumption,
% 2.61/1.03                [status(thm)],
% 2.61/1.03                [c_4121,c_63,c_1033,c_1772,c_3743]) ).
% 2.61/1.03  
% 2.61/1.03  cnf(c_4540,plain,
% 2.61/1.03      ( $false ),
% 2.61/1.03      inference(superposition,[status(thm)],[c_1020,c_4535]) ).
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 2.61/1.03  
% 2.61/1.03  ------                               Statistics
% 2.61/1.03  
% 2.61/1.03  ------ General
% 2.61/1.03  
% 2.61/1.03  abstr_ref_over_cycles:                  0
% 2.61/1.03  abstr_ref_under_cycles:                 0
% 2.61/1.03  gc_basic_clause_elim:                   0
% 2.61/1.03  forced_gc_time:                         0
% 2.61/1.03  parsing_time:                           0.013
% 2.61/1.03  unif_index_cands_time:                  0.
% 2.61/1.03  unif_index_add_time:                    0.
% 2.61/1.03  orderings_time:                         0.
% 2.61/1.03  out_proof_time:                         0.012
% 2.61/1.03  total_time:                             0.194
% 2.61/1.03  num_of_symbols:                         47
% 2.61/1.03  num_of_terms:                           3871
% 2.61/1.03  
% 2.61/1.03  ------ Preprocessing
% 2.61/1.03  
% 2.61/1.03  num_of_splits:                          0
% 2.61/1.03  num_of_split_atoms:                     0
% 2.61/1.03  num_of_reused_defs:                     0
% 2.61/1.03  num_eq_ax_congr_red:                    11
% 2.61/1.03  num_of_sem_filtered_clauses:            1
% 2.61/1.03  num_of_subtypes:                        0
% 2.61/1.03  monotx_restored_types:                  0
% 2.61/1.03  sat_num_of_epr_types:                   0
% 2.61/1.03  sat_num_of_non_cyclic_types:            0
% 2.61/1.03  sat_guarded_non_collapsed_types:        0
% 2.61/1.03  num_pure_diseq_elim:                    0
% 2.61/1.03  simp_replaced_by:                       0
% 2.61/1.03  res_preprocessed:                       118
% 2.61/1.03  prep_upred:                             0
% 2.61/1.03  prep_unflattend:                        36
% 2.61/1.03  smt_new_axioms:                         0
% 2.61/1.03  pred_elim_cands:                        3
% 2.61/1.03  pred_elim:                              3
% 2.61/1.03  pred_elim_cl:                           3
% 2.61/1.03  pred_elim_cycles:                       5
% 2.61/1.03  merged_defs:                            0
% 2.61/1.03  merged_defs_ncl:                        0
% 2.61/1.03  bin_hyper_res:                          0
% 2.61/1.03  prep_cycles:                            4
% 2.61/1.03  pred_elim_time:                         0.008
% 2.61/1.03  splitting_time:                         0.
% 2.61/1.03  sem_filter_time:                        0.
% 2.61/1.03  monotx_time:                            0.001
% 2.61/1.03  subtype_inf_time:                       0.
% 2.61/1.03  
% 2.61/1.03  ------ Problem properties
% 2.61/1.03  
% 2.61/1.03  clauses:                                23
% 2.61/1.03  conjectures:                            1
% 2.61/1.03  epr:                                    5
% 2.61/1.03  horn:                                   21
% 2.61/1.03  ground:                                 9
% 2.61/1.03  unary:                                  8
% 2.61/1.03  binary:                                 5
% 2.61/1.03  lits:                                   53
% 2.61/1.03  lits_eq:                                18
% 2.61/1.03  fd_pure:                                0
% 2.61/1.03  fd_pseudo:                              0
% 2.61/1.03  fd_cond:                                0
% 2.61/1.03  fd_pseudo_cond:                         2
% 2.61/1.03  ac_symbols:                             0
% 2.61/1.03  
% 2.61/1.03  ------ Propositional Solver
% 2.61/1.03  
% 2.61/1.03  prop_solver_calls:                      27
% 2.61/1.03  prop_fast_solver_calls:                 777
% 2.61/1.03  smt_solver_calls:                       0
% 2.61/1.03  smt_fast_solver_calls:                  0
% 2.61/1.03  prop_num_of_clauses:                    1580
% 2.61/1.03  prop_preprocess_simplified:             5016
% 2.61/1.03  prop_fo_subsumed:                       20
% 2.61/1.03  prop_solver_time:                       0.
% 2.61/1.03  smt_solver_time:                        0.
% 2.61/1.03  smt_fast_solver_time:                   0.
% 2.61/1.03  prop_fast_solver_time:                  0.
% 2.61/1.03  prop_unsat_core_time:                   0.
% 2.61/1.03  
% 2.61/1.03  ------ QBF
% 2.61/1.03  
% 2.61/1.03  qbf_q_res:                              0
% 2.61/1.03  qbf_num_tautologies:                    0
% 2.61/1.03  qbf_prep_cycles:                        0
% 2.61/1.03  
% 2.61/1.03  ------ BMC1
% 2.61/1.03  
% 2.61/1.03  bmc1_current_bound:                     -1
% 2.61/1.03  bmc1_last_solved_bound:                 -1
% 2.61/1.03  bmc1_unsat_core_size:                   -1
% 2.61/1.03  bmc1_unsat_core_parents_size:           -1
% 2.61/1.03  bmc1_merge_next_fun:                    0
% 2.61/1.03  bmc1_unsat_core_clauses_time:           0.
% 2.61/1.03  
% 2.61/1.03  ------ Instantiation
% 2.61/1.03  
% 2.61/1.03  inst_num_of_clauses:                    516
% 2.61/1.03  inst_num_in_passive:                    0
% 2.61/1.03  inst_num_in_active:                     288
% 2.61/1.03  inst_num_in_unprocessed:                228
% 2.61/1.03  inst_num_of_loops:                      300
% 2.61/1.03  inst_num_of_learning_restarts:          0
% 2.61/1.03  inst_num_moves_active_passive:          9
% 2.61/1.03  inst_lit_activity:                      0
% 2.61/1.03  inst_lit_activity_moves:                0
% 2.61/1.03  inst_num_tautologies:                   0
% 2.61/1.03  inst_num_prop_implied:                  0
% 2.61/1.03  inst_num_existing_simplified:           0
% 2.61/1.03  inst_num_eq_res_simplified:             0
% 2.61/1.03  inst_num_child_elim:                    0
% 2.61/1.03  inst_num_of_dismatching_blockings:      188
% 2.61/1.03  inst_num_of_non_proper_insts:           604
% 2.61/1.03  inst_num_of_duplicates:                 0
% 2.61/1.03  inst_inst_num_from_inst_to_res:         0
% 2.61/1.03  inst_dismatching_checking_time:         0.
% 2.61/1.03  
% 2.61/1.03  ------ Resolution
% 2.61/1.03  
% 2.61/1.03  res_num_of_clauses:                     0
% 2.61/1.03  res_num_in_passive:                     0
% 2.61/1.03  res_num_in_active:                      0
% 2.61/1.03  res_num_of_loops:                       122
% 2.61/1.03  res_forward_subset_subsumed:            66
% 2.61/1.03  res_backward_subset_subsumed:           0
% 2.61/1.03  res_forward_subsumed:                   0
% 2.61/1.03  res_backward_subsumed:                  0
% 2.61/1.03  res_forward_subsumption_resolution:     2
% 2.61/1.03  res_backward_subsumption_resolution:    0
% 2.61/1.03  res_clause_to_clause_subsumption:       364
% 2.61/1.03  res_orphan_elimination:                 0
% 2.61/1.03  res_tautology_del:                      114
% 2.61/1.03  res_num_eq_res_simplified:              1
% 2.61/1.03  res_num_sel_changes:                    0
% 2.61/1.03  res_moves_from_active_to_pass:          0
% 2.61/1.03  
% 2.61/1.03  ------ Superposition
% 2.61/1.03  
% 2.61/1.03  sup_time_total:                         0.
% 2.61/1.03  sup_time_generating:                    0.
% 2.61/1.03  sup_time_sim_full:                      0.
% 2.61/1.03  sup_time_sim_immed:                     0.
% 2.61/1.03  
% 2.61/1.03  sup_num_of_clauses:                     74
% 2.61/1.03  sup_num_in_active:                      48
% 2.61/1.03  sup_num_in_passive:                     26
% 2.61/1.03  sup_num_of_loops:                       59
% 2.61/1.03  sup_fw_superposition:                   64
% 2.61/1.03  sup_bw_superposition:                   19
% 2.61/1.03  sup_immediate_simplified:               3
% 2.61/1.03  sup_given_eliminated:                   1
% 2.61/1.03  comparisons_done:                       0
% 2.61/1.03  comparisons_avoided:                    0
% 2.61/1.03  
% 2.61/1.03  ------ Simplifications
% 2.61/1.03  
% 2.61/1.03  
% 2.61/1.03  sim_fw_subset_subsumed:                 3
% 2.61/1.03  sim_bw_subset_subsumed:                 8
% 2.61/1.03  sim_fw_subsumed:                        0
% 2.61/1.03  sim_bw_subsumed:                        1
% 2.61/1.03  sim_fw_subsumption_res:                 0
% 2.61/1.03  sim_bw_subsumption_res:                 0
% 2.61/1.03  sim_tautology_del:                      2
% 2.61/1.03  sim_eq_tautology_del:                   4
% 2.61/1.03  sim_eq_res_simp:                        0
% 2.61/1.03  sim_fw_demodulated:                     1
% 2.61/1.03  sim_bw_demodulated:                     4
% 2.61/1.03  sim_light_normalised:                   2
% 2.61/1.03  sim_joinable_taut:                      0
% 2.61/1.03  sim_joinable_simp:                      0
% 2.61/1.03  sim_ac_normalised:                      0
% 2.61/1.03  sim_smt_subsumption:                    0
% 2.61/1.03  
%------------------------------------------------------------------------------
