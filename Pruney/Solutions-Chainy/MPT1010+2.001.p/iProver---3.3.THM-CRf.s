%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:01 EST 2020

% Result     : Theorem 3.18s
% Output     : CNFRefutation 3.18s
% Verified   : 
% Statistics : Number of formulae       :  101 ( 191 expanded)
%              Number of clauses        :   42 (  47 expanded)
%              Number of leaves         :   15 (  44 expanded)
%              Depth                    :   19
%              Number of atoms          :  359 ( 623 expanded)
%              Number of equality atoms :  191 ( 277 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f22,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => k1_funct_1(X3,X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
          & v1_funct_2(X3,X0,k1_tarski(X1))
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => k1_funct_1(X3,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f42,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f43,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f42])).

fof(f65,plain,
    ( ? [X0,X1,X2,X3] :
        ( k1_funct_1(X3,X2) != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
   => ( k1_funct_1(sK9,sK8) != sK7
      & r2_hidden(sK8,sK6)
      & m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7))))
      & v1_funct_2(sK9,sK6,k1_tarski(sK7))
      & v1_funct_1(sK9) ) ),
    introduced(choice_axiom,[])).

fof(f66,plain,
    ( k1_funct_1(sK9,sK8) != sK7
    & r2_hidden(sK8,sK6)
    & m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7))))
    & v1_funct_2(sK9,sK6,k1_tarski(sK7))
    & v1_funct_1(sK9) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7,sK8,sK9])],[f43,f65])).

fof(f115,plain,(
    r2_hidden(sK8,sK6) ),
    inference(cnf_transformation,[],[f66])).

fof(f21,axiom,(
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

fof(f40,plain,(
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
    inference(ennf_transformation,[],[f21])).

fof(f41,plain,(
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
    inference(flattening,[],[f40])).

fof(f64,plain,(
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
    inference(nnf_transformation,[],[f41])).

fof(f106,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f113,plain,(
    v1_funct_2(sK9,sK6,k1_tarski(sK7)) ),
    inference(cnf_transformation,[],[f66])).

fof(f5,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f79,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f80,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f81,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f117,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f80,f81])).

fof(f118,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f79,f117])).

fof(f129,plain,(
    v1_funct_2(sK9,sK6,k2_enumset1(sK7,sK7,sK7,sK7)) ),
    inference(definition_unfolding,[],[f113,f118])).

fof(f114,plain,(
    m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7)))) ),
    inference(cnf_transformation,[],[f66])).

fof(f128,plain,(
    m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7)))) ),
    inference(definition_unfolding,[],[f114,f118])).

fof(f20,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f105,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f9,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f86,plain,(
    ! [X0] : ~ v1_xboole_0(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f127,plain,(
    ! [X0] : ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
    inference(definition_unfolding,[],[f86,f118])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f18,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f18])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f103,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v5_relat_1(X2,X0)
        & v1_relat_1(X2) )
     => ( r2_hidden(X1,k1_relat_1(X2))
       => m1_subset_1(k1_funct_1(X2,X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_funct_1(X2,X1),X0)
      | ~ r2_hidden(X1,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v5_relat_1(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_funct_1(X2,X1),X0)
      | ~ r2_hidden(X1,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v5_relat_1(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f31])).

fof(f96,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k1_funct_1(X2,X1),X0)
      | ~ r2_hidden(X1,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v5_relat_1(X2,X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f102,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f112,plain,(
    v1_funct_1(sK9) ),
    inference(cnf_transformation,[],[f66])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f27])).

fof(f91,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f48,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f49,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(flattening,[],[f48])).

fof(f50,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(rectify,[],[f49])).

fof(f51,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ( ( X2 != X4
              & X1 != X4
              & X0 != X4 )
            | ~ r2_hidden(X4,X3) )
          & ( X2 = X4
            | X1 = X4
            | X0 = X4
            | r2_hidden(X4,X3) ) )
     => ( ( ( sK1(X0,X1,X2,X3) != X2
            & sK1(X0,X1,X2,X3) != X1
            & sK1(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
        & ( sK1(X0,X1,X2,X3) = X2
          | sK1(X0,X1,X2,X3) = X1
          | sK1(X0,X1,X2,X3) = X0
          | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK1(X0,X1,X2,X3) != X2
              & sK1(X0,X1,X2,X3) != X1
              & sK1(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
          & ( sK1(X0,X1,X2,X3) = X2
            | sK1(X0,X1,X2,X3) = X1
            | sK1(X0,X1,X2,X3) = X0
            | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f50,f51])).

fof(f71,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f52])).

fof(f126,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k2_enumset1(X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f71,f81])).

fof(f136,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k2_enumset1(X0,X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f126])).

fof(f116,plain,(
    k1_funct_1(sK9,sK8) != sK7 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_43,negated_conjecture,
    ( r2_hidden(sK8,sK6) ),
    inference(cnf_transformation,[],[f115])).

cnf(c_2986,plain,
    ( r2_hidden(sK8,sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_43])).

cnf(c_41,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f106])).

cnf(c_45,negated_conjecture,
    ( v1_funct_2(sK9,sK6,k2_enumset1(sK7,sK7,sK7,sK7)) ),
    inference(cnf_transformation,[],[f129])).

cnf(c_822,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_enumset1(sK7,sK7,sK7,sK7) != X2
    | k1_relset_1(X1,X2,X0) = X1
    | sK6 != X1
    | sK9 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_41,c_45])).

cnf(c_823,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7))))
    | k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = sK6
    | k1_xboole_0 = k2_enumset1(sK7,sK7,sK7,sK7) ),
    inference(unflattening,[status(thm)],[c_822])).

cnf(c_44,negated_conjecture,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7)))) ),
    inference(cnf_transformation,[],[f128])).

cnf(c_825,plain,
    ( k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = sK6
    | k1_xboole_0 = k2_enumset1(sK7,sK7,sK7,sK7) ),
    inference(global_propositional_subsumption,[status(thm)],[c_823,c_44])).

cnf(c_2985,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_44])).

cnf(c_35,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f105])).

cnf(c_2987,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_4373,plain,
    ( k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = k1_relat_1(sK9) ),
    inference(superposition,[status(thm)],[c_2985,c_2987])).

cnf(c_4965,plain,
    ( k2_enumset1(sK7,sK7,sK7,sK7) = k1_xboole_0
    | k1_relat_1(sK9) = sK6 ),
    inference(superposition,[status(thm)],[c_825,c_4373])).

cnf(c_16,plain,
    ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
    inference(cnf_transformation,[],[f127])).

cnf(c_3000,plain,
    ( v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_4972,plain,
    ( k1_relat_1(sK9) = sK6
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4965,c_3000])).

cnf(c_2,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_149,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_5090,plain,
    ( k1_relat_1(sK9) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4972,c_149])).

cnf(c_33,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_26,plain,
    ( ~ v5_relat_1(X0,X1)
    | m1_subset_1(k1_funct_1(X0,X2),X1)
    | ~ r2_hidden(X2,k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_572,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_funct_1(X0,X3),X2)
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(resolution,[status(thm)],[c_33,c_26])).

cnf(c_32,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f102])).

cnf(c_576,plain,
    ( ~ r2_hidden(X3,k1_relat_1(X0))
    | m1_subset_1(k1_funct_1(X0,X3),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_572,c_32])).

cnf(c_577,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_funct_1(X0,X3),X2)
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_funct_1(X0) ),
    inference(renaming,[status(thm)],[c_576])).

cnf(c_2983,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k1_funct_1(X0,X3),X2) = iProver_top
    | r2_hidden(X3,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_577])).

cnf(c_3453,plain,
    ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK9)) != iProver_top
    | v1_funct_1(sK9) != iProver_top ),
    inference(superposition,[status(thm)],[c_2985,c_2983])).

cnf(c_46,negated_conjecture,
    ( v1_funct_1(sK9) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_47,plain,
    ( v1_funct_1(sK9) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_46])).

cnf(c_3733,plain,
    ( r2_hidden(X0,k1_relat_1(sK9)) != iProver_top
    | m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3453,c_47])).

cnf(c_3734,plain,
    ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK9)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3733])).

cnf(c_5094,plain,
    ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5090,c_3734])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_2998,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_7950,plain,
    ( r2_hidden(X0,sK6) != iProver_top
    | r2_hidden(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
    | v1_xboole_0(k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5094,c_2998])).

cnf(c_8447,plain,
    ( r2_hidden(X0,sK6) != iProver_top
    | r2_hidden(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7950,c_3000])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k2_enumset1(X1,X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f136])).

cnf(c_3005,plain,
    ( X0 = X1
    | X0 = X2
    | X0 = X3
    | r2_hidden(X0,k2_enumset1(X1,X1,X2,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_9893,plain,
    ( k1_funct_1(sK9,X0) = sK7
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_8447,c_3005])).

cnf(c_10409,plain,
    ( k1_funct_1(sK9,sK8) = sK7 ),
    inference(superposition,[status(thm)],[c_2986,c_9893])).

cnf(c_42,negated_conjecture,
    ( k1_funct_1(sK9,sK8) != sK7 ),
    inference(cnf_transformation,[],[f116])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10409,c_42])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:47:00 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.18/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.18/1.00  
% 3.18/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.18/1.00  
% 3.18/1.00  ------  iProver source info
% 3.18/1.00  
% 3.18/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.18/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.18/1.00  git: non_committed_changes: false
% 3.18/1.00  git: last_make_outside_of_git: false
% 3.18/1.00  
% 3.18/1.00  ------ 
% 3.18/1.00  
% 3.18/1.00  ------ Input Options
% 3.18/1.00  
% 3.18/1.00  --out_options                           all
% 3.18/1.00  --tptp_safe_out                         true
% 3.18/1.00  --problem_path                          ""
% 3.18/1.00  --include_path                          ""
% 3.18/1.00  --clausifier                            res/vclausify_rel
% 3.18/1.00  --clausifier_options                    --mode clausify
% 3.18/1.00  --stdin                                 false
% 3.18/1.00  --stats_out                             all
% 3.18/1.00  
% 3.18/1.00  ------ General Options
% 3.18/1.00  
% 3.18/1.00  --fof                                   false
% 3.18/1.00  --time_out_real                         305.
% 3.18/1.00  --time_out_virtual                      -1.
% 3.18/1.00  --symbol_type_check                     false
% 3.18/1.00  --clausify_out                          false
% 3.18/1.00  --sig_cnt_out                           false
% 3.18/1.00  --trig_cnt_out                          false
% 3.18/1.00  --trig_cnt_out_tolerance                1.
% 3.18/1.00  --trig_cnt_out_sk_spl                   false
% 3.18/1.00  --abstr_cl_out                          false
% 3.18/1.00  
% 3.18/1.00  ------ Global Options
% 3.18/1.00  
% 3.18/1.00  --schedule                              default
% 3.18/1.00  --add_important_lit                     false
% 3.18/1.00  --prop_solver_per_cl                    1000
% 3.18/1.00  --min_unsat_core                        false
% 3.18/1.00  --soft_assumptions                      false
% 3.18/1.00  --soft_lemma_size                       3
% 3.18/1.00  --prop_impl_unit_size                   0
% 3.18/1.00  --prop_impl_unit                        []
% 3.18/1.00  --share_sel_clauses                     true
% 3.18/1.00  --reset_solvers                         false
% 3.18/1.00  --bc_imp_inh                            [conj_cone]
% 3.18/1.00  --conj_cone_tolerance                   3.
% 3.18/1.00  --extra_neg_conj                        none
% 3.18/1.00  --large_theory_mode                     true
% 3.18/1.00  --prolific_symb_bound                   200
% 3.18/1.00  --lt_threshold                          2000
% 3.18/1.00  --clause_weak_htbl                      true
% 3.18/1.00  --gc_record_bc_elim                     false
% 3.18/1.00  
% 3.18/1.00  ------ Preprocessing Options
% 3.18/1.00  
% 3.18/1.00  --preprocessing_flag                    true
% 3.18/1.00  --time_out_prep_mult                    0.1
% 3.18/1.00  --splitting_mode                        input
% 3.18/1.00  --splitting_grd                         true
% 3.18/1.00  --splitting_cvd                         false
% 3.18/1.00  --splitting_cvd_svl                     false
% 3.18/1.00  --splitting_nvd                         32
% 3.18/1.00  --sub_typing                            true
% 3.18/1.00  --prep_gs_sim                           true
% 3.18/1.00  --prep_unflatten                        true
% 3.18/1.00  --prep_res_sim                          true
% 3.18/1.00  --prep_upred                            true
% 3.18/1.00  --prep_sem_filter                       exhaustive
% 3.18/1.00  --prep_sem_filter_out                   false
% 3.18/1.00  --pred_elim                             true
% 3.18/1.00  --res_sim_input                         true
% 3.18/1.00  --eq_ax_congr_red                       true
% 3.18/1.00  --pure_diseq_elim                       true
% 3.18/1.00  --brand_transform                       false
% 3.18/1.00  --non_eq_to_eq                          false
% 3.18/1.00  --prep_def_merge                        true
% 3.18/1.00  --prep_def_merge_prop_impl              false
% 3.18/1.00  --prep_def_merge_mbd                    true
% 3.18/1.00  --prep_def_merge_tr_red                 false
% 3.18/1.00  --prep_def_merge_tr_cl                  false
% 3.18/1.00  --smt_preprocessing                     true
% 3.18/1.00  --smt_ac_axioms                         fast
% 3.18/1.00  --preprocessed_out                      false
% 3.18/1.00  --preprocessed_stats                    false
% 3.18/1.00  
% 3.18/1.00  ------ Abstraction refinement Options
% 3.18/1.00  
% 3.18/1.00  --abstr_ref                             []
% 3.18/1.00  --abstr_ref_prep                        false
% 3.18/1.00  --abstr_ref_until_sat                   false
% 3.18/1.00  --abstr_ref_sig_restrict                funpre
% 3.18/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.18/1.00  --abstr_ref_under                       []
% 3.18/1.00  
% 3.18/1.00  ------ SAT Options
% 3.18/1.00  
% 3.18/1.00  --sat_mode                              false
% 3.18/1.00  --sat_fm_restart_options                ""
% 3.18/1.00  --sat_gr_def                            false
% 3.18/1.00  --sat_epr_types                         true
% 3.18/1.00  --sat_non_cyclic_types                  false
% 3.18/1.00  --sat_finite_models                     false
% 3.18/1.00  --sat_fm_lemmas                         false
% 3.18/1.00  --sat_fm_prep                           false
% 3.18/1.00  --sat_fm_uc_incr                        true
% 3.18/1.00  --sat_out_model                         small
% 3.18/1.00  --sat_out_clauses                       false
% 3.18/1.00  
% 3.18/1.00  ------ QBF Options
% 3.18/1.00  
% 3.18/1.00  --qbf_mode                              false
% 3.18/1.00  --qbf_elim_univ                         false
% 3.18/1.00  --qbf_dom_inst                          none
% 3.18/1.00  --qbf_dom_pre_inst                      false
% 3.18/1.00  --qbf_sk_in                             false
% 3.18/1.00  --qbf_pred_elim                         true
% 3.18/1.00  --qbf_split                             512
% 3.18/1.00  
% 3.18/1.00  ------ BMC1 Options
% 3.18/1.00  
% 3.18/1.00  --bmc1_incremental                      false
% 3.18/1.00  --bmc1_axioms                           reachable_all
% 3.18/1.00  --bmc1_min_bound                        0
% 3.18/1.00  --bmc1_max_bound                        -1
% 3.18/1.00  --bmc1_max_bound_default                -1
% 3.18/1.00  --bmc1_symbol_reachability              true
% 3.18/1.00  --bmc1_property_lemmas                  false
% 3.18/1.00  --bmc1_k_induction                      false
% 3.18/1.00  --bmc1_non_equiv_states                 false
% 3.18/1.00  --bmc1_deadlock                         false
% 3.18/1.00  --bmc1_ucm                              false
% 3.18/1.00  --bmc1_add_unsat_core                   none
% 3.18/1.00  --bmc1_unsat_core_children              false
% 3.18/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.18/1.00  --bmc1_out_stat                         full
% 3.18/1.00  --bmc1_ground_init                      false
% 3.18/1.00  --bmc1_pre_inst_next_state              false
% 3.18/1.00  --bmc1_pre_inst_state                   false
% 3.18/1.00  --bmc1_pre_inst_reach_state             false
% 3.18/1.00  --bmc1_out_unsat_core                   false
% 3.18/1.00  --bmc1_aig_witness_out                  false
% 3.18/1.00  --bmc1_verbose                          false
% 3.18/1.00  --bmc1_dump_clauses_tptp                false
% 3.18/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.18/1.00  --bmc1_dump_file                        -
% 3.18/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.18/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.18/1.00  --bmc1_ucm_extend_mode                  1
% 3.18/1.00  --bmc1_ucm_init_mode                    2
% 3.18/1.00  --bmc1_ucm_cone_mode                    none
% 3.18/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.18/1.00  --bmc1_ucm_relax_model                  4
% 3.18/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.18/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.18/1.00  --bmc1_ucm_layered_model                none
% 3.18/1.00  --bmc1_ucm_max_lemma_size               10
% 3.18/1.00  
% 3.18/1.00  ------ AIG Options
% 3.18/1.00  
% 3.18/1.00  --aig_mode                              false
% 3.18/1.00  
% 3.18/1.00  ------ Instantiation Options
% 3.18/1.00  
% 3.18/1.00  --instantiation_flag                    true
% 3.18/1.00  --inst_sos_flag                         false
% 3.18/1.00  --inst_sos_phase                        true
% 3.18/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.18/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.18/1.00  --inst_lit_sel_side                     num_symb
% 3.18/1.00  --inst_solver_per_active                1400
% 3.18/1.00  --inst_solver_calls_frac                1.
% 3.18/1.00  --inst_passive_queue_type               priority_queues
% 3.18/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.18/1.00  --inst_passive_queues_freq              [25;2]
% 3.18/1.00  --inst_dismatching                      true
% 3.18/1.00  --inst_eager_unprocessed_to_passive     true
% 3.18/1.00  --inst_prop_sim_given                   true
% 3.18/1.00  --inst_prop_sim_new                     false
% 3.18/1.00  --inst_subs_new                         false
% 3.18/1.00  --inst_eq_res_simp                      false
% 3.18/1.00  --inst_subs_given                       false
% 3.18/1.00  --inst_orphan_elimination               true
% 3.18/1.00  --inst_learning_loop_flag               true
% 3.18/1.00  --inst_learning_start                   3000
% 3.18/1.00  --inst_learning_factor                  2
% 3.18/1.00  --inst_start_prop_sim_after_learn       3
% 3.18/1.00  --inst_sel_renew                        solver
% 3.18/1.00  --inst_lit_activity_flag                true
% 3.18/1.00  --inst_restr_to_given                   false
% 3.18/1.00  --inst_activity_threshold               500
% 3.18/1.00  --inst_out_proof                        true
% 3.18/1.00  
% 3.18/1.00  ------ Resolution Options
% 3.18/1.00  
% 3.18/1.00  --resolution_flag                       true
% 3.18/1.00  --res_lit_sel                           adaptive
% 3.18/1.00  --res_lit_sel_side                      none
% 3.18/1.00  --res_ordering                          kbo
% 3.18/1.00  --res_to_prop_solver                    active
% 3.18/1.00  --res_prop_simpl_new                    false
% 3.18/1.00  --res_prop_simpl_given                  true
% 3.18/1.00  --res_passive_queue_type                priority_queues
% 3.18/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.18/1.00  --res_passive_queues_freq               [15;5]
% 3.18/1.00  --res_forward_subs                      full
% 3.18/1.00  --res_backward_subs                     full
% 3.18/1.00  --res_forward_subs_resolution           true
% 3.18/1.00  --res_backward_subs_resolution          true
% 3.18/1.00  --res_orphan_elimination                true
% 3.18/1.00  --res_time_limit                        2.
% 3.18/1.00  --res_out_proof                         true
% 3.18/1.00  
% 3.18/1.00  ------ Superposition Options
% 3.18/1.00  
% 3.18/1.00  --superposition_flag                    true
% 3.18/1.00  --sup_passive_queue_type                priority_queues
% 3.18/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.18/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.18/1.00  --demod_completeness_check              fast
% 3.18/1.00  --demod_use_ground                      true
% 3.18/1.00  --sup_to_prop_solver                    passive
% 3.18/1.00  --sup_prop_simpl_new                    true
% 3.18/1.00  --sup_prop_simpl_given                  true
% 3.18/1.00  --sup_fun_splitting                     false
% 3.18/1.00  --sup_smt_interval                      50000
% 3.18/1.00  
% 3.18/1.00  ------ Superposition Simplification Setup
% 3.18/1.00  
% 3.18/1.00  --sup_indices_passive                   []
% 3.18/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.18/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_full_bw                           [BwDemod]
% 3.18/1.00  --sup_immed_triv                        [TrivRules]
% 3.18/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.18/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_immed_bw_main                     []
% 3.18/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.18/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.18/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.18/1.00  
% 3.18/1.00  ------ Combination Options
% 3.18/1.00  
% 3.18/1.00  --comb_res_mult                         3
% 3.18/1.00  --comb_sup_mult                         2
% 3.18/1.00  --comb_inst_mult                        10
% 3.18/1.00  
% 3.18/1.00  ------ Debug Options
% 3.18/1.00  
% 3.18/1.00  --dbg_backtrace                         false
% 3.18/1.00  --dbg_dump_prop_clauses                 false
% 3.18/1.00  --dbg_dump_prop_clauses_file            -
% 3.18/1.00  --dbg_out_stat                          false
% 3.18/1.00  ------ Parsing...
% 3.18/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.18/1.00  
% 3.18/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.18/1.00  
% 3.18/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.18/1.00  
% 3.18/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.18/1.00  ------ Proving...
% 3.18/1.00  ------ Problem Properties 
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  clauses                                 41
% 3.18/1.00  conjectures                             4
% 3.18/1.00  EPR                                     8
% 3.18/1.00  Horn                                    30
% 3.18/1.00  unary                                   12
% 3.18/1.00  binary                                  12
% 3.18/1.00  lits                                    97
% 3.18/1.00  lits eq                                 33
% 3.18/1.00  fd_pure                                 0
% 3.18/1.00  fd_pseudo                               0
% 3.18/1.00  fd_cond                                 1
% 3.18/1.00  fd_pseudo_cond                          8
% 3.18/1.00  AC symbols                              0
% 3.18/1.00  
% 3.18/1.00  ------ Schedule dynamic 5 is on 
% 3.18/1.00  
% 3.18/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  ------ 
% 3.18/1.00  Current options:
% 3.18/1.00  ------ 
% 3.18/1.00  
% 3.18/1.00  ------ Input Options
% 3.18/1.00  
% 3.18/1.00  --out_options                           all
% 3.18/1.00  --tptp_safe_out                         true
% 3.18/1.00  --problem_path                          ""
% 3.18/1.00  --include_path                          ""
% 3.18/1.00  --clausifier                            res/vclausify_rel
% 3.18/1.00  --clausifier_options                    --mode clausify
% 3.18/1.00  --stdin                                 false
% 3.18/1.00  --stats_out                             all
% 3.18/1.00  
% 3.18/1.00  ------ General Options
% 3.18/1.00  
% 3.18/1.00  --fof                                   false
% 3.18/1.00  --time_out_real                         305.
% 3.18/1.00  --time_out_virtual                      -1.
% 3.18/1.00  --symbol_type_check                     false
% 3.18/1.00  --clausify_out                          false
% 3.18/1.00  --sig_cnt_out                           false
% 3.18/1.00  --trig_cnt_out                          false
% 3.18/1.00  --trig_cnt_out_tolerance                1.
% 3.18/1.00  --trig_cnt_out_sk_spl                   false
% 3.18/1.00  --abstr_cl_out                          false
% 3.18/1.00  
% 3.18/1.00  ------ Global Options
% 3.18/1.00  
% 3.18/1.00  --schedule                              default
% 3.18/1.00  --add_important_lit                     false
% 3.18/1.00  --prop_solver_per_cl                    1000
% 3.18/1.00  --min_unsat_core                        false
% 3.18/1.00  --soft_assumptions                      false
% 3.18/1.00  --soft_lemma_size                       3
% 3.18/1.00  --prop_impl_unit_size                   0
% 3.18/1.00  --prop_impl_unit                        []
% 3.18/1.00  --share_sel_clauses                     true
% 3.18/1.00  --reset_solvers                         false
% 3.18/1.00  --bc_imp_inh                            [conj_cone]
% 3.18/1.00  --conj_cone_tolerance                   3.
% 3.18/1.00  --extra_neg_conj                        none
% 3.18/1.00  --large_theory_mode                     true
% 3.18/1.00  --prolific_symb_bound                   200
% 3.18/1.00  --lt_threshold                          2000
% 3.18/1.00  --clause_weak_htbl                      true
% 3.18/1.00  --gc_record_bc_elim                     false
% 3.18/1.00  
% 3.18/1.00  ------ Preprocessing Options
% 3.18/1.00  
% 3.18/1.00  --preprocessing_flag                    true
% 3.18/1.00  --time_out_prep_mult                    0.1
% 3.18/1.00  --splitting_mode                        input
% 3.18/1.00  --splitting_grd                         true
% 3.18/1.00  --splitting_cvd                         false
% 3.18/1.00  --splitting_cvd_svl                     false
% 3.18/1.00  --splitting_nvd                         32
% 3.18/1.00  --sub_typing                            true
% 3.18/1.00  --prep_gs_sim                           true
% 3.18/1.00  --prep_unflatten                        true
% 3.18/1.00  --prep_res_sim                          true
% 3.18/1.00  --prep_upred                            true
% 3.18/1.00  --prep_sem_filter                       exhaustive
% 3.18/1.00  --prep_sem_filter_out                   false
% 3.18/1.00  --pred_elim                             true
% 3.18/1.00  --res_sim_input                         true
% 3.18/1.00  --eq_ax_congr_red                       true
% 3.18/1.00  --pure_diseq_elim                       true
% 3.18/1.00  --brand_transform                       false
% 3.18/1.00  --non_eq_to_eq                          false
% 3.18/1.00  --prep_def_merge                        true
% 3.18/1.00  --prep_def_merge_prop_impl              false
% 3.18/1.00  --prep_def_merge_mbd                    true
% 3.18/1.00  --prep_def_merge_tr_red                 false
% 3.18/1.00  --prep_def_merge_tr_cl                  false
% 3.18/1.00  --smt_preprocessing                     true
% 3.18/1.00  --smt_ac_axioms                         fast
% 3.18/1.00  --preprocessed_out                      false
% 3.18/1.00  --preprocessed_stats                    false
% 3.18/1.00  
% 3.18/1.00  ------ Abstraction refinement Options
% 3.18/1.00  
% 3.18/1.00  --abstr_ref                             []
% 3.18/1.00  --abstr_ref_prep                        false
% 3.18/1.00  --abstr_ref_until_sat                   false
% 3.18/1.00  --abstr_ref_sig_restrict                funpre
% 3.18/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.18/1.00  --abstr_ref_under                       []
% 3.18/1.00  
% 3.18/1.00  ------ SAT Options
% 3.18/1.00  
% 3.18/1.00  --sat_mode                              false
% 3.18/1.00  --sat_fm_restart_options                ""
% 3.18/1.00  --sat_gr_def                            false
% 3.18/1.00  --sat_epr_types                         true
% 3.18/1.00  --sat_non_cyclic_types                  false
% 3.18/1.00  --sat_finite_models                     false
% 3.18/1.00  --sat_fm_lemmas                         false
% 3.18/1.00  --sat_fm_prep                           false
% 3.18/1.00  --sat_fm_uc_incr                        true
% 3.18/1.00  --sat_out_model                         small
% 3.18/1.00  --sat_out_clauses                       false
% 3.18/1.00  
% 3.18/1.00  ------ QBF Options
% 3.18/1.00  
% 3.18/1.00  --qbf_mode                              false
% 3.18/1.00  --qbf_elim_univ                         false
% 3.18/1.00  --qbf_dom_inst                          none
% 3.18/1.00  --qbf_dom_pre_inst                      false
% 3.18/1.00  --qbf_sk_in                             false
% 3.18/1.00  --qbf_pred_elim                         true
% 3.18/1.00  --qbf_split                             512
% 3.18/1.00  
% 3.18/1.00  ------ BMC1 Options
% 3.18/1.00  
% 3.18/1.00  --bmc1_incremental                      false
% 3.18/1.00  --bmc1_axioms                           reachable_all
% 3.18/1.00  --bmc1_min_bound                        0
% 3.18/1.00  --bmc1_max_bound                        -1
% 3.18/1.00  --bmc1_max_bound_default                -1
% 3.18/1.00  --bmc1_symbol_reachability              true
% 3.18/1.00  --bmc1_property_lemmas                  false
% 3.18/1.00  --bmc1_k_induction                      false
% 3.18/1.00  --bmc1_non_equiv_states                 false
% 3.18/1.00  --bmc1_deadlock                         false
% 3.18/1.00  --bmc1_ucm                              false
% 3.18/1.00  --bmc1_add_unsat_core                   none
% 3.18/1.00  --bmc1_unsat_core_children              false
% 3.18/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.18/1.00  --bmc1_out_stat                         full
% 3.18/1.00  --bmc1_ground_init                      false
% 3.18/1.00  --bmc1_pre_inst_next_state              false
% 3.18/1.00  --bmc1_pre_inst_state                   false
% 3.18/1.00  --bmc1_pre_inst_reach_state             false
% 3.18/1.00  --bmc1_out_unsat_core                   false
% 3.18/1.00  --bmc1_aig_witness_out                  false
% 3.18/1.00  --bmc1_verbose                          false
% 3.18/1.00  --bmc1_dump_clauses_tptp                false
% 3.18/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.18/1.00  --bmc1_dump_file                        -
% 3.18/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.18/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.18/1.00  --bmc1_ucm_extend_mode                  1
% 3.18/1.00  --bmc1_ucm_init_mode                    2
% 3.18/1.00  --bmc1_ucm_cone_mode                    none
% 3.18/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.18/1.00  --bmc1_ucm_relax_model                  4
% 3.18/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.18/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.18/1.00  --bmc1_ucm_layered_model                none
% 3.18/1.00  --bmc1_ucm_max_lemma_size               10
% 3.18/1.00  
% 3.18/1.00  ------ AIG Options
% 3.18/1.00  
% 3.18/1.00  --aig_mode                              false
% 3.18/1.00  
% 3.18/1.00  ------ Instantiation Options
% 3.18/1.00  
% 3.18/1.00  --instantiation_flag                    true
% 3.18/1.00  --inst_sos_flag                         false
% 3.18/1.00  --inst_sos_phase                        true
% 3.18/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.18/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.18/1.00  --inst_lit_sel_side                     none
% 3.18/1.00  --inst_solver_per_active                1400
% 3.18/1.00  --inst_solver_calls_frac                1.
% 3.18/1.00  --inst_passive_queue_type               priority_queues
% 3.18/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.18/1.00  --inst_passive_queues_freq              [25;2]
% 3.18/1.00  --inst_dismatching                      true
% 3.18/1.00  --inst_eager_unprocessed_to_passive     true
% 3.18/1.00  --inst_prop_sim_given                   true
% 3.18/1.00  --inst_prop_sim_new                     false
% 3.18/1.00  --inst_subs_new                         false
% 3.18/1.00  --inst_eq_res_simp                      false
% 3.18/1.00  --inst_subs_given                       false
% 3.18/1.00  --inst_orphan_elimination               true
% 3.18/1.00  --inst_learning_loop_flag               true
% 3.18/1.00  --inst_learning_start                   3000
% 3.18/1.00  --inst_learning_factor                  2
% 3.18/1.00  --inst_start_prop_sim_after_learn       3
% 3.18/1.00  --inst_sel_renew                        solver
% 3.18/1.00  --inst_lit_activity_flag                true
% 3.18/1.00  --inst_restr_to_given                   false
% 3.18/1.00  --inst_activity_threshold               500
% 3.18/1.00  --inst_out_proof                        true
% 3.18/1.00  
% 3.18/1.00  ------ Resolution Options
% 3.18/1.00  
% 3.18/1.00  --resolution_flag                       false
% 3.18/1.00  --res_lit_sel                           adaptive
% 3.18/1.00  --res_lit_sel_side                      none
% 3.18/1.00  --res_ordering                          kbo
% 3.18/1.00  --res_to_prop_solver                    active
% 3.18/1.00  --res_prop_simpl_new                    false
% 3.18/1.00  --res_prop_simpl_given                  true
% 3.18/1.00  --res_passive_queue_type                priority_queues
% 3.18/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.18/1.00  --res_passive_queues_freq               [15;5]
% 3.18/1.00  --res_forward_subs                      full
% 3.18/1.00  --res_backward_subs                     full
% 3.18/1.00  --res_forward_subs_resolution           true
% 3.18/1.00  --res_backward_subs_resolution          true
% 3.18/1.00  --res_orphan_elimination                true
% 3.18/1.00  --res_time_limit                        2.
% 3.18/1.00  --res_out_proof                         true
% 3.18/1.00  
% 3.18/1.00  ------ Superposition Options
% 3.18/1.00  
% 3.18/1.00  --superposition_flag                    true
% 3.18/1.00  --sup_passive_queue_type                priority_queues
% 3.18/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.18/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.18/1.00  --demod_completeness_check              fast
% 3.18/1.00  --demod_use_ground                      true
% 3.18/1.00  --sup_to_prop_solver                    passive
% 3.18/1.00  --sup_prop_simpl_new                    true
% 3.18/1.00  --sup_prop_simpl_given                  true
% 3.18/1.00  --sup_fun_splitting                     false
% 3.18/1.00  --sup_smt_interval                      50000
% 3.18/1.00  
% 3.18/1.00  ------ Superposition Simplification Setup
% 3.18/1.00  
% 3.18/1.00  --sup_indices_passive                   []
% 3.18/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.18/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.18/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_full_bw                           [BwDemod]
% 3.18/1.00  --sup_immed_triv                        [TrivRules]
% 3.18/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.18/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_immed_bw_main                     []
% 3.18/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.18/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.18/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.18/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.18/1.00  
% 3.18/1.00  ------ Combination Options
% 3.18/1.00  
% 3.18/1.00  --comb_res_mult                         3
% 3.18/1.00  --comb_sup_mult                         2
% 3.18/1.00  --comb_inst_mult                        10
% 3.18/1.00  
% 3.18/1.00  ------ Debug Options
% 3.18/1.00  
% 3.18/1.00  --dbg_backtrace                         false
% 3.18/1.00  --dbg_dump_prop_clauses                 false
% 3.18/1.00  --dbg_dump_prop_clauses_file            -
% 3.18/1.00  --dbg_out_stat                          false
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  ------ Proving...
% 3.18/1.00  
% 3.18/1.00  
% 3.18/1.00  % SZS status Theorem for theBenchmark.p
% 3.18/1.00  
% 3.18/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.18/1.00  
% 3.18/1.00  fof(f22,conjecture,(
% 3.18/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f23,negated_conjecture,(
% 3.18/1.00    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 3.18/1.00    inference(negated_conjecture,[],[f22])).
% 3.18/1.00  
% 3.18/1.00  fof(f42,plain,(
% 3.18/1.00    ? [X0,X1,X2,X3] : ((k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)))),
% 3.18/1.00    inference(ennf_transformation,[],[f23])).
% 3.18/1.00  
% 3.18/1.00  fof(f43,plain,(
% 3.18/1.00    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3))),
% 3.18/1.00    inference(flattening,[],[f42])).
% 3.18/1.00  
% 3.18/1.00  fof(f65,plain,(
% 3.18/1.00    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (k1_funct_1(sK9,sK8) != sK7 & r2_hidden(sK8,sK6) & m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7)))) & v1_funct_2(sK9,sK6,k1_tarski(sK7)) & v1_funct_1(sK9))),
% 3.18/1.00    introduced(choice_axiom,[])).
% 3.18/1.00  
% 3.18/1.00  fof(f66,plain,(
% 3.18/1.00    k1_funct_1(sK9,sK8) != sK7 & r2_hidden(sK8,sK6) & m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7)))) & v1_funct_2(sK9,sK6,k1_tarski(sK7)) & v1_funct_1(sK9)),
% 3.18/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7,sK8,sK9])],[f43,f65])).
% 3.18/1.00  
% 3.18/1.00  fof(f115,plain,(
% 3.18/1.00    r2_hidden(sK8,sK6)),
% 3.18/1.00    inference(cnf_transformation,[],[f66])).
% 3.18/1.00  
% 3.18/1.00  fof(f21,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f40,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(ennf_transformation,[],[f21])).
% 3.18/1.00  
% 3.18/1.00  fof(f41,plain,(
% 3.18/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(flattening,[],[f40])).
% 3.18/1.00  
% 3.18/1.00  fof(f64,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(nnf_transformation,[],[f41])).
% 3.18/1.00  
% 3.18/1.00  fof(f106,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.18/1.00    inference(cnf_transformation,[],[f64])).
% 3.18/1.00  
% 3.18/1.00  fof(f113,plain,(
% 3.18/1.00    v1_funct_2(sK9,sK6,k1_tarski(sK7))),
% 3.18/1.00    inference(cnf_transformation,[],[f66])).
% 3.18/1.00  
% 3.18/1.00  fof(f5,axiom,(
% 3.18/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f79,plain,(
% 3.18/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.18/1.00    inference(cnf_transformation,[],[f5])).
% 3.18/1.00  
% 3.18/1.00  fof(f6,axiom,(
% 3.18/1.00    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f80,plain,(
% 3.18/1.00    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.18/1.00    inference(cnf_transformation,[],[f6])).
% 3.18/1.00  
% 3.18/1.00  fof(f7,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f81,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.18/1.00    inference(cnf_transformation,[],[f7])).
% 3.18/1.00  
% 3.18/1.00  fof(f117,plain,(
% 3.18/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.18/1.00    inference(definition_unfolding,[],[f80,f81])).
% 3.18/1.00  
% 3.18/1.00  fof(f118,plain,(
% 3.18/1.00    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 3.18/1.00    inference(definition_unfolding,[],[f79,f117])).
% 3.18/1.00  
% 3.18/1.00  fof(f129,plain,(
% 3.18/1.00    v1_funct_2(sK9,sK6,k2_enumset1(sK7,sK7,sK7,sK7))),
% 3.18/1.00    inference(definition_unfolding,[],[f113,f118])).
% 3.18/1.00  
% 3.18/1.00  fof(f114,plain,(
% 3.18/1.00    m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k1_tarski(sK7))))),
% 3.18/1.00    inference(cnf_transformation,[],[f66])).
% 3.18/1.00  
% 3.18/1.00  fof(f128,plain,(
% 3.18/1.00    m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7))))),
% 3.18/1.00    inference(definition_unfolding,[],[f114,f118])).
% 3.18/1.00  
% 3.18/1.00  fof(f20,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f39,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(ennf_transformation,[],[f20])).
% 3.18/1.00  
% 3.18/1.00  fof(f105,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.18/1.00    inference(cnf_transformation,[],[f39])).
% 3.18/1.00  
% 3.18/1.00  fof(f9,axiom,(
% 3.18/1.00    ! [X0] : ~v1_xboole_0(k1_tarski(X0))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f86,plain,(
% 3.18/1.00    ( ! [X0] : (~v1_xboole_0(k1_tarski(X0))) )),
% 3.18/1.00    inference(cnf_transformation,[],[f9])).
% 3.18/1.00  
% 3.18/1.00  fof(f127,plain,(
% 3.18/1.00    ( ! [X0] : (~v1_xboole_0(k2_enumset1(X0,X0,X0,X0))) )),
% 3.18/1.00    inference(definition_unfolding,[],[f86,f118])).
% 3.18/1.00  
% 3.18/1.00  fof(f2,axiom,(
% 3.18/1.00    v1_xboole_0(k1_xboole_0)),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f69,plain,(
% 3.18/1.00    v1_xboole_0(k1_xboole_0)),
% 3.18/1.00    inference(cnf_transformation,[],[f2])).
% 3.18/1.00  
% 3.18/1.00  fof(f18,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f24,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.18/1.00    inference(pure_predicate_removal,[],[f18])).
% 3.18/1.00  
% 3.18/1.00  fof(f37,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(ennf_transformation,[],[f24])).
% 3.18/1.00  
% 3.18/1.00  fof(f103,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.18/1.00    inference(cnf_transformation,[],[f37])).
% 3.18/1.00  
% 3.18/1.00  fof(f14,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : ((v1_funct_1(X2) & v5_relat_1(X2,X0) & v1_relat_1(X2)) => (r2_hidden(X1,k1_relat_1(X2)) => m1_subset_1(k1_funct_1(X2,X1),X0)))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f31,plain,(
% 3.18/1.00    ! [X0,X1,X2] : ((m1_subset_1(k1_funct_1(X2,X1),X0) | ~r2_hidden(X1,k1_relat_1(X2))) | (~v1_funct_1(X2) | ~v5_relat_1(X2,X0) | ~v1_relat_1(X2)))),
% 3.18/1.00    inference(ennf_transformation,[],[f14])).
% 3.18/1.00  
% 3.18/1.00  fof(f32,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(k1_funct_1(X2,X1),X0) | ~r2_hidden(X1,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v5_relat_1(X2,X0) | ~v1_relat_1(X2))),
% 3.18/1.00    inference(flattening,[],[f31])).
% 3.18/1.00  
% 3.18/1.00  fof(f96,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k1_funct_1(X2,X1),X0) | ~r2_hidden(X1,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v5_relat_1(X2,X0) | ~v1_relat_1(X2)) )),
% 3.18/1.00    inference(cnf_transformation,[],[f32])).
% 3.18/1.00  
% 3.18/1.00  fof(f17,axiom,(
% 3.18/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f36,plain,(
% 3.18/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.18/1.00    inference(ennf_transformation,[],[f17])).
% 3.18/1.00  
% 3.18/1.00  fof(f102,plain,(
% 3.18/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.18/1.00    inference(cnf_transformation,[],[f36])).
% 3.18/1.00  
% 3.18/1.00  fof(f112,plain,(
% 3.18/1.00    v1_funct_1(sK9)),
% 3.18/1.00    inference(cnf_transformation,[],[f66])).
% 3.18/1.00  
% 3.18/1.00  fof(f12,axiom,(
% 3.18/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f27,plain,(
% 3.18/1.00    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 3.18/1.00    inference(ennf_transformation,[],[f12])).
% 3.18/1.00  
% 3.18/1.00  fof(f28,plain,(
% 3.18/1.00    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 3.18/1.00    inference(flattening,[],[f27])).
% 3.18/1.00  
% 3.18/1.00  fof(f91,plain,(
% 3.18/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 3.18/1.00    inference(cnf_transformation,[],[f28])).
% 3.18/1.00  
% 3.18/1.00  fof(f4,axiom,(
% 3.18/1.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 3.18/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.18/1.00  
% 3.18/1.00  fof(f25,plain,(
% 3.18/1.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 3.18/1.00    inference(ennf_transformation,[],[f4])).
% 3.18/1.00  
% 3.18/1.00  fof(f48,plain,(
% 3.18/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.18/1.00    inference(nnf_transformation,[],[f25])).
% 3.18/1.00  
% 3.18/1.00  fof(f49,plain,(
% 3.18/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.18/1.00    inference(flattening,[],[f48])).
% 3.18/1.00  
% 3.18/1.00  fof(f50,plain,(
% 3.18/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.18/1.00    inference(rectify,[],[f49])).
% 3.18/1.00  
% 3.18/1.00  fof(f51,plain,(
% 3.18/1.00    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 3.18/1.00    introduced(choice_axiom,[])).
% 3.18/1.00  
% 3.18/1.00  fof(f52,plain,(
% 3.18/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.18/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f50,f51])).
% 3.18/1.00  
% 3.18/1.00  fof(f71,plain,(
% 3.18/1.00    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 3.18/1.00    inference(cnf_transformation,[],[f52])).
% 3.18/1.00  
% 3.18/1.00  fof(f126,plain,(
% 3.18/1.00    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k2_enumset1(X0,X0,X1,X2) != X3) )),
% 3.18/1.00    inference(definition_unfolding,[],[f71,f81])).
% 3.18/1.00  
% 3.18/1.00  fof(f136,plain,(
% 3.18/1.00    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k2_enumset1(X0,X0,X1,X2))) )),
% 3.18/1.00    inference(equality_resolution,[],[f126])).
% 3.18/1.00  
% 3.18/1.00  fof(f116,plain,(
% 3.18/1.00    k1_funct_1(sK9,sK8) != sK7),
% 3.18/1.00    inference(cnf_transformation,[],[f66])).
% 3.18/1.00  
% 3.18/1.00  cnf(c_43,negated_conjecture,
% 3.18/1.00      ( r2_hidden(sK8,sK6) ),
% 3.18/1.00      inference(cnf_transformation,[],[f115]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2986,plain,
% 3.18/1.00      ( r2_hidden(sK8,sK6) = iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_43]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_41,plain,
% 3.18/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.18/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.18/1.00      | k1_xboole_0 = X2 ),
% 3.18/1.00      inference(cnf_transformation,[],[f106]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_45,negated_conjecture,
% 3.18/1.00      ( v1_funct_2(sK9,sK6,k2_enumset1(sK7,sK7,sK7,sK7)) ),
% 3.18/1.00      inference(cnf_transformation,[],[f129]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_822,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | k2_enumset1(sK7,sK7,sK7,sK7) != X2
% 3.18/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.18/1.00      | sK6 != X1
% 3.18/1.00      | sK9 != X0
% 3.18/1.00      | k1_xboole_0 = X2 ),
% 3.18/1.00      inference(resolution_lifted,[status(thm)],[c_41,c_45]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_823,plain,
% 3.18/1.00      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7))))
% 3.18/1.00      | k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = sK6
% 3.18/1.00      | k1_xboole_0 = k2_enumset1(sK7,sK7,sK7,sK7) ),
% 3.18/1.00      inference(unflattening,[status(thm)],[c_822]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_44,negated_conjecture,
% 3.18/1.00      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7)))) ),
% 3.18/1.00      inference(cnf_transformation,[],[f128]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_825,plain,
% 3.18/1.00      ( k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = sK6
% 3.18/1.00      | k1_xboole_0 = k2_enumset1(sK7,sK7,sK7,sK7) ),
% 3.18/1.00      inference(global_propositional_subsumption,
% 3.18/1.00                [status(thm)],
% 3.18/1.00                [c_823,c_44]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2985,plain,
% 3.18/1.00      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7)))) = iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_44]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_35,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.18/1.00      inference(cnf_transformation,[],[f105]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2987,plain,
% 3.18/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.18/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_4373,plain,
% 3.18/1.00      ( k1_relset_1(sK6,k2_enumset1(sK7,sK7,sK7,sK7),sK9) = k1_relat_1(sK9) ),
% 3.18/1.00      inference(superposition,[status(thm)],[c_2985,c_2987]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_4965,plain,
% 3.18/1.00      ( k2_enumset1(sK7,sK7,sK7,sK7) = k1_xboole_0
% 3.18/1.00      | k1_relat_1(sK9) = sK6 ),
% 3.18/1.00      inference(superposition,[status(thm)],[c_825,c_4373]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_16,plain,
% 3.18/1.00      ( ~ v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) ),
% 3.18/1.00      inference(cnf_transformation,[],[f127]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_3000,plain,
% 3.18/1.00      ( v1_xboole_0(k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_4972,plain,
% 3.18/1.00      ( k1_relat_1(sK9) = sK6 | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.18/1.00      inference(superposition,[status(thm)],[c_4965,c_3000]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2,plain,
% 3.18/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 3.18/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_149,plain,
% 3.18/1.00      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_5090,plain,
% 3.18/1.00      ( k1_relat_1(sK9) = sK6 ),
% 3.18/1.00      inference(global_propositional_subsumption,
% 3.18/1.00                [status(thm)],
% 3.18/1.00                [c_4972,c_149]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_33,plain,
% 3.18/1.00      ( v5_relat_1(X0,X1)
% 3.18/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.18/1.00      inference(cnf_transformation,[],[f103]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_26,plain,
% 3.18/1.00      ( ~ v5_relat_1(X0,X1)
% 3.18/1.00      | m1_subset_1(k1_funct_1(X0,X2),X1)
% 3.18/1.00      | ~ r2_hidden(X2,k1_relat_1(X0))
% 3.18/1.00      | ~ v1_relat_1(X0)
% 3.18/1.00      | ~ v1_funct_1(X0) ),
% 3.18/1.00      inference(cnf_transformation,[],[f96]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_572,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | m1_subset_1(k1_funct_1(X0,X3),X2)
% 3.18/1.00      | ~ r2_hidden(X3,k1_relat_1(X0))
% 3.18/1.00      | ~ v1_relat_1(X0)
% 3.18/1.00      | ~ v1_funct_1(X0) ),
% 3.18/1.00      inference(resolution,[status(thm)],[c_33,c_26]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_32,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | v1_relat_1(X0) ),
% 3.18/1.00      inference(cnf_transformation,[],[f102]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_576,plain,
% 3.18/1.00      ( ~ r2_hidden(X3,k1_relat_1(X0))
% 3.18/1.00      | m1_subset_1(k1_funct_1(X0,X3),X2)
% 3.18/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | ~ v1_funct_1(X0) ),
% 3.18/1.00      inference(global_propositional_subsumption,
% 3.18/1.00                [status(thm)],
% 3.18/1.00                [c_572,c_32]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_577,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.18/1.00      | m1_subset_1(k1_funct_1(X0,X3),X2)
% 3.18/1.00      | ~ r2_hidden(X3,k1_relat_1(X0))
% 3.18/1.00      | ~ v1_funct_1(X0) ),
% 3.18/1.00      inference(renaming,[status(thm)],[c_576]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2983,plain,
% 3.18/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.18/1.00      | m1_subset_1(k1_funct_1(X0,X3),X2) = iProver_top
% 3.18/1.00      | r2_hidden(X3,k1_relat_1(X0)) != iProver_top
% 3.18/1.00      | v1_funct_1(X0) != iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_577]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_3453,plain,
% 3.18/1.00      ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
% 3.18/1.00      | r2_hidden(X0,k1_relat_1(sK9)) != iProver_top
% 3.18/1.00      | v1_funct_1(sK9) != iProver_top ),
% 3.18/1.00      inference(superposition,[status(thm)],[c_2985,c_2983]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_46,negated_conjecture,
% 3.18/1.00      ( v1_funct_1(sK9) ),
% 3.18/1.00      inference(cnf_transformation,[],[f112]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_47,plain,
% 3.18/1.00      ( v1_funct_1(sK9) = iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_46]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_3733,plain,
% 3.18/1.00      ( r2_hidden(X0,k1_relat_1(sK9)) != iProver_top
% 3.18/1.00      | m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
% 3.18/1.00      inference(global_propositional_subsumption,
% 3.18/1.00                [status(thm)],
% 3.18/1.00                [c_3453,c_47]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_3734,plain,
% 3.18/1.00      ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
% 3.18/1.00      | r2_hidden(X0,k1_relat_1(sK9)) != iProver_top ),
% 3.18/1.00      inference(renaming,[status(thm)],[c_3733]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_5094,plain,
% 3.18/1.00      ( m1_subset_1(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
% 3.18/1.00      | r2_hidden(X0,sK6) != iProver_top ),
% 3.18/1.00      inference(demodulation,[status(thm)],[c_5090,c_3734]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_21,plain,
% 3.18/1.00      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.18/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_2998,plain,
% 3.18/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 3.18/1.00      | r2_hidden(X0,X1) = iProver_top
% 3.18/1.00      | v1_xboole_0(X1) = iProver_top ),
% 3.18/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_7950,plain,
% 3.18/1.00      ( r2_hidden(X0,sK6) != iProver_top
% 3.18/1.00      | r2_hidden(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top
% 3.18/1.00      | v1_xboole_0(k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
% 3.18/1.00      inference(superposition,[status(thm)],[c_5094,c_2998]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_8447,plain,
% 3.18/1.00      ( r2_hidden(X0,sK6) != iProver_top
% 3.18/1.00      | r2_hidden(k1_funct_1(sK9,X0),k2_enumset1(sK7,sK7,sK7,sK7)) = iProver_top ),
% 3.18/1.00      inference(forward_subsumption_resolution,
% 3.18/1.00                [status(thm)],
% 3.18/1.00                [c_7950,c_3000]) ).
% 3.18/1.00  
% 3.18/1.00  cnf(c_11,plain,
% 3.18/1.00      ( ~ r2_hidden(X0,k2_enumset1(X1,X1,X2,X3))
% 3.18/1.01      | X0 = X1
% 3.18/1.01      | X0 = X2
% 3.18/1.01      | X0 = X3 ),
% 3.18/1.01      inference(cnf_transformation,[],[f136]) ).
% 3.18/1.01  
% 3.18/1.01  cnf(c_3005,plain,
% 3.18/1.01      ( X0 = X1
% 3.18/1.01      | X0 = X2
% 3.18/1.01      | X0 = X3
% 3.18/1.01      | r2_hidden(X0,k2_enumset1(X1,X1,X2,X3)) != iProver_top ),
% 3.18/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.18/1.01  
% 3.18/1.01  cnf(c_9893,plain,
% 3.18/1.01      ( k1_funct_1(sK9,X0) = sK7 | r2_hidden(X0,sK6) != iProver_top ),
% 3.18/1.01      inference(superposition,[status(thm)],[c_8447,c_3005]) ).
% 3.18/1.01  
% 3.18/1.01  cnf(c_10409,plain,
% 3.18/1.01      ( k1_funct_1(sK9,sK8) = sK7 ),
% 3.18/1.01      inference(superposition,[status(thm)],[c_2986,c_9893]) ).
% 3.18/1.01  
% 3.18/1.01  cnf(c_42,negated_conjecture,
% 3.18/1.01      ( k1_funct_1(sK9,sK8) != sK7 ),
% 3.18/1.01      inference(cnf_transformation,[],[f116]) ).
% 3.18/1.01  
% 3.18/1.01  cnf(contradiction,plain,
% 3.18/1.01      ( $false ),
% 3.18/1.01      inference(minisat,[status(thm)],[c_10409,c_42]) ).
% 3.18/1.01  
% 3.18/1.01  
% 3.18/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.18/1.01  
% 3.18/1.01  ------                               Statistics
% 3.18/1.01  
% 3.18/1.01  ------ General
% 3.18/1.01  
% 3.18/1.01  abstr_ref_over_cycles:                  0
% 3.18/1.01  abstr_ref_under_cycles:                 0
% 3.18/1.01  gc_basic_clause_elim:                   0
% 3.18/1.01  forced_gc_time:                         0
% 3.18/1.01  parsing_time:                           0.008
% 3.18/1.01  unif_index_cands_time:                  0.
% 3.18/1.01  unif_index_add_time:                    0.
% 3.18/1.01  orderings_time:                         0.
% 3.18/1.01  out_proof_time:                         0.01
% 3.18/1.01  total_time:                             0.266
% 3.18/1.01  num_of_symbols:                         57
% 3.18/1.01  num_of_terms:                           10466
% 3.18/1.01  
% 3.18/1.01  ------ Preprocessing
% 3.18/1.01  
% 3.18/1.01  num_of_splits:                          0
% 3.18/1.01  num_of_split_atoms:                     0
% 3.18/1.01  num_of_reused_defs:                     0
% 3.18/1.01  num_eq_ax_congr_red:                    43
% 3.18/1.01  num_of_sem_filtered_clauses:            1
% 3.18/1.01  num_of_subtypes:                        0
% 3.18/1.01  monotx_restored_types:                  0
% 3.18/1.01  sat_num_of_epr_types:                   0
% 3.18/1.01  sat_num_of_non_cyclic_types:            0
% 3.18/1.01  sat_guarded_non_collapsed_types:        0
% 3.18/1.01  num_pure_diseq_elim:                    0
% 3.18/1.01  simp_replaced_by:                       0
% 3.18/1.01  res_preprocessed:                       196
% 3.18/1.01  prep_upred:                             0
% 3.18/1.01  prep_unflattend:                        89
% 3.18/1.01  smt_new_axioms:                         0
% 3.18/1.01  pred_elim_cands:                        6
% 3.18/1.01  pred_elim:                              2
% 3.18/1.01  pred_elim_cl:                           5
% 3.18/1.01  pred_elim_cycles:                       8
% 3.18/1.01  merged_defs:                            8
% 3.18/1.01  merged_defs_ncl:                        0
% 3.18/1.01  bin_hyper_res:                          8
% 3.18/1.01  prep_cycles:                            4
% 3.18/1.01  pred_elim_time:                         0.029
% 3.18/1.01  splitting_time:                         0.
% 3.18/1.01  sem_filter_time:                        0.
% 3.18/1.01  monotx_time:                            0.001
% 3.18/1.01  subtype_inf_time:                       0.
% 3.18/1.01  
% 3.18/1.01  ------ Problem properties
% 3.18/1.01  
% 3.18/1.01  clauses:                                41
% 3.18/1.01  conjectures:                            4
% 3.18/1.01  epr:                                    8
% 3.18/1.01  horn:                                   30
% 3.18/1.01  ground:                                 8
% 3.18/1.01  unary:                                  12
% 3.18/1.01  binary:                                 12
% 3.18/1.01  lits:                                   97
% 3.18/1.01  lits_eq:                                33
% 3.18/1.01  fd_pure:                                0
% 3.18/1.01  fd_pseudo:                              0
% 3.18/1.01  fd_cond:                                1
% 3.18/1.01  fd_pseudo_cond:                         8
% 3.18/1.01  ac_symbols:                             0
% 3.18/1.01  
% 3.18/1.01  ------ Propositional Solver
% 3.18/1.01  
% 3.18/1.01  prop_solver_calls:                      28
% 3.18/1.01  prop_fast_solver_calls:                 1389
% 3.18/1.01  smt_solver_calls:                       0
% 3.18/1.01  smt_fast_solver_calls:                  0
% 3.18/1.01  prop_num_of_clauses:                    3407
% 3.18/1.01  prop_preprocess_simplified:             11717
% 3.18/1.01  prop_fo_subsumed:                       7
% 3.18/1.01  prop_solver_time:                       0.
% 3.18/1.01  smt_solver_time:                        0.
% 3.18/1.01  smt_fast_solver_time:                   0.
% 3.18/1.01  prop_fast_solver_time:                  0.
% 3.18/1.01  prop_unsat_core_time:                   0.
% 3.18/1.01  
% 3.18/1.01  ------ QBF
% 3.18/1.01  
% 3.18/1.01  qbf_q_res:                              0
% 3.18/1.01  qbf_num_tautologies:                    0
% 3.18/1.01  qbf_prep_cycles:                        0
% 3.18/1.01  
% 3.18/1.01  ------ BMC1
% 3.18/1.01  
% 3.18/1.01  bmc1_current_bound:                     -1
% 3.18/1.01  bmc1_last_solved_bound:                 -1
% 3.18/1.01  bmc1_unsat_core_size:                   -1
% 3.18/1.01  bmc1_unsat_core_parents_size:           -1
% 3.18/1.01  bmc1_merge_next_fun:                    0
% 3.18/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.18/1.01  
% 3.18/1.01  ------ Instantiation
% 3.18/1.01  
% 3.18/1.01  inst_num_of_clauses:                    975
% 3.18/1.01  inst_num_in_passive:                    594
% 3.18/1.01  inst_num_in_active:                     362
% 3.18/1.01  inst_num_in_unprocessed:                19
% 3.18/1.01  inst_num_of_loops:                      390
% 3.18/1.01  inst_num_of_learning_restarts:          0
% 3.18/1.01  inst_num_moves_active_passive:          27
% 3.18/1.01  inst_lit_activity:                      0
% 3.18/1.01  inst_lit_activity_moves:                0
% 3.18/1.01  inst_num_tautologies:                   0
% 3.18/1.01  inst_num_prop_implied:                  0
% 3.18/1.01  inst_num_existing_simplified:           0
% 3.18/1.01  inst_num_eq_res_simplified:             0
% 3.18/1.01  inst_num_child_elim:                    0
% 3.18/1.01  inst_num_of_dismatching_blockings:      767
% 3.18/1.01  inst_num_of_non_proper_insts:           762
% 3.18/1.01  inst_num_of_duplicates:                 0
% 3.18/1.01  inst_inst_num_from_inst_to_res:         0
% 3.18/1.01  inst_dismatching_checking_time:         0.
% 3.18/1.01  
% 3.18/1.01  ------ Resolution
% 3.18/1.01  
% 3.18/1.01  res_num_of_clauses:                     0
% 3.18/1.01  res_num_in_passive:                     0
% 3.18/1.01  res_num_in_active:                      0
% 3.18/1.01  res_num_of_loops:                       200
% 3.18/1.01  res_forward_subset_subsumed:            199
% 3.18/1.01  res_backward_subset_subsumed:           0
% 3.18/1.01  res_forward_subsumed:                   0
% 3.18/1.01  res_backward_subsumed:                  0
% 3.18/1.01  res_forward_subsumption_resolution:     0
% 3.18/1.01  res_backward_subsumption_resolution:    0
% 3.18/1.01  res_clause_to_clause_subsumption:       310
% 3.18/1.01  res_orphan_elimination:                 0
% 3.18/1.01  res_tautology_del:                      43
% 3.18/1.01  res_num_eq_res_simplified:              0
% 3.18/1.01  res_num_sel_changes:                    0
% 3.18/1.01  res_moves_from_active_to_pass:          0
% 3.18/1.01  
% 3.18/1.01  ------ Superposition
% 3.18/1.01  
% 3.18/1.01  sup_time_total:                         0.
% 3.18/1.01  sup_time_generating:                    0.
% 3.18/1.01  sup_time_sim_full:                      0.
% 3.18/1.01  sup_time_sim_immed:                     0.
% 3.18/1.01  
% 3.18/1.01  sup_num_of_clauses:                     134
% 3.18/1.01  sup_num_in_active:                      75
% 3.18/1.01  sup_num_in_passive:                     59
% 3.18/1.01  sup_num_of_loops:                       77
% 3.18/1.01  sup_fw_superposition:                   95
% 3.18/1.01  sup_bw_superposition:                   61
% 3.18/1.01  sup_immediate_simplified:               23
% 3.18/1.01  sup_given_eliminated:                   0
% 3.18/1.01  comparisons_done:                       0
% 3.18/1.01  comparisons_avoided:                    9
% 3.18/1.01  
% 3.18/1.01  ------ Simplifications
% 3.18/1.01  
% 3.18/1.01  
% 3.18/1.01  sim_fw_subset_subsumed:                 16
% 3.18/1.01  sim_bw_subset_subsumed:                 5
% 3.18/1.01  sim_fw_subsumed:                        5
% 3.18/1.01  sim_bw_subsumed:                        0
% 3.18/1.01  sim_fw_subsumption_res:                 3
% 3.18/1.01  sim_bw_subsumption_res:                 0
% 3.18/1.01  sim_tautology_del:                      8
% 3.18/1.01  sim_eq_tautology_del:                   3
% 3.18/1.01  sim_eq_res_simp:                        0
% 3.18/1.01  sim_fw_demodulated:                     3
% 3.18/1.01  sim_bw_demodulated:                     2
% 3.18/1.01  sim_light_normalised:                   0
% 3.18/1.01  sim_joinable_taut:                      0
% 3.18/1.01  sim_joinable_simp:                      0
% 3.18/1.01  sim_ac_normalised:                      0
% 3.18/1.01  sim_smt_subsumption:                    0
% 3.18/1.01  
%------------------------------------------------------------------------------
