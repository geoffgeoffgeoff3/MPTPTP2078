%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:04:52 EST 2020

% Result     : Theorem 3.44s
% Output     : CNFRefutation 3.44s
% Verified   : 
% Statistics : Number of formulae       :  172 ( 554 expanded)
%              Number of clauses        :   82 ( 156 expanded)
%              Number of leaves         :   29 ( 128 expanded)
%              Depth                    :   25
%              Number of atoms          :  481 (1554 expanded)
%              Number of equality atoms :  194 ( 532 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f20,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4,X5,X6] :
                  ( ( r2_hidden(X6,X1)
                    & r2_hidden(X5,X6)
                    & r2_hidden(X4,X5)
                    & r2_hidden(X3,X4)
                    & r2_hidden(X2,X3) )
                 => r1_xboole_0(X2,X0) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    inference(pure_predicate_removal,[],[f20])).

fof(f43,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f25])).

fof(f59,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK4(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f60,plain,(
    ! [X0] :
      ( r2_hidden(sK4(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f43,f59])).

fof(f90,plain,(
    ! [X0] :
      ( r2_hidden(sK4(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f60])).

fof(f23,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => r2_hidden(k1_funct_1(X2,X0),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X2,k1_tarski(X0),X1)
          & v1_funct_1(X2) )
       => ( k1_xboole_0 != X1
         => r2_hidden(k1_funct_1(X2,X0),X1) ) ) ),
    inference(negated_conjecture,[],[f23])).

fof(f46,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f47,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f46])).

fof(f62,plain,
    ( ? [X0,X1,X2] :
        ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
        & k1_xboole_0 != X1
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
   => ( ~ r2_hidden(k1_funct_1(sK7,sK5),sK6)
      & k1_xboole_0 != sK6
      & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6)))
      & v1_funct_2(sK7,k1_tarski(sK5),sK6)
      & v1_funct_1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f63,plain,
    ( ~ r2_hidden(k1_funct_1(sK7,sK5),sK6)
    & k1_xboole_0 != sK6
    & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6)))
    & v1_funct_2(sK7,k1_tarski(sK5),sK6)
    & v1_funct_1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f47,f62])).

fof(f101,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6))) ),
    inference(cnf_transformation,[],[f63])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f104,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f66,f67])).

fof(f105,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f65,f104])).

fof(f109,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) ),
    inference(definition_unfolding,[],[f101,f105])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f78,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f50,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(k4_tarski(X0,X3),X2)
              & r2_hidden(X3,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f32])).

fof(f51,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X4] :
              ( r2_hidden(X4,X1)
              & r2_hidden(k4_tarski(X0,X4),X2)
              & r2_hidden(X4,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(rectify,[],[f50])).

fof(f52,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X0,X4),X2)
          & r2_hidden(X4,k2_relat_1(X2)) )
     => ( r2_hidden(sK1(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2)
        & r2_hidden(sK1(X0,X1,X2),k2_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ( r2_hidden(sK1(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2)
            & r2_hidden(sK1(X0,X1,X2),k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f51,f52])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2)
      | ~ r2_hidden(X0,k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f53])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f19,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2))
     => ( r2_hidden(k2_mcart_1(X0),X2)
        & k1_mcart_1(X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k2_mcart_1(X0),X2)
        & k1_mcart_1(X0) = X1 )
      | ~ r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2)) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f88,plain,(
    ! [X2,X0,X1] :
      ( k1_mcart_1(X0) = X1
      | ~ r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2)) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f108,plain,(
    ! [X2,X0,X1] :
      ( k1_mcart_1(X0) = X1
      | ~ r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2)) ) ),
    inference(definition_unfolding,[],[f88,f105])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( k2_mcart_1(k4_tarski(X0,X1)) = X1
      & k1_mcart_1(k4_tarski(X0,X1)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f91,plain,(
    ! [X0,X1] : k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f21])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f17])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f26])).

fof(f84,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( r2_hidden(X2,k1_relat_1(X1))
         => r2_hidden(k1_funct_1(X1,X2),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(k1_funct_1(X1,X2),X0)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(k1_funct_1(X1,X2),X0)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f36])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X2),X0)
      | ~ r2_hidden(X2,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f99,plain,(
    v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f63])).

fof(f103,plain,(
    ~ r2_hidden(k1_funct_1(sK7,sK5),sK6) ),
    inference(cnf_transformation,[],[f63])).

fof(f13,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f34])).

fof(f79,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f22,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
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
    inference(ennf_transformation,[],[f22])).

fof(f45,plain,(
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
    inference(flattening,[],[f44])).

fof(f61,plain,(
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
    inference(nnf_transformation,[],[f45])).

fof(f93,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f61])).

fof(f100,plain,(
    v1_funct_2(sK7,k1_tarski(sK5),sK6) ),
    inference(cnf_transformation,[],[f63])).

fof(f110,plain,(
    v1_funct_2(sK7,k2_enumset1(sK5,sK5,sK5,sK5),sK6) ),
    inference(definition_unfolding,[],[f100,f105])).

fof(f102,plain,(
    k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f63])).

fof(f18,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
     => ( ! [X3] :
            ~ ( ! [X4] : ~ r2_hidden(k4_tarski(X3,X4),X2)
              & r2_hidden(X3,X1) )
      <=> k1_relset_1(X1,X0,X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1,X2] :
      ( ( ! [X3] :
            ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
            | ~ r2_hidden(X3,X1) )
      <=> k1_relset_1(X1,X0,X2) = X1 )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f54,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ? [X3] :
              ( ! [X4] : ~ r2_hidden(k4_tarski(X3,X4),X2)
              & r2_hidden(X3,X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(nnf_transformation,[],[f41])).

fof(f55,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ? [X5] :
              ( ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X2)
              & r2_hidden(X5,X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(rectify,[],[f54])).

fof(f57,plain,(
    ! [X2,X1] :
      ( ? [X5] :
          ( ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X2)
          & r2_hidden(X5,X1) )
     => ( ! [X6] : ~ r2_hidden(k4_tarski(sK3(X1,X2),X6),X2)
        & r2_hidden(sK3(X1,X2),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,(
    ! [X3,X2] :
      ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
     => r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2) ) ),
    introduced(choice_axiom,[])).

fof(f58,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ( ! [X6] : ~ r2_hidden(k4_tarski(sK3(X1,X2),X6),X2)
            & r2_hidden(sK3(X1,X2),X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f55,f57,f56])).

fof(f87,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2)
      | ~ r2_hidden(X3,X1)
      | k1_relset_1(X1,X0,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f15,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f82,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f5])).

fof(f106,plain,(
    ! [X0] : ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
    inference(definition_unfolding,[],[f68,f105])).

fof(f6,axiom,(
    ! [X0] :
    ? [X1] : m1_subset_1(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] :
      ( ? [X1] : m1_subset_1(X1,X0)
     => m1_subset_1(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
    ! [X0] : m1_subset_1(sK0(X0),X0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f6,f48])).

fof(f69,plain,(
    ! [X0] : m1_subset_1(sK0(X0),X0) ),
    inference(cnf_transformation,[],[f49])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f28])).

fof(f72,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_23,plain,
    ( r2_hidden(sK4(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1406,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK4(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_34,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) ),
    inference(cnf_transformation,[],[f109])).

cnf(c_1404,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1412,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2099,plain,
    ( v1_relat_1(sK7) = iProver_top ),
    inference(superposition,[status(thm)],[c_1404,c_1412])).

cnf(c_11,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1415,plain,
    ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2113,plain,
    ( k10_relat_1(sK7,k2_relat_1(sK7)) = k1_relat_1(sK7) ),
    inference(superposition,[status(thm)],[c_2099,c_1415])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(k4_tarski(X0,sK1(X0,X2,X1)),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1417,plain,
    ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK1(X0,X2,X1)),X1) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1423,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_3077,plain,
    ( r2_hidden(X0,k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1404,c_1423])).

cnf(c_22,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2))
    | k1_mcart_1(X0) = X1 ),
    inference(cnf_transformation,[],[f108])).

cnf(c_1407,plain,
    ( k1_mcart_1(X0) = X1
    | r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3287,plain,
    ( k1_mcart_1(X0) = sK5
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_3077,c_1407])).

cnf(c_3306,plain,
    ( k1_mcart_1(k4_tarski(X0,sK1(X0,X1,sK7))) = sK5
    | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1417,c_3287])).

cnf(c_25,plain,
    ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_3315,plain,
    ( sK5 = X0
    | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3306,c_25])).

cnf(c_39,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_1649,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)))
    | v1_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_1650,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) != iProver_top
    | v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1649])).

cnf(c_3682,plain,
    ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
    | sK5 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3315,c_39,c_1650])).

cnf(c_3683,plain,
    ( sK5 = X0
    | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3682])).

cnf(c_3693,plain,
    ( sK5 = X0
    | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2113,c_3683])).

cnf(c_4682,plain,
    ( sK4(k1_relat_1(sK7)) = sK5
    | k1_relat_1(sK7) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1406,c_3693])).

cnf(c_5947,plain,
    ( k1_relat_1(sK7) = k1_xboole_0
    | r2_hidden(sK5,k1_relat_1(sK7)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4682,c_1406])).

cnf(c_17,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_14,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ r2_hidden(X2,k1_relat_1(X0))
    | r2_hidden(k1_funct_1(X0,X2),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_36,negated_conjecture,
    ( v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_419,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ r2_hidden(X2,k1_relat_1(X0))
    | r2_hidden(k1_funct_1(X0,X2),X1)
    | ~ v1_relat_1(X0)
    | sK7 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_36])).

cnf(c_420,plain,
    ( ~ v5_relat_1(sK7,X0)
    | ~ r2_hidden(X1,k1_relat_1(sK7))
    | r2_hidden(k1_funct_1(sK7,X1),X0)
    | ~ v1_relat_1(sK7) ),
    inference(unflattening,[status(thm)],[c_419])).

cnf(c_442,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK7))
    | r2_hidden(k1_funct_1(sK7,X0),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ v1_relat_1(sK7)
    | X1 != X4
    | sK7 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_420])).

cnf(c_443,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK7))
    | r2_hidden(k1_funct_1(sK7,X0),X1)
    | ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(sK7) ),
    inference(unflattening,[status(thm)],[c_442])).

cnf(c_455,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK7))
    | r2_hidden(k1_funct_1(sK7,X0),X1)
    | ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_443,c_16])).

cnf(c_1402,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
    | r2_hidden(k1_funct_1(sK7,X0),X1) = iProver_top
    | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_455])).

cnf(c_1703,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
    | r2_hidden(k1_funct_1(sK7,X0),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_1404,c_1402])).

cnf(c_32,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(sK7,sK5),sK6) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_1405,plain,
    ( r2_hidden(k1_funct_1(sK7,sK5),sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_1710,plain,
    ( r2_hidden(sK5,k1_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1703,c_1405])).

cnf(c_5950,plain,
    ( k1_relat_1(sK7) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5947,c_1710])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1413,plain,
    ( k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_5966,plain,
    ( sK7 = k1_xboole_0
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_5950,c_1413])).

cnf(c_1762,plain,
    ( ~ v1_relat_1(sK7)
    | k1_relat_1(sK7) != k1_xboole_0
    | k1_xboole_0 = sK7 ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_957,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1787,plain,
    ( sK7 = sK7 ),
    inference(instantiation,[status(thm)],[c_957])).

cnf(c_958,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2372,plain,
    ( sK7 != X0
    | sK7 = k1_xboole_0
    | k1_xboole_0 != X0 ),
    inference(instantiation,[status(thm)],[c_958])).

cnf(c_2816,plain,
    ( sK7 != sK7
    | sK7 = k1_xboole_0
    | k1_xboole_0 != sK7 ),
    inference(instantiation,[status(thm)],[c_2372])).

cnf(c_6095,plain,
    ( sK7 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5966,c_34,c_1649,c_1710,c_1762,c_1787,c_2816,c_5947])).

cnf(c_31,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_35,negated_conjecture,
    ( v1_funct_2(sK7,k2_enumset1(sK5,sK5,sK5,sK5),sK6) ),
    inference(cnf_transformation,[],[f110])).

cnf(c_636,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_enumset1(sK5,sK5,sK5,sK5) != X1
    | k1_relset_1(X1,X2,X0) = X1
    | sK6 != X2
    | sK7 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_35])).

cnf(c_637,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)))
    | k1_relset_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6,sK7) = k2_enumset1(sK5,sK5,sK5,sK5)
    | k1_xboole_0 = sK6 ),
    inference(unflattening,[status(thm)],[c_636])).

cnf(c_33,negated_conjecture,
    ( k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f102])).

cnf(c_639,plain,
    ( k1_relset_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6,sK7) = k2_enumset1(sK5,sK5,sK5,sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_637,c_34,c_33])).

cnf(c_18,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k4_tarski(X0,sK2(X2,X0)),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | k1_relset_1(X1,X3,X2) != X1 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1411,plain,
    ( k1_relset_1(X0,X1,X2) != X0
    | r2_hidden(X3,X0) != iProver_top
    | r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3854,plain,
    ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top
    | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) != iProver_top ),
    inference(superposition,[status(thm)],[c_639,c_1411])).

cnf(c_4137,plain,
    ( r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top
    | r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3854,c_39])).

cnf(c_4138,plain,
    ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top ),
    inference(renaming,[status(thm)],[c_4137])).

cnf(c_6112,plain,
    ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK2(k1_xboole_0,X0)),k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_6095,c_4138])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_394,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_15])).

cnf(c_395,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_394])).

cnf(c_1403,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_6368,plain,
    ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_6112,c_1403])).

cnf(c_6374,plain,
    ( k2_enumset1(sK5,sK5,sK5,sK5) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1406,c_6368])).

cnf(c_1,plain,
    ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
    inference(cnf_transformation,[],[f106])).

cnf(c_1425,plain,
    ( v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_6766,plain,
    ( v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_6374,c_1425])).

cnf(c_2,plain,
    ( m1_subset_1(sK0(X0),X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1424,plain,
    ( m1_subset_1(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_5,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1421,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | m1_subset_1(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2563,plain,
    ( r2_hidden(sK0(X0),X0) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1424,c_1421])).

cnf(c_5650,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2563,c_1403])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6766,c_5650])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:11:04 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.44/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.44/1.00  
% 3.44/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.44/1.00  
% 3.44/1.00  ------  iProver source info
% 3.44/1.00  
% 3.44/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.44/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.44/1.00  git: non_committed_changes: false
% 3.44/1.00  git: last_make_outside_of_git: false
% 3.44/1.00  
% 3.44/1.00  ------ 
% 3.44/1.00  
% 3.44/1.00  ------ Input Options
% 3.44/1.00  
% 3.44/1.00  --out_options                           all
% 3.44/1.00  --tptp_safe_out                         true
% 3.44/1.00  --problem_path                          ""
% 3.44/1.00  --include_path                          ""
% 3.44/1.00  --clausifier                            res/vclausify_rel
% 3.44/1.00  --clausifier_options                    --mode clausify
% 3.44/1.00  --stdin                                 false
% 3.44/1.00  --stats_out                             all
% 3.44/1.00  
% 3.44/1.00  ------ General Options
% 3.44/1.00  
% 3.44/1.00  --fof                                   false
% 3.44/1.00  --time_out_real                         305.
% 3.44/1.00  --time_out_virtual                      -1.
% 3.44/1.00  --symbol_type_check                     false
% 3.44/1.00  --clausify_out                          false
% 3.44/1.00  --sig_cnt_out                           false
% 3.44/1.00  --trig_cnt_out                          false
% 3.44/1.00  --trig_cnt_out_tolerance                1.
% 3.44/1.00  --trig_cnt_out_sk_spl                   false
% 3.44/1.00  --abstr_cl_out                          false
% 3.44/1.00  
% 3.44/1.00  ------ Global Options
% 3.44/1.00  
% 3.44/1.00  --schedule                              default
% 3.44/1.00  --add_important_lit                     false
% 3.44/1.00  --prop_solver_per_cl                    1000
% 3.44/1.00  --min_unsat_core                        false
% 3.44/1.00  --soft_assumptions                      false
% 3.44/1.00  --soft_lemma_size                       3
% 3.44/1.00  --prop_impl_unit_size                   0
% 3.44/1.00  --prop_impl_unit                        []
% 3.44/1.00  --share_sel_clauses                     true
% 3.44/1.00  --reset_solvers                         false
% 3.44/1.00  --bc_imp_inh                            [conj_cone]
% 3.44/1.00  --conj_cone_tolerance                   3.
% 3.44/1.00  --extra_neg_conj                        none
% 3.44/1.00  --large_theory_mode                     true
% 3.44/1.00  --prolific_symb_bound                   200
% 3.44/1.00  --lt_threshold                          2000
% 3.44/1.00  --clause_weak_htbl                      true
% 3.44/1.00  --gc_record_bc_elim                     false
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing Options
% 3.44/1.00  
% 3.44/1.00  --preprocessing_flag                    true
% 3.44/1.00  --time_out_prep_mult                    0.1
% 3.44/1.00  --splitting_mode                        input
% 3.44/1.00  --splitting_grd                         true
% 3.44/1.00  --splitting_cvd                         false
% 3.44/1.00  --splitting_cvd_svl                     false
% 3.44/1.00  --splitting_nvd                         32
% 3.44/1.00  --sub_typing                            true
% 3.44/1.00  --prep_gs_sim                           true
% 3.44/1.00  --prep_unflatten                        true
% 3.44/1.00  --prep_res_sim                          true
% 3.44/1.00  --prep_upred                            true
% 3.44/1.00  --prep_sem_filter                       exhaustive
% 3.44/1.00  --prep_sem_filter_out                   false
% 3.44/1.00  --pred_elim                             true
% 3.44/1.00  --res_sim_input                         true
% 3.44/1.00  --eq_ax_congr_red                       true
% 3.44/1.00  --pure_diseq_elim                       true
% 3.44/1.00  --brand_transform                       false
% 3.44/1.00  --non_eq_to_eq                          false
% 3.44/1.00  --prep_def_merge                        true
% 3.44/1.00  --prep_def_merge_prop_impl              false
% 3.44/1.00  --prep_def_merge_mbd                    true
% 3.44/1.00  --prep_def_merge_tr_red                 false
% 3.44/1.00  --prep_def_merge_tr_cl                  false
% 3.44/1.00  --smt_preprocessing                     true
% 3.44/1.00  --smt_ac_axioms                         fast
% 3.44/1.00  --preprocessed_out                      false
% 3.44/1.00  --preprocessed_stats                    false
% 3.44/1.00  
% 3.44/1.00  ------ Abstraction refinement Options
% 3.44/1.00  
% 3.44/1.00  --abstr_ref                             []
% 3.44/1.00  --abstr_ref_prep                        false
% 3.44/1.00  --abstr_ref_until_sat                   false
% 3.44/1.00  --abstr_ref_sig_restrict                funpre
% 3.44/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.44/1.00  --abstr_ref_under                       []
% 3.44/1.00  
% 3.44/1.00  ------ SAT Options
% 3.44/1.00  
% 3.44/1.00  --sat_mode                              false
% 3.44/1.00  --sat_fm_restart_options                ""
% 3.44/1.00  --sat_gr_def                            false
% 3.44/1.00  --sat_epr_types                         true
% 3.44/1.00  --sat_non_cyclic_types                  false
% 3.44/1.00  --sat_finite_models                     false
% 3.44/1.00  --sat_fm_lemmas                         false
% 3.44/1.00  --sat_fm_prep                           false
% 3.44/1.00  --sat_fm_uc_incr                        true
% 3.44/1.00  --sat_out_model                         small
% 3.44/1.00  --sat_out_clauses                       false
% 3.44/1.00  
% 3.44/1.00  ------ QBF Options
% 3.44/1.00  
% 3.44/1.00  --qbf_mode                              false
% 3.44/1.00  --qbf_elim_univ                         false
% 3.44/1.00  --qbf_dom_inst                          none
% 3.44/1.00  --qbf_dom_pre_inst                      false
% 3.44/1.00  --qbf_sk_in                             false
% 3.44/1.00  --qbf_pred_elim                         true
% 3.44/1.00  --qbf_split                             512
% 3.44/1.00  
% 3.44/1.00  ------ BMC1 Options
% 3.44/1.00  
% 3.44/1.00  --bmc1_incremental                      false
% 3.44/1.00  --bmc1_axioms                           reachable_all
% 3.44/1.00  --bmc1_min_bound                        0
% 3.44/1.00  --bmc1_max_bound                        -1
% 3.44/1.00  --bmc1_max_bound_default                -1
% 3.44/1.00  --bmc1_symbol_reachability              true
% 3.44/1.00  --bmc1_property_lemmas                  false
% 3.44/1.00  --bmc1_k_induction                      false
% 3.44/1.00  --bmc1_non_equiv_states                 false
% 3.44/1.00  --bmc1_deadlock                         false
% 3.44/1.00  --bmc1_ucm                              false
% 3.44/1.00  --bmc1_add_unsat_core                   none
% 3.44/1.00  --bmc1_unsat_core_children              false
% 3.44/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.44/1.00  --bmc1_out_stat                         full
% 3.44/1.00  --bmc1_ground_init                      false
% 3.44/1.00  --bmc1_pre_inst_next_state              false
% 3.44/1.00  --bmc1_pre_inst_state                   false
% 3.44/1.00  --bmc1_pre_inst_reach_state             false
% 3.44/1.00  --bmc1_out_unsat_core                   false
% 3.44/1.00  --bmc1_aig_witness_out                  false
% 3.44/1.00  --bmc1_verbose                          false
% 3.44/1.00  --bmc1_dump_clauses_tptp                false
% 3.44/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.44/1.00  --bmc1_dump_file                        -
% 3.44/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.44/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.44/1.00  --bmc1_ucm_extend_mode                  1
% 3.44/1.00  --bmc1_ucm_init_mode                    2
% 3.44/1.00  --bmc1_ucm_cone_mode                    none
% 3.44/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.44/1.00  --bmc1_ucm_relax_model                  4
% 3.44/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.44/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.44/1.00  --bmc1_ucm_layered_model                none
% 3.44/1.00  --bmc1_ucm_max_lemma_size               10
% 3.44/1.00  
% 3.44/1.00  ------ AIG Options
% 3.44/1.00  
% 3.44/1.00  --aig_mode                              false
% 3.44/1.00  
% 3.44/1.00  ------ Instantiation Options
% 3.44/1.00  
% 3.44/1.00  --instantiation_flag                    true
% 3.44/1.00  --inst_sos_flag                         false
% 3.44/1.00  --inst_sos_phase                        true
% 3.44/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.44/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.44/1.00  --inst_lit_sel_side                     num_symb
% 3.44/1.00  --inst_solver_per_active                1400
% 3.44/1.00  --inst_solver_calls_frac                1.
% 3.44/1.00  --inst_passive_queue_type               priority_queues
% 3.44/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.44/1.00  --inst_passive_queues_freq              [25;2]
% 3.44/1.00  --inst_dismatching                      true
% 3.44/1.00  --inst_eager_unprocessed_to_passive     true
% 3.44/1.00  --inst_prop_sim_given                   true
% 3.44/1.00  --inst_prop_sim_new                     false
% 3.44/1.00  --inst_subs_new                         false
% 3.44/1.00  --inst_eq_res_simp                      false
% 3.44/1.00  --inst_subs_given                       false
% 3.44/1.00  --inst_orphan_elimination               true
% 3.44/1.00  --inst_learning_loop_flag               true
% 3.44/1.00  --inst_learning_start                   3000
% 3.44/1.00  --inst_learning_factor                  2
% 3.44/1.00  --inst_start_prop_sim_after_learn       3
% 3.44/1.00  --inst_sel_renew                        solver
% 3.44/1.00  --inst_lit_activity_flag                true
% 3.44/1.00  --inst_restr_to_given                   false
% 3.44/1.00  --inst_activity_threshold               500
% 3.44/1.00  --inst_out_proof                        true
% 3.44/1.00  
% 3.44/1.00  ------ Resolution Options
% 3.44/1.00  
% 3.44/1.00  --resolution_flag                       true
% 3.44/1.00  --res_lit_sel                           adaptive
% 3.44/1.00  --res_lit_sel_side                      none
% 3.44/1.00  --res_ordering                          kbo
% 3.44/1.00  --res_to_prop_solver                    active
% 3.44/1.00  --res_prop_simpl_new                    false
% 3.44/1.00  --res_prop_simpl_given                  true
% 3.44/1.00  --res_passive_queue_type                priority_queues
% 3.44/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.44/1.00  --res_passive_queues_freq               [15;5]
% 3.44/1.00  --res_forward_subs                      full
% 3.44/1.00  --res_backward_subs                     full
% 3.44/1.00  --res_forward_subs_resolution           true
% 3.44/1.00  --res_backward_subs_resolution          true
% 3.44/1.00  --res_orphan_elimination                true
% 3.44/1.00  --res_time_limit                        2.
% 3.44/1.00  --res_out_proof                         true
% 3.44/1.00  
% 3.44/1.00  ------ Superposition Options
% 3.44/1.00  
% 3.44/1.00  --superposition_flag                    true
% 3.44/1.00  --sup_passive_queue_type                priority_queues
% 3.44/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.44/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.44/1.00  --demod_completeness_check              fast
% 3.44/1.00  --demod_use_ground                      true
% 3.44/1.00  --sup_to_prop_solver                    passive
% 3.44/1.00  --sup_prop_simpl_new                    true
% 3.44/1.00  --sup_prop_simpl_given                  true
% 3.44/1.00  --sup_fun_splitting                     false
% 3.44/1.00  --sup_smt_interval                      50000
% 3.44/1.00  
% 3.44/1.00  ------ Superposition Simplification Setup
% 3.44/1.00  
% 3.44/1.00  --sup_indices_passive                   []
% 3.44/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.44/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_full_bw                           [BwDemod]
% 3.44/1.00  --sup_immed_triv                        [TrivRules]
% 3.44/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.44/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_immed_bw_main                     []
% 3.44/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.44/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.44/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.44/1.00  
% 3.44/1.00  ------ Combination Options
% 3.44/1.00  
% 3.44/1.00  --comb_res_mult                         3
% 3.44/1.00  --comb_sup_mult                         2
% 3.44/1.00  --comb_inst_mult                        10
% 3.44/1.00  
% 3.44/1.00  ------ Debug Options
% 3.44/1.00  
% 3.44/1.00  --dbg_backtrace                         false
% 3.44/1.00  --dbg_dump_prop_clauses                 false
% 3.44/1.00  --dbg_dump_prop_clauses_file            -
% 3.44/1.00  --dbg_out_stat                          false
% 3.44/1.00  ------ Parsing...
% 3.44/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.44/1.00  ------ Proving...
% 3.44/1.00  ------ Problem Properties 
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  clauses                                 30
% 3.44/1.00  conjectures                             3
% 3.44/1.00  EPR                                     3
% 3.44/1.00  Horn                                    26
% 3.44/1.00  unary                                   10
% 3.44/1.00  binary                                  5
% 3.44/1.00  lits                                    69
% 3.44/1.00  lits eq                                 19
% 3.44/1.00  fd_pure                                 0
% 3.44/1.00  fd_pseudo                               0
% 3.44/1.00  fd_cond                                 3
% 3.44/1.00  fd_pseudo_cond                          1
% 3.44/1.00  AC symbols                              0
% 3.44/1.00  
% 3.44/1.00  ------ Schedule dynamic 5 is on 
% 3.44/1.00  
% 3.44/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  ------ 
% 3.44/1.00  Current options:
% 3.44/1.00  ------ 
% 3.44/1.00  
% 3.44/1.00  ------ Input Options
% 3.44/1.00  
% 3.44/1.00  --out_options                           all
% 3.44/1.00  --tptp_safe_out                         true
% 3.44/1.00  --problem_path                          ""
% 3.44/1.00  --include_path                          ""
% 3.44/1.00  --clausifier                            res/vclausify_rel
% 3.44/1.00  --clausifier_options                    --mode clausify
% 3.44/1.00  --stdin                                 false
% 3.44/1.00  --stats_out                             all
% 3.44/1.00  
% 3.44/1.00  ------ General Options
% 3.44/1.00  
% 3.44/1.00  --fof                                   false
% 3.44/1.00  --time_out_real                         305.
% 3.44/1.00  --time_out_virtual                      -1.
% 3.44/1.00  --symbol_type_check                     false
% 3.44/1.00  --clausify_out                          false
% 3.44/1.00  --sig_cnt_out                           false
% 3.44/1.00  --trig_cnt_out                          false
% 3.44/1.00  --trig_cnt_out_tolerance                1.
% 3.44/1.00  --trig_cnt_out_sk_spl                   false
% 3.44/1.00  --abstr_cl_out                          false
% 3.44/1.00  
% 3.44/1.00  ------ Global Options
% 3.44/1.00  
% 3.44/1.00  --schedule                              default
% 3.44/1.00  --add_important_lit                     false
% 3.44/1.00  --prop_solver_per_cl                    1000
% 3.44/1.00  --min_unsat_core                        false
% 3.44/1.00  --soft_assumptions                      false
% 3.44/1.00  --soft_lemma_size                       3
% 3.44/1.00  --prop_impl_unit_size                   0
% 3.44/1.00  --prop_impl_unit                        []
% 3.44/1.00  --share_sel_clauses                     true
% 3.44/1.00  --reset_solvers                         false
% 3.44/1.00  --bc_imp_inh                            [conj_cone]
% 3.44/1.00  --conj_cone_tolerance                   3.
% 3.44/1.00  --extra_neg_conj                        none
% 3.44/1.00  --large_theory_mode                     true
% 3.44/1.00  --prolific_symb_bound                   200
% 3.44/1.00  --lt_threshold                          2000
% 3.44/1.00  --clause_weak_htbl                      true
% 3.44/1.00  --gc_record_bc_elim                     false
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing Options
% 3.44/1.00  
% 3.44/1.00  --preprocessing_flag                    true
% 3.44/1.00  --time_out_prep_mult                    0.1
% 3.44/1.00  --splitting_mode                        input
% 3.44/1.00  --splitting_grd                         true
% 3.44/1.00  --splitting_cvd                         false
% 3.44/1.00  --splitting_cvd_svl                     false
% 3.44/1.00  --splitting_nvd                         32
% 3.44/1.00  --sub_typing                            true
% 3.44/1.00  --prep_gs_sim                           true
% 3.44/1.00  --prep_unflatten                        true
% 3.44/1.00  --prep_res_sim                          true
% 3.44/1.00  --prep_upred                            true
% 3.44/1.00  --prep_sem_filter                       exhaustive
% 3.44/1.00  --prep_sem_filter_out                   false
% 3.44/1.00  --pred_elim                             true
% 3.44/1.00  --res_sim_input                         true
% 3.44/1.00  --eq_ax_congr_red                       true
% 3.44/1.00  --pure_diseq_elim                       true
% 3.44/1.00  --brand_transform                       false
% 3.44/1.00  --non_eq_to_eq                          false
% 3.44/1.00  --prep_def_merge                        true
% 3.44/1.00  --prep_def_merge_prop_impl              false
% 3.44/1.00  --prep_def_merge_mbd                    true
% 3.44/1.00  --prep_def_merge_tr_red                 false
% 3.44/1.00  --prep_def_merge_tr_cl                  false
% 3.44/1.00  --smt_preprocessing                     true
% 3.44/1.00  --smt_ac_axioms                         fast
% 3.44/1.00  --preprocessed_out                      false
% 3.44/1.00  --preprocessed_stats                    false
% 3.44/1.00  
% 3.44/1.00  ------ Abstraction refinement Options
% 3.44/1.00  
% 3.44/1.00  --abstr_ref                             []
% 3.44/1.00  --abstr_ref_prep                        false
% 3.44/1.00  --abstr_ref_until_sat                   false
% 3.44/1.00  --abstr_ref_sig_restrict                funpre
% 3.44/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.44/1.00  --abstr_ref_under                       []
% 3.44/1.00  
% 3.44/1.00  ------ SAT Options
% 3.44/1.00  
% 3.44/1.00  --sat_mode                              false
% 3.44/1.00  --sat_fm_restart_options                ""
% 3.44/1.00  --sat_gr_def                            false
% 3.44/1.00  --sat_epr_types                         true
% 3.44/1.00  --sat_non_cyclic_types                  false
% 3.44/1.00  --sat_finite_models                     false
% 3.44/1.00  --sat_fm_lemmas                         false
% 3.44/1.00  --sat_fm_prep                           false
% 3.44/1.00  --sat_fm_uc_incr                        true
% 3.44/1.00  --sat_out_model                         small
% 3.44/1.00  --sat_out_clauses                       false
% 3.44/1.00  
% 3.44/1.00  ------ QBF Options
% 3.44/1.00  
% 3.44/1.00  --qbf_mode                              false
% 3.44/1.00  --qbf_elim_univ                         false
% 3.44/1.00  --qbf_dom_inst                          none
% 3.44/1.00  --qbf_dom_pre_inst                      false
% 3.44/1.00  --qbf_sk_in                             false
% 3.44/1.00  --qbf_pred_elim                         true
% 3.44/1.00  --qbf_split                             512
% 3.44/1.00  
% 3.44/1.00  ------ BMC1 Options
% 3.44/1.00  
% 3.44/1.00  --bmc1_incremental                      false
% 3.44/1.00  --bmc1_axioms                           reachable_all
% 3.44/1.00  --bmc1_min_bound                        0
% 3.44/1.00  --bmc1_max_bound                        -1
% 3.44/1.00  --bmc1_max_bound_default                -1
% 3.44/1.00  --bmc1_symbol_reachability              true
% 3.44/1.00  --bmc1_property_lemmas                  false
% 3.44/1.00  --bmc1_k_induction                      false
% 3.44/1.00  --bmc1_non_equiv_states                 false
% 3.44/1.00  --bmc1_deadlock                         false
% 3.44/1.00  --bmc1_ucm                              false
% 3.44/1.00  --bmc1_add_unsat_core                   none
% 3.44/1.00  --bmc1_unsat_core_children              false
% 3.44/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.44/1.00  --bmc1_out_stat                         full
% 3.44/1.00  --bmc1_ground_init                      false
% 3.44/1.00  --bmc1_pre_inst_next_state              false
% 3.44/1.00  --bmc1_pre_inst_state                   false
% 3.44/1.00  --bmc1_pre_inst_reach_state             false
% 3.44/1.00  --bmc1_out_unsat_core                   false
% 3.44/1.00  --bmc1_aig_witness_out                  false
% 3.44/1.00  --bmc1_verbose                          false
% 3.44/1.00  --bmc1_dump_clauses_tptp                false
% 3.44/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.44/1.00  --bmc1_dump_file                        -
% 3.44/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.44/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.44/1.00  --bmc1_ucm_extend_mode                  1
% 3.44/1.00  --bmc1_ucm_init_mode                    2
% 3.44/1.00  --bmc1_ucm_cone_mode                    none
% 3.44/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.44/1.00  --bmc1_ucm_relax_model                  4
% 3.44/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.44/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.44/1.00  --bmc1_ucm_layered_model                none
% 3.44/1.00  --bmc1_ucm_max_lemma_size               10
% 3.44/1.00  
% 3.44/1.00  ------ AIG Options
% 3.44/1.00  
% 3.44/1.00  --aig_mode                              false
% 3.44/1.00  
% 3.44/1.00  ------ Instantiation Options
% 3.44/1.00  
% 3.44/1.00  --instantiation_flag                    true
% 3.44/1.00  --inst_sos_flag                         false
% 3.44/1.00  --inst_sos_phase                        true
% 3.44/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.44/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.44/1.00  --inst_lit_sel_side                     none
% 3.44/1.00  --inst_solver_per_active                1400
% 3.44/1.00  --inst_solver_calls_frac                1.
% 3.44/1.00  --inst_passive_queue_type               priority_queues
% 3.44/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.44/1.00  --inst_passive_queues_freq              [25;2]
% 3.44/1.00  --inst_dismatching                      true
% 3.44/1.00  --inst_eager_unprocessed_to_passive     true
% 3.44/1.00  --inst_prop_sim_given                   true
% 3.44/1.00  --inst_prop_sim_new                     false
% 3.44/1.00  --inst_subs_new                         false
% 3.44/1.00  --inst_eq_res_simp                      false
% 3.44/1.00  --inst_subs_given                       false
% 3.44/1.00  --inst_orphan_elimination               true
% 3.44/1.00  --inst_learning_loop_flag               true
% 3.44/1.00  --inst_learning_start                   3000
% 3.44/1.00  --inst_learning_factor                  2
% 3.44/1.00  --inst_start_prop_sim_after_learn       3
% 3.44/1.00  --inst_sel_renew                        solver
% 3.44/1.00  --inst_lit_activity_flag                true
% 3.44/1.00  --inst_restr_to_given                   false
% 3.44/1.00  --inst_activity_threshold               500
% 3.44/1.00  --inst_out_proof                        true
% 3.44/1.00  
% 3.44/1.00  ------ Resolution Options
% 3.44/1.00  
% 3.44/1.00  --resolution_flag                       false
% 3.44/1.00  --res_lit_sel                           adaptive
% 3.44/1.00  --res_lit_sel_side                      none
% 3.44/1.00  --res_ordering                          kbo
% 3.44/1.00  --res_to_prop_solver                    active
% 3.44/1.00  --res_prop_simpl_new                    false
% 3.44/1.00  --res_prop_simpl_given                  true
% 3.44/1.00  --res_passive_queue_type                priority_queues
% 3.44/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.44/1.00  --res_passive_queues_freq               [15;5]
% 3.44/1.00  --res_forward_subs                      full
% 3.44/1.00  --res_backward_subs                     full
% 3.44/1.00  --res_forward_subs_resolution           true
% 3.44/1.00  --res_backward_subs_resolution          true
% 3.44/1.00  --res_orphan_elimination                true
% 3.44/1.00  --res_time_limit                        2.
% 3.44/1.00  --res_out_proof                         true
% 3.44/1.00  
% 3.44/1.00  ------ Superposition Options
% 3.44/1.00  
% 3.44/1.00  --superposition_flag                    true
% 3.44/1.00  --sup_passive_queue_type                priority_queues
% 3.44/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.44/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.44/1.00  --demod_completeness_check              fast
% 3.44/1.00  --demod_use_ground                      true
% 3.44/1.00  --sup_to_prop_solver                    passive
% 3.44/1.00  --sup_prop_simpl_new                    true
% 3.44/1.00  --sup_prop_simpl_given                  true
% 3.44/1.00  --sup_fun_splitting                     false
% 3.44/1.00  --sup_smt_interval                      50000
% 3.44/1.00  
% 3.44/1.00  ------ Superposition Simplification Setup
% 3.44/1.00  
% 3.44/1.00  --sup_indices_passive                   []
% 3.44/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.44/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.44/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_full_bw                           [BwDemod]
% 3.44/1.00  --sup_immed_triv                        [TrivRules]
% 3.44/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.44/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_immed_bw_main                     []
% 3.44/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.44/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.44/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.44/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.44/1.00  
% 3.44/1.00  ------ Combination Options
% 3.44/1.00  
% 3.44/1.00  --comb_res_mult                         3
% 3.44/1.00  --comb_sup_mult                         2
% 3.44/1.00  --comb_inst_mult                        10
% 3.44/1.00  
% 3.44/1.00  ------ Debug Options
% 3.44/1.00  
% 3.44/1.00  --dbg_backtrace                         false
% 3.44/1.00  --dbg_dump_prop_clauses                 false
% 3.44/1.00  --dbg_dump_prop_clauses_file            -
% 3.44/1.00  --dbg_out_stat                          false
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  ------ Proving...
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  % SZS status Theorem for theBenchmark.p
% 3.44/1.00  
% 3.44/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.44/1.00  
% 3.44/1.00  fof(f20,axiom,(
% 3.44/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4,X5,X6] : ((r2_hidden(X6,X1) & r2_hidden(X5,X6) & r2_hidden(X4,X5) & r2_hidden(X3,X4) & r2_hidden(X2,X3)) => r1_xboole_0(X2,X0)) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f25,plain,(
% 3.44/1.00    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 3.44/1.00    inference(pure_predicate_removal,[],[f20])).
% 3.44/1.00  
% 3.44/1.00  fof(f43,plain,(
% 3.44/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 3.44/1.00    inference(ennf_transformation,[],[f25])).
% 3.44/1.00  
% 3.44/1.00  fof(f59,plain,(
% 3.44/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK4(X0),X0))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f60,plain,(
% 3.44/1.00    ! [X0] : (r2_hidden(sK4(X0),X0) | k1_xboole_0 = X0)),
% 3.44/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f43,f59])).
% 3.44/1.00  
% 3.44/1.00  fof(f90,plain,(
% 3.44/1.00    ( ! [X0] : (r2_hidden(sK4(X0),X0) | k1_xboole_0 = X0) )),
% 3.44/1.00    inference(cnf_transformation,[],[f60])).
% 3.44/1.00  
% 3.44/1.00  fof(f23,conjecture,(
% 3.44/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => r2_hidden(k1_funct_1(X2,X0),X1)))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f24,negated_conjecture,(
% 3.44/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => r2_hidden(k1_funct_1(X2,X0),X1)))),
% 3.44/1.00    inference(negated_conjecture,[],[f23])).
% 3.44/1.00  
% 3.44/1.00  fof(f46,plain,(
% 3.44/1.00    ? [X0,X1,X2] : ((~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)))),
% 3.44/1.00    inference(ennf_transformation,[],[f24])).
% 3.44/1.00  
% 3.44/1.00  fof(f47,plain,(
% 3.44/1.00    ? [X0,X1,X2] : (~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2))),
% 3.44/1.00    inference(flattening,[],[f46])).
% 3.44/1.00  
% 3.44/1.00  fof(f62,plain,(
% 3.44/1.00    ? [X0,X1,X2] : (~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (~r2_hidden(k1_funct_1(sK7,sK5),sK6) & k1_xboole_0 != sK6 & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6))) & v1_funct_2(sK7,k1_tarski(sK5),sK6) & v1_funct_1(sK7))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f63,plain,(
% 3.44/1.00    ~r2_hidden(k1_funct_1(sK7,sK5),sK6) & k1_xboole_0 != sK6 & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6))) & v1_funct_2(sK7,k1_tarski(sK5),sK6) & v1_funct_1(sK7)),
% 3.44/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7])],[f47,f62])).
% 3.44/1.00  
% 3.44/1.00  fof(f101,plain,(
% 3.44/1.00    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK5),sK6)))),
% 3.44/1.00    inference(cnf_transformation,[],[f63])).
% 3.44/1.00  
% 3.44/1.00  fof(f2,axiom,(
% 3.44/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f65,plain,(
% 3.44/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f2])).
% 3.44/1.00  
% 3.44/1.00  fof(f3,axiom,(
% 3.44/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f66,plain,(
% 3.44/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f3])).
% 3.44/1.00  
% 3.44/1.00  fof(f4,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f67,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f4])).
% 3.44/1.00  
% 3.44/1.00  fof(f104,plain,(
% 3.44/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.44/1.00    inference(definition_unfolding,[],[f66,f67])).
% 3.44/1.00  
% 3.44/1.00  fof(f105,plain,(
% 3.44/1.00    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 3.44/1.00    inference(definition_unfolding,[],[f65,f104])).
% 3.44/1.00  
% 3.44/1.00  fof(f109,plain,(
% 3.44/1.00    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)))),
% 3.44/1.00    inference(definition_unfolding,[],[f101,f105])).
% 3.44/1.00  
% 3.44/1.00  fof(f16,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f39,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.44/1.00    inference(ennf_transformation,[],[f16])).
% 3.44/1.00  
% 3.44/1.00  fof(f83,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f39])).
% 3.44/1.00  
% 3.44/1.00  fof(f12,axiom,(
% 3.44/1.00    ! [X0] : (v1_relat_1(X0) => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f33,plain,(
% 3.44/1.00    ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0))),
% 3.44/1.00    inference(ennf_transformation,[],[f12])).
% 3.44/1.00  
% 3.44/1.00  fof(f78,plain,(
% 3.44/1.00    ( ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f33])).
% 3.44/1.00  
% 3.44/1.00  fof(f11,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f32,plain,(
% 3.44/1.00    ! [X0,X1,X2] : ((r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))) | ~v1_relat_1(X2))),
% 3.44/1.00    inference(ennf_transformation,[],[f11])).
% 3.44/1.00  
% 3.44/1.00  fof(f50,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.44/1.00    inference(nnf_transformation,[],[f32])).
% 3.44/1.00  
% 3.44/1.00  fof(f51,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.44/1.00    inference(rectify,[],[f50])).
% 3.44/1.00  
% 3.44/1.00  fof(f52,plain,(
% 3.44/1.00    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) => (r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2) & r2_hidden(sK1(X0,X1,X2),k2_relat_1(X2))))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f53,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & ((r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2) & r2_hidden(sK1(X0,X1,X2),k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.44/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f51,f52])).
% 3.44/1.00  
% 3.44/1.00  fof(f75,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(X0,sK1(X0,X1,X2)),X2) | ~r2_hidden(X0,k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f53])).
% 3.44/1.00  
% 3.44/1.00  fof(f7,axiom,(
% 3.44/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f27,plain,(
% 3.44/1.00    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.44/1.00    inference(ennf_transformation,[],[f7])).
% 3.44/1.00  
% 3.44/1.00  fof(f70,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f27])).
% 3.44/1.00  
% 3.44/1.00  fof(f19,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2)) => (r2_hidden(k2_mcart_1(X0),X2) & k1_mcart_1(X0) = X1))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f42,plain,(
% 3.44/1.00    ! [X0,X1,X2] : ((r2_hidden(k2_mcart_1(X0),X2) & k1_mcart_1(X0) = X1) | ~r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2)))),
% 3.44/1.00    inference(ennf_transformation,[],[f19])).
% 3.44/1.00  
% 3.44/1.00  fof(f88,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (k1_mcart_1(X0) = X1 | ~r2_hidden(X0,k2_zfmisc_1(k1_tarski(X1),X2))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f42])).
% 3.44/1.00  
% 3.44/1.00  fof(f108,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (k1_mcart_1(X0) = X1 | ~r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2))) )),
% 3.44/1.00    inference(definition_unfolding,[],[f88,f105])).
% 3.44/1.00  
% 3.44/1.00  fof(f21,axiom,(
% 3.44/1.00    ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1 & k1_mcart_1(k4_tarski(X0,X1)) = X0)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f91,plain,(
% 3.44/1.00    ( ! [X0,X1] : (k1_mcart_1(k4_tarski(X0,X1)) = X0) )),
% 3.44/1.00    inference(cnf_transformation,[],[f21])).
% 3.44/1.00  
% 3.44/1.00  fof(f17,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f26,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.44/1.00    inference(pure_predicate_removal,[],[f17])).
% 3.44/1.00  
% 3.44/1.00  fof(f40,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.44/1.00    inference(ennf_transformation,[],[f26])).
% 3.44/1.00  
% 3.44/1.00  fof(f84,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f40])).
% 3.44/1.00  
% 3.44/1.00  fof(f14,axiom,(
% 3.44/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => ! [X2] : (r2_hidden(X2,k1_relat_1(X1)) => r2_hidden(k1_funct_1(X1,X2),X0)))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f36,plain,(
% 3.44/1.00    ! [X0,X1] : (! [X2] : (r2_hidden(k1_funct_1(X1,X2),X0) | ~r2_hidden(X2,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.44/1.00    inference(ennf_transformation,[],[f14])).
% 3.44/1.00  
% 3.44/1.00  fof(f37,plain,(
% 3.44/1.00    ! [X0,X1] : (! [X2] : (r2_hidden(k1_funct_1(X1,X2),X0) | ~r2_hidden(X2,k1_relat_1(X1))) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.44/1.00    inference(flattening,[],[f36])).
% 3.44/1.00  
% 3.44/1.00  fof(f81,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (r2_hidden(k1_funct_1(X1,X2),X0) | ~r2_hidden(X2,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f37])).
% 3.44/1.00  
% 3.44/1.00  fof(f99,plain,(
% 3.44/1.00    v1_funct_1(sK7)),
% 3.44/1.00    inference(cnf_transformation,[],[f63])).
% 3.44/1.00  
% 3.44/1.00  fof(f103,plain,(
% 3.44/1.00    ~r2_hidden(k1_funct_1(sK7,sK5),sK6)),
% 3.44/1.00    inference(cnf_transformation,[],[f63])).
% 3.44/1.00  
% 3.44/1.00  fof(f13,axiom,(
% 3.44/1.00    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f34,plain,(
% 3.44/1.00    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.44/1.00    inference(ennf_transformation,[],[f13])).
% 3.44/1.00  
% 3.44/1.00  fof(f35,plain,(
% 3.44/1.00    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.44/1.00    inference(flattening,[],[f34])).
% 3.44/1.00  
% 3.44/1.00  fof(f79,plain,(
% 3.44/1.00    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f35])).
% 3.44/1.00  
% 3.44/1.00  fof(f22,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f44,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.44/1.00    inference(ennf_transformation,[],[f22])).
% 3.44/1.00  
% 3.44/1.00  fof(f45,plain,(
% 3.44/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.44/1.00    inference(flattening,[],[f44])).
% 3.44/1.00  
% 3.44/1.00  fof(f61,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.44/1.00    inference(nnf_transformation,[],[f45])).
% 3.44/1.00  
% 3.44/1.00  fof(f93,plain,(
% 3.44/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f61])).
% 3.44/1.00  
% 3.44/1.00  fof(f100,plain,(
% 3.44/1.00    v1_funct_2(sK7,k1_tarski(sK5),sK6)),
% 3.44/1.00    inference(cnf_transformation,[],[f63])).
% 3.44/1.00  
% 3.44/1.00  fof(f110,plain,(
% 3.44/1.00    v1_funct_2(sK7,k2_enumset1(sK5,sK5,sK5,sK5),sK6)),
% 3.44/1.00    inference(definition_unfolding,[],[f100,f105])).
% 3.44/1.00  
% 3.44/1.00  fof(f102,plain,(
% 3.44/1.00    k1_xboole_0 != sK6),
% 3.44/1.00    inference(cnf_transformation,[],[f63])).
% 3.44/1.00  
% 3.44/1.00  fof(f18,axiom,(
% 3.44/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (! [X3] : ~(! [X4] : ~r2_hidden(k4_tarski(X3,X4),X2) & r2_hidden(X3,X1)) <=> k1_relset_1(X1,X0,X2) = X1))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f41,plain,(
% 3.44/1.00    ! [X0,X1,X2] : ((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) <=> k1_relset_1(X1,X0,X2) = X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.44/1.00    inference(ennf_transformation,[],[f18])).
% 3.44/1.00  
% 3.44/1.00  fof(f54,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | ? [X3] : (! [X4] : ~r2_hidden(k4_tarski(X3,X4),X2) & r2_hidden(X3,X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.44/1.00    inference(nnf_transformation,[],[f41])).
% 3.44/1.00  
% 3.44/1.00  fof(f55,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | ? [X5] : (! [X6] : ~r2_hidden(k4_tarski(X5,X6),X2) & r2_hidden(X5,X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.44/1.00    inference(rectify,[],[f54])).
% 3.44/1.00  
% 3.44/1.00  fof(f57,plain,(
% 3.44/1.00    ! [X2,X1] : (? [X5] : (! [X6] : ~r2_hidden(k4_tarski(X5,X6),X2) & r2_hidden(X5,X1)) => (! [X6] : ~r2_hidden(k4_tarski(sK3(X1,X2),X6),X2) & r2_hidden(sK3(X1,X2),X1)))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f56,plain,(
% 3.44/1.00    ! [X3,X2] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) => r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f58,plain,(
% 3.44/1.00    ! [X0,X1,X2] : (((! [X3] : (r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | (! [X6] : ~r2_hidden(k4_tarski(sK3(X1,X2),X6),X2) & r2_hidden(sK3(X1,X2),X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.44/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f55,f57,f56])).
% 3.44/1.00  
% 3.44/1.00  fof(f87,plain,(
% 3.44/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2) | ~r2_hidden(X3,X1) | k1_relset_1(X1,X0,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f58])).
% 3.44/1.00  
% 3.44/1.00  fof(f1,axiom,(
% 3.44/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f64,plain,(
% 3.44/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f1])).
% 3.44/1.00  
% 3.44/1.00  fof(f15,axiom,(
% 3.44/1.00    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f38,plain,(
% 3.44/1.00    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.44/1.00    inference(ennf_transformation,[],[f15])).
% 3.44/1.00  
% 3.44/1.00  fof(f82,plain,(
% 3.44/1.00    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f38])).
% 3.44/1.00  
% 3.44/1.00  fof(f5,axiom,(
% 3.44/1.00    ! [X0] : ~v1_xboole_0(k1_tarski(X0))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f68,plain,(
% 3.44/1.00    ( ! [X0] : (~v1_xboole_0(k1_tarski(X0))) )),
% 3.44/1.00    inference(cnf_transformation,[],[f5])).
% 3.44/1.00  
% 3.44/1.00  fof(f106,plain,(
% 3.44/1.00    ( ! [X0] : (~v1_xboole_0(k2_enumset1(X0,X0,X0,X0))) )),
% 3.44/1.00    inference(definition_unfolding,[],[f68,f105])).
% 3.44/1.00  
% 3.44/1.00  fof(f6,axiom,(
% 3.44/1.00    ! [X0] : ? [X1] : m1_subset_1(X1,X0)),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f48,plain,(
% 3.44/1.00    ! [X0] : (? [X1] : m1_subset_1(X1,X0) => m1_subset_1(sK0(X0),X0))),
% 3.44/1.00    introduced(choice_axiom,[])).
% 3.44/1.00  
% 3.44/1.00  fof(f49,plain,(
% 3.44/1.00    ! [X0] : m1_subset_1(sK0(X0),X0)),
% 3.44/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f6,f48])).
% 3.44/1.00  
% 3.44/1.00  fof(f69,plain,(
% 3.44/1.00    ( ! [X0] : (m1_subset_1(sK0(X0),X0)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f49])).
% 3.44/1.00  
% 3.44/1.00  fof(f9,axiom,(
% 3.44/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 3.44/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.44/1.00  
% 3.44/1.00  fof(f28,plain,(
% 3.44/1.00    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 3.44/1.00    inference(ennf_transformation,[],[f9])).
% 3.44/1.00  
% 3.44/1.00  fof(f29,plain,(
% 3.44/1.00    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 3.44/1.00    inference(flattening,[],[f28])).
% 3.44/1.00  
% 3.44/1.00  fof(f72,plain,(
% 3.44/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 3.44/1.00    inference(cnf_transformation,[],[f29])).
% 3.44/1.00  
% 3.44/1.00  cnf(c_23,plain,
% 3.44/1.00      ( r2_hidden(sK4(X0),X0) | k1_xboole_0 = X0 ),
% 3.44/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1406,plain,
% 3.44/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK4(X0),X0) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_34,negated_conjecture,
% 3.44/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) ),
% 3.44/1.00      inference(cnf_transformation,[],[f109]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1404,plain,
% 3.44/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_16,plain,
% 3.44/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.44/1.00      | v1_relat_1(X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1412,plain,
% 3.44/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.44/1.00      | v1_relat_1(X0) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2099,plain,
% 3.44/1.00      ( v1_relat_1(sK7) = iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1404,c_1412]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_11,plain,
% 3.44/1.00      ( ~ v1_relat_1(X0)
% 3.44/1.00      | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1415,plain,
% 3.44/1.00      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
% 3.44/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2113,plain,
% 3.44/1.00      ( k10_relat_1(sK7,k2_relat_1(sK7)) = k1_relat_1(sK7) ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_2099,c_1415]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_9,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK1(X0,X2,X1)),X1)
% 3.44/1.00      | ~ v1_relat_1(X1) ),
% 3.44/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1417,plain,
% 3.44/1.00      ( r2_hidden(X0,k10_relat_1(X1,X2)) != iProver_top
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK1(X0,X2,X1)),X1) = iProver_top
% 3.44/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,X1)
% 3.44/1.00      | r2_hidden(X0,X2)
% 3.44/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 3.44/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1423,plain,
% 3.44/1.00      ( r2_hidden(X0,X1) != iProver_top
% 3.44/1.00      | r2_hidden(X0,X2) = iProver_top
% 3.44/1.00      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3077,plain,
% 3.44/1.00      ( r2_hidden(X0,k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)) = iProver_top
% 3.44/1.00      | r2_hidden(X0,sK7) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1404,c_1423]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_22,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2))
% 3.44/1.00      | k1_mcart_1(X0) = X1 ),
% 3.44/1.00      inference(cnf_transformation,[],[f108]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1407,plain,
% 3.44/1.00      ( k1_mcart_1(X0) = X1
% 3.44/1.00      | r2_hidden(X0,k2_zfmisc_1(k2_enumset1(X1,X1,X1,X1),X2)) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3287,plain,
% 3.44/1.00      ( k1_mcart_1(X0) = sK5 | r2_hidden(X0,sK7) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_3077,c_1407]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3306,plain,
% 3.44/1.00      ( k1_mcart_1(k4_tarski(X0,sK1(X0,X1,sK7))) = sK5
% 3.44/1.00      | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
% 3.44/1.00      | v1_relat_1(sK7) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1417,c_3287]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_25,plain,
% 3.44/1.00      ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
% 3.44/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3315,plain,
% 3.44/1.00      ( sK5 = X0
% 3.44/1.00      | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top
% 3.44/1.00      | v1_relat_1(sK7) != iProver_top ),
% 3.44/1.00      inference(demodulation,[status(thm)],[c_3306,c_25]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_39,plain,
% 3.44/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1649,plain,
% 3.44/1.00      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)))
% 3.44/1.00      | v1_relat_1(sK7) ),
% 3.44/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1650,plain,
% 3.44/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) != iProver_top
% 3.44/1.00      | v1_relat_1(sK7) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_1649]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3682,plain,
% 3.44/1.00      ( r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top | sK5 = X0 ),
% 3.44/1.00      inference(global_propositional_subsumption,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_3315,c_39,c_1650]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3683,plain,
% 3.44/1.00      ( sK5 = X0 | r2_hidden(X0,k10_relat_1(sK7,X1)) != iProver_top ),
% 3.44/1.00      inference(renaming,[status(thm)],[c_3682]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3693,plain,
% 3.44/1.00      ( sK5 = X0 | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_2113,c_3683]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_4682,plain,
% 3.44/1.00      ( sK4(k1_relat_1(sK7)) = sK5 | k1_relat_1(sK7) = k1_xboole_0 ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1406,c_3693]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_5947,plain,
% 3.44/1.00      ( k1_relat_1(sK7) = k1_xboole_0
% 3.44/1.00      | r2_hidden(sK5,k1_relat_1(sK7)) = iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_4682,c_1406]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_17,plain,
% 3.44/1.00      ( v5_relat_1(X0,X1)
% 3.44/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.44/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_14,plain,
% 3.44/1.00      ( ~ v5_relat_1(X0,X1)
% 3.44/1.00      | ~ r2_hidden(X2,k1_relat_1(X0))
% 3.44/1.00      | r2_hidden(k1_funct_1(X0,X2),X1)
% 3.44/1.00      | ~ v1_funct_1(X0)
% 3.44/1.00      | ~ v1_relat_1(X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_36,negated_conjecture,
% 3.44/1.00      ( v1_funct_1(sK7) ),
% 3.44/1.00      inference(cnf_transformation,[],[f99]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_419,plain,
% 3.44/1.00      ( ~ v5_relat_1(X0,X1)
% 3.44/1.00      | ~ r2_hidden(X2,k1_relat_1(X0))
% 3.44/1.00      | r2_hidden(k1_funct_1(X0,X2),X1)
% 3.44/1.00      | ~ v1_relat_1(X0)
% 3.44/1.00      | sK7 != X0 ),
% 3.44/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_36]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_420,plain,
% 3.44/1.00      ( ~ v5_relat_1(sK7,X0)
% 3.44/1.00      | ~ r2_hidden(X1,k1_relat_1(sK7))
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X1),X0)
% 3.44/1.00      | ~ v1_relat_1(sK7) ),
% 3.44/1.00      inference(unflattening,[status(thm)],[c_419]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_442,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK7))
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X0),X1)
% 3.44/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 3.44/1.00      | ~ v1_relat_1(sK7)
% 3.44/1.00      | X1 != X4
% 3.44/1.00      | sK7 != X2 ),
% 3.44/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_420]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_443,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK7))
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X0),X1)
% 3.44/1.00      | ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.44/1.00      | ~ v1_relat_1(sK7) ),
% 3.44/1.00      inference(unflattening,[status(thm)],[c_442]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_455,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK7))
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X0),X1)
% 3.44/1.00      | ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.44/1.00      inference(forward_subsumption_resolution,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_443,c_16]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1402,plain,
% 3.44/1.00      ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X0),X1) = iProver_top
% 3.44/1.00      | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_455]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1703,plain,
% 3.44/1.00      ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
% 3.44/1.00      | r2_hidden(k1_funct_1(sK7,X0),sK6) = iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1404,c_1402]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_32,negated_conjecture,
% 3.44/1.00      ( ~ r2_hidden(k1_funct_1(sK7,sK5),sK6) ),
% 3.44/1.00      inference(cnf_transformation,[],[f103]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1405,plain,
% 3.44/1.00      ( r2_hidden(k1_funct_1(sK7,sK5),sK6) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1710,plain,
% 3.44/1.00      ( r2_hidden(sK5,k1_relat_1(sK7)) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1703,c_1405]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_5950,plain,
% 3.44/1.00      ( k1_relat_1(sK7) = k1_xboole_0 ),
% 3.44/1.00      inference(global_propositional_subsumption,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_5947,c_1710]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_13,plain,
% 3.44/1.00      ( ~ v1_relat_1(X0)
% 3.44/1.00      | k1_relat_1(X0) != k1_xboole_0
% 3.44/1.00      | k1_xboole_0 = X0 ),
% 3.44/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1413,plain,
% 3.44/1.00      ( k1_relat_1(X0) != k1_xboole_0
% 3.44/1.00      | k1_xboole_0 = X0
% 3.44/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_5966,plain,
% 3.44/1.00      ( sK7 = k1_xboole_0 | v1_relat_1(sK7) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_5950,c_1413]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1762,plain,
% 3.44/1.00      ( ~ v1_relat_1(sK7)
% 3.44/1.00      | k1_relat_1(sK7) != k1_xboole_0
% 3.44/1.00      | k1_xboole_0 = sK7 ),
% 3.44/1.00      inference(instantiation,[status(thm)],[c_13]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_957,plain,( X0 = X0 ),theory(equality) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1787,plain,
% 3.44/1.00      ( sK7 = sK7 ),
% 3.44/1.00      inference(instantiation,[status(thm)],[c_957]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_958,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2372,plain,
% 3.44/1.00      ( sK7 != X0 | sK7 = k1_xboole_0 | k1_xboole_0 != X0 ),
% 3.44/1.00      inference(instantiation,[status(thm)],[c_958]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2816,plain,
% 3.44/1.00      ( sK7 != sK7 | sK7 = k1_xboole_0 | k1_xboole_0 != sK7 ),
% 3.44/1.00      inference(instantiation,[status(thm)],[c_2372]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_6095,plain,
% 3.44/1.00      ( sK7 = k1_xboole_0 ),
% 3.44/1.00      inference(global_propositional_subsumption,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_5966,c_34,c_1649,c_1710,c_1762,c_1787,c_2816,c_5947]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_31,plain,
% 3.44/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.44/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.44/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.44/1.00      | k1_xboole_0 = X2 ),
% 3.44/1.00      inference(cnf_transformation,[],[f93]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_35,negated_conjecture,
% 3.44/1.00      ( v1_funct_2(sK7,k2_enumset1(sK5,sK5,sK5,sK5),sK6) ),
% 3.44/1.00      inference(cnf_transformation,[],[f110]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_636,plain,
% 3.44/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.44/1.00      | k2_enumset1(sK5,sK5,sK5,sK5) != X1
% 3.44/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.44/1.00      | sK6 != X2
% 3.44/1.00      | sK7 != X0
% 3.44/1.00      | k1_xboole_0 = X2 ),
% 3.44/1.00      inference(resolution_lifted,[status(thm)],[c_31,c_35]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_637,plain,
% 3.44/1.00      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6)))
% 3.44/1.00      | k1_relset_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6,sK7) = k2_enumset1(sK5,sK5,sK5,sK5)
% 3.44/1.00      | k1_xboole_0 = sK6 ),
% 3.44/1.00      inference(unflattening,[status(thm)],[c_636]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_33,negated_conjecture,
% 3.44/1.00      ( k1_xboole_0 != sK6 ),
% 3.44/1.00      inference(cnf_transformation,[],[f102]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_639,plain,
% 3.44/1.00      ( k1_relset_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6,sK7) = k2_enumset1(sK5,sK5,sK5,sK5) ),
% 3.44/1.00      inference(global_propositional_subsumption,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_637,c_34,c_33]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_18,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,X1)
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK2(X2,X0)),X2)
% 3.44/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 3.44/1.00      | k1_relset_1(X1,X3,X2) != X1 ),
% 3.44/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1411,plain,
% 3.44/1.00      ( k1_relset_1(X0,X1,X2) != X0
% 3.44/1.00      | r2_hidden(X3,X0) != iProver_top
% 3.44/1.00      | r2_hidden(k4_tarski(X3,sK2(X2,X3)),X2) = iProver_top
% 3.44/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_3854,plain,
% 3.44/1.00      ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top
% 3.44/1.00      | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK5,sK5,sK5,sK5),sK6))) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_639,c_1411]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_4137,plain,
% 3.44/1.00      ( r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top
% 3.44/1.00      | r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top ),
% 3.44/1.00      inference(global_propositional_subsumption,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_3854,c_39]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_4138,plain,
% 3.44/1.00      ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK2(sK7,X0)),sK7) = iProver_top ),
% 3.44/1.00      inference(renaming,[status(thm)],[c_4137]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_6112,plain,
% 3.44/1.00      ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top
% 3.44/1.00      | r2_hidden(k4_tarski(X0,sK2(k1_xboole_0,X0)),k1_xboole_0) = iProver_top ),
% 3.44/1.00      inference(demodulation,[status(thm)],[c_6095,c_4138]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_0,plain,
% 3.44/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f64]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_15,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_394,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 3.44/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_15]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_395,plain,
% 3.44/1.00      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 3.44/1.00      inference(unflattening,[status(thm)],[c_394]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1403,plain,
% 3.44/1.00      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_6368,plain,
% 3.44/1.00      ( r2_hidden(X0,k2_enumset1(sK5,sK5,sK5,sK5)) != iProver_top ),
% 3.44/1.00      inference(forward_subsumption_resolution,
% 3.44/1.00                [status(thm)],
% 3.44/1.00                [c_6112,c_1403]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_6374,plain,
% 3.44/1.00      ( k2_enumset1(sK5,sK5,sK5,sK5) = k1_xboole_0 ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1406,c_6368]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1,plain,
% 3.44/1.00      ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
% 3.44/1.00      inference(cnf_transformation,[],[f106]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1425,plain,
% 3.44/1.00      ( v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_6766,plain,
% 3.44/1.00      ( v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_6374,c_1425]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2,plain,
% 3.44/1.00      ( m1_subset_1(sK0(X0),X0) ),
% 3.44/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1424,plain,
% 3.44/1.00      ( m1_subset_1(sK0(X0),X0) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_5,plain,
% 3.44/1.00      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 3.44/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_1421,plain,
% 3.44/1.00      ( r2_hidden(X0,X1) = iProver_top
% 3.44/1.00      | m1_subset_1(X0,X1) != iProver_top
% 3.44/1.00      | v1_xboole_0(X1) = iProver_top ),
% 3.44/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_2563,plain,
% 3.44/1.00      ( r2_hidden(sK0(X0),X0) = iProver_top
% 3.44/1.00      | v1_xboole_0(X0) = iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_1424,c_1421]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(c_5650,plain,
% 3.44/1.00      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.44/1.00      inference(superposition,[status(thm)],[c_2563,c_1403]) ).
% 3.44/1.00  
% 3.44/1.00  cnf(contradiction,plain,
% 3.44/1.00      ( $false ),
% 3.44/1.00      inference(minisat,[status(thm)],[c_6766,c_5650]) ).
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.44/1.00  
% 3.44/1.00  ------                               Statistics
% 3.44/1.00  
% 3.44/1.00  ------ General
% 3.44/1.00  
% 3.44/1.00  abstr_ref_over_cycles:                  0
% 3.44/1.00  abstr_ref_under_cycles:                 0
% 3.44/1.00  gc_basic_clause_elim:                   0
% 3.44/1.00  forced_gc_time:                         0
% 3.44/1.00  parsing_time:                           0.01
% 3.44/1.00  unif_index_cands_time:                  0.
% 3.44/1.00  unif_index_add_time:                    0.
% 3.44/1.00  orderings_time:                         0.
% 3.44/1.00  out_proof_time:                         0.01
% 3.44/1.00  total_time:                             0.217
% 3.44/1.00  num_of_symbols:                         59
% 3.44/1.00  num_of_terms:                           8196
% 3.44/1.00  
% 3.44/1.00  ------ Preprocessing
% 3.44/1.00  
% 3.44/1.00  num_of_splits:                          0
% 3.44/1.00  num_of_split_atoms:                     0
% 3.44/1.00  num_of_reused_defs:                     0
% 3.44/1.00  num_eq_ax_congr_red:                    42
% 3.44/1.00  num_of_sem_filtered_clauses:            1
% 3.44/1.00  num_of_subtypes:                        0
% 3.44/1.00  monotx_restored_types:                  0
% 3.44/1.00  sat_num_of_epr_types:                   0
% 3.44/1.00  sat_num_of_non_cyclic_types:            0
% 3.44/1.00  sat_guarded_non_collapsed_types:        0
% 3.44/1.00  num_pure_diseq_elim:                    0
% 3.44/1.00  simp_replaced_by:                       0
% 3.44/1.00  res_preprocessed:                       158
% 3.44/1.00  prep_upred:                             0
% 3.44/1.00  prep_unflattend:                        42
% 3.44/1.00  smt_new_axioms:                         0
% 3.44/1.00  pred_elim_cands:                        4
% 3.44/1.00  pred_elim:                              4
% 3.44/1.00  pred_elim_cl:                           7
% 3.44/1.00  pred_elim_cycles:                       9
% 3.44/1.00  merged_defs:                            0
% 3.44/1.00  merged_defs_ncl:                        0
% 3.44/1.00  bin_hyper_res:                          0
% 3.44/1.00  prep_cycles:                            4
% 3.44/1.00  pred_elim_time:                         0.009
% 3.44/1.00  splitting_time:                         0.
% 3.44/1.00  sem_filter_time:                        0.
% 3.44/1.00  monotx_time:                            0.001
% 3.44/1.00  subtype_inf_time:                       0.
% 3.44/1.00  
% 3.44/1.00  ------ Problem properties
% 3.44/1.00  
% 3.44/1.00  clauses:                                30
% 3.44/1.00  conjectures:                            3
% 3.44/1.00  epr:                                    3
% 3.44/1.00  horn:                                   26
% 3.44/1.00  ground:                                 6
% 3.44/1.00  unary:                                  10
% 3.44/1.00  binary:                                 5
% 3.44/1.00  lits:                                   69
% 3.44/1.00  lits_eq:                                19
% 3.44/1.00  fd_pure:                                0
% 3.44/1.00  fd_pseudo:                              0
% 3.44/1.00  fd_cond:                                3
% 3.44/1.00  fd_pseudo_cond:                         1
% 3.44/1.00  ac_symbols:                             0
% 3.44/1.00  
% 3.44/1.00  ------ Propositional Solver
% 3.44/1.00  
% 3.44/1.00  prop_solver_calls:                      28
% 3.44/1.00  prop_fast_solver_calls:                 1056
% 3.44/1.00  smt_solver_calls:                       0
% 3.44/1.00  smt_fast_solver_calls:                  0
% 3.44/1.00  prop_num_of_clauses:                    2412
% 3.44/1.00  prop_preprocess_simplified:             6821
% 3.44/1.00  prop_fo_subsumed:                       15
% 3.44/1.00  prop_solver_time:                       0.
% 3.44/1.00  smt_solver_time:                        0.
% 3.44/1.00  smt_fast_solver_time:                   0.
% 3.44/1.00  prop_fast_solver_time:                  0.
% 3.44/1.00  prop_unsat_core_time:                   0.
% 3.44/1.00  
% 3.44/1.00  ------ QBF
% 3.44/1.00  
% 3.44/1.00  qbf_q_res:                              0
% 3.44/1.00  qbf_num_tautologies:                    0
% 3.44/1.00  qbf_prep_cycles:                        0
% 3.44/1.00  
% 3.44/1.00  ------ BMC1
% 3.44/1.00  
% 3.44/1.00  bmc1_current_bound:                     -1
% 3.44/1.00  bmc1_last_solved_bound:                 -1
% 3.44/1.00  bmc1_unsat_core_size:                   -1
% 3.44/1.00  bmc1_unsat_core_parents_size:           -1
% 3.44/1.00  bmc1_merge_next_fun:                    0
% 3.44/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.44/1.00  
% 3.44/1.00  ------ Instantiation
% 3.44/1.00  
% 3.44/1.00  inst_num_of_clauses:                    602
% 3.44/1.00  inst_num_in_passive:                    61
% 3.44/1.00  inst_num_in_active:                     347
% 3.44/1.00  inst_num_in_unprocessed:                194
% 3.44/1.00  inst_num_of_loops:                      410
% 3.44/1.00  inst_num_of_learning_restarts:          0
% 3.44/1.00  inst_num_moves_active_passive:          60
% 3.44/1.00  inst_lit_activity:                      0
% 3.44/1.00  inst_lit_activity_moves:                0
% 3.44/1.00  inst_num_tautologies:                   0
% 3.44/1.00  inst_num_prop_implied:                  0
% 3.44/1.00  inst_num_existing_simplified:           0
% 3.44/1.00  inst_num_eq_res_simplified:             0
% 3.44/1.00  inst_num_child_elim:                    0
% 3.44/1.00  inst_num_of_dismatching_blockings:      257
% 3.44/1.00  inst_num_of_non_proper_insts:           510
% 3.44/1.00  inst_num_of_duplicates:                 0
% 3.44/1.00  inst_inst_num_from_inst_to_res:         0
% 3.44/1.00  inst_dismatching_checking_time:         0.
% 3.44/1.00  
% 3.44/1.00  ------ Resolution
% 3.44/1.00  
% 3.44/1.00  res_num_of_clauses:                     0
% 3.44/1.00  res_num_in_passive:                     0
% 3.44/1.00  res_num_in_active:                      0
% 3.44/1.00  res_num_of_loops:                       162
% 3.44/1.00  res_forward_subset_subsumed:            44
% 3.44/1.00  res_backward_subset_subsumed:           0
% 3.44/1.00  res_forward_subsumed:                   0
% 3.44/1.00  res_backward_subsumed:                  0
% 3.44/1.00  res_forward_subsumption_resolution:     1
% 3.44/1.00  res_backward_subsumption_resolution:    0
% 3.44/1.00  res_clause_to_clause_subsumption:       323
% 3.44/1.00  res_orphan_elimination:                 0
% 3.44/1.00  res_tautology_del:                      51
% 3.44/1.00  res_num_eq_res_simplified:              0
% 3.44/1.00  res_num_sel_changes:                    0
% 3.44/1.00  res_moves_from_active_to_pass:          0
% 3.44/1.00  
% 3.44/1.00  ------ Superposition
% 3.44/1.00  
% 3.44/1.00  sup_time_total:                         0.
% 3.44/1.00  sup_time_generating:                    0.
% 3.44/1.00  sup_time_sim_full:                      0.
% 3.44/1.00  sup_time_sim_immed:                     0.
% 3.44/1.00  
% 3.44/1.00  sup_num_of_clauses:                     121
% 3.44/1.00  sup_num_in_active:                      38
% 3.44/1.00  sup_num_in_passive:                     83
% 3.44/1.00  sup_num_of_loops:                       81
% 3.44/1.00  sup_fw_superposition:                   70
% 3.44/1.00  sup_bw_superposition:                   66
% 3.44/1.00  sup_immediate_simplified:               32
% 3.44/1.00  sup_given_eliminated:                   1
% 3.44/1.00  comparisons_done:                       0
% 3.44/1.00  comparisons_avoided:                    12
% 3.44/1.00  
% 3.44/1.00  ------ Simplifications
% 3.44/1.00  
% 3.44/1.00  
% 3.44/1.00  sim_fw_subset_subsumed:                 15
% 3.44/1.00  sim_bw_subset_subsumed:                 9
% 3.44/1.00  sim_fw_subsumed:                        8
% 3.44/1.00  sim_bw_subsumed:                        0
% 3.44/1.00  sim_fw_subsumption_res:                 1
% 3.44/1.00  sim_bw_subsumption_res:                 0
% 3.44/1.00  sim_tautology_del:                      0
% 3.44/1.00  sim_eq_tautology_del:                   3
% 3.44/1.00  sim_eq_res_simp:                        0
% 3.44/1.00  sim_fw_demodulated:                     7
% 3.44/1.00  sim_bw_demodulated:                     44
% 3.44/1.00  sim_light_normalised:                   4
% 3.44/1.00  sim_joinable_taut:                      0
% 3.44/1.00  sim_joinable_simp:                      0
% 3.44/1.00  sim_ac_normalised:                      0
% 3.44/1.00  sim_smt_subsumption:                    0
% 3.44/1.00  
%------------------------------------------------------------------------------
