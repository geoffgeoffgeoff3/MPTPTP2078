%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:09:59 EST 2020

% Result     : Theorem 1.27s
% Output     : CNFRefutation 1.27s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 264 expanded)
%              Number of clauses        :   58 (  69 expanded)
%              Number of leaves         :   13 (  94 expanded)
%              Depth                    :   14
%              Number of atoms          :  329 (1628 expanded)
%              Number of equality atoms :   55 (  55 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f3,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f7,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,X0)
             => ! [X3] :
                  ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                    & v1_funct_2(X3,X0,X1)
                    & v1_funct_1(X3) )
                 => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,X0)
               => ! [X3] :
                    ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                      & v1_funct_2(X3,X0,X1)
                      & v1_funct_1(X3) )
                   => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f18,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                  & v1_funct_2(X3,X0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,X0) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                  & v1_funct_2(X3,X0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,X0) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
     => ( ~ r2_hidden(k3_funct_2(X0,X1,sK3,X2),k2_relset_1(X0,X1,sK3))
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(sK3,X0,X1)
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              & v1_funct_2(X3,X0,X1)
              & v1_funct_1(X3) )
          & m1_subset_1(X2,X0) )
     => ( ? [X3] :
            ( ~ r2_hidden(k3_funct_2(X0,X1,X3,sK2),k2_relset_1(X0,X1,X3))
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
        & m1_subset_1(sK2,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                  & v1_funct_2(X3,X0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,X0) )
          & ~ v1_xboole_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ r2_hidden(k3_funct_2(X0,sK1,X3,X2),k2_relset_1(X0,sK1,X3))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
                & v1_funct_2(X3,X0,sK1)
                & v1_funct_1(X3) )
            & m1_subset_1(X2,X0) )
        & ~ v1_xboole_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))
                    & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                    & v1_funct_2(X3,X0,X1)
                    & v1_funct_1(X3) )
                & m1_subset_1(X2,X0) )
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_hidden(k3_funct_2(sK0,X1,X3,X2),k2_relset_1(sK0,X1,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
                  & v1_funct_2(X3,sK0,X1)
                  & v1_funct_1(X3) )
              & m1_subset_1(X2,sK0) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3)
    & m1_subset_1(sK2,sK0)
    & ~ v1_xboole_0(sK1)
    & ~ v1_xboole_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f23,f22,f21,f20])).

fof(f33,plain,(
    m1_subset_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f24])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,X0)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2)
        & ~ v1_xboole_0(X0) )
     => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f29,plain,(
    ! [X2,X0,X3,X1] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f35,plain,(
    v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f24])).

fof(f31,plain,(
    ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f24])).

fof(f34,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f24])).

fof(f36,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f24])).

fof(f37,plain,(
    ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
    inference(cnf_transformation,[],[f24])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f9])).

fof(f26,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f32,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f16])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3))
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,X0)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2)
        & ~ v1_xboole_0(X0) )
     => m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f12])).

fof(f28,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_143,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_2])).

cnf(c_144,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_143])).

cnf(c_324,plain,
    ( ~ r2_hidden(X0_44,k1_xboole_0) ),
    inference(subtyping,[status(esa)],[c_144])).

cnf(c_947,plain,
    ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_324])).

cnf(c_329,plain,
    ( X0_44 = X0_44 ),
    theory(equality)).

cnf(c_792,plain,
    ( k3_funct_2(sK0,sK1,sK3,sK2) = k3_funct_2(sK0,sK1,sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_329])).

cnf(c_334,plain,
    ( ~ r2_hidden(X0_44,X0_45)
    | r2_hidden(X1_44,X1_45)
    | X1_45 != X0_45
    | X1_44 != X0_44 ),
    theory(equality)).

cnf(c_654,plain,
    ( r2_hidden(X0_44,X0_45)
    | ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
    | X0_45 != sK1
    | X0_44 != k3_funct_2(sK0,sK1,sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_334])).

cnf(c_737,plain,
    ( r2_hidden(X0_44,k1_xboole_0)
    | ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
    | k1_xboole_0 != sK1
    | X0_44 != k3_funct_2(sK0,sK1,sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_654])).

cnf(c_791,plain,
    ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
    | r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k1_xboole_0)
    | k1_xboole_0 != sK1
    | k3_funct_2(sK0,sK1,sK3,sK2) != k3_funct_2(sK0,sK1,sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_737])).

cnf(c_10,negated_conjecture,
    ( m1_subset_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_325,negated_conjecture,
    ( m1_subset_1(sK2,sK0) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_526,plain,
    ( m1_subset_1(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_325])).

cnf(c_4,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X1)
    | k3_funct_2(X1,X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_8,negated_conjecture,
    ( v1_funct_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_175,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X2)
    | v1_xboole_0(X1)
    | k3_funct_2(X1,X3,X2,X0) = k1_funct_1(X2,X0)
    | sK3 != X2
    | sK1 != X3
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_8])).

cnf(c_176,plain,
    ( ~ m1_subset_1(X0,sK0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | v1_xboole_0(sK0)
    | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ),
    inference(unflattening,[status(thm)],[c_175])).

cnf(c_12,negated_conjecture,
    ( ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_9,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_7,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_180,plain,
    ( ~ m1_subset_1(X0,sK0)
    | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_176,c_12,c_9,c_7])).

cnf(c_322,plain,
    ( ~ m1_subset_1(X0_44,sK0)
    | k3_funct_2(sK0,sK1,sK3,X0_44) = k1_funct_1(sK3,X0_44) ),
    inference(subtyping,[status(esa)],[c_180])).

cnf(c_529,plain,
    ( k3_funct_2(sK0,sK1,sK3,X0_44) = k1_funct_1(sK3,X0_44)
    | m1_subset_1(X0_44,sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_322])).

cnf(c_711,plain,
    ( k3_funct_2(sK0,sK1,sK3,sK2) = k1_funct_1(sK3,sK2) ),
    inference(superposition,[status(thm)],[c_526,c_529])).

cnf(c_6,negated_conjecture,
    ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_327,negated_conjecture,
    ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_524,plain,
    ( r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_327])).

cnf(c_713,plain,
    ( r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_711,c_524])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_11,negated_conjecture,
    ( ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_221,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_11])).

cnf(c_222,plain,
    ( ~ m1_subset_1(X0,sK1)
    | r2_hidden(X0,sK1) ),
    inference(unflattening,[status(thm)],[c_221])).

cnf(c_320,plain,
    ( ~ m1_subset_1(X0_44,sK1)
    | r2_hidden(X0_44,sK1) ),
    inference(subtyping,[status(esa)],[c_222])).

cnf(c_619,plain,
    ( ~ m1_subset_1(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
    | r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1) ),
    inference(instantiation,[status(thm)],[c_320])).

cnf(c_5,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_154,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | sK3 != X0
    | sK1 != X2
    | sK0 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_8])).

cnf(c_155,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ r2_hidden(X0,sK0)
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
    | ~ v1_funct_1(sK3)
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_154])).

cnf(c_159,plain,
    ( r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
    | ~ r2_hidden(X0,sK0)
    | k1_xboole_0 = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_155,c_9,c_7])).

cnf(c_160,plain,
    ( ~ r2_hidden(X0,sK0)
    | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
    | k1_xboole_0 = sK1 ),
    inference(renaming,[status(thm)],[c_159])).

cnf(c_323,plain,
    ( ~ r2_hidden(X0_44,sK0)
    | r2_hidden(k1_funct_1(sK3,X0_44),k2_relset_1(sK0,sK1,sK3))
    | k1_xboole_0 = sK1 ),
    inference(subtyping,[status(esa)],[c_160])).

cnf(c_611,plain,
    ( r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3))
    | ~ r2_hidden(sK2,sK0)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_323])).

cnf(c_612,plain,
    ( k1_xboole_0 = sK1
    | r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3)) = iProver_top
    | r2_hidden(sK2,sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_611])).

cnf(c_3,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2)
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_193,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | m1_subset_1(k3_funct_2(X1,X3,X2,X0),X3)
    | ~ v1_funct_1(X2)
    | v1_xboole_0(X1)
    | sK3 != X2
    | sK1 != X3
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_8])).

cnf(c_194,plain,
    ( ~ m1_subset_1(X0,sK0)
    | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | v1_xboole_0(sK0) ),
    inference(unflattening,[status(thm)],[c_193])).

cnf(c_198,plain,
    ( m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1)
    | ~ m1_subset_1(X0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_194,c_12,c_9,c_7])).

cnf(c_199,plain,
    ( ~ m1_subset_1(X0,sK0)
    | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1) ),
    inference(renaming,[status(thm)],[c_198])).

cnf(c_321,plain,
    ( ~ m1_subset_1(X0_44,sK0)
    | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0_44),sK1) ),
    inference(subtyping,[status(esa)],[c_199])).

cnf(c_586,plain,
    ( m1_subset_1(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
    | ~ m1_subset_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_321])).

cnf(c_233,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_12])).

cnf(c_234,plain,
    ( ~ m1_subset_1(X0,sK0)
    | r2_hidden(X0,sK0) ),
    inference(unflattening,[status(thm)],[c_233])).

cnf(c_319,plain,
    ( ~ m1_subset_1(X0_44,sK0)
    | r2_hidden(X0_44,sK0) ),
    inference(subtyping,[status(esa)],[c_234])).

cnf(c_583,plain,
    ( ~ m1_subset_1(sK2,sK0)
    | r2_hidden(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_319])).

cnf(c_584,plain,
    ( m1_subset_1(sK2,sK0) != iProver_top
    | r2_hidden(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_583])).

cnf(c_15,plain,
    ( m1_subset_1(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_947,c_792,c_791,c_713,c_619,c_612,c_586,c_584,c_15,c_10])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n002.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:22:37 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.27/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.27/1.01  
% 1.27/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.27/1.01  
% 1.27/1.01  ------  iProver source info
% 1.27/1.01  
% 1.27/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.27/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.27/1.01  git: non_committed_changes: false
% 1.27/1.01  git: last_make_outside_of_git: false
% 1.27/1.01  
% 1.27/1.01  ------ 
% 1.27/1.01  
% 1.27/1.01  ------ Input Options
% 1.27/1.01  
% 1.27/1.01  --out_options                           all
% 1.27/1.01  --tptp_safe_out                         true
% 1.27/1.01  --problem_path                          ""
% 1.27/1.01  --include_path                          ""
% 1.27/1.01  --clausifier                            res/vclausify_rel
% 1.27/1.01  --clausifier_options                    --mode clausify
% 1.27/1.01  --stdin                                 false
% 1.27/1.01  --stats_out                             all
% 1.27/1.01  
% 1.27/1.01  ------ General Options
% 1.27/1.01  
% 1.27/1.01  --fof                                   false
% 1.27/1.01  --time_out_real                         305.
% 1.27/1.01  --time_out_virtual                      -1.
% 1.27/1.01  --symbol_type_check                     false
% 1.27/1.01  --clausify_out                          false
% 1.27/1.01  --sig_cnt_out                           false
% 1.27/1.01  --trig_cnt_out                          false
% 1.27/1.01  --trig_cnt_out_tolerance                1.
% 1.27/1.01  --trig_cnt_out_sk_spl                   false
% 1.27/1.01  --abstr_cl_out                          false
% 1.27/1.01  
% 1.27/1.01  ------ Global Options
% 1.27/1.01  
% 1.27/1.01  --schedule                              default
% 1.27/1.01  --add_important_lit                     false
% 1.27/1.01  --prop_solver_per_cl                    1000
% 1.27/1.01  --min_unsat_core                        false
% 1.27/1.01  --soft_assumptions                      false
% 1.27/1.01  --soft_lemma_size                       3
% 1.27/1.01  --prop_impl_unit_size                   0
% 1.27/1.01  --prop_impl_unit                        []
% 1.27/1.01  --share_sel_clauses                     true
% 1.27/1.01  --reset_solvers                         false
% 1.27/1.01  --bc_imp_inh                            [conj_cone]
% 1.27/1.01  --conj_cone_tolerance                   3.
% 1.27/1.01  --extra_neg_conj                        none
% 1.27/1.01  --large_theory_mode                     true
% 1.27/1.01  --prolific_symb_bound                   200
% 1.27/1.01  --lt_threshold                          2000
% 1.27/1.01  --clause_weak_htbl                      true
% 1.27/1.01  --gc_record_bc_elim                     false
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing Options
% 1.27/1.01  
% 1.27/1.01  --preprocessing_flag                    true
% 1.27/1.01  --time_out_prep_mult                    0.1
% 1.27/1.01  --splitting_mode                        input
% 1.27/1.01  --splitting_grd                         true
% 1.27/1.01  --splitting_cvd                         false
% 1.27/1.01  --splitting_cvd_svl                     false
% 1.27/1.01  --splitting_nvd                         32
% 1.27/1.01  --sub_typing                            true
% 1.27/1.01  --prep_gs_sim                           true
% 1.27/1.01  --prep_unflatten                        true
% 1.27/1.01  --prep_res_sim                          true
% 1.27/1.01  --prep_upred                            true
% 1.27/1.01  --prep_sem_filter                       exhaustive
% 1.27/1.01  --prep_sem_filter_out                   false
% 1.27/1.01  --pred_elim                             true
% 1.27/1.01  --res_sim_input                         true
% 1.27/1.01  --eq_ax_congr_red                       true
% 1.27/1.01  --pure_diseq_elim                       true
% 1.27/1.01  --brand_transform                       false
% 1.27/1.01  --non_eq_to_eq                          false
% 1.27/1.01  --prep_def_merge                        true
% 1.27/1.01  --prep_def_merge_prop_impl              false
% 1.27/1.01  --prep_def_merge_mbd                    true
% 1.27/1.01  --prep_def_merge_tr_red                 false
% 1.27/1.01  --prep_def_merge_tr_cl                  false
% 1.27/1.01  --smt_preprocessing                     true
% 1.27/1.01  --smt_ac_axioms                         fast
% 1.27/1.01  --preprocessed_out                      false
% 1.27/1.01  --preprocessed_stats                    false
% 1.27/1.01  
% 1.27/1.01  ------ Abstraction refinement Options
% 1.27/1.01  
% 1.27/1.01  --abstr_ref                             []
% 1.27/1.01  --abstr_ref_prep                        false
% 1.27/1.01  --abstr_ref_until_sat                   false
% 1.27/1.01  --abstr_ref_sig_restrict                funpre
% 1.27/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.27/1.01  --abstr_ref_under                       []
% 1.27/1.01  
% 1.27/1.01  ------ SAT Options
% 1.27/1.01  
% 1.27/1.01  --sat_mode                              false
% 1.27/1.01  --sat_fm_restart_options                ""
% 1.27/1.01  --sat_gr_def                            false
% 1.27/1.01  --sat_epr_types                         true
% 1.27/1.01  --sat_non_cyclic_types                  false
% 1.27/1.01  --sat_finite_models                     false
% 1.27/1.01  --sat_fm_lemmas                         false
% 1.27/1.01  --sat_fm_prep                           false
% 1.27/1.01  --sat_fm_uc_incr                        true
% 1.27/1.01  --sat_out_model                         small
% 1.27/1.01  --sat_out_clauses                       false
% 1.27/1.01  
% 1.27/1.01  ------ QBF Options
% 1.27/1.01  
% 1.27/1.01  --qbf_mode                              false
% 1.27/1.01  --qbf_elim_univ                         false
% 1.27/1.01  --qbf_dom_inst                          none
% 1.27/1.01  --qbf_dom_pre_inst                      false
% 1.27/1.01  --qbf_sk_in                             false
% 1.27/1.01  --qbf_pred_elim                         true
% 1.27/1.01  --qbf_split                             512
% 1.27/1.01  
% 1.27/1.01  ------ BMC1 Options
% 1.27/1.01  
% 1.27/1.01  --bmc1_incremental                      false
% 1.27/1.01  --bmc1_axioms                           reachable_all
% 1.27/1.01  --bmc1_min_bound                        0
% 1.27/1.01  --bmc1_max_bound                        -1
% 1.27/1.01  --bmc1_max_bound_default                -1
% 1.27/1.01  --bmc1_symbol_reachability              true
% 1.27/1.01  --bmc1_property_lemmas                  false
% 1.27/1.01  --bmc1_k_induction                      false
% 1.27/1.01  --bmc1_non_equiv_states                 false
% 1.27/1.01  --bmc1_deadlock                         false
% 1.27/1.01  --bmc1_ucm                              false
% 1.27/1.01  --bmc1_add_unsat_core                   none
% 1.27/1.01  --bmc1_unsat_core_children              false
% 1.27/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.27/1.01  --bmc1_out_stat                         full
% 1.27/1.01  --bmc1_ground_init                      false
% 1.27/1.01  --bmc1_pre_inst_next_state              false
% 1.27/1.01  --bmc1_pre_inst_state                   false
% 1.27/1.01  --bmc1_pre_inst_reach_state             false
% 1.27/1.01  --bmc1_out_unsat_core                   false
% 1.27/1.01  --bmc1_aig_witness_out                  false
% 1.27/1.01  --bmc1_verbose                          false
% 1.27/1.01  --bmc1_dump_clauses_tptp                false
% 1.27/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.27/1.01  --bmc1_dump_file                        -
% 1.27/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.27/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.27/1.01  --bmc1_ucm_extend_mode                  1
% 1.27/1.01  --bmc1_ucm_init_mode                    2
% 1.27/1.01  --bmc1_ucm_cone_mode                    none
% 1.27/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.27/1.01  --bmc1_ucm_relax_model                  4
% 1.27/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.27/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.27/1.01  --bmc1_ucm_layered_model                none
% 1.27/1.01  --bmc1_ucm_max_lemma_size               10
% 1.27/1.01  
% 1.27/1.01  ------ AIG Options
% 1.27/1.01  
% 1.27/1.01  --aig_mode                              false
% 1.27/1.01  
% 1.27/1.01  ------ Instantiation Options
% 1.27/1.01  
% 1.27/1.01  --instantiation_flag                    true
% 1.27/1.01  --inst_sos_flag                         false
% 1.27/1.01  --inst_sos_phase                        true
% 1.27/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.27/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.27/1.01  --inst_lit_sel_side                     num_symb
% 1.27/1.01  --inst_solver_per_active                1400
% 1.27/1.01  --inst_solver_calls_frac                1.
% 1.27/1.01  --inst_passive_queue_type               priority_queues
% 1.27/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.27/1.01  --inst_passive_queues_freq              [25;2]
% 1.27/1.01  --inst_dismatching                      true
% 1.27/1.01  --inst_eager_unprocessed_to_passive     true
% 1.27/1.01  --inst_prop_sim_given                   true
% 1.27/1.01  --inst_prop_sim_new                     false
% 1.27/1.01  --inst_subs_new                         false
% 1.27/1.01  --inst_eq_res_simp                      false
% 1.27/1.01  --inst_subs_given                       false
% 1.27/1.01  --inst_orphan_elimination               true
% 1.27/1.01  --inst_learning_loop_flag               true
% 1.27/1.01  --inst_learning_start                   3000
% 1.27/1.01  --inst_learning_factor                  2
% 1.27/1.01  --inst_start_prop_sim_after_learn       3
% 1.27/1.01  --inst_sel_renew                        solver
% 1.27/1.01  --inst_lit_activity_flag                true
% 1.27/1.01  --inst_restr_to_given                   false
% 1.27/1.01  --inst_activity_threshold               500
% 1.27/1.01  --inst_out_proof                        true
% 1.27/1.01  
% 1.27/1.01  ------ Resolution Options
% 1.27/1.01  
% 1.27/1.01  --resolution_flag                       true
% 1.27/1.01  --res_lit_sel                           adaptive
% 1.27/1.01  --res_lit_sel_side                      none
% 1.27/1.01  --res_ordering                          kbo
% 1.27/1.01  --res_to_prop_solver                    active
% 1.27/1.01  --res_prop_simpl_new                    false
% 1.27/1.01  --res_prop_simpl_given                  true
% 1.27/1.01  --res_passive_queue_type                priority_queues
% 1.27/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.27/1.01  --res_passive_queues_freq               [15;5]
% 1.27/1.01  --res_forward_subs                      full
% 1.27/1.01  --res_backward_subs                     full
% 1.27/1.01  --res_forward_subs_resolution           true
% 1.27/1.01  --res_backward_subs_resolution          true
% 1.27/1.01  --res_orphan_elimination                true
% 1.27/1.01  --res_time_limit                        2.
% 1.27/1.01  --res_out_proof                         true
% 1.27/1.01  
% 1.27/1.01  ------ Superposition Options
% 1.27/1.01  
% 1.27/1.01  --superposition_flag                    true
% 1.27/1.01  --sup_passive_queue_type                priority_queues
% 1.27/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.27/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.27/1.01  --demod_completeness_check              fast
% 1.27/1.01  --demod_use_ground                      true
% 1.27/1.01  --sup_to_prop_solver                    passive
% 1.27/1.01  --sup_prop_simpl_new                    true
% 1.27/1.01  --sup_prop_simpl_given                  true
% 1.27/1.01  --sup_fun_splitting                     false
% 1.27/1.01  --sup_smt_interval                      50000
% 1.27/1.01  
% 1.27/1.01  ------ Superposition Simplification Setup
% 1.27/1.01  
% 1.27/1.01  --sup_indices_passive                   []
% 1.27/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.27/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_full_bw                           [BwDemod]
% 1.27/1.01  --sup_immed_triv                        [TrivRules]
% 1.27/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.27/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_immed_bw_main                     []
% 1.27/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.27/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.27/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.27/1.01  
% 1.27/1.01  ------ Combination Options
% 1.27/1.01  
% 1.27/1.01  --comb_res_mult                         3
% 1.27/1.01  --comb_sup_mult                         2
% 1.27/1.01  --comb_inst_mult                        10
% 1.27/1.01  
% 1.27/1.01  ------ Debug Options
% 1.27/1.01  
% 1.27/1.01  --dbg_backtrace                         false
% 1.27/1.01  --dbg_dump_prop_clauses                 false
% 1.27/1.01  --dbg_dump_prop_clauses_file            -
% 1.27/1.01  --dbg_out_stat                          false
% 1.27/1.01  ------ Parsing...
% 1.27/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.27/1.01  ------ Proving...
% 1.27/1.01  ------ Problem Properties 
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  clauses                                 9
% 1.27/1.01  conjectures                             3
% 1.27/1.01  EPR                                     4
% 1.27/1.01  Horn                                    8
% 1.27/1.01  unary                                   4
% 1.27/1.01  binary                                  4
% 1.27/1.01  lits                                    15
% 1.27/1.01  lits eq                                 2
% 1.27/1.01  fd_pure                                 0
% 1.27/1.01  fd_pseudo                               0
% 1.27/1.01  fd_cond                                 0
% 1.27/1.01  fd_pseudo_cond                          0
% 1.27/1.01  AC symbols                              0
% 1.27/1.01  
% 1.27/1.01  ------ Schedule dynamic 5 is on 
% 1.27/1.01  
% 1.27/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  ------ 
% 1.27/1.01  Current options:
% 1.27/1.01  ------ 
% 1.27/1.01  
% 1.27/1.01  ------ Input Options
% 1.27/1.01  
% 1.27/1.01  --out_options                           all
% 1.27/1.01  --tptp_safe_out                         true
% 1.27/1.01  --problem_path                          ""
% 1.27/1.01  --include_path                          ""
% 1.27/1.01  --clausifier                            res/vclausify_rel
% 1.27/1.01  --clausifier_options                    --mode clausify
% 1.27/1.01  --stdin                                 false
% 1.27/1.01  --stats_out                             all
% 1.27/1.01  
% 1.27/1.01  ------ General Options
% 1.27/1.01  
% 1.27/1.01  --fof                                   false
% 1.27/1.01  --time_out_real                         305.
% 1.27/1.01  --time_out_virtual                      -1.
% 1.27/1.01  --symbol_type_check                     false
% 1.27/1.01  --clausify_out                          false
% 1.27/1.01  --sig_cnt_out                           false
% 1.27/1.01  --trig_cnt_out                          false
% 1.27/1.01  --trig_cnt_out_tolerance                1.
% 1.27/1.01  --trig_cnt_out_sk_spl                   false
% 1.27/1.01  --abstr_cl_out                          false
% 1.27/1.01  
% 1.27/1.01  ------ Global Options
% 1.27/1.01  
% 1.27/1.01  --schedule                              default
% 1.27/1.01  --add_important_lit                     false
% 1.27/1.01  --prop_solver_per_cl                    1000
% 1.27/1.01  --min_unsat_core                        false
% 1.27/1.01  --soft_assumptions                      false
% 1.27/1.01  --soft_lemma_size                       3
% 1.27/1.01  --prop_impl_unit_size                   0
% 1.27/1.01  --prop_impl_unit                        []
% 1.27/1.01  --share_sel_clauses                     true
% 1.27/1.01  --reset_solvers                         false
% 1.27/1.01  --bc_imp_inh                            [conj_cone]
% 1.27/1.01  --conj_cone_tolerance                   3.
% 1.27/1.01  --extra_neg_conj                        none
% 1.27/1.01  --large_theory_mode                     true
% 1.27/1.01  --prolific_symb_bound                   200
% 1.27/1.01  --lt_threshold                          2000
% 1.27/1.01  --clause_weak_htbl                      true
% 1.27/1.01  --gc_record_bc_elim                     false
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing Options
% 1.27/1.01  
% 1.27/1.01  --preprocessing_flag                    true
% 1.27/1.01  --time_out_prep_mult                    0.1
% 1.27/1.01  --splitting_mode                        input
% 1.27/1.01  --splitting_grd                         true
% 1.27/1.01  --splitting_cvd                         false
% 1.27/1.01  --splitting_cvd_svl                     false
% 1.27/1.01  --splitting_nvd                         32
% 1.27/1.01  --sub_typing                            true
% 1.27/1.01  --prep_gs_sim                           true
% 1.27/1.01  --prep_unflatten                        true
% 1.27/1.01  --prep_res_sim                          true
% 1.27/1.01  --prep_upred                            true
% 1.27/1.01  --prep_sem_filter                       exhaustive
% 1.27/1.01  --prep_sem_filter_out                   false
% 1.27/1.01  --pred_elim                             true
% 1.27/1.01  --res_sim_input                         true
% 1.27/1.01  --eq_ax_congr_red                       true
% 1.27/1.01  --pure_diseq_elim                       true
% 1.27/1.01  --brand_transform                       false
% 1.27/1.01  --non_eq_to_eq                          false
% 1.27/1.01  --prep_def_merge                        true
% 1.27/1.01  --prep_def_merge_prop_impl              false
% 1.27/1.01  --prep_def_merge_mbd                    true
% 1.27/1.01  --prep_def_merge_tr_red                 false
% 1.27/1.01  --prep_def_merge_tr_cl                  false
% 1.27/1.01  --smt_preprocessing                     true
% 1.27/1.01  --smt_ac_axioms                         fast
% 1.27/1.01  --preprocessed_out                      false
% 1.27/1.01  --preprocessed_stats                    false
% 1.27/1.01  
% 1.27/1.01  ------ Abstraction refinement Options
% 1.27/1.01  
% 1.27/1.01  --abstr_ref                             []
% 1.27/1.01  --abstr_ref_prep                        false
% 1.27/1.01  --abstr_ref_until_sat                   false
% 1.27/1.01  --abstr_ref_sig_restrict                funpre
% 1.27/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.27/1.01  --abstr_ref_under                       []
% 1.27/1.01  
% 1.27/1.01  ------ SAT Options
% 1.27/1.01  
% 1.27/1.01  --sat_mode                              false
% 1.27/1.01  --sat_fm_restart_options                ""
% 1.27/1.01  --sat_gr_def                            false
% 1.27/1.01  --sat_epr_types                         true
% 1.27/1.01  --sat_non_cyclic_types                  false
% 1.27/1.01  --sat_finite_models                     false
% 1.27/1.01  --sat_fm_lemmas                         false
% 1.27/1.01  --sat_fm_prep                           false
% 1.27/1.01  --sat_fm_uc_incr                        true
% 1.27/1.01  --sat_out_model                         small
% 1.27/1.01  --sat_out_clauses                       false
% 1.27/1.01  
% 1.27/1.01  ------ QBF Options
% 1.27/1.01  
% 1.27/1.01  --qbf_mode                              false
% 1.27/1.01  --qbf_elim_univ                         false
% 1.27/1.01  --qbf_dom_inst                          none
% 1.27/1.01  --qbf_dom_pre_inst                      false
% 1.27/1.01  --qbf_sk_in                             false
% 1.27/1.01  --qbf_pred_elim                         true
% 1.27/1.01  --qbf_split                             512
% 1.27/1.01  
% 1.27/1.01  ------ BMC1 Options
% 1.27/1.01  
% 1.27/1.01  --bmc1_incremental                      false
% 1.27/1.01  --bmc1_axioms                           reachable_all
% 1.27/1.01  --bmc1_min_bound                        0
% 1.27/1.01  --bmc1_max_bound                        -1
% 1.27/1.01  --bmc1_max_bound_default                -1
% 1.27/1.01  --bmc1_symbol_reachability              true
% 1.27/1.01  --bmc1_property_lemmas                  false
% 1.27/1.01  --bmc1_k_induction                      false
% 1.27/1.01  --bmc1_non_equiv_states                 false
% 1.27/1.01  --bmc1_deadlock                         false
% 1.27/1.01  --bmc1_ucm                              false
% 1.27/1.01  --bmc1_add_unsat_core                   none
% 1.27/1.01  --bmc1_unsat_core_children              false
% 1.27/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.27/1.01  --bmc1_out_stat                         full
% 1.27/1.01  --bmc1_ground_init                      false
% 1.27/1.01  --bmc1_pre_inst_next_state              false
% 1.27/1.01  --bmc1_pre_inst_state                   false
% 1.27/1.01  --bmc1_pre_inst_reach_state             false
% 1.27/1.01  --bmc1_out_unsat_core                   false
% 1.27/1.01  --bmc1_aig_witness_out                  false
% 1.27/1.01  --bmc1_verbose                          false
% 1.27/1.01  --bmc1_dump_clauses_tptp                false
% 1.27/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.27/1.01  --bmc1_dump_file                        -
% 1.27/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.27/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.27/1.01  --bmc1_ucm_extend_mode                  1
% 1.27/1.01  --bmc1_ucm_init_mode                    2
% 1.27/1.01  --bmc1_ucm_cone_mode                    none
% 1.27/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.27/1.01  --bmc1_ucm_relax_model                  4
% 1.27/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.27/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.27/1.01  --bmc1_ucm_layered_model                none
% 1.27/1.01  --bmc1_ucm_max_lemma_size               10
% 1.27/1.01  
% 1.27/1.01  ------ AIG Options
% 1.27/1.01  
% 1.27/1.01  --aig_mode                              false
% 1.27/1.01  
% 1.27/1.01  ------ Instantiation Options
% 1.27/1.01  
% 1.27/1.01  --instantiation_flag                    true
% 1.27/1.01  --inst_sos_flag                         false
% 1.27/1.01  --inst_sos_phase                        true
% 1.27/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.27/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.27/1.01  --inst_lit_sel_side                     none
% 1.27/1.01  --inst_solver_per_active                1400
% 1.27/1.01  --inst_solver_calls_frac                1.
% 1.27/1.01  --inst_passive_queue_type               priority_queues
% 1.27/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.27/1.01  --inst_passive_queues_freq              [25;2]
% 1.27/1.01  --inst_dismatching                      true
% 1.27/1.01  --inst_eager_unprocessed_to_passive     true
% 1.27/1.01  --inst_prop_sim_given                   true
% 1.27/1.01  --inst_prop_sim_new                     false
% 1.27/1.01  --inst_subs_new                         false
% 1.27/1.01  --inst_eq_res_simp                      false
% 1.27/1.01  --inst_subs_given                       false
% 1.27/1.01  --inst_orphan_elimination               true
% 1.27/1.01  --inst_learning_loop_flag               true
% 1.27/1.01  --inst_learning_start                   3000
% 1.27/1.01  --inst_learning_factor                  2
% 1.27/1.01  --inst_start_prop_sim_after_learn       3
% 1.27/1.01  --inst_sel_renew                        solver
% 1.27/1.01  --inst_lit_activity_flag                true
% 1.27/1.01  --inst_restr_to_given                   false
% 1.27/1.01  --inst_activity_threshold               500
% 1.27/1.01  --inst_out_proof                        true
% 1.27/1.01  
% 1.27/1.01  ------ Resolution Options
% 1.27/1.01  
% 1.27/1.01  --resolution_flag                       false
% 1.27/1.01  --res_lit_sel                           adaptive
% 1.27/1.01  --res_lit_sel_side                      none
% 1.27/1.01  --res_ordering                          kbo
% 1.27/1.01  --res_to_prop_solver                    active
% 1.27/1.01  --res_prop_simpl_new                    false
% 1.27/1.01  --res_prop_simpl_given                  true
% 1.27/1.01  --res_passive_queue_type                priority_queues
% 1.27/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.27/1.01  --res_passive_queues_freq               [15;5]
% 1.27/1.01  --res_forward_subs                      full
% 1.27/1.01  --res_backward_subs                     full
% 1.27/1.01  --res_forward_subs_resolution           true
% 1.27/1.01  --res_backward_subs_resolution          true
% 1.27/1.01  --res_orphan_elimination                true
% 1.27/1.01  --res_time_limit                        2.
% 1.27/1.01  --res_out_proof                         true
% 1.27/1.01  
% 1.27/1.01  ------ Superposition Options
% 1.27/1.01  
% 1.27/1.01  --superposition_flag                    true
% 1.27/1.01  --sup_passive_queue_type                priority_queues
% 1.27/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.27/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.27/1.01  --demod_completeness_check              fast
% 1.27/1.01  --demod_use_ground                      true
% 1.27/1.01  --sup_to_prop_solver                    passive
% 1.27/1.01  --sup_prop_simpl_new                    true
% 1.27/1.01  --sup_prop_simpl_given                  true
% 1.27/1.01  --sup_fun_splitting                     false
% 1.27/1.01  --sup_smt_interval                      50000
% 1.27/1.01  
% 1.27/1.01  ------ Superposition Simplification Setup
% 1.27/1.01  
% 1.27/1.01  --sup_indices_passive                   []
% 1.27/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.27/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.27/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_full_bw                           [BwDemod]
% 1.27/1.01  --sup_immed_triv                        [TrivRules]
% 1.27/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.27/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_immed_bw_main                     []
% 1.27/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.27/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.27/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.27/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.27/1.01  
% 1.27/1.01  ------ Combination Options
% 1.27/1.01  
% 1.27/1.01  --comb_res_mult                         3
% 1.27/1.01  --comb_sup_mult                         2
% 1.27/1.01  --comb_inst_mult                        10
% 1.27/1.01  
% 1.27/1.01  ------ Debug Options
% 1.27/1.01  
% 1.27/1.01  --dbg_backtrace                         false
% 1.27/1.01  --dbg_dump_prop_clauses                 false
% 1.27/1.01  --dbg_dump_prop_clauses_file            -
% 1.27/1.01  --dbg_out_stat                          false
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  ------ Proving...
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  % SZS status Theorem for theBenchmark.p
% 1.27/1.01  
% 1.27/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.27/1.01  
% 1.27/1.01  fof(f1,axiom,(
% 1.27/1.01    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f25,plain,(
% 1.27/1.01    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f1])).
% 1.27/1.01  
% 1.27/1.01  fof(f3,axiom,(
% 1.27/1.01    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f11,plain,(
% 1.27/1.01    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.27/1.01    inference(ennf_transformation,[],[f3])).
% 1.27/1.01  
% 1.27/1.01  fof(f27,plain,(
% 1.27/1.01    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f11])).
% 1.27/1.01  
% 1.27/1.01  fof(f7,conjecture,(
% 1.27/1.01    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,X0) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))))))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f8,negated_conjecture,(
% 1.27/1.01    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,X0) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3))))))),
% 1.27/1.01    inference(negated_conjecture,[],[f7])).
% 1.27/1.01  
% 1.27/1.01  fof(f18,plain,(
% 1.27/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 1.27/1.01    inference(ennf_transformation,[],[f8])).
% 1.27/1.01  
% 1.27/1.01  fof(f19,plain,(
% 1.27/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 1.27/1.01    inference(flattening,[],[f18])).
% 1.27/1.01  
% 1.27/1.01  fof(f23,plain,(
% 1.27/1.01    ( ! [X2,X0,X1] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_hidden(k3_funct_2(X0,X1,sK3,X2),k2_relset_1(X0,X1,sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(sK3,X0,X1) & v1_funct_1(sK3))) )),
% 1.27/1.01    introduced(choice_axiom,[])).
% 1.27/1.01  
% 1.27/1.01  fof(f22,plain,(
% 1.27/1.01    ( ! [X0,X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) => (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,sK2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(sK2,X0))) )),
% 1.27/1.01    introduced(choice_axiom,[])).
% 1.27/1.01  
% 1.27/1.01  fof(f21,plain,(
% 1.27/1.01    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) => (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,sK1,X3,X2),k2_relset_1(X0,sK1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) & v1_funct_2(X3,X0,sK1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) & ~v1_xboole_0(sK1))) )),
% 1.27/1.01    introduced(choice_axiom,[])).
% 1.27/1.01  
% 1.27/1.01  fof(f20,plain,(
% 1.27/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(X0,X1,X3,X2),k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,X0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~r2_hidden(k3_funct_2(sK0,X1,X3,X2),k2_relset_1(sK0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK0,X1))) & v1_funct_2(X3,sK0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,sK0)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK0))),
% 1.27/1.01    introduced(choice_axiom,[])).
% 1.27/1.01  
% 1.27/1.01  fof(f24,plain,(
% 1.27/1.01    (((~r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)) & m1_subset_1(sK2,sK0)) & ~v1_xboole_0(sK1)) & ~v1_xboole_0(sK0)),
% 1.27/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f23,f22,f21,f20])).
% 1.27/1.01  
% 1.27/1.01  fof(f33,plain,(
% 1.27/1.01    m1_subset_1(sK2,sK0)),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f5,axiom,(
% 1.27/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,X0) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & ~v1_xboole_0(X0)) => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f14,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | (~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)))),
% 1.27/1.01    inference(ennf_transformation,[],[f5])).
% 1.27/1.01  
% 1.27/1.01  fof(f15,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0))),
% 1.27/1.01    inference(flattening,[],[f14])).
% 1.27/1.01  
% 1.27/1.01  fof(f29,plain,(
% 1.27/1.01    ( ! [X2,X0,X3,X1] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f15])).
% 1.27/1.01  
% 1.27/1.01  fof(f35,plain,(
% 1.27/1.01    v1_funct_2(sK3,sK0,sK1)),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f31,plain,(
% 1.27/1.01    ~v1_xboole_0(sK0)),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f34,plain,(
% 1.27/1.01    v1_funct_1(sK3)),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f36,plain,(
% 1.27/1.01    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f37,plain,(
% 1.27/1.01    ~r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3))),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f2,axiom,(
% 1.27/1.01    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f9,plain,(
% 1.27/1.01    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.27/1.01    inference(ennf_transformation,[],[f2])).
% 1.27/1.01  
% 1.27/1.01  fof(f10,plain,(
% 1.27/1.01    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.27/1.01    inference(flattening,[],[f9])).
% 1.27/1.01  
% 1.27/1.01  fof(f26,plain,(
% 1.27/1.01    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f10])).
% 1.27/1.01  
% 1.27/1.01  fof(f32,plain,(
% 1.27/1.01    ~v1_xboole_0(sK1)),
% 1.27/1.01    inference(cnf_transformation,[],[f24])).
% 1.27/1.01  
% 1.27/1.01  fof(f6,axiom,(
% 1.27/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1)))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f16,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.27/1.01    inference(ennf_transformation,[],[f6])).
% 1.27/1.01  
% 1.27/1.01  fof(f17,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.27/1.01    inference(flattening,[],[f16])).
% 1.27/1.01  
% 1.27/1.01  fof(f30,plain,(
% 1.27/1.01    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),k2_relset_1(X0,X1,X3)) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f17])).
% 1.27/1.01  
% 1.27/1.01  fof(f4,axiom,(
% 1.27/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,X0) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & ~v1_xboole_0(X0)) => m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1))),
% 1.27/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.27/1.01  
% 1.27/1.01  fof(f12,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | (~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)))),
% 1.27/1.01    inference(ennf_transformation,[],[f4])).
% 1.27/1.01  
% 1.27/1.01  fof(f13,plain,(
% 1.27/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0))),
% 1.27/1.01    inference(flattening,[],[f12])).
% 1.27/1.01  
% 1.27/1.01  fof(f28,plain,(
% 1.27/1.01    ( ! [X2,X0,X3,X1] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)) )),
% 1.27/1.01    inference(cnf_transformation,[],[f13])).
% 1.27/1.01  
% 1.27/1.01  cnf(c_0,plain,
% 1.27/1.01      ( r1_tarski(k1_xboole_0,X0) ),
% 1.27/1.01      inference(cnf_transformation,[],[f25]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_2,plain,
% 1.27/1.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.27/1.01      inference(cnf_transformation,[],[f27]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_143,plain,
% 1.27/1.01      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_2]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_144,plain,
% 1.27/1.01      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_143]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_324,plain,
% 1.27/1.01      ( ~ r2_hidden(X0_44,k1_xboole_0) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_144]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_947,plain,
% 1.27/1.01      ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k1_xboole_0) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_324]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_329,plain,( X0_44 = X0_44 ),theory(equality) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_792,plain,
% 1.27/1.01      ( k3_funct_2(sK0,sK1,sK3,sK2) = k3_funct_2(sK0,sK1,sK3,sK2) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_329]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_334,plain,
% 1.27/1.01      ( ~ r2_hidden(X0_44,X0_45)
% 1.27/1.01      | r2_hidden(X1_44,X1_45)
% 1.27/1.01      | X1_45 != X0_45
% 1.27/1.01      | X1_44 != X0_44 ),
% 1.27/1.01      theory(equality) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_654,plain,
% 1.27/1.01      ( r2_hidden(X0_44,X0_45)
% 1.27/1.01      | ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
% 1.27/1.01      | X0_45 != sK1
% 1.27/1.01      | X0_44 != k3_funct_2(sK0,sK1,sK3,sK2) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_334]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_737,plain,
% 1.27/1.01      ( r2_hidden(X0_44,k1_xboole_0)
% 1.27/1.01      | ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
% 1.27/1.01      | k1_xboole_0 != sK1
% 1.27/1.01      | X0_44 != k3_funct_2(sK0,sK1,sK3,sK2) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_654]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_791,plain,
% 1.27/1.01      ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
% 1.27/1.01      | r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k1_xboole_0)
% 1.27/1.01      | k1_xboole_0 != sK1
% 1.27/1.01      | k3_funct_2(sK0,sK1,sK3,sK2) != k3_funct_2(sK0,sK1,sK3,sK2) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_737]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_10,negated_conjecture,
% 1.27/1.01      ( m1_subset_1(sK2,sK0) ),
% 1.27/1.01      inference(cnf_transformation,[],[f33]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_325,negated_conjecture,
% 1.27/1.01      ( m1_subset_1(sK2,sK0) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_10]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_526,plain,
% 1.27/1.01      ( m1_subset_1(sK2,sK0) = iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_325]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_4,plain,
% 1.27/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.27/1.01      | ~ m1_subset_1(X3,X1)
% 1.27/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.27/1.01      | ~ v1_funct_1(X0)
% 1.27/1.01      | v1_xboole_0(X1)
% 1.27/1.01      | k3_funct_2(X1,X2,X0,X3) = k1_funct_1(X0,X3) ),
% 1.27/1.01      inference(cnf_transformation,[],[f29]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_8,negated_conjecture,
% 1.27/1.01      ( v1_funct_2(sK3,sK0,sK1) ),
% 1.27/1.01      inference(cnf_transformation,[],[f35]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_175,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,X1)
% 1.27/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.27/1.01      | ~ v1_funct_1(X2)
% 1.27/1.01      | v1_xboole_0(X1)
% 1.27/1.01      | k3_funct_2(X1,X3,X2,X0) = k1_funct_1(X2,X0)
% 1.27/1.01      | sK3 != X2
% 1.27/1.01      | sK1 != X3
% 1.27/1.01      | sK0 != X1 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_4,c_8]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_176,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK0)
% 1.27/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.27/1.01      | ~ v1_funct_1(sK3)
% 1.27/1.01      | v1_xboole_0(sK0)
% 1.27/1.01      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_175]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_12,negated_conjecture,
% 1.27/1.01      ( ~ v1_xboole_0(sK0) ),
% 1.27/1.01      inference(cnf_transformation,[],[f31]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_9,negated_conjecture,
% 1.27/1.01      ( v1_funct_1(sK3) ),
% 1.27/1.01      inference(cnf_transformation,[],[f34]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_7,negated_conjecture,
% 1.27/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 1.27/1.01      inference(cnf_transformation,[],[f36]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_180,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK0)
% 1.27/1.01      | k3_funct_2(sK0,sK1,sK3,X0) = k1_funct_1(sK3,X0) ),
% 1.27/1.01      inference(global_propositional_subsumption,
% 1.27/1.01                [status(thm)],
% 1.27/1.01                [c_176,c_12,c_9,c_7]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_322,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0_44,sK0)
% 1.27/1.01      | k3_funct_2(sK0,sK1,sK3,X0_44) = k1_funct_1(sK3,X0_44) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_180]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_529,plain,
% 1.27/1.01      ( k3_funct_2(sK0,sK1,sK3,X0_44) = k1_funct_1(sK3,X0_44)
% 1.27/1.01      | m1_subset_1(X0_44,sK0) != iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_322]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_711,plain,
% 1.27/1.01      ( k3_funct_2(sK0,sK1,sK3,sK2) = k1_funct_1(sK3,sK2) ),
% 1.27/1.01      inference(superposition,[status(thm)],[c_526,c_529]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_6,negated_conjecture,
% 1.27/1.01      ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
% 1.27/1.01      inference(cnf_transformation,[],[f37]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_327,negated_conjecture,
% 1.27/1.01      ( ~ r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_6]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_524,plain,
% 1.27/1.01      ( r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),k2_relset_1(sK0,sK1,sK3)) != iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_327]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_713,plain,
% 1.27/1.01      ( r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3)) != iProver_top ),
% 1.27/1.01      inference(demodulation,[status(thm)],[c_711,c_524]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_1,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 1.27/1.01      inference(cnf_transformation,[],[f26]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_11,negated_conjecture,
% 1.27/1.01      ( ~ v1_xboole_0(sK1) ),
% 1.27/1.01      inference(cnf_transformation,[],[f32]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_221,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | sK1 != X1 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_1,c_11]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_222,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK1) | r2_hidden(X0,sK1) ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_221]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_320,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0_44,sK1) | r2_hidden(X0_44,sK1) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_222]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_619,plain,
% 1.27/1.01      ( ~ m1_subset_1(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
% 1.27/1.01      | r2_hidden(k3_funct_2(sK0,sK1,sK3,sK2),sK1) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_320]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_5,plain,
% 1.27/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.27/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.27/1.01      | ~ r2_hidden(X3,X1)
% 1.27/1.01      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.27/1.01      | ~ v1_funct_1(X0)
% 1.27/1.01      | k1_xboole_0 = X2 ),
% 1.27/1.01      inference(cnf_transformation,[],[f30]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_154,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.27/1.01      | ~ r2_hidden(X3,X1)
% 1.27/1.01      | r2_hidden(k1_funct_1(X0,X3),k2_relset_1(X1,X2,X0))
% 1.27/1.01      | ~ v1_funct_1(X0)
% 1.27/1.01      | sK3 != X0
% 1.27/1.01      | sK1 != X2
% 1.27/1.01      | sK0 != X1
% 1.27/1.01      | k1_xboole_0 = X2 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_5,c_8]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_155,plain,
% 1.27/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.27/1.01      | ~ r2_hidden(X0,sK0)
% 1.27/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
% 1.27/1.01      | ~ v1_funct_1(sK3)
% 1.27/1.01      | k1_xboole_0 = sK1 ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_154]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_159,plain,
% 1.27/1.01      ( r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
% 1.27/1.01      | ~ r2_hidden(X0,sK0)
% 1.27/1.01      | k1_xboole_0 = sK1 ),
% 1.27/1.01      inference(global_propositional_subsumption,
% 1.27/1.01                [status(thm)],
% 1.27/1.01                [c_155,c_9,c_7]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_160,plain,
% 1.27/1.01      ( ~ r2_hidden(X0,sK0)
% 1.27/1.01      | r2_hidden(k1_funct_1(sK3,X0),k2_relset_1(sK0,sK1,sK3))
% 1.27/1.01      | k1_xboole_0 = sK1 ),
% 1.27/1.01      inference(renaming,[status(thm)],[c_159]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_323,plain,
% 1.27/1.01      ( ~ r2_hidden(X0_44,sK0)
% 1.27/1.01      | r2_hidden(k1_funct_1(sK3,X0_44),k2_relset_1(sK0,sK1,sK3))
% 1.27/1.01      | k1_xboole_0 = sK1 ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_160]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_611,plain,
% 1.27/1.01      ( r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3))
% 1.27/1.01      | ~ r2_hidden(sK2,sK0)
% 1.27/1.01      | k1_xboole_0 = sK1 ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_323]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_612,plain,
% 1.27/1.01      ( k1_xboole_0 = sK1
% 1.27/1.01      | r2_hidden(k1_funct_1(sK3,sK2),k2_relset_1(sK0,sK1,sK3)) = iProver_top
% 1.27/1.01      | r2_hidden(sK2,sK0) != iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_611]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_3,plain,
% 1.27/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.27/1.01      | ~ m1_subset_1(X3,X1)
% 1.27/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.27/1.01      | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2)
% 1.27/1.01      | ~ v1_funct_1(X0)
% 1.27/1.01      | v1_xboole_0(X1) ),
% 1.27/1.01      inference(cnf_transformation,[],[f28]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_193,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,X1)
% 1.27/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.27/1.01      | m1_subset_1(k3_funct_2(X1,X3,X2,X0),X3)
% 1.27/1.01      | ~ v1_funct_1(X2)
% 1.27/1.01      | v1_xboole_0(X1)
% 1.27/1.01      | sK3 != X2
% 1.27/1.01      | sK1 != X3
% 1.27/1.01      | sK0 != X1 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_3,c_8]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_194,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK0)
% 1.27/1.01      | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1)
% 1.27/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 1.27/1.01      | ~ v1_funct_1(sK3)
% 1.27/1.01      | v1_xboole_0(sK0) ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_193]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_198,plain,
% 1.27/1.01      ( m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1)
% 1.27/1.01      | ~ m1_subset_1(X0,sK0) ),
% 1.27/1.01      inference(global_propositional_subsumption,
% 1.27/1.01                [status(thm)],
% 1.27/1.01                [c_194,c_12,c_9,c_7]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_199,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK0)
% 1.27/1.01      | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0),sK1) ),
% 1.27/1.01      inference(renaming,[status(thm)],[c_198]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_321,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0_44,sK0)
% 1.27/1.01      | m1_subset_1(k3_funct_2(sK0,sK1,sK3,X0_44),sK1) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_199]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_586,plain,
% 1.27/1.01      ( m1_subset_1(k3_funct_2(sK0,sK1,sK3,sK2),sK1)
% 1.27/1.01      | ~ m1_subset_1(sK2,sK0) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_321]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_233,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | sK0 != X1 ),
% 1.27/1.01      inference(resolution_lifted,[status(thm)],[c_1,c_12]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_234,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0,sK0) | r2_hidden(X0,sK0) ),
% 1.27/1.01      inference(unflattening,[status(thm)],[c_233]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_319,plain,
% 1.27/1.01      ( ~ m1_subset_1(X0_44,sK0) | r2_hidden(X0_44,sK0) ),
% 1.27/1.01      inference(subtyping,[status(esa)],[c_234]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_583,plain,
% 1.27/1.01      ( ~ m1_subset_1(sK2,sK0) | r2_hidden(sK2,sK0) ),
% 1.27/1.01      inference(instantiation,[status(thm)],[c_319]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_584,plain,
% 1.27/1.01      ( m1_subset_1(sK2,sK0) != iProver_top
% 1.27/1.01      | r2_hidden(sK2,sK0) = iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_583]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(c_15,plain,
% 1.27/1.01      ( m1_subset_1(sK2,sK0) = iProver_top ),
% 1.27/1.01      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.27/1.01  
% 1.27/1.01  cnf(contradiction,plain,
% 1.27/1.01      ( $false ),
% 1.27/1.01      inference(minisat,
% 1.27/1.01                [status(thm)],
% 1.27/1.01                [c_947,c_792,c_791,c_713,c_619,c_612,c_586,c_584,c_15,
% 1.27/1.01                 c_10]) ).
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.27/1.01  
% 1.27/1.01  ------                               Statistics
% 1.27/1.01  
% 1.27/1.01  ------ General
% 1.27/1.01  
% 1.27/1.01  abstr_ref_over_cycles:                  0
% 1.27/1.01  abstr_ref_under_cycles:                 0
% 1.27/1.01  gc_basic_clause_elim:                   0
% 1.27/1.01  forced_gc_time:                         0
% 1.27/1.01  parsing_time:                           0.009
% 1.27/1.01  unif_index_cands_time:                  0.
% 1.27/1.01  unif_index_add_time:                    0.
% 1.27/1.01  orderings_time:                         0.
% 1.27/1.01  out_proof_time:                         0.009
% 1.27/1.01  total_time:                             0.064
% 1.27/1.01  num_of_symbols:                         50
% 1.27/1.01  num_of_terms:                           920
% 1.27/1.01  
% 1.27/1.01  ------ Preprocessing
% 1.27/1.01  
% 1.27/1.01  num_of_splits:                          0
% 1.27/1.01  num_of_split_atoms:                     0
% 1.27/1.01  num_of_reused_defs:                     0
% 1.27/1.01  num_eq_ax_congr_red:                    5
% 1.27/1.01  num_of_sem_filtered_clauses:            1
% 1.27/1.01  num_of_subtypes:                        3
% 1.27/1.01  monotx_restored_types:                  0
% 1.27/1.01  sat_num_of_epr_types:                   0
% 1.27/1.01  sat_num_of_non_cyclic_types:            0
% 1.27/1.01  sat_guarded_non_collapsed_types:        0
% 1.27/1.01  num_pure_diseq_elim:                    0
% 1.27/1.01  simp_replaced_by:                       0
% 1.27/1.01  res_preprocessed:                       65
% 1.27/1.01  prep_upred:                             0
% 1.27/1.01  prep_unflattend:                        13
% 1.27/1.01  smt_new_axioms:                         0
% 1.27/1.01  pred_elim_cands:                        2
% 1.27/1.01  pred_elim:                              4
% 1.27/1.01  pred_elim_cl:                           4
% 1.27/1.01  pred_elim_cycles:                       6
% 1.27/1.01  merged_defs:                            0
% 1.27/1.01  merged_defs_ncl:                        0
% 1.27/1.01  bin_hyper_res:                          0
% 1.27/1.01  prep_cycles:                            4
% 1.27/1.01  pred_elim_time:                         0.002
% 1.27/1.01  splitting_time:                         0.
% 1.27/1.01  sem_filter_time:                        0.
% 1.27/1.01  monotx_time:                            0.
% 1.27/1.01  subtype_inf_time:                       0.
% 1.27/1.01  
% 1.27/1.01  ------ Problem properties
% 1.27/1.01  
% 1.27/1.01  clauses:                                9
% 1.27/1.01  conjectures:                            3
% 1.27/1.01  epr:                                    4
% 1.27/1.01  horn:                                   8
% 1.27/1.01  ground:                                 3
% 1.27/1.01  unary:                                  4
% 1.27/1.01  binary:                                 4
% 1.27/1.01  lits:                                   15
% 1.27/1.01  lits_eq:                                2
% 1.27/1.01  fd_pure:                                0
% 1.27/1.01  fd_pseudo:                              0
% 1.27/1.01  fd_cond:                                0
% 1.27/1.01  fd_pseudo_cond:                         0
% 1.27/1.01  ac_symbols:                             0
% 1.27/1.01  
% 1.27/1.01  ------ Propositional Solver
% 1.27/1.01  
% 1.27/1.01  prop_solver_calls:                      25
% 1.27/1.01  prop_fast_solver_calls:                 336
% 1.27/1.01  smt_solver_calls:                       0
% 1.27/1.01  smt_fast_solver_calls:                  0
% 1.27/1.01  prop_num_of_clauses:                    295
% 1.27/1.01  prop_preprocess_simplified:             1682
% 1.27/1.01  prop_fo_subsumed:                       11
% 1.27/1.01  prop_solver_time:                       0.
% 1.27/1.01  smt_solver_time:                        0.
% 1.27/1.01  smt_fast_solver_time:                   0.
% 1.27/1.01  prop_fast_solver_time:                  0.
% 1.27/1.01  prop_unsat_core_time:                   0.
% 1.27/1.01  
% 1.27/1.01  ------ QBF
% 1.27/1.01  
% 1.27/1.01  qbf_q_res:                              0
% 1.27/1.01  qbf_num_tautologies:                    0
% 1.27/1.01  qbf_prep_cycles:                        0
% 1.27/1.01  
% 1.27/1.01  ------ BMC1
% 1.27/1.01  
% 1.27/1.01  bmc1_current_bound:                     -1
% 1.27/1.01  bmc1_last_solved_bound:                 -1
% 1.27/1.01  bmc1_unsat_core_size:                   -1
% 1.27/1.01  bmc1_unsat_core_parents_size:           -1
% 1.27/1.01  bmc1_merge_next_fun:                    0
% 1.27/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.27/1.01  
% 1.27/1.01  ------ Instantiation
% 1.27/1.01  
% 1.27/1.01  inst_num_of_clauses:                    82
% 1.27/1.01  inst_num_in_passive:                    12
% 1.27/1.01  inst_num_in_active:                     67
% 1.27/1.01  inst_num_in_unprocessed:                2
% 1.27/1.01  inst_num_of_loops:                      75
% 1.27/1.01  inst_num_of_learning_restarts:          0
% 1.27/1.01  inst_num_moves_active_passive:          3
% 1.27/1.01  inst_lit_activity:                      0
% 1.27/1.01  inst_lit_activity_moves:                0
% 1.27/1.01  inst_num_tautologies:                   0
% 1.27/1.01  inst_num_prop_implied:                  0
% 1.27/1.01  inst_num_existing_simplified:           0
% 1.27/1.01  inst_num_eq_res_simplified:             0
% 1.27/1.01  inst_num_child_elim:                    0
% 1.27/1.01  inst_num_of_dismatching_blockings:      4
% 1.27/1.01  inst_num_of_non_proper_insts:           70
% 1.27/1.01  inst_num_of_duplicates:                 0
% 1.27/1.01  inst_inst_num_from_inst_to_res:         0
% 1.27/1.01  inst_dismatching_checking_time:         0.
% 1.27/1.01  
% 1.27/1.01  ------ Resolution
% 1.27/1.01  
% 1.27/1.01  res_num_of_clauses:                     0
% 1.27/1.01  res_num_in_passive:                     0
% 1.27/1.01  res_num_in_active:                      0
% 1.27/1.01  res_num_of_loops:                       69
% 1.27/1.01  res_forward_subset_subsumed:            11
% 1.27/1.01  res_backward_subset_subsumed:           0
% 1.27/1.01  res_forward_subsumed:                   0
% 1.27/1.01  res_backward_subsumed:                  0
% 1.27/1.01  res_forward_subsumption_resolution:     0
% 1.27/1.01  res_backward_subsumption_resolution:    0
% 1.27/1.01  res_clause_to_clause_subsumption:       21
% 1.27/1.01  res_orphan_elimination:                 0
% 1.27/1.01  res_tautology_del:                      12
% 1.27/1.01  res_num_eq_res_simplified:              0
% 1.27/1.01  res_num_sel_changes:                    0
% 1.27/1.01  res_moves_from_active_to_pass:          0
% 1.27/1.01  
% 1.27/1.01  ------ Superposition
% 1.27/1.01  
% 1.27/1.01  sup_time_total:                         0.
% 1.27/1.01  sup_time_generating:                    0.
% 1.27/1.01  sup_time_sim_full:                      0.
% 1.27/1.01  sup_time_sim_immed:                     0.
% 1.27/1.01  
% 1.27/1.01  sup_num_of_clauses:                     14
% 1.27/1.01  sup_num_in_active:                      5
% 1.27/1.01  sup_num_in_passive:                     9
% 1.27/1.01  sup_num_of_loops:                       14
% 1.27/1.01  sup_fw_superposition:                   3
% 1.27/1.01  sup_bw_superposition:                   2
% 1.27/1.01  sup_immediate_simplified:               0
% 1.27/1.01  sup_given_eliminated:                   0
% 1.27/1.01  comparisons_done:                       0
% 1.27/1.01  comparisons_avoided:                    0
% 1.27/1.01  
% 1.27/1.01  ------ Simplifications
% 1.27/1.01  
% 1.27/1.01  
% 1.27/1.01  sim_fw_subset_subsumed:                 0
% 1.27/1.01  sim_bw_subset_subsumed:                 0
% 1.27/1.01  sim_fw_subsumed:                        0
% 1.27/1.01  sim_bw_subsumed:                        0
% 1.27/1.01  sim_fw_subsumption_res:                 0
% 1.27/1.01  sim_bw_subsumption_res:                 0
% 1.27/1.01  sim_tautology_del:                      0
% 1.27/1.01  sim_eq_tautology_del:                   0
% 1.27/1.01  sim_eq_res_simp:                        0
% 1.27/1.01  sim_fw_demodulated:                     0
% 1.27/1.01  sim_bw_demodulated:                     9
% 1.27/1.01  sim_light_normalised:                   0
% 1.27/1.01  sim_joinable_taut:                      0
% 1.27/1.01  sim_joinable_simp:                      0
% 1.27/1.01  sim_ac_normalised:                      0
% 1.27/1.01  sim_smt_subsumption:                    0
% 1.27/1.01  
%------------------------------------------------------------------------------
