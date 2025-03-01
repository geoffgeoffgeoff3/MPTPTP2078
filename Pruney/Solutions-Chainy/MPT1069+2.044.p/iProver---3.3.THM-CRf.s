%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:09:51 EST 2020

% Result     : Theorem 1.55s
% Output     : CNFRefutation 1.55s
% Verified   : 
% Statistics : Number of formulae       :  149 ( 412 expanded)
%              Number of clauses        :   90 ( 121 expanded)
%              Number of leaves         :   20 ( 139 expanded)
%              Depth                    :   20
%              Number of atoms          :  517 (3118 expanded)
%              Number of equality atoms :  164 ( 786 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
             => ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                   => ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                      | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ~ v1_xboole_0(X2)
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
              & v1_funct_2(X3,X1,X2)
              & v1_funct_1(X3) )
           => ! [X4] :
                ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                  & v1_funct_1(X4) )
               => ! [X5] :
                    ( m1_subset_1(X5,X1)
                   => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                     => ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                        | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f27,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f28,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(X2) ) ),
    inference(flattening,[],[f27])).

fof(f38,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
          & k1_xboole_0 != X1
          & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
          & m1_subset_1(X5,X1) )
     => ( k7_partfun1(X0,X4,k1_funct_1(X3,sK7)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),sK7)
        & k1_xboole_0 != X1
        & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
        & m1_subset_1(sK7,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
              & k1_xboole_0 != X1
              & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
              & m1_subset_1(X5,X1) )
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( k7_partfun1(X0,sK6,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,sK6),X5)
            & k1_xboole_0 != X1
            & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,sK6))
            & m1_subset_1(X5,X1) )
        & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
        & v1_funct_1(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  & k1_xboole_0 != X1
                  & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X3,X1,X2)
          & v1_funct_1(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( k7_partfun1(X0,X4,k1_funct_1(sK5,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,sK5,X4),X5)
                & k1_xboole_0 != X1
                & r1_tarski(k2_relset_1(X1,X2,sK5),k1_relset_1(X2,X0,X4))
                & m1_subset_1(X5,X1) )
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
            & v1_funct_1(X4) )
        & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(sK5,X1,X2)
        & v1_funct_1(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                    & k1_xboole_0 != X1
                    & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                    & m1_subset_1(X5,X1) )
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
        & ~ v1_xboole_0(X2) )
   => ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k7_partfun1(sK2,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,X3,X4),X5)
                  & k1_xboole_0 != sK3
                  & r1_tarski(k2_relset_1(sK3,sK4,X3),k1_relset_1(sK4,sK2,X4))
                  & m1_subset_1(X5,sK3) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
          & v1_funct_2(X3,sK3,sK4)
          & v1_funct_1(X3) )
      & ~ v1_xboole_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7)
    & k1_xboole_0 != sK3
    & r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6))
    & m1_subset_1(sK7,sK3)
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2)))
    & v1_funct_1(sK6)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    & v1_funct_2(sK5,sK3,sK4)
    & v1_funct_1(sK5)
    & ~ v1_xboole_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7])],[f28,f38,f37,f36,f35])).

fof(f58,plain,(
    m1_subset_1(sK7,sK3) ),
    inference(cnf_transformation,[],[f39])).

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

fof(f45,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f60,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f39])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f43,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f25])).

fof(f51,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f54,plain,(
    v1_funct_2(sK5,sK3,sK4) ),
    inference(cnf_transformation,[],[f39])).

fof(f53,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f39])).

fof(f55,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f39])).

fof(f52,plain,(
    ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f39])).

fof(f3,axiom,(
    ? [X0] : v1_xboole_0(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,
    ( ? [X0] : v1_xboole_0(X0)
   => v1_xboole_0(sK1) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    v1_xboole_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f3,f33])).

fof(f44,plain,(
    v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f57,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) ),
    inference(cnf_transformation,[],[f39])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f59,plain,(
    r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) ),
    inference(cnf_transformation,[],[f39])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f30,f31])).

fof(f40,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f6])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( r2_hidden(X2,k1_relat_1(X1))
         => k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
          | ~ r2_hidden(X2,k1_relat_1(X1)) )
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f21])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)
      | ~ r2_hidden(X2,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f56,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f39])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
             => ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                   => ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                      | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(flattening,[],[f23])).

fof(f50,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
      | k1_xboole_0 = X1
      | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
      | ~ m1_subset_1(X5,X1)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_2(X3,X1,X2)
      | ~ v1_funct_1(X3)
      | v1_xboole_0(X2) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f61,plain,(
    k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK7,sK3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_982,negated_conjecture,
    ( m1_subset_1(sK7,sK3) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1347,plain,
    ( m1_subset_1(sK7,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_982])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_987,plain,
    ( ~ m1_subset_1(X0_53,X0_54)
    | r2_hidden(X0_53,X0_54)
    | v1_xboole_0(X0_54) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1344,plain,
    ( m1_subset_1(X0_53,X0_54) != iProver_top
    | r2_hidden(X0_53,X0_54) = iProver_top
    | v1_xboole_0(X0_54) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_987])).

cnf(c_1713,plain,
    ( r2_hidden(sK7,sK3) = iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1347,c_1344])).

cnf(c_28,plain,
    ( m1_subset_1(sK7,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_984,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1496,plain,
    ( ~ m1_subset_1(sK7,sK3)
    | r2_hidden(sK7,sK3)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_987])).

cnf(c_1497,plain,
    ( m1_subset_1(sK7,sK3) != iProver_top
    | r2_hidden(sK7,sK3) = iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1496])).

cnf(c_3,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_989,plain,
    ( ~ v1_xboole_0(X0_54)
    | k1_xboole_0 = X0_54 ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_1535,plain,
    ( ~ v1_xboole_0(sK3)
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_989])).

cnf(c_1536,plain,
    ( k1_xboole_0 = sK3
    | v1_xboole_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1535])).

cnf(c_2228,plain,
    ( r2_hidden(sK7,sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1713,c_28,c_984,c_1497,c_1536])).

cnf(c_11,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_19,negated_conjecture,
    ( v1_funct_2(sK5,sK3,sK4) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_275,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | sK4 != X2
    | sK3 != X1
    | sK5 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_19])).

cnf(c_276,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | ~ r2_hidden(X0,sK3)
    | r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
    | ~ v1_funct_1(sK5)
    | k1_xboole_0 = sK4 ),
    inference(unflattening,[status(thm)],[c_275])).

cnf(c_20,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_280,plain,
    ( r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
    | ~ r2_hidden(X0,sK3)
    | k1_xboole_0 = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_276,c_20,c_18])).

cnf(c_281,plain,
    ( ~ r2_hidden(X0,sK3)
    | r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
    | k1_xboole_0 = sK4 ),
    inference(renaming,[status(thm)],[c_280])).

cnf(c_978,plain,
    ( ~ r2_hidden(X0_53,sK3)
    | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5))
    | k1_xboole_0 = sK4 ),
    inference(subtyping,[status(esa)],[c_281])).

cnf(c_1351,plain,
    ( k1_xboole_0 = sK4
    | r2_hidden(X0_53,sK3) != iProver_top
    | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_978])).

cnf(c_21,negated_conjecture,
    ( ~ v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_4,plain,
    ( v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_995,plain,
    ( X0_54 = X0_54 ),
    theory(equality)).

cnf(c_1025,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_995])).

cnf(c_1043,plain,
    ( k1_xboole_0 = sK4
    | r2_hidden(X0_53,sK3) != iProver_top
    | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_978])).

cnf(c_1484,plain,
    ( ~ v1_xboole_0(sK1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_989])).

cnf(c_1001,plain,
    ( ~ v1_xboole_0(X0_54)
    | v1_xboole_0(X1_54)
    | X1_54 != X0_54 ),
    theory(equality)).

cnf(c_1487,plain,
    ( v1_xboole_0(X0_54)
    | ~ v1_xboole_0(sK1)
    | X0_54 != sK1 ),
    inference(instantiation,[status(thm)],[c_1001])).

cnf(c_1641,plain,
    ( ~ v1_xboole_0(sK1)
    | v1_xboole_0(k1_xboole_0)
    | k1_xboole_0 != sK1 ),
    inference(instantiation,[status(thm)],[c_1487])).

cnf(c_1825,plain,
    ( v1_xboole_0(X0_54)
    | ~ v1_xboole_0(k1_xboole_0)
    | X0_54 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1001])).

cnf(c_1830,plain,
    ( v1_xboole_0(sK4)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK4 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1825])).

cnf(c_998,plain,
    ( X0_54 != X1_54
    | X2_54 != X1_54
    | X2_54 = X0_54 ),
    theory(equality)).

cnf(c_2022,plain,
    ( X0_54 != X1_54
    | X0_54 = k1_xboole_0
    | k1_xboole_0 != X1_54 ),
    inference(instantiation,[status(thm)],[c_998])).

cnf(c_2023,plain,
    ( sK4 != sK4
    | sK4 = k1_xboole_0
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_2022])).

cnf(c_2274,plain,
    ( r2_hidden(X0_53,sK3) != iProver_top
    | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1351,c_21,c_4,c_1025,c_1043,c_1484,c_1641,c_1830,c_2023])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_981,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1348,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_981])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_986,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | k1_relset_1(X0_54,X1_54,X0_53) = k1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1345,plain,
    ( k1_relset_1(X0_54,X1_54,X0_53) = k1_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_986])).

cnf(c_2064,plain,
    ( k1_relset_1(sK4,sK2,sK6) = k1_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1348,c_1345])).

cnf(c_14,negated_conjecture,
    ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_983,negated_conjecture,
    ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_1346,plain,
    ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_983])).

cnf(c_2122,plain,
    ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relat_1(sK6)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2064,c_1346])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_990,plain,
    ( ~ r2_hidden(X0_53,X0_54)
    | r2_hidden(X0_53,X1_54)
    | ~ r1_tarski(X0_54,X1_54) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1341,plain,
    ( r2_hidden(X0_53,X0_54) != iProver_top
    | r2_hidden(X0_53,X1_54) = iProver_top
    | r1_tarski(X0_54,X1_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_990])).

cnf(c_2181,plain,
    ( r2_hidden(X0_53,k2_relset_1(sK3,sK4,sK5)) != iProver_top
    | r2_hidden(X0_53,k1_relat_1(sK6)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2122,c_1341])).

cnf(c_2331,plain,
    ( r2_hidden(X0_53,sK3) != iProver_top
    | r2_hidden(k1_funct_1(sK5,X0_53),k1_relat_1(sK6)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2274,c_2181])).

cnf(c_7,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_9,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ r2_hidden(X2,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k7_partfun1(X1,X0,X2) = k1_funct_1(X0,X2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_247,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(resolution,[status(thm)],[c_7,c_9])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_251,plain,
    ( ~ v1_funct_1(X0)
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_247,c_6])).

cnf(c_252,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(renaming,[status(thm)],[c_251])).

cnf(c_17,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_394,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(X0))
    | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3)
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_252,c_17])).

cnf(c_395,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r2_hidden(X2,k1_relat_1(sK6))
    | k7_partfun1(X1,sK6,X2) = k1_funct_1(sK6,X2) ),
    inference(unflattening,[status(thm)],[c_394])).

cnf(c_976,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ r2_hidden(X0_53,k1_relat_1(sK6))
    | k7_partfun1(X1_54,sK6,X0_53) = k1_funct_1(sK6,X0_53) ),
    inference(subtyping,[status(esa)],[c_395])).

cnf(c_1353,plain,
    ( k7_partfun1(X0_54,sK6,X0_53) = k1_funct_1(sK6,X0_53)
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54))) != iProver_top
    | r2_hidden(X0_53,k1_relat_1(sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_976])).

cnf(c_1564,plain,
    ( k7_partfun1(sK2,sK6,X0_53) = k1_funct_1(sK6,X0_53)
    | r2_hidden(X0_53,k1_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1348,c_1353])).

cnf(c_2429,plain,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,X0_53)) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
    | r2_hidden(X0_53,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2331,c_1564])).

cnf(c_2437,plain,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) = k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
    inference(superposition,[status(thm)],[c_2228,c_2429])).

cnf(c_10,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_296,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
    | ~ r1_tarski(k2_relset_1(X1,X3,X2),k1_relset_1(X3,X5,X4))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X4)
    | v1_xboole_0(X3)
    | k1_funct_1(k8_funct_2(X1,X3,X5,X2,X4),X0) = k1_funct_1(X4,k1_funct_1(X2,X0))
    | sK4 != X3
    | sK3 != X1
    | sK5 != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_19])).

cnf(c_297,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
    | ~ m1_subset_1(X2,sK3)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK5)
    | v1_xboole_0(sK4)
    | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_296])).

cnf(c_301,plain,
    ( k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
    | ~ v1_funct_1(X0)
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
    | ~ m1_subset_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_297,c_21,c_20,c_18,c_13])).

cnf(c_302,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
    | ~ m1_subset_1(X2,sK3)
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
    | ~ v1_funct_1(X0)
    | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2)) ),
    inference(renaming,[status(thm)],[c_301])).

cnf(c_376,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
    | ~ m1_subset_1(X2,sK3)
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
    | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_302,c_17])).

cnf(c_377,plain,
    ( ~ m1_subset_1(X0,sK3)
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,sK6))
    | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,sK6),X0) = k1_funct_1(sK6,k1_funct_1(sK5,X0)) ),
    inference(unflattening,[status(thm)],[c_376])).

cnf(c_977,plain,
    ( ~ m1_subset_1(X0_53,sK3)
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X0_54)))
    | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X0_54,sK6))
    | k1_funct_1(k8_funct_2(sK3,sK4,X0_54,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53)) ),
    inference(subtyping,[status(esa)],[c_377])).

cnf(c_1352,plain,
    ( k1_funct_1(k8_funct_2(sK3,sK4,X0_54,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
    | m1_subset_1(X0_53,sK3) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X0_54))) != iProver_top
    | r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X0_54,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_977])).

cnf(c_1900,plain,
    ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
    | m1_subset_1(X0_53,sK3) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1346,c_1352])).

cnf(c_27,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1905,plain,
    ( m1_subset_1(X0_53,sK3) != iProver_top
    | k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1900,c_27])).

cnf(c_1906,plain,
    ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
    | m1_subset_1(X0_53,sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_1905])).

cnf(c_1913,plain,
    ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) = k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
    inference(superposition,[status(thm)],[c_1347,c_1906])).

cnf(c_12,negated_conjecture,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_985,negated_conjecture,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_1956,plain,
    ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
    inference(demodulation,[status(thm)],[c_1913,c_985])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2437,c_1956])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.31  % Computer   : n008.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.31  % CPULimit   : 60
% 0.11/0.31  % WCLimit    : 600
% 0.11/0.31  % DateTime   : Tue Dec  1 17:10:30 EST 2020
% 0.11/0.31  % CPUTime    : 
% 0.11/0.31  % Running in FOF mode
% 1.55/0.90  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.55/0.90  
% 1.55/0.90  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.55/0.90  
% 1.55/0.90  ------  iProver source info
% 1.55/0.90  
% 1.55/0.90  git: date: 2020-06-30 10:37:57 +0100
% 1.55/0.90  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.55/0.90  git: non_committed_changes: false
% 1.55/0.90  git: last_make_outside_of_git: false
% 1.55/0.90  
% 1.55/0.90  ------ 
% 1.55/0.90  
% 1.55/0.90  ------ Input Options
% 1.55/0.90  
% 1.55/0.90  --out_options                           all
% 1.55/0.90  --tptp_safe_out                         true
% 1.55/0.90  --problem_path                          ""
% 1.55/0.90  --include_path                          ""
% 1.55/0.90  --clausifier                            res/vclausify_rel
% 1.55/0.90  --clausifier_options                    --mode clausify
% 1.55/0.90  --stdin                                 false
% 1.55/0.90  --stats_out                             all
% 1.55/0.90  
% 1.55/0.90  ------ General Options
% 1.55/0.90  
% 1.55/0.90  --fof                                   false
% 1.55/0.90  --time_out_real                         305.
% 1.55/0.90  --time_out_virtual                      -1.
% 1.55/0.90  --symbol_type_check                     false
% 1.55/0.90  --clausify_out                          false
% 1.55/0.90  --sig_cnt_out                           false
% 1.55/0.90  --trig_cnt_out                          false
% 1.55/0.90  --trig_cnt_out_tolerance                1.
% 1.55/0.90  --trig_cnt_out_sk_spl                   false
% 1.55/0.90  --abstr_cl_out                          false
% 1.55/0.90  
% 1.55/0.90  ------ Global Options
% 1.55/0.90  
% 1.55/0.90  --schedule                              default
% 1.55/0.90  --add_important_lit                     false
% 1.55/0.90  --prop_solver_per_cl                    1000
% 1.55/0.90  --min_unsat_core                        false
% 1.55/0.90  --soft_assumptions                      false
% 1.55/0.90  --soft_lemma_size                       3
% 1.55/0.90  --prop_impl_unit_size                   0
% 1.55/0.90  --prop_impl_unit                        []
% 1.55/0.90  --share_sel_clauses                     true
% 1.55/0.90  --reset_solvers                         false
% 1.55/0.90  --bc_imp_inh                            [conj_cone]
% 1.55/0.90  --conj_cone_tolerance                   3.
% 1.55/0.90  --extra_neg_conj                        none
% 1.55/0.90  --large_theory_mode                     true
% 1.55/0.90  --prolific_symb_bound                   200
% 1.55/0.90  --lt_threshold                          2000
% 1.55/0.90  --clause_weak_htbl                      true
% 1.55/0.90  --gc_record_bc_elim                     false
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing Options
% 1.55/0.90  
% 1.55/0.90  --preprocessing_flag                    true
% 1.55/0.90  --time_out_prep_mult                    0.1
% 1.55/0.90  --splitting_mode                        input
% 1.55/0.90  --splitting_grd                         true
% 1.55/0.90  --splitting_cvd                         false
% 1.55/0.90  --splitting_cvd_svl                     false
% 1.55/0.90  --splitting_nvd                         32
% 1.55/0.90  --sub_typing                            true
% 1.55/0.90  --prep_gs_sim                           true
% 1.55/0.90  --prep_unflatten                        true
% 1.55/0.90  --prep_res_sim                          true
% 1.55/0.90  --prep_upred                            true
% 1.55/0.90  --prep_sem_filter                       exhaustive
% 1.55/0.90  --prep_sem_filter_out                   false
% 1.55/0.90  --pred_elim                             true
% 1.55/0.90  --res_sim_input                         true
% 1.55/0.90  --eq_ax_congr_red                       true
% 1.55/0.90  --pure_diseq_elim                       true
% 1.55/0.90  --brand_transform                       false
% 1.55/0.90  --non_eq_to_eq                          false
% 1.55/0.90  --prep_def_merge                        true
% 1.55/0.90  --prep_def_merge_prop_impl              false
% 1.55/0.90  --prep_def_merge_mbd                    true
% 1.55/0.90  --prep_def_merge_tr_red                 false
% 1.55/0.90  --prep_def_merge_tr_cl                  false
% 1.55/0.90  --smt_preprocessing                     true
% 1.55/0.90  --smt_ac_axioms                         fast
% 1.55/0.90  --preprocessed_out                      false
% 1.55/0.90  --preprocessed_stats                    false
% 1.55/0.90  
% 1.55/0.90  ------ Abstraction refinement Options
% 1.55/0.90  
% 1.55/0.90  --abstr_ref                             []
% 1.55/0.90  --abstr_ref_prep                        false
% 1.55/0.90  --abstr_ref_until_sat                   false
% 1.55/0.90  --abstr_ref_sig_restrict                funpre
% 1.55/0.90  --abstr_ref_af_restrict_to_split_sk     false
% 1.55/0.90  --abstr_ref_under                       []
% 1.55/0.90  
% 1.55/0.90  ------ SAT Options
% 1.55/0.90  
% 1.55/0.90  --sat_mode                              false
% 1.55/0.90  --sat_fm_restart_options                ""
% 1.55/0.90  --sat_gr_def                            false
% 1.55/0.90  --sat_epr_types                         true
% 1.55/0.90  --sat_non_cyclic_types                  false
% 1.55/0.90  --sat_finite_models                     false
% 1.55/0.90  --sat_fm_lemmas                         false
% 1.55/0.90  --sat_fm_prep                           false
% 1.55/0.90  --sat_fm_uc_incr                        true
% 1.55/0.90  --sat_out_model                         small
% 1.55/0.90  --sat_out_clauses                       false
% 1.55/0.90  
% 1.55/0.90  ------ QBF Options
% 1.55/0.90  
% 1.55/0.90  --qbf_mode                              false
% 1.55/0.90  --qbf_elim_univ                         false
% 1.55/0.90  --qbf_dom_inst                          none
% 1.55/0.90  --qbf_dom_pre_inst                      false
% 1.55/0.90  --qbf_sk_in                             false
% 1.55/0.90  --qbf_pred_elim                         true
% 1.55/0.90  --qbf_split                             512
% 1.55/0.90  
% 1.55/0.90  ------ BMC1 Options
% 1.55/0.90  
% 1.55/0.90  --bmc1_incremental                      false
% 1.55/0.90  --bmc1_axioms                           reachable_all
% 1.55/0.90  --bmc1_min_bound                        0
% 1.55/0.90  --bmc1_max_bound                        -1
% 1.55/0.90  --bmc1_max_bound_default                -1
% 1.55/0.90  --bmc1_symbol_reachability              true
% 1.55/0.90  --bmc1_property_lemmas                  false
% 1.55/0.90  --bmc1_k_induction                      false
% 1.55/0.90  --bmc1_non_equiv_states                 false
% 1.55/0.90  --bmc1_deadlock                         false
% 1.55/0.90  --bmc1_ucm                              false
% 1.55/0.90  --bmc1_add_unsat_core                   none
% 1.55/0.90  --bmc1_unsat_core_children              false
% 1.55/0.90  --bmc1_unsat_core_extrapolate_axioms    false
% 1.55/0.90  --bmc1_out_stat                         full
% 1.55/0.90  --bmc1_ground_init                      false
% 1.55/0.90  --bmc1_pre_inst_next_state              false
% 1.55/0.90  --bmc1_pre_inst_state                   false
% 1.55/0.90  --bmc1_pre_inst_reach_state             false
% 1.55/0.90  --bmc1_out_unsat_core                   false
% 1.55/0.90  --bmc1_aig_witness_out                  false
% 1.55/0.90  --bmc1_verbose                          false
% 1.55/0.90  --bmc1_dump_clauses_tptp                false
% 1.55/0.90  --bmc1_dump_unsat_core_tptp             false
% 1.55/0.90  --bmc1_dump_file                        -
% 1.55/0.90  --bmc1_ucm_expand_uc_limit              128
% 1.55/0.90  --bmc1_ucm_n_expand_iterations          6
% 1.55/0.90  --bmc1_ucm_extend_mode                  1
% 1.55/0.90  --bmc1_ucm_init_mode                    2
% 1.55/0.90  --bmc1_ucm_cone_mode                    none
% 1.55/0.90  --bmc1_ucm_reduced_relation_type        0
% 1.55/0.90  --bmc1_ucm_relax_model                  4
% 1.55/0.90  --bmc1_ucm_full_tr_after_sat            true
% 1.55/0.90  --bmc1_ucm_expand_neg_assumptions       false
% 1.55/0.90  --bmc1_ucm_layered_model                none
% 1.55/0.90  --bmc1_ucm_max_lemma_size               10
% 1.55/0.90  
% 1.55/0.90  ------ AIG Options
% 1.55/0.90  
% 1.55/0.90  --aig_mode                              false
% 1.55/0.90  
% 1.55/0.90  ------ Instantiation Options
% 1.55/0.90  
% 1.55/0.90  --instantiation_flag                    true
% 1.55/0.90  --inst_sos_flag                         false
% 1.55/0.90  --inst_sos_phase                        true
% 1.55/0.90  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.55/0.90  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.55/0.90  --inst_lit_sel_side                     num_symb
% 1.55/0.90  --inst_solver_per_active                1400
% 1.55/0.90  --inst_solver_calls_frac                1.
% 1.55/0.90  --inst_passive_queue_type               priority_queues
% 1.55/0.90  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.55/0.90  --inst_passive_queues_freq              [25;2]
% 1.55/0.90  --inst_dismatching                      true
% 1.55/0.90  --inst_eager_unprocessed_to_passive     true
% 1.55/0.90  --inst_prop_sim_given                   true
% 1.55/0.90  --inst_prop_sim_new                     false
% 1.55/0.90  --inst_subs_new                         false
% 1.55/0.90  --inst_eq_res_simp                      false
% 1.55/0.90  --inst_subs_given                       false
% 1.55/0.90  --inst_orphan_elimination               true
% 1.55/0.90  --inst_learning_loop_flag               true
% 1.55/0.90  --inst_learning_start                   3000
% 1.55/0.90  --inst_learning_factor                  2
% 1.55/0.90  --inst_start_prop_sim_after_learn       3
% 1.55/0.90  --inst_sel_renew                        solver
% 1.55/0.90  --inst_lit_activity_flag                true
% 1.55/0.90  --inst_restr_to_given                   false
% 1.55/0.90  --inst_activity_threshold               500
% 1.55/0.90  --inst_out_proof                        true
% 1.55/0.90  
% 1.55/0.90  ------ Resolution Options
% 1.55/0.90  
% 1.55/0.90  --resolution_flag                       true
% 1.55/0.90  --res_lit_sel                           adaptive
% 1.55/0.90  --res_lit_sel_side                      none
% 1.55/0.90  --res_ordering                          kbo
% 1.55/0.90  --res_to_prop_solver                    active
% 1.55/0.90  --res_prop_simpl_new                    false
% 1.55/0.90  --res_prop_simpl_given                  true
% 1.55/0.90  --res_passive_queue_type                priority_queues
% 1.55/0.90  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.55/0.90  --res_passive_queues_freq               [15;5]
% 1.55/0.90  --res_forward_subs                      full
% 1.55/0.90  --res_backward_subs                     full
% 1.55/0.90  --res_forward_subs_resolution           true
% 1.55/0.90  --res_backward_subs_resolution          true
% 1.55/0.90  --res_orphan_elimination                true
% 1.55/0.90  --res_time_limit                        2.
% 1.55/0.90  --res_out_proof                         true
% 1.55/0.90  
% 1.55/0.90  ------ Superposition Options
% 1.55/0.90  
% 1.55/0.90  --superposition_flag                    true
% 1.55/0.90  --sup_passive_queue_type                priority_queues
% 1.55/0.90  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.55/0.90  --sup_passive_queues_freq               [8;1;4]
% 1.55/0.90  --demod_completeness_check              fast
% 1.55/0.90  --demod_use_ground                      true
% 1.55/0.90  --sup_to_prop_solver                    passive
% 1.55/0.90  --sup_prop_simpl_new                    true
% 1.55/0.90  --sup_prop_simpl_given                  true
% 1.55/0.90  --sup_fun_splitting                     false
% 1.55/0.90  --sup_smt_interval                      50000
% 1.55/0.90  
% 1.55/0.90  ------ Superposition Simplification Setup
% 1.55/0.90  
% 1.55/0.90  --sup_indices_passive                   []
% 1.55/0.90  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_full_triv                         [TrivRules;PropSubs]
% 1.55/0.90  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_full_bw                           [BwDemod]
% 1.55/0.90  --sup_immed_triv                        [TrivRules]
% 1.55/0.90  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.55/0.90  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_immed_bw_main                     []
% 1.55/0.90  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.55/0.90  --sup_input_triv                        [Unflattening;TrivRules]
% 1.55/0.90  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.55/0.90  
% 1.55/0.90  ------ Combination Options
% 1.55/0.90  
% 1.55/0.90  --comb_res_mult                         3
% 1.55/0.90  --comb_sup_mult                         2
% 1.55/0.90  --comb_inst_mult                        10
% 1.55/0.90  
% 1.55/0.90  ------ Debug Options
% 1.55/0.90  
% 1.55/0.90  --dbg_backtrace                         false
% 1.55/0.90  --dbg_dump_prop_clauses                 false
% 1.55/0.90  --dbg_dump_prop_clauses_file            -
% 1.55/0.90  --dbg_out_stat                          false
% 1.55/0.90  ------ Parsing...
% 1.55/0.90  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.55/0.90  ------ Proving...
% 1.55/0.90  ------ Problem Properties 
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  clauses                                 19
% 1.55/0.90  conjectures                             7
% 1.55/0.90  EPR                                     7
% 1.55/0.90  Horn                                    16
% 1.55/0.90  unary                                   8
% 1.55/0.90  binary                                  4
% 1.55/0.90  lits                                    39
% 1.55/0.90  lits eq                                 9
% 1.55/0.90  fd_pure                                 0
% 1.55/0.90  fd_pseudo                               0
% 1.55/0.90  fd_cond                                 1
% 1.55/0.90  fd_pseudo_cond                          0
% 1.55/0.90  AC symbols                              0
% 1.55/0.90  
% 1.55/0.90  ------ Schedule dynamic 5 is on 
% 1.55/0.90  
% 1.55/0.90  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  ------ 
% 1.55/0.90  Current options:
% 1.55/0.90  ------ 
% 1.55/0.90  
% 1.55/0.90  ------ Input Options
% 1.55/0.90  
% 1.55/0.90  --out_options                           all
% 1.55/0.90  --tptp_safe_out                         true
% 1.55/0.90  --problem_path                          ""
% 1.55/0.90  --include_path                          ""
% 1.55/0.90  --clausifier                            res/vclausify_rel
% 1.55/0.90  --clausifier_options                    --mode clausify
% 1.55/0.90  --stdin                                 false
% 1.55/0.90  --stats_out                             all
% 1.55/0.90  
% 1.55/0.90  ------ General Options
% 1.55/0.90  
% 1.55/0.90  --fof                                   false
% 1.55/0.90  --time_out_real                         305.
% 1.55/0.90  --time_out_virtual                      -1.
% 1.55/0.90  --symbol_type_check                     false
% 1.55/0.90  --clausify_out                          false
% 1.55/0.90  --sig_cnt_out                           false
% 1.55/0.90  --trig_cnt_out                          false
% 1.55/0.90  --trig_cnt_out_tolerance                1.
% 1.55/0.90  --trig_cnt_out_sk_spl                   false
% 1.55/0.90  --abstr_cl_out                          false
% 1.55/0.90  
% 1.55/0.90  ------ Global Options
% 1.55/0.90  
% 1.55/0.90  --schedule                              default
% 1.55/0.90  --add_important_lit                     false
% 1.55/0.90  --prop_solver_per_cl                    1000
% 1.55/0.90  --min_unsat_core                        false
% 1.55/0.90  --soft_assumptions                      false
% 1.55/0.90  --soft_lemma_size                       3
% 1.55/0.90  --prop_impl_unit_size                   0
% 1.55/0.90  --prop_impl_unit                        []
% 1.55/0.90  --share_sel_clauses                     true
% 1.55/0.90  --reset_solvers                         false
% 1.55/0.90  --bc_imp_inh                            [conj_cone]
% 1.55/0.90  --conj_cone_tolerance                   3.
% 1.55/0.90  --extra_neg_conj                        none
% 1.55/0.90  --large_theory_mode                     true
% 1.55/0.90  --prolific_symb_bound                   200
% 1.55/0.90  --lt_threshold                          2000
% 1.55/0.90  --clause_weak_htbl                      true
% 1.55/0.90  --gc_record_bc_elim                     false
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing Options
% 1.55/0.90  
% 1.55/0.90  --preprocessing_flag                    true
% 1.55/0.90  --time_out_prep_mult                    0.1
% 1.55/0.90  --splitting_mode                        input
% 1.55/0.90  --splitting_grd                         true
% 1.55/0.90  --splitting_cvd                         false
% 1.55/0.90  --splitting_cvd_svl                     false
% 1.55/0.90  --splitting_nvd                         32
% 1.55/0.90  --sub_typing                            true
% 1.55/0.90  --prep_gs_sim                           true
% 1.55/0.90  --prep_unflatten                        true
% 1.55/0.90  --prep_res_sim                          true
% 1.55/0.90  --prep_upred                            true
% 1.55/0.90  --prep_sem_filter                       exhaustive
% 1.55/0.90  --prep_sem_filter_out                   false
% 1.55/0.90  --pred_elim                             true
% 1.55/0.90  --res_sim_input                         true
% 1.55/0.90  --eq_ax_congr_red                       true
% 1.55/0.90  --pure_diseq_elim                       true
% 1.55/0.90  --brand_transform                       false
% 1.55/0.90  --non_eq_to_eq                          false
% 1.55/0.90  --prep_def_merge                        true
% 1.55/0.90  --prep_def_merge_prop_impl              false
% 1.55/0.90  --prep_def_merge_mbd                    true
% 1.55/0.90  --prep_def_merge_tr_red                 false
% 1.55/0.90  --prep_def_merge_tr_cl                  false
% 1.55/0.90  --smt_preprocessing                     true
% 1.55/0.90  --smt_ac_axioms                         fast
% 1.55/0.90  --preprocessed_out                      false
% 1.55/0.90  --preprocessed_stats                    false
% 1.55/0.90  
% 1.55/0.90  ------ Abstraction refinement Options
% 1.55/0.90  
% 1.55/0.90  --abstr_ref                             []
% 1.55/0.90  --abstr_ref_prep                        false
% 1.55/0.90  --abstr_ref_until_sat                   false
% 1.55/0.90  --abstr_ref_sig_restrict                funpre
% 1.55/0.90  --abstr_ref_af_restrict_to_split_sk     false
% 1.55/0.90  --abstr_ref_under                       []
% 1.55/0.90  
% 1.55/0.90  ------ SAT Options
% 1.55/0.90  
% 1.55/0.90  --sat_mode                              false
% 1.55/0.90  --sat_fm_restart_options                ""
% 1.55/0.90  --sat_gr_def                            false
% 1.55/0.90  --sat_epr_types                         true
% 1.55/0.90  --sat_non_cyclic_types                  false
% 1.55/0.90  --sat_finite_models                     false
% 1.55/0.90  --sat_fm_lemmas                         false
% 1.55/0.90  --sat_fm_prep                           false
% 1.55/0.90  --sat_fm_uc_incr                        true
% 1.55/0.90  --sat_out_model                         small
% 1.55/0.90  --sat_out_clauses                       false
% 1.55/0.90  
% 1.55/0.90  ------ QBF Options
% 1.55/0.90  
% 1.55/0.90  --qbf_mode                              false
% 1.55/0.90  --qbf_elim_univ                         false
% 1.55/0.90  --qbf_dom_inst                          none
% 1.55/0.90  --qbf_dom_pre_inst                      false
% 1.55/0.90  --qbf_sk_in                             false
% 1.55/0.90  --qbf_pred_elim                         true
% 1.55/0.90  --qbf_split                             512
% 1.55/0.90  
% 1.55/0.90  ------ BMC1 Options
% 1.55/0.90  
% 1.55/0.90  --bmc1_incremental                      false
% 1.55/0.90  --bmc1_axioms                           reachable_all
% 1.55/0.90  --bmc1_min_bound                        0
% 1.55/0.90  --bmc1_max_bound                        -1
% 1.55/0.90  --bmc1_max_bound_default                -1
% 1.55/0.90  --bmc1_symbol_reachability              true
% 1.55/0.90  --bmc1_property_lemmas                  false
% 1.55/0.90  --bmc1_k_induction                      false
% 1.55/0.90  --bmc1_non_equiv_states                 false
% 1.55/0.90  --bmc1_deadlock                         false
% 1.55/0.90  --bmc1_ucm                              false
% 1.55/0.90  --bmc1_add_unsat_core                   none
% 1.55/0.90  --bmc1_unsat_core_children              false
% 1.55/0.90  --bmc1_unsat_core_extrapolate_axioms    false
% 1.55/0.90  --bmc1_out_stat                         full
% 1.55/0.90  --bmc1_ground_init                      false
% 1.55/0.90  --bmc1_pre_inst_next_state              false
% 1.55/0.90  --bmc1_pre_inst_state                   false
% 1.55/0.90  --bmc1_pre_inst_reach_state             false
% 1.55/0.90  --bmc1_out_unsat_core                   false
% 1.55/0.90  --bmc1_aig_witness_out                  false
% 1.55/0.90  --bmc1_verbose                          false
% 1.55/0.90  --bmc1_dump_clauses_tptp                false
% 1.55/0.90  --bmc1_dump_unsat_core_tptp             false
% 1.55/0.90  --bmc1_dump_file                        -
% 1.55/0.90  --bmc1_ucm_expand_uc_limit              128
% 1.55/0.90  --bmc1_ucm_n_expand_iterations          6
% 1.55/0.90  --bmc1_ucm_extend_mode                  1
% 1.55/0.90  --bmc1_ucm_init_mode                    2
% 1.55/0.90  --bmc1_ucm_cone_mode                    none
% 1.55/0.90  --bmc1_ucm_reduced_relation_type        0
% 1.55/0.90  --bmc1_ucm_relax_model                  4
% 1.55/0.90  --bmc1_ucm_full_tr_after_sat            true
% 1.55/0.90  --bmc1_ucm_expand_neg_assumptions       false
% 1.55/0.90  --bmc1_ucm_layered_model                none
% 1.55/0.90  --bmc1_ucm_max_lemma_size               10
% 1.55/0.90  
% 1.55/0.90  ------ AIG Options
% 1.55/0.90  
% 1.55/0.90  --aig_mode                              false
% 1.55/0.90  
% 1.55/0.90  ------ Instantiation Options
% 1.55/0.90  
% 1.55/0.90  --instantiation_flag                    true
% 1.55/0.90  --inst_sos_flag                         false
% 1.55/0.90  --inst_sos_phase                        true
% 1.55/0.90  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.55/0.90  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.55/0.90  --inst_lit_sel_side                     none
% 1.55/0.90  --inst_solver_per_active                1400
% 1.55/0.90  --inst_solver_calls_frac                1.
% 1.55/0.90  --inst_passive_queue_type               priority_queues
% 1.55/0.90  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.55/0.90  --inst_passive_queues_freq              [25;2]
% 1.55/0.90  --inst_dismatching                      true
% 1.55/0.90  --inst_eager_unprocessed_to_passive     true
% 1.55/0.90  --inst_prop_sim_given                   true
% 1.55/0.90  --inst_prop_sim_new                     false
% 1.55/0.90  --inst_subs_new                         false
% 1.55/0.90  --inst_eq_res_simp                      false
% 1.55/0.90  --inst_subs_given                       false
% 1.55/0.90  --inst_orphan_elimination               true
% 1.55/0.90  --inst_learning_loop_flag               true
% 1.55/0.90  --inst_learning_start                   3000
% 1.55/0.90  --inst_learning_factor                  2
% 1.55/0.90  --inst_start_prop_sim_after_learn       3
% 1.55/0.90  --inst_sel_renew                        solver
% 1.55/0.90  --inst_lit_activity_flag                true
% 1.55/0.90  --inst_restr_to_given                   false
% 1.55/0.90  --inst_activity_threshold               500
% 1.55/0.90  --inst_out_proof                        true
% 1.55/0.90  
% 1.55/0.90  ------ Resolution Options
% 1.55/0.90  
% 1.55/0.90  --resolution_flag                       false
% 1.55/0.90  --res_lit_sel                           adaptive
% 1.55/0.90  --res_lit_sel_side                      none
% 1.55/0.90  --res_ordering                          kbo
% 1.55/0.90  --res_to_prop_solver                    active
% 1.55/0.90  --res_prop_simpl_new                    false
% 1.55/0.90  --res_prop_simpl_given                  true
% 1.55/0.90  --res_passive_queue_type                priority_queues
% 1.55/0.90  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.55/0.90  --res_passive_queues_freq               [15;5]
% 1.55/0.90  --res_forward_subs                      full
% 1.55/0.90  --res_backward_subs                     full
% 1.55/0.90  --res_forward_subs_resolution           true
% 1.55/0.90  --res_backward_subs_resolution          true
% 1.55/0.90  --res_orphan_elimination                true
% 1.55/0.90  --res_time_limit                        2.
% 1.55/0.90  --res_out_proof                         true
% 1.55/0.90  
% 1.55/0.90  ------ Superposition Options
% 1.55/0.90  
% 1.55/0.90  --superposition_flag                    true
% 1.55/0.90  --sup_passive_queue_type                priority_queues
% 1.55/0.90  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.55/0.90  --sup_passive_queues_freq               [8;1;4]
% 1.55/0.90  --demod_completeness_check              fast
% 1.55/0.90  --demod_use_ground                      true
% 1.55/0.90  --sup_to_prop_solver                    passive
% 1.55/0.90  --sup_prop_simpl_new                    true
% 1.55/0.90  --sup_prop_simpl_given                  true
% 1.55/0.90  --sup_fun_splitting                     false
% 1.55/0.90  --sup_smt_interval                      50000
% 1.55/0.90  
% 1.55/0.90  ------ Superposition Simplification Setup
% 1.55/0.90  
% 1.55/0.90  --sup_indices_passive                   []
% 1.55/0.90  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.55/0.90  --sup_full_triv                         [TrivRules;PropSubs]
% 1.55/0.90  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_full_bw                           [BwDemod]
% 1.55/0.90  --sup_immed_triv                        [TrivRules]
% 1.55/0.90  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.55/0.90  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_immed_bw_main                     []
% 1.55/0.90  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.55/0.90  --sup_input_triv                        [Unflattening;TrivRules]
% 1.55/0.90  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.55/0.90  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.55/0.90  
% 1.55/0.90  ------ Combination Options
% 1.55/0.90  
% 1.55/0.90  --comb_res_mult                         3
% 1.55/0.90  --comb_sup_mult                         2
% 1.55/0.90  --comb_inst_mult                        10
% 1.55/0.90  
% 1.55/0.90  ------ Debug Options
% 1.55/0.90  
% 1.55/0.90  --dbg_backtrace                         false
% 1.55/0.90  --dbg_dump_prop_clauses                 false
% 1.55/0.90  --dbg_dump_prop_clauses_file            -
% 1.55/0.90  --dbg_out_stat                          false
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  ------ Proving...
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  % SZS status Theorem for theBenchmark.p
% 1.55/0.90  
% 1.55/0.90  % SZS output start CNFRefutation for theBenchmark.p
% 1.55/0.90  
% 1.55/0.90  fof(f11,conjecture,(
% 1.55/0.90    ! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f12,negated_conjecture,(
% 1.55/0.90    ~! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.55/0.90    inference(negated_conjecture,[],[f11])).
% 1.55/0.90  
% 1.55/0.90  fof(f27,plain,(
% 1.55/0.90    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (((k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1) & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))) & m1_subset_1(X5,X1)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3))) & ~v1_xboole_0(X2))),
% 1.55/0.90    inference(ennf_transformation,[],[f12])).
% 1.55/0.90  
% 1.55/0.90  fof(f28,plain,(
% 1.55/0.90    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) & ~v1_xboole_0(X2))),
% 1.55/0.90    inference(flattening,[],[f27])).
% 1.55/0.90  
% 1.55/0.90  fof(f38,plain,(
% 1.55/0.90    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) => (k7_partfun1(X0,X4,k1_funct_1(X3,sK7)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),sK7) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(sK7,X1))) )),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f37,plain,(
% 1.55/0.90    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => (? [X5] : (k7_partfun1(X0,sK6,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,sK6),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,sK6)) & m1_subset_1(X5,X1)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(sK6))) )),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f36,plain,(
% 1.55/0.90    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(sK5,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,sK5,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,sK5),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK5,X1,X2) & v1_funct_1(sK5))) )),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f35,plain,(
% 1.55/0.90    ? [X0,X1,X2] : (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(X0,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) & k1_xboole_0 != X1 & r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) & ~v1_xboole_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (k7_partfun1(sK2,X4,k1_funct_1(X3,X5)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,X3,X4),X5) & k1_xboole_0 != sK3 & r1_tarski(k2_relset_1(sK3,sK4,X3),k1_relset_1(sK4,sK2,X4)) & m1_subset_1(X5,sK3)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(X3,sK3,sK4) & v1_funct_1(X3)) & ~v1_xboole_0(sK4))),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f39,plain,(
% 1.55/0.90    (((k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) & k1_xboole_0 != sK3 & r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) & m1_subset_1(sK7,sK3)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) & v1_funct_1(sK6)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(sK5,sK3,sK4) & v1_funct_1(sK5)) & ~v1_xboole_0(sK4)),
% 1.55/0.90    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7])],[f28,f38,f37,f36,f35])).
% 1.55/0.90  
% 1.55/0.90  fof(f58,plain,(
% 1.55/0.90    m1_subset_1(sK7,sK3)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f4,axiom,(
% 1.55/0.90    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f16,plain,(
% 1.55/0.90    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.55/0.90    inference(ennf_transformation,[],[f4])).
% 1.55/0.90  
% 1.55/0.90  fof(f17,plain,(
% 1.55/0.90    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.55/0.90    inference(flattening,[],[f16])).
% 1.55/0.90  
% 1.55/0.90  fof(f45,plain,(
% 1.55/0.90    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f17])).
% 1.55/0.90  
% 1.55/0.90  fof(f60,plain,(
% 1.55/0.90    k1_xboole_0 != sK3),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f2,axiom,(
% 1.55/0.90    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f15,plain,(
% 1.55/0.90    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 1.55/0.90    inference(ennf_transformation,[],[f2])).
% 1.55/0.90  
% 1.55/0.90  fof(f43,plain,(
% 1.55/0.90    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f15])).
% 1.55/0.90  
% 1.55/0.90  fof(f10,axiom,(
% 1.55/0.90    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f25,plain,(
% 1.55/0.90    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.55/0.90    inference(ennf_transformation,[],[f10])).
% 1.55/0.90  
% 1.55/0.90  fof(f26,plain,(
% 1.55/0.90    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.55/0.90    inference(flattening,[],[f25])).
% 1.55/0.90  
% 1.55/0.90  fof(f51,plain,(
% 1.55/0.90    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f26])).
% 1.55/0.90  
% 1.55/0.90  fof(f54,plain,(
% 1.55/0.90    v1_funct_2(sK5,sK3,sK4)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f53,plain,(
% 1.55/0.90    v1_funct_1(sK5)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f55,plain,(
% 1.55/0.90    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f52,plain,(
% 1.55/0.90    ~v1_xboole_0(sK4)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f3,axiom,(
% 1.55/0.90    ? [X0] : v1_xboole_0(X0)),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f33,plain,(
% 1.55/0.90    ? [X0] : v1_xboole_0(X0) => v1_xboole_0(sK1)),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f34,plain,(
% 1.55/0.90    v1_xboole_0(sK1)),
% 1.55/0.90    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f3,f33])).
% 1.55/0.90  
% 1.55/0.90  fof(f44,plain,(
% 1.55/0.90    v1_xboole_0(sK1)),
% 1.55/0.90    inference(cnf_transformation,[],[f34])).
% 1.55/0.90  
% 1.55/0.90  fof(f57,plain,(
% 1.55/0.90    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2)))),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f7,axiom,(
% 1.55/0.90    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f20,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.55/0.90    inference(ennf_transformation,[],[f7])).
% 1.55/0.90  
% 1.55/0.90  fof(f48,plain,(
% 1.55/0.90    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.55/0.90    inference(cnf_transformation,[],[f20])).
% 1.55/0.90  
% 1.55/0.90  fof(f59,plain,(
% 1.55/0.90    r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6))),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f1,axiom,(
% 1.55/0.90    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f14,plain,(
% 1.55/0.90    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.55/0.90    inference(ennf_transformation,[],[f1])).
% 1.55/0.90  
% 1.55/0.90  fof(f29,plain,(
% 1.55/0.90    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.55/0.90    inference(nnf_transformation,[],[f14])).
% 1.55/0.90  
% 1.55/0.90  fof(f30,plain,(
% 1.55/0.90    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.55/0.90    inference(rectify,[],[f29])).
% 1.55/0.90  
% 1.55/0.90  fof(f31,plain,(
% 1.55/0.90    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.55/0.90    introduced(choice_axiom,[])).
% 1.55/0.90  
% 1.55/0.90  fof(f32,plain,(
% 1.55/0.90    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.55/0.90    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f30,f31])).
% 1.55/0.90  
% 1.55/0.90  fof(f40,plain,(
% 1.55/0.90    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f32])).
% 1.55/0.90  
% 1.55/0.90  fof(f6,axiom,(
% 1.55/0.90    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f13,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 1.55/0.90    inference(pure_predicate_removal,[],[f6])).
% 1.55/0.90  
% 1.55/0.90  fof(f19,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.55/0.90    inference(ennf_transformation,[],[f13])).
% 1.55/0.90  
% 1.55/0.90  fof(f47,plain,(
% 1.55/0.90    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.55/0.90    inference(cnf_transformation,[],[f19])).
% 1.55/0.90  
% 1.55/0.90  fof(f8,axiom,(
% 1.55/0.90    ! [X0,X1] : ((v1_funct_1(X1) & v5_relat_1(X1,X0) & v1_relat_1(X1)) => ! [X2] : (r2_hidden(X2,k1_relat_1(X1)) => k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2)))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f21,plain,(
% 1.55/0.90    ! [X0,X1] : (! [X2] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.55/0.90    inference(ennf_transformation,[],[f8])).
% 1.55/0.90  
% 1.55/0.90  fof(f22,plain,(
% 1.55/0.90    ! [X0,X1] : (! [X2] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1))) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.55/0.90    inference(flattening,[],[f21])).
% 1.55/0.90  
% 1.55/0.90  fof(f49,plain,(
% 1.55/0.90    ( ! [X2,X0,X1] : (k7_partfun1(X0,X1,X2) = k1_funct_1(X1,X2) | ~r2_hidden(X2,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f22])).
% 1.55/0.90  
% 1.55/0.90  fof(f5,axiom,(
% 1.55/0.90    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f18,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.55/0.90    inference(ennf_transformation,[],[f5])).
% 1.55/0.90  
% 1.55/0.90  fof(f46,plain,(
% 1.55/0.90    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.55/0.90    inference(cnf_transformation,[],[f18])).
% 1.55/0.90  
% 1.55/0.90  fof(f56,plain,(
% 1.55/0.90    v1_funct_1(sK6)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  fof(f9,axiom,(
% 1.55/0.90    ! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 1.55/0.90    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.55/0.90  
% 1.55/0.90  fof(f23,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (((k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1) | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))) | ~m1_subset_1(X5,X1)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3))) | v1_xboole_0(X2))),
% 1.55/0.90    inference(ennf_transformation,[],[f9])).
% 1.55/0.90  
% 1.55/0.90  fof(f24,plain,(
% 1.55/0.90    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3)) | v1_xboole_0(X2))),
% 1.55/0.90    inference(flattening,[],[f23])).
% 1.55/0.90  
% 1.55/0.90  fof(f50,plain,(
% 1.55/0.90    ( ! [X4,X2,X0,X5,X3,X1] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3) | v1_xboole_0(X2)) )),
% 1.55/0.90    inference(cnf_transformation,[],[f24])).
% 1.55/0.90  
% 1.55/0.90  fof(f61,plain,(
% 1.55/0.90    k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7)),
% 1.55/0.90    inference(cnf_transformation,[],[f39])).
% 1.55/0.90  
% 1.55/0.90  cnf(c_15,negated_conjecture,
% 1.55/0.90      ( m1_subset_1(sK7,sK3) ),
% 1.55/0.90      inference(cnf_transformation,[],[f58]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_982,negated_conjecture,
% 1.55/0.90      ( m1_subset_1(sK7,sK3) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_15]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1347,plain,
% 1.55/0.90      ( m1_subset_1(sK7,sK3) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_982]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_5,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 1.55/0.90      inference(cnf_transformation,[],[f45]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_987,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0_53,X0_54)
% 1.55/0.90      | r2_hidden(X0_53,X0_54)
% 1.55/0.90      | v1_xboole_0(X0_54) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_5]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1344,plain,
% 1.55/0.90      ( m1_subset_1(X0_53,X0_54) != iProver_top
% 1.55/0.90      | r2_hidden(X0_53,X0_54) = iProver_top
% 1.55/0.90      | v1_xboole_0(X0_54) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_987]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1713,plain,
% 1.55/0.90      ( r2_hidden(sK7,sK3) = iProver_top
% 1.55/0.90      | v1_xboole_0(sK3) = iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_1347,c_1344]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_28,plain,
% 1.55/0.90      ( m1_subset_1(sK7,sK3) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_13,negated_conjecture,
% 1.55/0.90      ( k1_xboole_0 != sK3 ),
% 1.55/0.90      inference(cnf_transformation,[],[f60]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_984,negated_conjecture,
% 1.55/0.90      ( k1_xboole_0 != sK3 ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_13]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1496,plain,
% 1.55/0.90      ( ~ m1_subset_1(sK7,sK3) | r2_hidden(sK7,sK3) | v1_xboole_0(sK3) ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_987]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1497,plain,
% 1.55/0.90      ( m1_subset_1(sK7,sK3) != iProver_top
% 1.55/0.90      | r2_hidden(sK7,sK3) = iProver_top
% 1.55/0.90      | v1_xboole_0(sK3) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_1496]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_3,plain,
% 1.55/0.90      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 1.55/0.90      inference(cnf_transformation,[],[f43]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_989,plain,
% 1.55/0.90      ( ~ v1_xboole_0(X0_54) | k1_xboole_0 = X0_54 ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_3]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1535,plain,
% 1.55/0.90      ( ~ v1_xboole_0(sK3) | k1_xboole_0 = sK3 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_989]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1536,plain,
% 1.55/0.90      ( k1_xboole_0 = sK3 | v1_xboole_0(sK3) != iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_1535]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2228,plain,
% 1.55/0.90      ( r2_hidden(sK7,sK3) = iProver_top ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_1713,c_28,c_984,c_1497,c_1536]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_11,plain,
% 1.55/0.90      ( ~ v1_funct_2(X0,X1,X2)
% 1.55/0.90      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r2_hidden(X3,X1)
% 1.55/0.90      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | k1_xboole_0 = X2 ),
% 1.55/0.90      inference(cnf_transformation,[],[f51]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_19,negated_conjecture,
% 1.55/0.90      ( v1_funct_2(sK5,sK3,sK4) ),
% 1.55/0.90      inference(cnf_transformation,[],[f54]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_275,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r2_hidden(X3,X1)
% 1.55/0.90      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | sK4 != X2
% 1.55/0.90      | sK3 != X1
% 1.55/0.90      | sK5 != X0
% 1.55/0.90      | k1_xboole_0 = X2 ),
% 1.55/0.90      inference(resolution_lifted,[status(thm)],[c_11,c_19]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_276,plain,
% 1.55/0.90      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 1.55/0.90      | ~ r2_hidden(X0,sK3)
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
% 1.55/0.90      | ~ v1_funct_1(sK5)
% 1.55/0.90      | k1_xboole_0 = sK4 ),
% 1.55/0.90      inference(unflattening,[status(thm)],[c_275]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_20,negated_conjecture,
% 1.55/0.90      ( v1_funct_1(sK5) ),
% 1.55/0.90      inference(cnf_transformation,[],[f53]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_18,negated_conjecture,
% 1.55/0.90      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 1.55/0.90      inference(cnf_transformation,[],[f55]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_280,plain,
% 1.55/0.90      ( r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
% 1.55/0.90      | ~ r2_hidden(X0,sK3)
% 1.55/0.90      | k1_xboole_0 = sK4 ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_276,c_20,c_18]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_281,plain,
% 1.55/0.90      ( ~ r2_hidden(X0,sK3)
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0),k2_relset_1(sK3,sK4,sK5))
% 1.55/0.90      | k1_xboole_0 = sK4 ),
% 1.55/0.90      inference(renaming,[status(thm)],[c_280]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_978,plain,
% 1.55/0.90      ( ~ r2_hidden(X0_53,sK3)
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5))
% 1.55/0.90      | k1_xboole_0 = sK4 ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_281]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1351,plain,
% 1.55/0.90      ( k1_xboole_0 = sK4
% 1.55/0.90      | r2_hidden(X0_53,sK3) != iProver_top
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_978]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_21,negated_conjecture,
% 1.55/0.90      ( ~ v1_xboole_0(sK4) ),
% 1.55/0.90      inference(cnf_transformation,[],[f52]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_4,plain,
% 1.55/0.90      ( v1_xboole_0(sK1) ),
% 1.55/0.90      inference(cnf_transformation,[],[f44]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_995,plain,( X0_54 = X0_54 ),theory(equality) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1025,plain,
% 1.55/0.90      ( sK4 = sK4 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_995]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1043,plain,
% 1.55/0.90      ( k1_xboole_0 = sK4
% 1.55/0.90      | r2_hidden(X0_53,sK3) != iProver_top
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_978]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1484,plain,
% 1.55/0.90      ( ~ v1_xboole_0(sK1) | k1_xboole_0 = sK1 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_989]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1001,plain,
% 1.55/0.90      ( ~ v1_xboole_0(X0_54) | v1_xboole_0(X1_54) | X1_54 != X0_54 ),
% 1.55/0.90      theory(equality) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1487,plain,
% 1.55/0.90      ( v1_xboole_0(X0_54) | ~ v1_xboole_0(sK1) | X0_54 != sK1 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_1001]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1641,plain,
% 1.55/0.90      ( ~ v1_xboole_0(sK1)
% 1.55/0.90      | v1_xboole_0(k1_xboole_0)
% 1.55/0.90      | k1_xboole_0 != sK1 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_1487]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1825,plain,
% 1.55/0.90      ( v1_xboole_0(X0_54)
% 1.55/0.90      | ~ v1_xboole_0(k1_xboole_0)
% 1.55/0.90      | X0_54 != k1_xboole_0 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_1001]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1830,plain,
% 1.55/0.90      ( v1_xboole_0(sK4)
% 1.55/0.90      | ~ v1_xboole_0(k1_xboole_0)
% 1.55/0.90      | sK4 != k1_xboole_0 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_1825]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_998,plain,
% 1.55/0.90      ( X0_54 != X1_54 | X2_54 != X1_54 | X2_54 = X0_54 ),
% 1.55/0.90      theory(equality) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2022,plain,
% 1.55/0.90      ( X0_54 != X1_54 | X0_54 = k1_xboole_0 | k1_xboole_0 != X1_54 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_998]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2023,plain,
% 1.55/0.90      ( sK4 != sK4 | sK4 = k1_xboole_0 | k1_xboole_0 != sK4 ),
% 1.55/0.90      inference(instantiation,[status(thm)],[c_2022]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2274,plain,
% 1.55/0.90      ( r2_hidden(X0_53,sK3) != iProver_top
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0_53),k2_relset_1(sK3,sK4,sK5)) = iProver_top ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_1351,c_21,c_4,c_1025,c_1043,c_1484,c_1641,c_1830,
% 1.55/0.90                 c_2023]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_16,negated_conjecture,
% 1.55/0.90      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) ),
% 1.55/0.90      inference(cnf_transformation,[],[f57]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_981,negated_conjecture,
% 1.55/0.90      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_16]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1348,plain,
% 1.55/0.90      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_981]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_8,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.55/0.90      inference(cnf_transformation,[],[f48]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_986,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 1.55/0.90      | k1_relset_1(X0_54,X1_54,X0_53) = k1_relat_1(X0_53) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_8]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1345,plain,
% 1.55/0.90      ( k1_relset_1(X0_54,X1_54,X0_53) = k1_relat_1(X0_53)
% 1.55/0.90      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_986]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2064,plain,
% 1.55/0.90      ( k1_relset_1(sK4,sK2,sK6) = k1_relat_1(sK6) ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_1348,c_1345]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_14,negated_conjecture,
% 1.55/0.90      ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) ),
% 1.55/0.90      inference(cnf_transformation,[],[f59]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_983,negated_conjecture,
% 1.55/0.90      ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_14]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1346,plain,
% 1.55/0.90      ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,sK2,sK6)) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_983]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2122,plain,
% 1.55/0.90      ( r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relat_1(sK6)) = iProver_top ),
% 1.55/0.90      inference(demodulation,[status(thm)],[c_2064,c_1346]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2,plain,
% 1.55/0.90      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 1.55/0.90      inference(cnf_transformation,[],[f40]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_990,plain,
% 1.55/0.90      ( ~ r2_hidden(X0_53,X0_54)
% 1.55/0.90      | r2_hidden(X0_53,X1_54)
% 1.55/0.90      | ~ r1_tarski(X0_54,X1_54) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_2]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1341,plain,
% 1.55/0.90      ( r2_hidden(X0_53,X0_54) != iProver_top
% 1.55/0.90      | r2_hidden(X0_53,X1_54) = iProver_top
% 1.55/0.90      | r1_tarski(X0_54,X1_54) != iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_990]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2181,plain,
% 1.55/0.90      ( r2_hidden(X0_53,k2_relset_1(sK3,sK4,sK5)) != iProver_top
% 1.55/0.90      | r2_hidden(X0_53,k1_relat_1(sK6)) = iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_2122,c_1341]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2331,plain,
% 1.55/0.90      ( r2_hidden(X0_53,sK3) != iProver_top
% 1.55/0.90      | r2_hidden(k1_funct_1(sK5,X0_53),k1_relat_1(sK6)) = iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_2274,c_2181]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_7,plain,
% 1.55/0.90      ( v5_relat_1(X0,X1)
% 1.55/0.90      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 1.55/0.90      inference(cnf_transformation,[],[f47]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_9,plain,
% 1.55/0.90      ( ~ v5_relat_1(X0,X1)
% 1.55/0.90      | ~ r2_hidden(X2,k1_relat_1(X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | ~ v1_relat_1(X0)
% 1.55/0.90      | k7_partfun1(X1,X0,X2) = k1_funct_1(X0,X2) ),
% 1.55/0.90      inference(cnf_transformation,[],[f49]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_247,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | ~ v1_relat_1(X0)
% 1.55/0.90      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
% 1.55/0.90      inference(resolution,[status(thm)],[c_7,c_9]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_6,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | v1_relat_1(X0) ),
% 1.55/0.90      inference(cnf_transformation,[],[f46]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_251,plain,
% 1.55/0.90      ( ~ v1_funct_1(X0)
% 1.55/0.90      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.55/0.90      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_247,c_6]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_252,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3) ),
% 1.55/0.90      inference(renaming,[status(thm)],[c_251]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_17,negated_conjecture,
% 1.55/0.90      ( v1_funct_1(sK6) ),
% 1.55/0.90      inference(cnf_transformation,[],[f56]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_394,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r2_hidden(X3,k1_relat_1(X0))
% 1.55/0.90      | k7_partfun1(X2,X0,X3) = k1_funct_1(X0,X3)
% 1.55/0.90      | sK6 != X0 ),
% 1.55/0.90      inference(resolution_lifted,[status(thm)],[c_252,c_17]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_395,plain,
% 1.55/0.90      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.55/0.90      | ~ r2_hidden(X2,k1_relat_1(sK6))
% 1.55/0.90      | k7_partfun1(X1,sK6,X2) = k1_funct_1(sK6,X2) ),
% 1.55/0.90      inference(unflattening,[status(thm)],[c_394]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_976,plain,
% 1.55/0.90      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 1.55/0.90      | ~ r2_hidden(X0_53,k1_relat_1(sK6))
% 1.55/0.90      | k7_partfun1(X1_54,sK6,X0_53) = k1_funct_1(sK6,X0_53) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_395]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1353,plain,
% 1.55/0.90      ( k7_partfun1(X0_54,sK6,X0_53) = k1_funct_1(sK6,X0_53)
% 1.55/0.90      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54))) != iProver_top
% 1.55/0.90      | r2_hidden(X0_53,k1_relat_1(sK6)) != iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_976]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1564,plain,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,X0_53) = k1_funct_1(sK6,X0_53)
% 1.55/0.90      | r2_hidden(X0_53,k1_relat_1(sK6)) != iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_1348,c_1353]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2429,plain,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,X0_53)) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
% 1.55/0.90      | r2_hidden(X0_53,sK3) != iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_2331,c_1564]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_2437,plain,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) = k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_2228,c_2429]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_10,plain,
% 1.55/0.90      ( ~ v1_funct_2(X0,X1,X2)
% 1.55/0.90      | ~ m1_subset_1(X3,X1)
% 1.55/0.90      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
% 1.55/0.90      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
% 1.55/0.90      | ~ v1_funct_1(X4)
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | v1_xboole_0(X2)
% 1.55/0.90      | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
% 1.55/0.90      | k1_xboole_0 = X1 ),
% 1.55/0.90      inference(cnf_transformation,[],[f50]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_296,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,X1)
% 1.55/0.90      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.55/0.90      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(X1,X3,X2),k1_relset_1(X3,X5,X4))
% 1.55/0.90      | ~ v1_funct_1(X2)
% 1.55/0.90      | ~ v1_funct_1(X4)
% 1.55/0.90      | v1_xboole_0(X3)
% 1.55/0.90      | k1_funct_1(k8_funct_2(X1,X3,X5,X2,X4),X0) = k1_funct_1(X4,k1_funct_1(X2,X0))
% 1.55/0.90      | sK4 != X3
% 1.55/0.90      | sK3 != X1
% 1.55/0.90      | sK5 != X2
% 1.55/0.90      | k1_xboole_0 = X1 ),
% 1.55/0.90      inference(resolution_lifted,[status(thm)],[c_10,c_19]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_297,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
% 1.55/0.90      | ~ m1_subset_1(X2,sK3)
% 1.55/0.90      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | ~ v1_funct_1(sK5)
% 1.55/0.90      | v1_xboole_0(sK4)
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
% 1.55/0.90      | k1_xboole_0 = sK3 ),
% 1.55/0.90      inference(unflattening,[status(thm)],[c_296]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_301,plain,
% 1.55/0.90      ( k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
% 1.55/0.90      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
% 1.55/0.90      | ~ m1_subset_1(X2,sK3) ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_297,c_21,c_20,c_18,c_13]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_302,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
% 1.55/0.90      | ~ m1_subset_1(X2,sK3)
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
% 1.55/0.90      | ~ v1_funct_1(X0)
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2)) ),
% 1.55/0.90      inference(renaming,[status(thm)],[c_301]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_376,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
% 1.55/0.90      | ~ m1_subset_1(X2,sK3)
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,X0))
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,X0),X2) = k1_funct_1(X0,k1_funct_1(sK5,X2))
% 1.55/0.90      | sK6 != X0 ),
% 1.55/0.90      inference(resolution_lifted,[status(thm)],[c_302,c_17]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_377,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0,sK3)
% 1.55/0.90      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X1)))
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X1,sK6))
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,X1,sK5,sK6),X0) = k1_funct_1(sK6,k1_funct_1(sK5,X0)) ),
% 1.55/0.90      inference(unflattening,[status(thm)],[c_376]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_977,plain,
% 1.55/0.90      ( ~ m1_subset_1(X0_53,sK3)
% 1.55/0.90      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X0_54)))
% 1.55/0.90      | ~ r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X0_54,sK6))
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,X0_54,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53)) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_377]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1352,plain,
% 1.55/0.90      ( k1_funct_1(k8_funct_2(sK3,sK4,X0_54,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
% 1.55/0.90      | m1_subset_1(X0_53,sK3) != iProver_top
% 1.55/0.90      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,X0_54))) != iProver_top
% 1.55/0.90      | r1_tarski(k2_relset_1(sK3,sK4,sK5),k1_relset_1(sK4,X0_54,sK6)) != iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_977]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1900,plain,
% 1.55/0.90      ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
% 1.55/0.90      | m1_subset_1(X0_53,sK3) != iProver_top
% 1.55/0.90      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) != iProver_top ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_1346,c_1352]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_27,plain,
% 1.55/0.90      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK2))) = iProver_top ),
% 1.55/0.90      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1905,plain,
% 1.55/0.90      ( m1_subset_1(X0_53,sK3) != iProver_top
% 1.55/0.90      | k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53)) ),
% 1.55/0.90      inference(global_propositional_subsumption,
% 1.55/0.90                [status(thm)],
% 1.55/0.90                [c_1900,c_27]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1906,plain,
% 1.55/0.90      ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),X0_53) = k1_funct_1(sK6,k1_funct_1(sK5,X0_53))
% 1.55/0.90      | m1_subset_1(X0_53,sK3) != iProver_top ),
% 1.55/0.90      inference(renaming,[status(thm)],[c_1905]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1913,plain,
% 1.55/0.90      ( k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) = k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
% 1.55/0.90      inference(superposition,[status(thm)],[c_1347,c_1906]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_12,negated_conjecture,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) ),
% 1.55/0.90      inference(cnf_transformation,[],[f61]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_985,negated_conjecture,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(k8_funct_2(sK3,sK4,sK2,sK5,sK6),sK7) ),
% 1.55/0.90      inference(subtyping,[status(esa)],[c_12]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(c_1956,plain,
% 1.55/0.90      ( k7_partfun1(sK2,sK6,k1_funct_1(sK5,sK7)) != k1_funct_1(sK6,k1_funct_1(sK5,sK7)) ),
% 1.55/0.90      inference(demodulation,[status(thm)],[c_1913,c_985]) ).
% 1.55/0.90  
% 1.55/0.90  cnf(contradiction,plain,
% 1.55/0.90      ( $false ),
% 1.55/0.90      inference(minisat,[status(thm)],[c_2437,c_1956]) ).
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  % SZS output end CNFRefutation for theBenchmark.p
% 1.55/0.90  
% 1.55/0.90  ------                               Statistics
% 1.55/0.90  
% 1.55/0.90  ------ General
% 1.55/0.90  
% 1.55/0.90  abstr_ref_over_cycles:                  0
% 1.55/0.90  abstr_ref_under_cycles:                 0
% 1.55/0.90  gc_basic_clause_elim:                   0
% 1.55/0.90  forced_gc_time:                         0
% 1.55/0.90  parsing_time:                           0.007
% 1.55/0.90  unif_index_cands_time:                  0.
% 1.55/0.90  unif_index_add_time:                    0.
% 1.55/0.90  orderings_time:                         0.
% 1.55/0.90  out_proof_time:                         0.008
% 1.55/0.90  total_time:                             0.075
% 1.55/0.90  num_of_symbols:                         59
% 1.55/0.90  num_of_terms:                           2495
% 1.55/0.90  
% 1.55/0.90  ------ Preprocessing
% 1.55/0.90  
% 1.55/0.90  num_of_splits:                          0
% 1.55/0.90  num_of_split_atoms:                     0
% 1.55/0.90  num_of_reused_defs:                     0
% 1.55/0.90  num_eq_ax_congr_red:                    10
% 1.55/0.90  num_of_sem_filtered_clauses:            1
% 1.55/0.90  num_of_subtypes:                        3
% 1.55/0.90  monotx_restored_types:                  1
% 1.55/0.90  sat_num_of_epr_types:                   0
% 1.55/0.90  sat_num_of_non_cyclic_types:            0
% 1.55/0.90  sat_guarded_non_collapsed_types:        0
% 1.55/0.90  num_pure_diseq_elim:                    0
% 1.55/0.90  simp_replaced_by:                       0
% 1.55/0.90  res_preprocessed:                       114
% 1.55/0.90  prep_upred:                             0
% 1.55/0.90  prep_unflattend:                        44
% 1.55/0.90  smt_new_axioms:                         0
% 1.55/0.90  pred_elim_cands:                        4
% 1.55/0.90  pred_elim:                              4
% 1.55/0.90  pred_elim_cl:                           3
% 1.55/0.90  pred_elim_cycles:                       9
% 1.55/0.90  merged_defs:                            0
% 1.55/0.90  merged_defs_ncl:                        0
% 1.55/0.90  bin_hyper_res:                          0
% 1.55/0.90  prep_cycles:                            4
% 1.55/0.90  pred_elim_time:                         0.009
% 1.55/0.90  splitting_time:                         0.
% 1.55/0.90  sem_filter_time:                        0.
% 1.55/0.90  monotx_time:                            0.001
% 1.55/0.90  subtype_inf_time:                       0.001
% 1.55/0.90  
% 1.55/0.90  ------ Problem properties
% 1.55/0.90  
% 1.55/0.90  clauses:                                19
% 1.55/0.90  conjectures:                            7
% 1.55/0.90  epr:                                    7
% 1.55/0.90  horn:                                   16
% 1.55/0.90  ground:                                 8
% 1.55/0.90  unary:                                  8
% 1.55/0.90  binary:                                 4
% 1.55/0.90  lits:                                   39
% 1.55/0.90  lits_eq:                                9
% 1.55/0.90  fd_pure:                                0
% 1.55/0.90  fd_pseudo:                              0
% 1.55/0.90  fd_cond:                                1
% 1.55/0.90  fd_pseudo_cond:                         0
% 1.55/0.90  ac_symbols:                             0
% 1.55/0.90  
% 1.55/0.90  ------ Propositional Solver
% 1.55/0.90  
% 1.55/0.90  prop_solver_calls:                      27
% 1.55/0.90  prop_fast_solver_calls:                 753
% 1.55/0.90  smt_solver_calls:                       0
% 1.55/0.90  smt_fast_solver_calls:                  0
% 1.55/0.90  prop_num_of_clauses:                    722
% 1.55/0.90  prop_preprocess_simplified:             3302
% 1.55/0.90  prop_fo_subsumed:                       10
% 1.55/0.90  prop_solver_time:                       0.
% 1.55/0.90  smt_solver_time:                        0.
% 1.55/0.90  smt_fast_solver_time:                   0.
% 1.55/0.90  prop_fast_solver_time:                  0.
% 1.55/0.90  prop_unsat_core_time:                   0.
% 1.55/0.90  
% 1.55/0.90  ------ QBF
% 1.55/0.90  
% 1.55/0.90  qbf_q_res:                              0
% 1.55/0.90  qbf_num_tautologies:                    0
% 1.55/0.90  qbf_prep_cycles:                        0
% 1.55/0.90  
% 1.55/0.90  ------ BMC1
% 1.55/0.90  
% 1.55/0.90  bmc1_current_bound:                     -1
% 1.55/0.90  bmc1_last_solved_bound:                 -1
% 1.55/0.90  bmc1_unsat_core_size:                   -1
% 1.55/0.90  bmc1_unsat_core_parents_size:           -1
% 1.55/0.90  bmc1_merge_next_fun:                    0
% 1.55/0.90  bmc1_unsat_core_clauses_time:           0.
% 1.55/0.90  
% 1.55/0.90  ------ Instantiation
% 1.55/0.90  
% 1.55/0.90  inst_num_of_clauses:                    211
% 1.55/0.90  inst_num_in_passive:                    45
% 1.55/0.90  inst_num_in_active:                     152
% 1.55/0.90  inst_num_in_unprocessed:                14
% 1.55/0.90  inst_num_of_loops:                      190
% 1.55/0.90  inst_num_of_learning_restarts:          0
% 1.55/0.90  inst_num_moves_active_passive:          34
% 1.55/0.90  inst_lit_activity:                      0
% 1.55/0.90  inst_lit_activity_moves:                0
% 1.55/0.90  inst_num_tautologies:                   0
% 1.55/0.90  inst_num_prop_implied:                  0
% 1.55/0.90  inst_num_existing_simplified:           0
% 1.55/0.90  inst_num_eq_res_simplified:             0
% 1.55/0.90  inst_num_child_elim:                    0
% 1.55/0.90  inst_num_of_dismatching_blockings:      15
% 1.55/0.90  inst_num_of_non_proper_insts:           165
% 1.55/0.90  inst_num_of_duplicates:                 0
% 1.55/0.90  inst_inst_num_from_inst_to_res:         0
% 1.55/0.90  inst_dismatching_checking_time:         0.
% 1.55/0.90  
% 1.55/0.90  ------ Resolution
% 1.55/0.90  
% 1.55/0.90  res_num_of_clauses:                     0
% 1.55/0.90  res_num_in_passive:                     0
% 1.55/0.90  res_num_in_active:                      0
% 1.55/0.90  res_num_of_loops:                       118
% 1.55/0.90  res_forward_subset_subsumed:            28
% 1.55/0.90  res_backward_subset_subsumed:           0
% 1.55/0.90  res_forward_subsumed:                   0
% 1.55/0.90  res_backward_subsumed:                  0
% 1.55/0.90  res_forward_subsumption_resolution:     0
% 1.55/0.90  res_backward_subsumption_resolution:    0
% 1.55/0.90  res_clause_to_clause_subsumption:       58
% 1.55/0.90  res_orphan_elimination:                 0
% 1.55/0.90  res_tautology_del:                      28
% 1.55/0.90  res_num_eq_res_simplified:              0
% 1.55/0.90  res_num_sel_changes:                    0
% 1.55/0.90  res_moves_from_active_to_pass:          0
% 1.55/0.90  
% 1.55/0.90  ------ Superposition
% 1.55/0.90  
% 1.55/0.90  sup_time_total:                         0.
% 1.55/0.90  sup_time_generating:                    0.
% 1.55/0.90  sup_time_sim_full:                      0.
% 1.55/0.90  sup_time_sim_immed:                     0.
% 1.55/0.90  
% 1.55/0.90  sup_num_of_clauses:                     43
% 1.55/0.90  sup_num_in_active:                      35
% 1.55/0.90  sup_num_in_passive:                     8
% 1.55/0.90  sup_num_of_loops:                       37
% 1.55/0.90  sup_fw_superposition:                   17
% 1.55/0.90  sup_bw_superposition:                   9
% 1.55/0.90  sup_immediate_simplified:               1
% 1.55/0.90  sup_given_eliminated:                   0
% 1.55/0.90  comparisons_done:                       0
% 1.55/0.90  comparisons_avoided:                    0
% 1.55/0.90  
% 1.55/0.90  ------ Simplifications
% 1.55/0.90  
% 1.55/0.90  
% 1.55/0.90  sim_fw_subset_subsumed:                 1
% 1.55/0.90  sim_bw_subset_subsumed:                 0
% 1.55/0.90  sim_fw_subsumed:                        0
% 1.55/0.90  sim_bw_subsumed:                        0
% 1.55/0.90  sim_fw_subsumption_res:                 0
% 1.55/0.90  sim_bw_subsumption_res:                 0
% 1.55/0.90  sim_tautology_del:                      1
% 1.55/0.90  sim_eq_tautology_del:                   1
% 1.55/0.90  sim_eq_res_simp:                        0
% 1.55/0.90  sim_fw_demodulated:                     0
% 1.55/0.90  sim_bw_demodulated:                     3
% 1.55/0.90  sim_light_normalised:                   1
% 1.55/0.90  sim_joinable_taut:                      0
% 1.55/0.90  sim_joinable_simp:                      0
% 1.55/0.90  sim_ac_normalised:                      0
% 1.55/0.90  sim_smt_subsumption:                    0
% 1.55/0.90  
%------------------------------------------------------------------------------
