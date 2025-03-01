%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:17:35 EST 2020

% Result     : Theorem 2.85s
% Output     : CNFRefutation 2.85s
% Verified   : 
% Statistics : Number of formulae       :  219 (5386 expanded)
%              Number of clauses        :  139 (1718 expanded)
%              Number of leaves         :   21 (1500 expanded)
%              Depth                    :   28
%              Number of atoms          :  827 (33766 expanded)
%              Number of equality atoms :  310 (5626 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,conjecture,(
    ! [X0] :
      ( l1_struct_0(X0)
     => ! [X1] :
          ( ( l1_struct_0(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ( ( v2_funct_1(X2)
                  & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) )
               => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( l1_struct_0(X0)
       => ! [X1] :
            ( ( l1_struct_0(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                  & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                  & v1_funct_1(X2) )
               => ( ( v2_funct_1(X2)
                    & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) )
                 => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f46,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f47,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(flattening,[],[f46])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
          & v2_funct_1(X2)
          & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)),sK2)
        & v2_funct_1(sK2)
        & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1)
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)),X2)
            & v2_funct_1(X2)
            & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1))
            & v1_funct_1(X2) )
        & l1_struct_0(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)
                & v2_funct_1(X2)
                & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
            & l1_struct_0(X1)
            & ~ v2_struct_0(X1) )
        & l1_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)),X2)
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    & v2_funct_1(sK2)
    & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & ~ v2_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f47,f51,f50,f49])).

fof(f83,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f52])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f75,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f78,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f52])).

fof(f80,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f52])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f33])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f15,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f43,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f42])).

fof(f76,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f79,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f52])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f35])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f36])).

fof(f69,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f81,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f82,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f52])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f53,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f84,plain,(
    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f52])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k2_relset_1(X0,X1,X2) = X1
          & v2_funct_1(X2) )
       => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(k2_funct_1(X2),X1,X0)
          & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f39])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f85,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
          & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f26,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f61,plain,(
    ! [X0] :
      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f45,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f44])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f28,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f63,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0))
              & k2_relat_1(X0) = k1_relat_1(X1)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0))
          | k2_relat_1(X0) != k1_relat_1(X1)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0))
          | k2_relat_1(X0) != k1_relat_1(X1)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f29])).

fof(f64,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0))
      | k2_relat_1(X0) != k1_relat_1(X1)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f60,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f3,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f22,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f21])).

fof(f56,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f55,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f24,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f23])).

fof(f59,plain,(
    ! [X0] :
      ( v2_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_funct_1(X2),X1,X0)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => r2_funct_2(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f38,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f37])).

fof(f71,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f86,plain,(
    ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_672,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(subtyping,[status(esa)],[c_28])).

cnf(c_1154,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_672])).

cnf(c_22,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_33,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_384,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_33])).

cnf(c_385,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_384])).

cnf(c_668,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_385])).

cnf(c_31,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_379,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_31])).

cnf(c_380,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_379])).

cnf(c_669,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_380])).

cnf(c_1176,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1154,c_668,c_669])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_23,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_32,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_366,plain,
    ( ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_32])).

cnf(c_367,plain,
    ( ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_366])).

cnf(c_46,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_23])).

cnf(c_369,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_367,c_32,c_31,c_46])).

cnf(c_391,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | u1_struct_0(sK1) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_369])).

cnf(c_392,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0) ),
    inference(unflattening,[status(thm)],[c_391])).

cnf(c_17,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_488,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | ~ v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_392,c_17])).

cnf(c_12,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_504,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_488,c_12])).

cnf(c_666,plain,
    ( ~ v1_funct_2(X0_53,X0_54,u1_struct_0(sK1))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53)
    | k1_relat_1(X0_53) = X0_54 ),
    inference(subtyping,[status(esa)],[c_504])).

cnf(c_1159,plain,
    ( k1_relat_1(X0_53) = X0_54
    | v1_funct_2(X0_53,X0_54,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_666])).

cnf(c_1250,plain,
    ( k1_relat_1(X0_53) = X0_54
    | v1_funct_2(X0_53,X0_54,k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1159,c_669])).

cnf(c_1595,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1176,c_1250])).

cnf(c_30,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_37,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_39,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_29,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_671,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_29])).

cnf(c_1155,plain,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_671])).

cnf(c_1170,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1155,c_668,c_669])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_689,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(X1_53))
    | ~ v1_relat_1(X1_53)
    | v1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1410,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | v1_relat_1(X0_53)
    | ~ v1_relat_1(k2_zfmisc_1(X0_54,X1_54)) ),
    inference(instantiation,[status(thm)],[c_689])).

cnf(c_1529,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1410])).

cnf(c_1530,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1529])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_688,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_54,X1_54)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1567,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_688])).

cnf(c_1568,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1567])).

cnf(c_2285,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1595,c_37,c_39,c_1170,c_1530,c_1568])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_679,plain,
    ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | k2_relset_1(X0_54,X1_54,X0_53) = k2_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1148,plain,
    ( k2_relset_1(X0_54,X1_54,X0_53) = k2_relat_1(X0_53)
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_679])).

cnf(c_1588,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1176,c_1148])).

cnf(c_27,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_673,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_1173,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_673,c_668,c_669])).

cnf(c_1651,plain,
    ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_1588,c_1173])).

cnf(c_1653,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_1651,c_1588])).

cnf(c_2289,plain,
    ( k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_2285,c_1653])).

cnf(c_19,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_678,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | m1_subset_1(k2_funct_1(X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54)))
    | ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(X0_54,X1_54,X0_53) != X1_54 ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_1149,plain,
    ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
    | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
    | m1_subset_1(k2_funct_1(X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54))) = iProver_top
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_678])).

cnf(c_2730,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2289,c_1149])).

cnf(c_26,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_40,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_1655,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1651,c_1176])).

cnf(c_2288,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2285,c_1655])).

cnf(c_1656,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1651,c_1170])).

cnf(c_2290,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2285,c_1656])).

cnf(c_3518,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2730,c_37,c_40,c_2288,c_2290])).

cnf(c_3524,plain,
    ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_3518,c_1148])).

cnf(c_674,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(subtyping,[status(esa)],[c_26])).

cnf(c_1153,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_674])).

cnf(c_7,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_684,plain,
    ( ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53)
    | k2_relat_1(k2_funct_1(X0_53)) = k1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1143,plain,
    ( k2_relat_1(k2_funct_1(X0_53)) = k1_relat_1(X0_53)
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_684])).

cnf(c_1830,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1153,c_1143])).

cnf(c_745,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_684])).

cnf(c_2078,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1830,c_30,c_28,c_26,c_745,c_1529,c_1567])).

cnf(c_3531,plain,
    ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_3524,c_2078])).

cnf(c_24,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_675,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(X0_54,X1_54,X0_53) != X1_54
    | k2_tops_2(X0_54,X1_54,X0_53) = k2_funct_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_24])).

cnf(c_1152,plain,
    ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
    | k2_tops_2(X0_54,X1_54,X0_53) = k2_funct_1(X0_53)
    | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_675])).

cnf(c_3539,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3531,c_1152])).

cnf(c_9,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_682,plain,
    ( ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53)
    | k5_relat_1(k2_funct_1(X0_53),X0_53) = k6_relat_1(k2_relat_1(X0_53)) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1145,plain,
    ( k5_relat_1(k2_funct_1(X0_53),X0_53) = k6_relat_1(k2_relat_1(X0_53))
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_682])).

cnf(c_1963,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2))
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1153,c_1145])).

cnf(c_751,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_682])).

cnf(c_2213,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1963,c_30,c_28,c_26,c_751,c_1529,c_1567])).

cnf(c_11,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0))
    | k1_relat_1(X1) != k2_relat_1(X0)
    | k2_funct_1(X0) = X1 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_680,plain,
    ( ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X1_53)
    | ~ v1_relat_1(X0_53)
    | ~ v1_relat_1(X1_53)
    | k5_relat_1(X0_53,X1_53) != k6_relat_1(k1_relat_1(X0_53))
    | k1_relat_1(X1_53) != k2_relat_1(X0_53)
    | k2_funct_1(X0_53) = X1_53 ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_1147,plain,
    ( k5_relat_1(X0_53,X1_53) != k6_relat_1(k1_relat_1(X0_53))
    | k1_relat_1(X1_53) != k2_relat_1(X0_53)
    | k2_funct_1(X0_53) = X1_53
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_funct_1(X1_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top
    | v1_relat_1(X1_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_680])).

cnf(c_2528,plain,
    ( k6_relat_1(k1_relat_1(k2_funct_1(sK2))) != k6_relat_1(k2_relat_1(sK2))
    | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2)
    | k2_funct_1(k2_funct_1(sK2)) = sK2
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2213,c_1147])).

cnf(c_8,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_683,plain,
    ( ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53)
    | k1_relat_1(k2_funct_1(X0_53)) = k2_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1144,plain,
    ( k1_relat_1(k2_funct_1(X0_53)) = k2_relat_1(X0_53)
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_683])).

cnf(c_1859,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1153,c_1144])).

cnf(c_748,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_683])).

cnf(c_2082,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1859,c_30,c_28,c_26,c_748,c_1529,c_1567])).

cnf(c_2538,plain,
    ( k6_relat_1(k2_relat_1(sK2)) != k6_relat_1(k2_relat_1(sK2))
    | k1_relat_1(sK2) != k1_relat_1(sK2)
    | k2_funct_1(k2_funct_1(sK2)) = sK2
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2528,c_2078,c_2082])).

cnf(c_2539,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2538])).

cnf(c_2,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_687,plain,
    ( ~ v1_funct_1(X0_53)
    | v1_funct_1(k2_funct_1(X0_53))
    | ~ v1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_735,plain,
    ( v1_funct_1(X0_53) != iProver_top
    | v1_funct_1(k2_funct_1(X0_53)) = iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_687])).

cnf(c_737,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_735])).

cnf(c_3,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_686,plain,
    ( ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53)
    | v1_relat_1(k2_funct_1(X0_53)) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_738,plain,
    ( v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top
    | v1_relat_1(k2_funct_1(X0_53)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_686])).

cnf(c_740,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_738])).

cnf(c_4,plain,
    ( ~ v2_funct_1(X0)
    | v2_funct_1(k2_funct_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_685,plain,
    ( ~ v2_funct_1(X0_53)
    | v2_funct_1(k2_funct_1(X0_53))
    | ~ v1_funct_1(X0_53)
    | ~ v1_relat_1(X0_53) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_741,plain,
    ( v2_funct_1(X0_53) != iProver_top
    | v2_funct_1(k2_funct_1(X0_53)) = iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_relat_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_685])).

cnf(c_743,plain,
    ( v2_funct_1(k2_funct_1(sK2)) = iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_741])).

cnf(c_2865,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2539,c_37,c_39,c_40,c_737,c_740,c_743,c_1530,c_1568])).

cnf(c_3552,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2
    | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3539,c_2865])).

cnf(c_20,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_funct_1(X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_677,plain,
    ( ~ v1_funct_2(X0_53,X0_54,X1_54)
    | v1_funct_2(k2_funct_1(X0_53),X1_54,X0_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v2_funct_1(X0_53)
    | ~ v1_funct_1(X0_53)
    | k2_relset_1(X0_54,X1_54,X0_53) != X1_54 ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1150,plain,
    ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
    | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
    | v1_funct_2(k2_funct_1(X0_53),X1_54,X0_54) = iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
    | v2_funct_1(X0_53) != iProver_top
    | v1_funct_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_677])).

cnf(c_2732,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) = iProver_top
    | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2289,c_1150])).

cnf(c_3663,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3552,c_37,c_39,c_40,c_737,c_743,c_1530,c_1568,c_2288,c_2290,c_2730,c_2732])).

cnf(c_2731,plain,
    ( k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2289,c_1152])).

cnf(c_2962,plain,
    ( k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2731,c_37,c_40,c_2288,c_2290])).

cnf(c_18,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_25,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_414,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK0) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_25])).

cnf(c_415,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_414])).

cnf(c_667,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(subtyping,[status(esa)],[c_415])).

cnf(c_691,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sP0_iProver_split
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_667])).

cnf(c_1157,plain,
    ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_691])).

cnf(c_1325,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1157,c_668,c_669])).

cnf(c_690,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0_53)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_667])).

cnf(c_1158,plain,
    ( v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_690])).

cnf(c_1241,plain,
    ( v1_funct_2(X0_53,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1158,c_668,c_669])).

cnf(c_1331,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1325,c_1241])).

cnf(c_2396,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1331,c_1651,c_2285])).

cnf(c_2965,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2962,c_2396])).

cnf(c_3666,plain,
    ( sK2 != sK2
    | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3663,c_2965])).

cnf(c_693,plain,
    ( X0_53 = X0_53 ),
    theory(equality)).

cnf(c_727,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_693])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3666,c_2290,c_2288,c_727,c_37])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.01/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n004.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:06:38 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.85/1.04  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.85/1.04  
% 2.85/1.04  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.85/1.04  
% 2.85/1.04  ------  iProver source info
% 2.85/1.04  
% 2.85/1.04  git: date: 2020-06-30 10:37:57 +0100
% 2.85/1.04  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.85/1.04  git: non_committed_changes: false
% 2.85/1.04  git: last_make_outside_of_git: false
% 2.85/1.04  
% 2.85/1.04  ------ 
% 2.85/1.04  
% 2.85/1.04  ------ Input Options
% 2.85/1.04  
% 2.85/1.04  --out_options                           all
% 2.85/1.04  --tptp_safe_out                         true
% 2.85/1.04  --problem_path                          ""
% 2.85/1.04  --include_path                          ""
% 2.85/1.04  --clausifier                            res/vclausify_rel
% 2.85/1.04  --clausifier_options                    --mode clausify
% 2.85/1.04  --stdin                                 false
% 2.85/1.04  --stats_out                             all
% 2.85/1.04  
% 2.85/1.04  ------ General Options
% 2.85/1.04  
% 2.85/1.04  --fof                                   false
% 2.85/1.04  --time_out_real                         305.
% 2.85/1.04  --time_out_virtual                      -1.
% 2.85/1.04  --symbol_type_check                     false
% 2.85/1.04  --clausify_out                          false
% 2.85/1.04  --sig_cnt_out                           false
% 2.85/1.04  --trig_cnt_out                          false
% 2.85/1.04  --trig_cnt_out_tolerance                1.
% 2.85/1.04  --trig_cnt_out_sk_spl                   false
% 2.85/1.04  --abstr_cl_out                          false
% 2.85/1.04  
% 2.85/1.04  ------ Global Options
% 2.85/1.04  
% 2.85/1.04  --schedule                              default
% 2.85/1.04  --add_important_lit                     false
% 2.85/1.04  --prop_solver_per_cl                    1000
% 2.85/1.04  --min_unsat_core                        false
% 2.85/1.04  --soft_assumptions                      false
% 2.85/1.04  --soft_lemma_size                       3
% 2.85/1.04  --prop_impl_unit_size                   0
% 2.85/1.04  --prop_impl_unit                        []
% 2.85/1.04  --share_sel_clauses                     true
% 2.85/1.04  --reset_solvers                         false
% 2.85/1.04  --bc_imp_inh                            [conj_cone]
% 2.85/1.04  --conj_cone_tolerance                   3.
% 2.85/1.04  --extra_neg_conj                        none
% 2.85/1.04  --large_theory_mode                     true
% 2.85/1.04  --prolific_symb_bound                   200
% 2.85/1.04  --lt_threshold                          2000
% 2.85/1.04  --clause_weak_htbl                      true
% 2.85/1.04  --gc_record_bc_elim                     false
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing Options
% 2.85/1.04  
% 2.85/1.04  --preprocessing_flag                    true
% 2.85/1.04  --time_out_prep_mult                    0.1
% 2.85/1.04  --splitting_mode                        input
% 2.85/1.04  --splitting_grd                         true
% 2.85/1.04  --splitting_cvd                         false
% 2.85/1.04  --splitting_cvd_svl                     false
% 2.85/1.04  --splitting_nvd                         32
% 2.85/1.04  --sub_typing                            true
% 2.85/1.04  --prep_gs_sim                           true
% 2.85/1.04  --prep_unflatten                        true
% 2.85/1.04  --prep_res_sim                          true
% 2.85/1.04  --prep_upred                            true
% 2.85/1.04  --prep_sem_filter                       exhaustive
% 2.85/1.04  --prep_sem_filter_out                   false
% 2.85/1.04  --pred_elim                             true
% 2.85/1.04  --res_sim_input                         true
% 2.85/1.04  --eq_ax_congr_red                       true
% 2.85/1.04  --pure_diseq_elim                       true
% 2.85/1.04  --brand_transform                       false
% 2.85/1.04  --non_eq_to_eq                          false
% 2.85/1.04  --prep_def_merge                        true
% 2.85/1.04  --prep_def_merge_prop_impl              false
% 2.85/1.04  --prep_def_merge_mbd                    true
% 2.85/1.04  --prep_def_merge_tr_red                 false
% 2.85/1.04  --prep_def_merge_tr_cl                  false
% 2.85/1.04  --smt_preprocessing                     true
% 2.85/1.04  --smt_ac_axioms                         fast
% 2.85/1.04  --preprocessed_out                      false
% 2.85/1.04  --preprocessed_stats                    false
% 2.85/1.04  
% 2.85/1.04  ------ Abstraction refinement Options
% 2.85/1.04  
% 2.85/1.04  --abstr_ref                             []
% 2.85/1.04  --abstr_ref_prep                        false
% 2.85/1.04  --abstr_ref_until_sat                   false
% 2.85/1.04  --abstr_ref_sig_restrict                funpre
% 2.85/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 2.85/1.04  --abstr_ref_under                       []
% 2.85/1.04  
% 2.85/1.04  ------ SAT Options
% 2.85/1.04  
% 2.85/1.04  --sat_mode                              false
% 2.85/1.04  --sat_fm_restart_options                ""
% 2.85/1.04  --sat_gr_def                            false
% 2.85/1.04  --sat_epr_types                         true
% 2.85/1.04  --sat_non_cyclic_types                  false
% 2.85/1.04  --sat_finite_models                     false
% 2.85/1.04  --sat_fm_lemmas                         false
% 2.85/1.04  --sat_fm_prep                           false
% 2.85/1.04  --sat_fm_uc_incr                        true
% 2.85/1.04  --sat_out_model                         small
% 2.85/1.04  --sat_out_clauses                       false
% 2.85/1.04  
% 2.85/1.04  ------ QBF Options
% 2.85/1.04  
% 2.85/1.04  --qbf_mode                              false
% 2.85/1.04  --qbf_elim_univ                         false
% 2.85/1.04  --qbf_dom_inst                          none
% 2.85/1.04  --qbf_dom_pre_inst                      false
% 2.85/1.04  --qbf_sk_in                             false
% 2.85/1.04  --qbf_pred_elim                         true
% 2.85/1.04  --qbf_split                             512
% 2.85/1.04  
% 2.85/1.04  ------ BMC1 Options
% 2.85/1.04  
% 2.85/1.04  --bmc1_incremental                      false
% 2.85/1.04  --bmc1_axioms                           reachable_all
% 2.85/1.04  --bmc1_min_bound                        0
% 2.85/1.04  --bmc1_max_bound                        -1
% 2.85/1.04  --bmc1_max_bound_default                -1
% 2.85/1.04  --bmc1_symbol_reachability              true
% 2.85/1.04  --bmc1_property_lemmas                  false
% 2.85/1.04  --bmc1_k_induction                      false
% 2.85/1.04  --bmc1_non_equiv_states                 false
% 2.85/1.04  --bmc1_deadlock                         false
% 2.85/1.04  --bmc1_ucm                              false
% 2.85/1.04  --bmc1_add_unsat_core                   none
% 2.85/1.04  --bmc1_unsat_core_children              false
% 2.85/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 2.85/1.04  --bmc1_out_stat                         full
% 2.85/1.04  --bmc1_ground_init                      false
% 2.85/1.04  --bmc1_pre_inst_next_state              false
% 2.85/1.04  --bmc1_pre_inst_state                   false
% 2.85/1.04  --bmc1_pre_inst_reach_state             false
% 2.85/1.04  --bmc1_out_unsat_core                   false
% 2.85/1.04  --bmc1_aig_witness_out                  false
% 2.85/1.04  --bmc1_verbose                          false
% 2.85/1.04  --bmc1_dump_clauses_tptp                false
% 2.85/1.04  --bmc1_dump_unsat_core_tptp             false
% 2.85/1.04  --bmc1_dump_file                        -
% 2.85/1.04  --bmc1_ucm_expand_uc_limit              128
% 2.85/1.04  --bmc1_ucm_n_expand_iterations          6
% 2.85/1.04  --bmc1_ucm_extend_mode                  1
% 2.85/1.04  --bmc1_ucm_init_mode                    2
% 2.85/1.04  --bmc1_ucm_cone_mode                    none
% 2.85/1.04  --bmc1_ucm_reduced_relation_type        0
% 2.85/1.04  --bmc1_ucm_relax_model                  4
% 2.85/1.04  --bmc1_ucm_full_tr_after_sat            true
% 2.85/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 2.85/1.04  --bmc1_ucm_layered_model                none
% 2.85/1.04  --bmc1_ucm_max_lemma_size               10
% 2.85/1.04  
% 2.85/1.04  ------ AIG Options
% 2.85/1.04  
% 2.85/1.04  --aig_mode                              false
% 2.85/1.04  
% 2.85/1.04  ------ Instantiation Options
% 2.85/1.04  
% 2.85/1.04  --instantiation_flag                    true
% 2.85/1.04  --inst_sos_flag                         false
% 2.85/1.04  --inst_sos_phase                        true
% 2.85/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.85/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.85/1.04  --inst_lit_sel_side                     num_symb
% 2.85/1.04  --inst_solver_per_active                1400
% 2.85/1.04  --inst_solver_calls_frac                1.
% 2.85/1.04  --inst_passive_queue_type               priority_queues
% 2.85/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.85/1.04  --inst_passive_queues_freq              [25;2]
% 2.85/1.04  --inst_dismatching                      true
% 2.85/1.04  --inst_eager_unprocessed_to_passive     true
% 2.85/1.04  --inst_prop_sim_given                   true
% 2.85/1.04  --inst_prop_sim_new                     false
% 2.85/1.04  --inst_subs_new                         false
% 2.85/1.04  --inst_eq_res_simp                      false
% 2.85/1.04  --inst_subs_given                       false
% 2.85/1.04  --inst_orphan_elimination               true
% 2.85/1.04  --inst_learning_loop_flag               true
% 2.85/1.04  --inst_learning_start                   3000
% 2.85/1.04  --inst_learning_factor                  2
% 2.85/1.04  --inst_start_prop_sim_after_learn       3
% 2.85/1.04  --inst_sel_renew                        solver
% 2.85/1.04  --inst_lit_activity_flag                true
% 2.85/1.04  --inst_restr_to_given                   false
% 2.85/1.04  --inst_activity_threshold               500
% 2.85/1.04  --inst_out_proof                        true
% 2.85/1.04  
% 2.85/1.04  ------ Resolution Options
% 2.85/1.04  
% 2.85/1.04  --resolution_flag                       true
% 2.85/1.04  --res_lit_sel                           adaptive
% 2.85/1.04  --res_lit_sel_side                      none
% 2.85/1.04  --res_ordering                          kbo
% 2.85/1.04  --res_to_prop_solver                    active
% 2.85/1.04  --res_prop_simpl_new                    false
% 2.85/1.04  --res_prop_simpl_given                  true
% 2.85/1.04  --res_passive_queue_type                priority_queues
% 2.85/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.85/1.04  --res_passive_queues_freq               [15;5]
% 2.85/1.04  --res_forward_subs                      full
% 2.85/1.04  --res_backward_subs                     full
% 2.85/1.04  --res_forward_subs_resolution           true
% 2.85/1.04  --res_backward_subs_resolution          true
% 2.85/1.04  --res_orphan_elimination                true
% 2.85/1.04  --res_time_limit                        2.
% 2.85/1.04  --res_out_proof                         true
% 2.85/1.04  
% 2.85/1.04  ------ Superposition Options
% 2.85/1.04  
% 2.85/1.04  --superposition_flag                    true
% 2.85/1.04  --sup_passive_queue_type                priority_queues
% 2.85/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.85/1.04  --sup_passive_queues_freq               [8;1;4]
% 2.85/1.04  --demod_completeness_check              fast
% 2.85/1.04  --demod_use_ground                      true
% 2.85/1.04  --sup_to_prop_solver                    passive
% 2.85/1.04  --sup_prop_simpl_new                    true
% 2.85/1.04  --sup_prop_simpl_given                  true
% 2.85/1.04  --sup_fun_splitting                     false
% 2.85/1.04  --sup_smt_interval                      50000
% 2.85/1.04  
% 2.85/1.04  ------ Superposition Simplification Setup
% 2.85/1.04  
% 2.85/1.04  --sup_indices_passive                   []
% 2.85/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 2.85/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_full_bw                           [BwDemod]
% 2.85/1.04  --sup_immed_triv                        [TrivRules]
% 2.85/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.85/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_immed_bw_main                     []
% 2.85/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 2.85/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/1.04  
% 2.85/1.04  ------ Combination Options
% 2.85/1.04  
% 2.85/1.04  --comb_res_mult                         3
% 2.85/1.04  --comb_sup_mult                         2
% 2.85/1.04  --comb_inst_mult                        10
% 2.85/1.04  
% 2.85/1.04  ------ Debug Options
% 2.85/1.04  
% 2.85/1.04  --dbg_backtrace                         false
% 2.85/1.04  --dbg_dump_prop_clauses                 false
% 2.85/1.04  --dbg_dump_prop_clauses_file            -
% 2.85/1.04  --dbg_out_stat                          false
% 2.85/1.04  ------ Parsing...
% 2.85/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing... sf_s  rm: 2 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.85/1.04  ------ Proving...
% 2.85/1.04  ------ Problem Properties 
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  clauses                                 25
% 2.85/1.04  conjectures                             5
% 2.85/1.04  EPR                                     2
% 2.85/1.04  Horn                                    25
% 2.85/1.04  unary                                   8
% 2.85/1.04  binary                                  1
% 2.85/1.04  lits                                    85
% 2.85/1.04  lits eq                                 18
% 2.85/1.04  fd_pure                                 0
% 2.85/1.04  fd_pseudo                               0
% 2.85/1.04  fd_cond                                 0
% 2.85/1.04  fd_pseudo_cond                          2
% 2.85/1.04  AC symbols                              0
% 2.85/1.04  
% 2.85/1.04  ------ Schedule dynamic 5 is on 
% 2.85/1.04  
% 2.85/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  ------ 
% 2.85/1.04  Current options:
% 2.85/1.04  ------ 
% 2.85/1.04  
% 2.85/1.04  ------ Input Options
% 2.85/1.04  
% 2.85/1.04  --out_options                           all
% 2.85/1.04  --tptp_safe_out                         true
% 2.85/1.04  --problem_path                          ""
% 2.85/1.04  --include_path                          ""
% 2.85/1.04  --clausifier                            res/vclausify_rel
% 2.85/1.04  --clausifier_options                    --mode clausify
% 2.85/1.04  --stdin                                 false
% 2.85/1.04  --stats_out                             all
% 2.85/1.04  
% 2.85/1.04  ------ General Options
% 2.85/1.04  
% 2.85/1.04  --fof                                   false
% 2.85/1.04  --time_out_real                         305.
% 2.85/1.04  --time_out_virtual                      -1.
% 2.85/1.04  --symbol_type_check                     false
% 2.85/1.04  --clausify_out                          false
% 2.85/1.04  --sig_cnt_out                           false
% 2.85/1.04  --trig_cnt_out                          false
% 2.85/1.04  --trig_cnt_out_tolerance                1.
% 2.85/1.04  --trig_cnt_out_sk_spl                   false
% 2.85/1.04  --abstr_cl_out                          false
% 2.85/1.04  
% 2.85/1.04  ------ Global Options
% 2.85/1.04  
% 2.85/1.04  --schedule                              default
% 2.85/1.04  --add_important_lit                     false
% 2.85/1.04  --prop_solver_per_cl                    1000
% 2.85/1.04  --min_unsat_core                        false
% 2.85/1.04  --soft_assumptions                      false
% 2.85/1.04  --soft_lemma_size                       3
% 2.85/1.04  --prop_impl_unit_size                   0
% 2.85/1.04  --prop_impl_unit                        []
% 2.85/1.04  --share_sel_clauses                     true
% 2.85/1.04  --reset_solvers                         false
% 2.85/1.04  --bc_imp_inh                            [conj_cone]
% 2.85/1.04  --conj_cone_tolerance                   3.
% 2.85/1.04  --extra_neg_conj                        none
% 2.85/1.04  --large_theory_mode                     true
% 2.85/1.04  --prolific_symb_bound                   200
% 2.85/1.04  --lt_threshold                          2000
% 2.85/1.04  --clause_weak_htbl                      true
% 2.85/1.04  --gc_record_bc_elim                     false
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing Options
% 2.85/1.04  
% 2.85/1.04  --preprocessing_flag                    true
% 2.85/1.04  --time_out_prep_mult                    0.1
% 2.85/1.04  --splitting_mode                        input
% 2.85/1.04  --splitting_grd                         true
% 2.85/1.04  --splitting_cvd                         false
% 2.85/1.04  --splitting_cvd_svl                     false
% 2.85/1.04  --splitting_nvd                         32
% 2.85/1.04  --sub_typing                            true
% 2.85/1.04  --prep_gs_sim                           true
% 2.85/1.04  --prep_unflatten                        true
% 2.85/1.04  --prep_res_sim                          true
% 2.85/1.04  --prep_upred                            true
% 2.85/1.04  --prep_sem_filter                       exhaustive
% 2.85/1.04  --prep_sem_filter_out                   false
% 2.85/1.04  --pred_elim                             true
% 2.85/1.04  --res_sim_input                         true
% 2.85/1.04  --eq_ax_congr_red                       true
% 2.85/1.04  --pure_diseq_elim                       true
% 2.85/1.04  --brand_transform                       false
% 2.85/1.04  --non_eq_to_eq                          false
% 2.85/1.04  --prep_def_merge                        true
% 2.85/1.04  --prep_def_merge_prop_impl              false
% 2.85/1.04  --prep_def_merge_mbd                    true
% 2.85/1.04  --prep_def_merge_tr_red                 false
% 2.85/1.04  --prep_def_merge_tr_cl                  false
% 2.85/1.04  --smt_preprocessing                     true
% 2.85/1.04  --smt_ac_axioms                         fast
% 2.85/1.04  --preprocessed_out                      false
% 2.85/1.04  --preprocessed_stats                    false
% 2.85/1.04  
% 2.85/1.04  ------ Abstraction refinement Options
% 2.85/1.04  
% 2.85/1.04  --abstr_ref                             []
% 2.85/1.04  --abstr_ref_prep                        false
% 2.85/1.04  --abstr_ref_until_sat                   false
% 2.85/1.04  --abstr_ref_sig_restrict                funpre
% 2.85/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 2.85/1.04  --abstr_ref_under                       []
% 2.85/1.04  
% 2.85/1.04  ------ SAT Options
% 2.85/1.04  
% 2.85/1.04  --sat_mode                              false
% 2.85/1.04  --sat_fm_restart_options                ""
% 2.85/1.04  --sat_gr_def                            false
% 2.85/1.04  --sat_epr_types                         true
% 2.85/1.04  --sat_non_cyclic_types                  false
% 2.85/1.04  --sat_finite_models                     false
% 2.85/1.04  --sat_fm_lemmas                         false
% 2.85/1.04  --sat_fm_prep                           false
% 2.85/1.04  --sat_fm_uc_incr                        true
% 2.85/1.04  --sat_out_model                         small
% 2.85/1.04  --sat_out_clauses                       false
% 2.85/1.04  
% 2.85/1.04  ------ QBF Options
% 2.85/1.04  
% 2.85/1.04  --qbf_mode                              false
% 2.85/1.04  --qbf_elim_univ                         false
% 2.85/1.04  --qbf_dom_inst                          none
% 2.85/1.04  --qbf_dom_pre_inst                      false
% 2.85/1.04  --qbf_sk_in                             false
% 2.85/1.04  --qbf_pred_elim                         true
% 2.85/1.04  --qbf_split                             512
% 2.85/1.04  
% 2.85/1.04  ------ BMC1 Options
% 2.85/1.04  
% 2.85/1.04  --bmc1_incremental                      false
% 2.85/1.04  --bmc1_axioms                           reachable_all
% 2.85/1.04  --bmc1_min_bound                        0
% 2.85/1.04  --bmc1_max_bound                        -1
% 2.85/1.04  --bmc1_max_bound_default                -1
% 2.85/1.04  --bmc1_symbol_reachability              true
% 2.85/1.04  --bmc1_property_lemmas                  false
% 2.85/1.04  --bmc1_k_induction                      false
% 2.85/1.04  --bmc1_non_equiv_states                 false
% 2.85/1.04  --bmc1_deadlock                         false
% 2.85/1.04  --bmc1_ucm                              false
% 2.85/1.04  --bmc1_add_unsat_core                   none
% 2.85/1.04  --bmc1_unsat_core_children              false
% 2.85/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 2.85/1.04  --bmc1_out_stat                         full
% 2.85/1.04  --bmc1_ground_init                      false
% 2.85/1.04  --bmc1_pre_inst_next_state              false
% 2.85/1.04  --bmc1_pre_inst_state                   false
% 2.85/1.04  --bmc1_pre_inst_reach_state             false
% 2.85/1.04  --bmc1_out_unsat_core                   false
% 2.85/1.04  --bmc1_aig_witness_out                  false
% 2.85/1.04  --bmc1_verbose                          false
% 2.85/1.04  --bmc1_dump_clauses_tptp                false
% 2.85/1.04  --bmc1_dump_unsat_core_tptp             false
% 2.85/1.04  --bmc1_dump_file                        -
% 2.85/1.04  --bmc1_ucm_expand_uc_limit              128
% 2.85/1.04  --bmc1_ucm_n_expand_iterations          6
% 2.85/1.04  --bmc1_ucm_extend_mode                  1
% 2.85/1.04  --bmc1_ucm_init_mode                    2
% 2.85/1.04  --bmc1_ucm_cone_mode                    none
% 2.85/1.04  --bmc1_ucm_reduced_relation_type        0
% 2.85/1.04  --bmc1_ucm_relax_model                  4
% 2.85/1.04  --bmc1_ucm_full_tr_after_sat            true
% 2.85/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 2.85/1.04  --bmc1_ucm_layered_model                none
% 2.85/1.04  --bmc1_ucm_max_lemma_size               10
% 2.85/1.04  
% 2.85/1.04  ------ AIG Options
% 2.85/1.04  
% 2.85/1.04  --aig_mode                              false
% 2.85/1.04  
% 2.85/1.04  ------ Instantiation Options
% 2.85/1.04  
% 2.85/1.04  --instantiation_flag                    true
% 2.85/1.04  --inst_sos_flag                         false
% 2.85/1.04  --inst_sos_phase                        true
% 2.85/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.85/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.85/1.04  --inst_lit_sel_side                     none
% 2.85/1.04  --inst_solver_per_active                1400
% 2.85/1.04  --inst_solver_calls_frac                1.
% 2.85/1.04  --inst_passive_queue_type               priority_queues
% 2.85/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.85/1.04  --inst_passive_queues_freq              [25;2]
% 2.85/1.04  --inst_dismatching                      true
% 2.85/1.04  --inst_eager_unprocessed_to_passive     true
% 2.85/1.04  --inst_prop_sim_given                   true
% 2.85/1.04  --inst_prop_sim_new                     false
% 2.85/1.04  --inst_subs_new                         false
% 2.85/1.04  --inst_eq_res_simp                      false
% 2.85/1.04  --inst_subs_given                       false
% 2.85/1.04  --inst_orphan_elimination               true
% 2.85/1.04  --inst_learning_loop_flag               true
% 2.85/1.04  --inst_learning_start                   3000
% 2.85/1.04  --inst_learning_factor                  2
% 2.85/1.04  --inst_start_prop_sim_after_learn       3
% 2.85/1.04  --inst_sel_renew                        solver
% 2.85/1.04  --inst_lit_activity_flag                true
% 2.85/1.04  --inst_restr_to_given                   false
% 2.85/1.04  --inst_activity_threshold               500
% 2.85/1.04  --inst_out_proof                        true
% 2.85/1.04  
% 2.85/1.04  ------ Resolution Options
% 2.85/1.04  
% 2.85/1.04  --resolution_flag                       false
% 2.85/1.04  --res_lit_sel                           adaptive
% 2.85/1.04  --res_lit_sel_side                      none
% 2.85/1.04  --res_ordering                          kbo
% 2.85/1.04  --res_to_prop_solver                    active
% 2.85/1.04  --res_prop_simpl_new                    false
% 2.85/1.04  --res_prop_simpl_given                  true
% 2.85/1.04  --res_passive_queue_type                priority_queues
% 2.85/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.85/1.04  --res_passive_queues_freq               [15;5]
% 2.85/1.04  --res_forward_subs                      full
% 2.85/1.04  --res_backward_subs                     full
% 2.85/1.04  --res_forward_subs_resolution           true
% 2.85/1.04  --res_backward_subs_resolution          true
% 2.85/1.04  --res_orphan_elimination                true
% 2.85/1.04  --res_time_limit                        2.
% 2.85/1.04  --res_out_proof                         true
% 2.85/1.04  
% 2.85/1.04  ------ Superposition Options
% 2.85/1.04  
% 2.85/1.04  --superposition_flag                    true
% 2.85/1.04  --sup_passive_queue_type                priority_queues
% 2.85/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.85/1.04  --sup_passive_queues_freq               [8;1;4]
% 2.85/1.04  --demod_completeness_check              fast
% 2.85/1.04  --demod_use_ground                      true
% 2.85/1.04  --sup_to_prop_solver                    passive
% 2.85/1.04  --sup_prop_simpl_new                    true
% 2.85/1.04  --sup_prop_simpl_given                  true
% 2.85/1.04  --sup_fun_splitting                     false
% 2.85/1.04  --sup_smt_interval                      50000
% 2.85/1.04  
% 2.85/1.04  ------ Superposition Simplification Setup
% 2.85/1.04  
% 2.85/1.04  --sup_indices_passive                   []
% 2.85/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 2.85/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_full_bw                           [BwDemod]
% 2.85/1.04  --sup_immed_triv                        [TrivRules]
% 2.85/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.85/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_immed_bw_main                     []
% 2.85/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 2.85/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/1.04  
% 2.85/1.04  ------ Combination Options
% 2.85/1.04  
% 2.85/1.04  --comb_res_mult                         3
% 2.85/1.04  --comb_sup_mult                         2
% 2.85/1.04  --comb_inst_mult                        10
% 2.85/1.04  
% 2.85/1.04  ------ Debug Options
% 2.85/1.04  
% 2.85/1.04  --dbg_backtrace                         false
% 2.85/1.04  --dbg_dump_prop_clauses                 false
% 2.85/1.04  --dbg_dump_prop_clauses_file            -
% 2.85/1.04  --dbg_out_stat                          false
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  ------ Proving...
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  % SZS status Theorem for theBenchmark.p
% 2.85/1.04  
% 2.85/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 2.85/1.04  
% 2.85/1.04  fof(f17,conjecture,(
% 2.85/1.04    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f18,negated_conjecture,(
% 2.85/1.04    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.85/1.04    inference(negated_conjecture,[],[f17])).
% 2.85/1.04  
% 2.85/1.04  fof(f46,plain,(
% 2.85/1.04    ? [X0] : (? [X1] : (? [X2] : ((~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 2.85/1.04    inference(ennf_transformation,[],[f18])).
% 2.85/1.04  
% 2.85/1.04  fof(f47,plain,(
% 2.85/1.04    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 2.85/1.04    inference(flattening,[],[f46])).
% 2.85/1.04  
% 2.85/1.04  fof(f51,plain,(
% 2.85/1.04    ( ! [X0,X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 2.85/1.04    introduced(choice_axiom,[])).
% 2.85/1.04  
% 2.85/1.04  fof(f50,plain,(
% 2.85/1.04    ( ! [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1))) )),
% 2.85/1.04    introduced(choice_axiom,[])).
% 2.85/1.04  
% 2.85/1.04  fof(f49,plain,(
% 2.85/1.04    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(sK0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK0))),
% 2.85/1.04    introduced(choice_axiom,[])).
% 2.85/1.04  
% 2.85/1.04  fof(f52,plain,(
% 2.85/1.04    ((~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1)) & l1_struct_0(sK0)),
% 2.85/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f47,f51,f50,f49])).
% 2.85/1.04  
% 2.85/1.04  fof(f83,plain,(
% 2.85/1.04    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f14,axiom,(
% 2.85/1.04    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f41,plain,(
% 2.85/1.04    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 2.85/1.04    inference(ennf_transformation,[],[f14])).
% 2.85/1.04  
% 2.85/1.04  fof(f75,plain,(
% 2.85/1.04    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f41])).
% 2.85/1.04  
% 2.85/1.04  fof(f78,plain,(
% 2.85/1.04    l1_struct_0(sK0)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f80,plain,(
% 2.85/1.04    l1_struct_0(sK1)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f10,axiom,(
% 2.85/1.04    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f33,plain,(
% 2.85/1.04    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.85/1.04    inference(ennf_transformation,[],[f10])).
% 2.85/1.04  
% 2.85/1.04  fof(f34,plain,(
% 2.85/1.04    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.85/1.04    inference(flattening,[],[f33])).
% 2.85/1.04  
% 2.85/1.04  fof(f68,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f34])).
% 2.85/1.04  
% 2.85/1.04  fof(f15,axiom,(
% 2.85/1.04    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f42,plain,(
% 2.85/1.04    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f15])).
% 2.85/1.04  
% 2.85/1.04  fof(f43,plain,(
% 2.85/1.04    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.85/1.04    inference(flattening,[],[f42])).
% 2.85/1.04  
% 2.85/1.04  fof(f76,plain,(
% 2.85/1.04    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f43])).
% 2.85/1.04  
% 2.85/1.04  fof(f79,plain,(
% 2.85/1.04    ~v2_struct_0(sK1)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f11,axiom,(
% 2.85/1.04    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f35,plain,(
% 2.85/1.04    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 2.85/1.04    inference(ennf_transformation,[],[f11])).
% 2.85/1.04  
% 2.85/1.04  fof(f36,plain,(
% 2.85/1.04    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.85/1.04    inference(flattening,[],[f35])).
% 2.85/1.04  
% 2.85/1.04  fof(f48,plain,(
% 2.85/1.04    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.85/1.04    inference(nnf_transformation,[],[f36])).
% 2.85/1.04  
% 2.85/1.04  fof(f69,plain,(
% 2.85/1.04    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f48])).
% 2.85/1.04  
% 2.85/1.04  fof(f8,axiom,(
% 2.85/1.04    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f19,plain,(
% 2.85/1.04    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 2.85/1.04    inference(pure_predicate_removal,[],[f8])).
% 2.85/1.04  
% 2.85/1.04  fof(f31,plain,(
% 2.85/1.04    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.85/1.04    inference(ennf_transformation,[],[f19])).
% 2.85/1.04  
% 2.85/1.04  fof(f65,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.85/1.04    inference(cnf_transformation,[],[f31])).
% 2.85/1.04  
% 2.85/1.04  fof(f81,plain,(
% 2.85/1.04    v1_funct_1(sK2)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f82,plain,(
% 2.85/1.04    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f1,axiom,(
% 2.85/1.04    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f20,plain,(
% 2.85/1.04    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(ennf_transformation,[],[f1])).
% 2.85/1.04  
% 2.85/1.04  fof(f53,plain,(
% 2.85/1.04    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f20])).
% 2.85/1.04  
% 2.85/1.04  fof(f2,axiom,(
% 2.85/1.04    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f54,plain,(
% 2.85/1.04    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.85/1.04    inference(cnf_transformation,[],[f2])).
% 2.85/1.04  
% 2.85/1.04  fof(f9,axiom,(
% 2.85/1.04    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f32,plain,(
% 2.85/1.04    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.85/1.04    inference(ennf_transformation,[],[f9])).
% 2.85/1.04  
% 2.85/1.04  fof(f66,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.85/1.04    inference(cnf_transformation,[],[f32])).
% 2.85/1.04  
% 2.85/1.04  fof(f84,plain,(
% 2.85/1.04    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f13,axiom,(
% 2.85/1.04    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f39,plain,(
% 2.85/1.04    ! [X0,X1,X2] : (((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | (k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.85/1.04    inference(ennf_transformation,[],[f13])).
% 2.85/1.04  
% 2.85/1.04  fof(f40,plain,(
% 2.85/1.04    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.85/1.04    inference(flattening,[],[f39])).
% 2.85/1.04  
% 2.85/1.04  fof(f74,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f40])).
% 2.85/1.04  
% 2.85/1.04  fof(f85,plain,(
% 2.85/1.04    v2_funct_1(sK2)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  fof(f5,axiom,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f25,plain,(
% 2.85/1.04    ! [X0] : (((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f5])).
% 2.85/1.04  
% 2.85/1.04  fof(f26,plain,(
% 2.85/1.04    ! [X0] : ((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(flattening,[],[f25])).
% 2.85/1.04  
% 2.85/1.04  fof(f61,plain,(
% 2.85/1.04    ( ! [X0] : (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f26])).
% 2.85/1.04  
% 2.85/1.04  fof(f16,axiom,(
% 2.85/1.04    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f44,plain,(
% 2.85/1.04    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.85/1.04    inference(ennf_transformation,[],[f16])).
% 2.85/1.04  
% 2.85/1.04  fof(f45,plain,(
% 2.85/1.04    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.85/1.04    inference(flattening,[],[f44])).
% 2.85/1.04  
% 2.85/1.04  fof(f77,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f45])).
% 2.85/1.04  
% 2.85/1.04  fof(f6,axiom,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f27,plain,(
% 2.85/1.04    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f6])).
% 2.85/1.04  
% 2.85/1.04  fof(f28,plain,(
% 2.85/1.04    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(flattening,[],[f27])).
% 2.85/1.04  
% 2.85/1.04  fof(f63,plain,(
% 2.85/1.04    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f28])).
% 2.85/1.04  
% 2.85/1.04  fof(f7,axiom,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X0,X1) = k6_relat_1(k1_relat_1(X0)) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f29,plain,(
% 2.85/1.04    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 | (k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0)) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f7])).
% 2.85/1.04  
% 2.85/1.04  fof(f30,plain,(
% 2.85/1.04    ! [X0] : (! [X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0)) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(flattening,[],[f29])).
% 2.85/1.04  
% 2.85/1.04  fof(f64,plain,(
% 2.85/1.04    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0)) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f30])).
% 2.85/1.04  
% 2.85/1.04  fof(f60,plain,(
% 2.85/1.04    ( ! [X0] : (k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f26])).
% 2.85/1.04  
% 2.85/1.04  fof(f3,axiom,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f21,plain,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f3])).
% 2.85/1.04  
% 2.85/1.04  fof(f22,plain,(
% 2.85/1.04    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(flattening,[],[f21])).
% 2.85/1.04  
% 2.85/1.04  fof(f56,plain,(
% 2.85/1.04    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f22])).
% 2.85/1.04  
% 2.85/1.04  fof(f55,plain,(
% 2.85/1.04    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f22])).
% 2.85/1.04  
% 2.85/1.04  fof(f4,axiom,(
% 2.85/1.04    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f23,plain,(
% 2.85/1.04    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.85/1.04    inference(ennf_transformation,[],[f4])).
% 2.85/1.04  
% 2.85/1.04  fof(f24,plain,(
% 2.85/1.04    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.85/1.04    inference(flattening,[],[f23])).
% 2.85/1.04  
% 2.85/1.04  fof(f59,plain,(
% 2.85/1.04    ( ! [X0] : (v2_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f24])).
% 2.85/1.04  
% 2.85/1.04  fof(f73,plain,(
% 2.85/1.04    ( ! [X2,X0,X1] : (v1_funct_2(k2_funct_1(X2),X1,X0) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f40])).
% 2.85/1.04  
% 2.85/1.04  fof(f12,axiom,(
% 2.85/1.04    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => r2_funct_2(X0,X1,X2,X2))),
% 2.85/1.04    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.85/1.04  
% 2.85/1.04  fof(f37,plain,(
% 2.85/1.04    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.85/1.04    inference(ennf_transformation,[],[f12])).
% 2.85/1.04  
% 2.85/1.04  fof(f38,plain,(
% 2.85/1.04    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.85/1.04    inference(flattening,[],[f37])).
% 2.85/1.04  
% 2.85/1.04  fof(f71,plain,(
% 2.85/1.04    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.85/1.04    inference(cnf_transformation,[],[f38])).
% 2.85/1.04  
% 2.85/1.04  fof(f86,plain,(
% 2.85/1.04    ~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)),
% 2.85/1.04    inference(cnf_transformation,[],[f52])).
% 2.85/1.04  
% 2.85/1.04  cnf(c_28,negated_conjecture,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 2.85/1.04      inference(cnf_transformation,[],[f83]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_672,negated_conjecture,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_28]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1154,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_672]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_22,plain,
% 2.85/1.04      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f75]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_33,negated_conjecture,
% 2.85/1.04      ( l1_struct_0(sK0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f78]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_384,plain,
% 2.85/1.04      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 2.85/1.04      inference(resolution_lifted,[status(thm)],[c_22,c_33]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_385,plain,
% 2.85/1.04      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 2.85/1.04      inference(unflattening,[status(thm)],[c_384]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_668,plain,
% 2.85/1.04      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_385]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_31,negated_conjecture,
% 2.85/1.04      ( l1_struct_0(sK1) ),
% 2.85/1.04      inference(cnf_transformation,[],[f80]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_379,plain,
% 2.85/1.04      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 2.85/1.04      inference(resolution_lifted,[status(thm)],[c_22,c_31]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_380,plain,
% 2.85/1.04      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 2.85/1.04      inference(unflattening,[status(thm)],[c_379]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_669,plain,
% 2.85/1.04      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_380]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1176,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1154,c_668,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_14,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | v1_partfun1(X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | v1_xboole_0(X2)
% 2.85/1.04      | ~ v1_funct_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f68]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_23,plain,
% 2.85/1.04      ( v2_struct_0(X0)
% 2.85/1.04      | ~ l1_struct_0(X0)
% 2.85/1.04      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.85/1.04      inference(cnf_transformation,[],[f76]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_32,negated_conjecture,
% 2.85/1.04      ( ~ v2_struct_0(sK1) ),
% 2.85/1.04      inference(cnf_transformation,[],[f79]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_366,plain,
% 2.85/1.04      ( ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK1 != X0 ),
% 2.85/1.04      inference(resolution_lifted,[status(thm)],[c_23,c_32]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_367,plain,
% 2.85/1.04      ( ~ l1_struct_0(sK1) | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.85/1.04      inference(unflattening,[status(thm)],[c_366]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_46,plain,
% 2.85/1.04      ( v2_struct_0(sK1)
% 2.85/1.04      | ~ l1_struct_0(sK1)
% 2.85/1.04      | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_23]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_369,plain,
% 2.85/1.04      ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_367,c_32,c_31,c_46]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_391,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | v1_partfun1(X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | u1_struct_0(sK1) != X2 ),
% 2.85/1.04      inference(resolution_lifted,[status(thm)],[c_14,c_369]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_392,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 2.85/1.04      | v1_partfun1(X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0) ),
% 2.85/1.04      inference(unflattening,[status(thm)],[c_391]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_17,plain,
% 2.85/1.04      ( ~ v1_partfun1(X0,X1)
% 2.85/1.04      | ~ v4_relat_1(X0,X1)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k1_relat_1(X0) = X1 ),
% 2.85/1.04      inference(cnf_transformation,[],[f69]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_488,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 2.85/1.04      | ~ v4_relat_1(X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k1_relat_1(X0) = X1 ),
% 2.85/1.04      inference(resolution,[status(thm)],[c_392,c_17]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_12,plain,
% 2.85/1.04      ( v4_relat_1(X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.85/1.04      inference(cnf_transformation,[],[f65]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_504,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k1_relat_1(X0) = X1 ),
% 2.85/1.04      inference(forward_subsumption_resolution,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_488,c_12]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_666,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,X0_54,u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | k1_relat_1(X0_53) = X0_54 ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_504]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1159,plain,
% 2.85/1.04      ( k1_relat_1(X0_53) = X0_54
% 2.85/1.04      | v1_funct_2(X0_53,X0_54,u1_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_666]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1250,plain,
% 2.85/1.04      ( k1_relat_1(X0_53) = X0_54
% 2.85/1.04      | v1_funct_2(X0_53,X0_54,k2_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,k2_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1159,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1595,plain,
% 2.85/1.04      ( k2_struct_0(sK0) = k1_relat_1(sK2)
% 2.85/1.04      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_1176,c_1250]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_30,negated_conjecture,
% 2.85/1.04      ( v1_funct_1(sK2) ),
% 2.85/1.04      inference(cnf_transformation,[],[f81]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_37,plain,
% 2.85/1.04      ( v1_funct_1(sK2) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_39,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_29,negated_conjecture,
% 2.85/1.04      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 2.85/1.04      inference(cnf_transformation,[],[f82]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_671,negated_conjecture,
% 2.85/1.04      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_29]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1155,plain,
% 2.85/1.04      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_671]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1170,plain,
% 2.85/1.04      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1155,c_668,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_0,plain,
% 2.85/1.04      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.85/1.04      | ~ v1_relat_1(X1)
% 2.85/1.04      | v1_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f53]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_689,plain,
% 2.85/1.04      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(X1_53))
% 2.85/1.04      | ~ v1_relat_1(X1_53)
% 2.85/1.04      | v1_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_0]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1410,plain,
% 2.85/1.04      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.85/1.04      | v1_relat_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(k2_zfmisc_1(X0_54,X1_54)) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_689]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1529,plain,
% 2.85/1.04      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 2.85/1.04      | v1_relat_1(sK2) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_1410]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1530,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_1529]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1,plain,
% 2.85/1.04      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.85/1.04      inference(cnf_transformation,[],[f54]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_688,plain,
% 2.85/1.04      ( v1_relat_1(k2_zfmisc_1(X0_54,X1_54)) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_1]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1567,plain,
% 2.85/1.04      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_688]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1568,plain,
% 2.85/1.04      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_1567]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2285,plain,
% 2.85/1.04      ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_1595,c_37,c_39,c_1170,c_1530,c_1568]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_13,plain,
% 2.85/1.04      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f66]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_679,plain,
% 2.85/1.04      ( ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.85/1.04      | k2_relset_1(X0_54,X1_54,X0_53) = k2_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_13]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1148,plain,
% 2.85/1.04      ( k2_relset_1(X0_54,X1_54,X0_53) = k2_relat_1(X0_53)
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_679]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1588,plain,
% 2.85/1.04      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_1176,c_1148]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_27,negated_conjecture,
% 2.85/1.04      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.85/1.04      inference(cnf_transformation,[],[f84]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_673,negated_conjecture,
% 2.85/1.04      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_27]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1173,plain,
% 2.85/1.04      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_673,c_668,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1651,plain,
% 2.85/1.04      ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_1588,c_1173]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1653,plain,
% 2.85/1.04      ( k2_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_1651,c_1588]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2289,plain,
% 2.85/1.04      ( k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_2285,c_1653]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_19,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.85/1.04      | ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.85/1.04      inference(cnf_transformation,[],[f74]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_678,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.85/1.04      | m1_subset_1(k2_funct_1(X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54)))
% 2.85/1.04      | ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | k2_relset_1(X0_54,X1_54,X0_53) != X1_54 ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_19]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1149,plain,
% 2.85/1.04      ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
% 2.85/1.04      | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_funct_1(X0_53),k1_zfmisc_1(k2_zfmisc_1(X1_54,X0_54))) = iProver_top
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_678]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2730,plain,
% 2.85/1.04      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
% 2.85/1.04      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v2_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_2289,c_1149]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_26,negated_conjecture,
% 2.85/1.04      ( v2_funct_1(sK2) ),
% 2.85/1.04      inference(cnf_transformation,[],[f85]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_40,plain,
% 2.85/1.04      ( v2_funct_1(sK2) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1655,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_1651,c_1176]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2288,plain,
% 2.85/1.04      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_2285,c_1655]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1656,plain,
% 2.85/1.04      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_1651,c_1170]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2290,plain,
% 2.85/1.04      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_2285,c_1656]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3518,plain,
% 2.85/1.04      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_2730,c_37,c_40,c_2288,c_2290]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3524,plain,
% 2.85/1.04      ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_3518,c_1148]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_674,negated_conjecture,
% 2.85/1.04      ( v2_funct_1(sK2) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_26]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1153,plain,
% 2.85/1.04      ( v2_funct_1(sK2) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_674]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_7,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f61]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_684,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | k2_relat_1(k2_funct_1(X0_53)) = k1_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_7]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1143,plain,
% 2.85/1.04      ( k2_relat_1(k2_funct_1(X0_53)) = k1_relat_1(X0_53)
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_684]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1830,plain,
% 2.85/1.04      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_1153,c_1143]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_745,plain,
% 2.85/1.04      ( ~ v2_funct_1(sK2)
% 2.85/1.04      | ~ v1_funct_1(sK2)
% 2.85/1.04      | ~ v1_relat_1(sK2)
% 2.85/1.04      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_684]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2078,plain,
% 2.85/1.04      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_1830,c_30,c_28,c_26,c_745,c_1529,c_1567]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3531,plain,
% 2.85/1.04      ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_3524,c_2078]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_24,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 2.85/1.04      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.85/1.04      inference(cnf_transformation,[],[f77]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_675,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.85/1.04      | ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | k2_relset_1(X0_54,X1_54,X0_53) != X1_54
% 2.85/1.04      | k2_tops_2(X0_54,X1_54,X0_53) = k2_funct_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_24]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1152,plain,
% 2.85/1.04      ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
% 2.85/1.04      | k2_tops_2(X0_54,X1_54,X0_53) = k2_funct_1(X0_53)
% 2.85/1.04      | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_675]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3539,plain,
% 2.85/1.04      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 2.85/1.04      | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_3531,c_1152]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_9,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) ),
% 2.85/1.04      inference(cnf_transformation,[],[f63]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_682,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | k5_relat_1(k2_funct_1(X0_53),X0_53) = k6_relat_1(k2_relat_1(X0_53)) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_9]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1145,plain,
% 2.85/1.04      ( k5_relat_1(k2_funct_1(X0_53),X0_53) = k6_relat_1(k2_relat_1(X0_53))
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_682]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1963,plain,
% 2.85/1.04      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2))
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_1153,c_1145]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_751,plain,
% 2.85/1.04      ( ~ v2_funct_1(sK2)
% 2.85/1.04      | ~ v1_funct_1(sK2)
% 2.85/1.04      | ~ v1_relat_1(sK2)
% 2.85/1.04      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2)) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_682]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2213,plain,
% 2.85/1.04      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_relat_1(k2_relat_1(sK2)) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_1963,c_30,c_28,c_26,c_751,c_1529,c_1567]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_11,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X1)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X1)
% 2.85/1.04      | k5_relat_1(X0,X1) != k6_relat_1(k1_relat_1(X0))
% 2.85/1.04      | k1_relat_1(X1) != k2_relat_1(X0)
% 2.85/1.04      | k2_funct_1(X0) = X1 ),
% 2.85/1.04      inference(cnf_transformation,[],[f64]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_680,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X1_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X1_53)
% 2.85/1.04      | k5_relat_1(X0_53,X1_53) != k6_relat_1(k1_relat_1(X0_53))
% 2.85/1.04      | k1_relat_1(X1_53) != k2_relat_1(X0_53)
% 2.85/1.04      | k2_funct_1(X0_53) = X1_53 ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_11]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1147,plain,
% 2.85/1.04      ( k5_relat_1(X0_53,X1_53) != k6_relat_1(k1_relat_1(X0_53))
% 2.85/1.04      | k1_relat_1(X1_53) != k2_relat_1(X0_53)
% 2.85/1.04      | k2_funct_1(X0_53) = X1_53
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X1_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X1_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2528,plain,
% 2.85/1.04      ( k6_relat_1(k1_relat_1(k2_funct_1(sK2))) != k6_relat_1(k2_relat_1(sK2))
% 2.85/1.04      | k2_relat_1(k2_funct_1(sK2)) != k1_relat_1(sK2)
% 2.85/1.04      | k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.85/1.04      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_2213,c_1147]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_8,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f60]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_683,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | k1_relat_1(k2_funct_1(X0_53)) = k2_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_8]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1144,plain,
% 2.85/1.04      ( k1_relat_1(k2_funct_1(X0_53)) = k2_relat_1(X0_53)
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_683]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1859,plain,
% 2.85/1.04      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_1153,c_1144]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_748,plain,
% 2.85/1.04      ( ~ v2_funct_1(sK2)
% 2.85/1.04      | ~ v1_funct_1(sK2)
% 2.85/1.04      | ~ v1_relat_1(sK2)
% 2.85/1.04      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_683]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2082,plain,
% 2.85/1.04      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_1859,c_30,c_28,c_26,c_748,c_1529,c_1567]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2538,plain,
% 2.85/1.04      ( k6_relat_1(k2_relat_1(sK2)) != k6_relat_1(k2_relat_1(sK2))
% 2.85/1.04      | k1_relat_1(sK2) != k1_relat_1(sK2)
% 2.85/1.04      | k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.85/1.04      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_2528,c_2078,c_2082]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2539,plain,
% 2.85/1.04      ( k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.85/1.04      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(equality_resolution_simp,[status(thm)],[c_2538]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2,plain,
% 2.85/1.04      ( ~ v1_funct_1(X0)
% 2.85/1.04      | v1_funct_1(k2_funct_1(X0))
% 2.85/1.04      | ~ v1_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f56]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_687,plain,
% 2.85/1.04      ( ~ v1_funct_1(X0_53)
% 2.85/1.04      | v1_funct_1(k2_funct_1(X0_53))
% 2.85/1.04      | ~ v1_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_2]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_735,plain,
% 2.85/1.04      ( v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(X0_53)) = iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_687]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_737,plain,
% 2.85/1.04      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_735]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3,plain,
% 2.85/1.04      ( ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0)
% 2.85/1.04      | v1_relat_1(k2_funct_1(X0)) ),
% 2.85/1.04      inference(cnf_transformation,[],[f55]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_686,plain,
% 2.85/1.04      ( ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53)
% 2.85/1.04      | v1_relat_1(k2_funct_1(X0_53)) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_3]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_738,plain,
% 2.85/1.04      ( v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_funct_1(X0_53)) = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_686]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_740,plain,
% 2.85/1.04      ( v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_738]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_4,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0)
% 2.85/1.04      | v2_funct_1(k2_funct_1(X0))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_relat_1(X0) ),
% 2.85/1.04      inference(cnf_transformation,[],[f59]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_685,plain,
% 2.85/1.04      ( ~ v2_funct_1(X0_53)
% 2.85/1.04      | v2_funct_1(k2_funct_1(X0_53))
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_relat_1(X0_53) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_4]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_741,plain,
% 2.85/1.04      ( v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v2_funct_1(k2_funct_1(X0_53)) = iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_relat_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_685]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_743,plain,
% 2.85/1.04      ( v2_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.85/1.04      | v2_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_relat_1(sK2) != iProver_top ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_741]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2865,plain,
% 2.85/1.04      ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_2539,c_37,c_39,c_40,c_737,c_740,c_743,c_1530,c_1568]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3552,plain,
% 2.85/1.04      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2
% 2.85/1.04      | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_3539,c_2865]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_20,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | v1_funct_2(k2_funct_1(X0),X2,X1)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | ~ v2_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.85/1.04      inference(cnf_transformation,[],[f73]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_677,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,X0_54,X1_54)
% 2.85/1.04      | v1_funct_2(k2_funct_1(X0_53),X1_54,X0_54)
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.85/1.04      | ~ v2_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | k2_relset_1(X0_54,X1_54,X0_53) != X1_54 ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_20]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1150,plain,
% 2.85/1.04      ( k2_relset_1(X0_54,X1_54,X0_53) != X1_54
% 2.85/1.04      | v1_funct_2(X0_53,X0_54,X1_54) != iProver_top
% 2.85/1.04      | v1_funct_2(k2_funct_1(X0_53),X1_54,X0_54) = iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
% 2.85/1.04      | v2_funct_1(X0_53) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_677]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2732,plain,
% 2.85/1.04      ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) = iProver_top
% 2.85/1.04      | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v2_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_2289,c_1150]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3663,plain,
% 2.85/1.04      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_3552,c_37,c_39,c_40,c_737,c_743,c_1530,c_1568,c_2288,
% 2.85/1.04                 c_2290,c_2730,c_2732]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2731,plain,
% 2.85/1.04      ( k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_funct_1(sK2)
% 2.85/1.04      | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v2_funct_1(sK2) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top ),
% 2.85/1.04      inference(superposition,[status(thm)],[c_2289,c_1152]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2962,plain,
% 2.85/1.04      ( k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_funct_1(sK2) ),
% 2.85/1.04      inference(global_propositional_subsumption,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_2731,c_37,c_40,c_2288,c_2290]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_18,plain,
% 2.85/1.04      ( r2_funct_2(X0,X1,X2,X2)
% 2.85/1.04      | ~ v1_funct_2(X2,X0,X1)
% 2.85/1.04      | ~ v1_funct_2(X3,X0,X1)
% 2.85/1.04      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.85/1.04      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.85/1.04      | ~ v1_funct_1(X2)
% 2.85/1.04      | ~ v1_funct_1(X3) ),
% 2.85/1.04      inference(cnf_transformation,[],[f71]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_25,negated_conjecture,
% 2.85/1.04      ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
% 2.85/1.04      inference(cnf_transformation,[],[f86]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_414,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,X1,X2)
% 2.85/1.04      | ~ v1_funct_2(X3,X1,X2)
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(X3)
% 2.85/1.04      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
% 2.85/1.04      | u1_struct_0(sK1) != X2
% 2.85/1.04      | u1_struct_0(sK0) != X1
% 2.85/1.04      | sK2 != X0 ),
% 2.85/1.04      inference(resolution_lifted,[status(thm)],[c_18,c_25]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_415,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0)
% 2.85/1.04      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.85/1.04      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.85/1.04      inference(unflattening,[status(thm)],[c_414]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_667,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.85/1.04      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.85/1.04      inference(subtyping,[status(esa)],[c_415]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_691,plain,
% 2.85/1.04      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.85/1.04      | sP0_iProver_split
% 2.85/1.04      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.85/1.04      inference(splitting,
% 2.85/1.04                [splitting(split),new_symbols(definition,[])],
% 2.85/1.04                [c_667]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1157,plain,
% 2.85/1.04      ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.85/1.04      | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
% 2.85/1.04      | sP0_iProver_split = iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_691]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1325,plain,
% 2.85/1.04      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 2.85/1.04      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
% 2.85/1.04      | sP0_iProver_split = iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1157,c_668,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_690,plain,
% 2.85/1.04      ( ~ v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.85/1.04      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.85/1.04      | ~ v1_funct_1(X0_53)
% 2.85/1.04      | ~ sP0_iProver_split ),
% 2.85/1.04      inference(splitting,
% 2.85/1.04                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.85/1.04                [c_667]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1158,plain,
% 2.85/1.04      ( v1_funct_2(X0_53,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | sP0_iProver_split != iProver_top ),
% 2.85/1.04      inference(predicate_to_equality,[status(thm)],[c_690]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1241,plain,
% 2.85/1.04      ( v1_funct_2(X0_53,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(X0_53) != iProver_top
% 2.85/1.04      | sP0_iProver_split != iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1158,c_668,c_669]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_1331,plain,
% 2.85/1.04      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 2.85/1.04      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
% 2.85/1.04      inference(forward_subsumption_resolution,
% 2.85/1.04                [status(thm)],
% 2.85/1.04                [c_1325,c_1241]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2396,plain,
% 2.85/1.04      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)) != sK2
% 2.85/1.04      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_tops_2(k1_relat_1(sK2),k2_relat_1(sK2),sK2))) != iProver_top ),
% 2.85/1.04      inference(light_normalisation,[status(thm)],[c_1331,c_1651,c_2285]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_2965,plain,
% 2.85/1.04      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
% 2.85/1.04      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_2962,c_2396]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_3666,plain,
% 2.85/1.04      ( sK2 != sK2
% 2.85/1.04      | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.85/1.04      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.85/1.04      | v1_funct_1(sK2) != iProver_top ),
% 2.85/1.04      inference(demodulation,[status(thm)],[c_3663,c_2965]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_693,plain,( X0_53 = X0_53 ),theory(equality) ).
% 2.85/1.04  
% 2.85/1.04  cnf(c_727,plain,
% 2.85/1.04      ( sK2 = sK2 ),
% 2.85/1.04      inference(instantiation,[status(thm)],[c_693]) ).
% 2.85/1.04  
% 2.85/1.04  cnf(contradiction,plain,
% 2.85/1.04      ( $false ),
% 2.85/1.04      inference(minisat,[status(thm)],[c_3666,c_2290,c_2288,c_727,c_37]) ).
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  % SZS output end CNFRefutation for theBenchmark.p
% 2.85/1.04  
% 2.85/1.04  ------                               Statistics
% 2.85/1.04  
% 2.85/1.04  ------ General
% 2.85/1.04  
% 2.85/1.04  abstr_ref_over_cycles:                  0
% 2.85/1.04  abstr_ref_under_cycles:                 0
% 2.85/1.04  gc_basic_clause_elim:                   0
% 2.85/1.04  forced_gc_time:                         0
% 2.85/1.04  parsing_time:                           0.009
% 2.85/1.04  unif_index_cands_time:                  0.
% 2.85/1.04  unif_index_add_time:                    0.
% 2.85/1.04  orderings_time:                         0.
% 2.85/1.04  out_proof_time:                         0.02
% 2.85/1.04  total_time:                             0.193
% 2.85/1.04  num_of_symbols:                         59
% 2.85/1.04  num_of_terms:                           3371
% 2.85/1.04  
% 2.85/1.04  ------ Preprocessing
% 2.85/1.04  
% 2.85/1.04  num_of_splits:                          1
% 2.85/1.04  num_of_split_atoms:                     1
% 2.85/1.04  num_of_reused_defs:                     0
% 2.85/1.04  num_eq_ax_congr_red:                    7
% 2.85/1.04  num_of_sem_filtered_clauses:            2
% 2.85/1.04  num_of_subtypes:                        5
% 2.85/1.04  monotx_restored_types:                  1
% 2.85/1.04  sat_num_of_epr_types:                   0
% 2.85/1.04  sat_num_of_non_cyclic_types:            0
% 2.85/1.04  sat_guarded_non_collapsed_types:        1
% 2.85/1.04  num_pure_diseq_elim:                    0
% 2.85/1.04  simp_replaced_by:                       0
% 2.85/1.04  res_preprocessed:                       145
% 2.85/1.04  prep_upred:                             0
% 2.85/1.04  prep_unflattend:                        11
% 2.85/1.04  smt_new_axioms:                         0
% 2.85/1.04  pred_elim_cands:                        5
% 2.85/1.04  pred_elim:                              6
% 2.85/1.04  pred_elim_cl:                           7
% 2.85/1.04  pred_elim_cycles:                       9
% 2.85/1.04  merged_defs:                            0
% 2.85/1.04  merged_defs_ncl:                        0
% 2.85/1.04  bin_hyper_res:                          0
% 2.85/1.04  prep_cycles:                            4
% 2.85/1.04  pred_elim_time:                         0.006
% 2.85/1.04  splitting_time:                         0.
% 2.85/1.04  sem_filter_time:                        0.
% 2.85/1.04  monotx_time:                            0.
% 2.85/1.04  subtype_inf_time:                       0.001
% 2.85/1.04  
% 2.85/1.04  ------ Problem properties
% 2.85/1.04  
% 2.85/1.04  clauses:                                25
% 2.85/1.04  conjectures:                            5
% 2.85/1.04  epr:                                    2
% 2.85/1.04  horn:                                   25
% 2.85/1.04  ground:                                 8
% 2.85/1.04  unary:                                  8
% 2.85/1.04  binary:                                 1
% 2.85/1.04  lits:                                   85
% 2.85/1.04  lits_eq:                                18
% 2.85/1.04  fd_pure:                                0
% 2.85/1.04  fd_pseudo:                              0
% 2.85/1.04  fd_cond:                                0
% 2.85/1.04  fd_pseudo_cond:                         2
% 2.85/1.04  ac_symbols:                             0
% 2.85/1.04  
% 2.85/1.04  ------ Propositional Solver
% 2.85/1.04  
% 2.85/1.04  prop_solver_calls:                      29
% 2.85/1.04  prop_fast_solver_calls:                 1175
% 2.85/1.04  smt_solver_calls:                       0
% 2.85/1.04  smt_fast_solver_calls:                  0
% 2.85/1.04  prop_num_of_clauses:                    1290
% 2.85/1.04  prop_preprocess_simplified:             5100
% 2.85/1.04  prop_fo_subsumed:                       58
% 2.85/1.04  prop_solver_time:                       0.
% 2.85/1.04  smt_solver_time:                        0.
% 2.85/1.04  smt_fast_solver_time:                   0.
% 2.85/1.04  prop_fast_solver_time:                  0.
% 2.85/1.04  prop_unsat_core_time:                   0.
% 2.85/1.04  
% 2.85/1.04  ------ QBF
% 2.85/1.04  
% 2.85/1.04  qbf_q_res:                              0
% 2.85/1.04  qbf_num_tautologies:                    0
% 2.85/1.04  qbf_prep_cycles:                        0
% 2.85/1.04  
% 2.85/1.04  ------ BMC1
% 2.85/1.04  
% 2.85/1.04  bmc1_current_bound:                     -1
% 2.85/1.04  bmc1_last_solved_bound:                 -1
% 2.85/1.04  bmc1_unsat_core_size:                   -1
% 2.85/1.04  bmc1_unsat_core_parents_size:           -1
% 2.85/1.04  bmc1_merge_next_fun:                    0
% 2.85/1.04  bmc1_unsat_core_clauses_time:           0.
% 2.85/1.04  
% 2.85/1.04  ------ Instantiation
% 2.85/1.04  
% 2.85/1.04  inst_num_of_clauses:                    462
% 2.85/1.04  inst_num_in_passive:                    114
% 2.85/1.04  inst_num_in_active:                     258
% 2.85/1.04  inst_num_in_unprocessed:                90
% 2.85/1.04  inst_num_of_loops:                      280
% 2.85/1.04  inst_num_of_learning_restarts:          0
% 2.85/1.04  inst_num_moves_active_passive:          18
% 2.85/1.04  inst_lit_activity:                      0
% 2.85/1.04  inst_lit_activity_moves:                0
% 2.85/1.04  inst_num_tautologies:                   0
% 2.85/1.04  inst_num_prop_implied:                  0
% 2.85/1.04  inst_num_existing_simplified:           0
% 2.85/1.04  inst_num_eq_res_simplified:             0
% 2.85/1.04  inst_num_child_elim:                    0
% 2.85/1.04  inst_num_of_dismatching_blockings:      116
% 2.85/1.04  inst_num_of_non_proper_insts:           448
% 2.85/1.04  inst_num_of_duplicates:                 0
% 2.85/1.04  inst_inst_num_from_inst_to_res:         0
% 2.85/1.04  inst_dismatching_checking_time:         0.
% 2.85/1.04  
% 2.85/1.04  ------ Resolution
% 2.85/1.04  
% 2.85/1.04  res_num_of_clauses:                     0
% 2.85/1.04  res_num_in_passive:                     0
% 2.85/1.04  res_num_in_active:                      0
% 2.85/1.04  res_num_of_loops:                       149
% 2.85/1.04  res_forward_subset_subsumed:            51
% 2.85/1.04  res_backward_subset_subsumed:           0
% 2.85/1.04  res_forward_subsumed:                   0
% 2.85/1.04  res_backward_subsumed:                  0
% 2.85/1.04  res_forward_subsumption_resolution:     1
% 2.85/1.04  res_backward_subsumption_resolution:    0
% 2.85/1.04  res_clause_to_clause_subsumption:       150
% 2.85/1.04  res_orphan_elimination:                 0
% 2.85/1.04  res_tautology_del:                      58
% 2.85/1.04  res_num_eq_res_simplified:              0
% 2.85/1.04  res_num_sel_changes:                    0
% 2.85/1.04  res_moves_from_active_to_pass:          0
% 2.85/1.04  
% 2.85/1.04  ------ Superposition
% 2.85/1.04  
% 2.85/1.04  sup_time_total:                         0.
% 2.85/1.04  sup_time_generating:                    0.
% 2.85/1.04  sup_time_sim_full:                      0.
% 2.85/1.04  sup_time_sim_immed:                     0.
% 2.85/1.04  
% 2.85/1.04  sup_num_of_clauses:                     49
% 2.85/1.04  sup_num_in_active:                      42
% 2.85/1.04  sup_num_in_passive:                     7
% 2.85/1.04  sup_num_of_loops:                       54
% 2.85/1.04  sup_fw_superposition:                   23
% 2.85/1.04  sup_bw_superposition:                   18
% 2.85/1.04  sup_immediate_simplified:               15
% 2.85/1.04  sup_given_eliminated:                   0
% 2.85/1.04  comparisons_done:                       0
% 2.85/1.04  comparisons_avoided:                    0
% 2.85/1.04  
% 2.85/1.04  ------ Simplifications
% 2.85/1.04  
% 2.85/1.04  
% 2.85/1.04  sim_fw_subset_subsumed:                 4
% 2.85/1.04  sim_bw_subset_subsumed:                 0
% 2.85/1.04  sim_fw_subsumed:                        3
% 2.85/1.04  sim_bw_subsumed:                        0
% 2.85/1.04  sim_fw_subsumption_res:                 1
% 2.85/1.04  sim_bw_subsumption_res:                 0
% 2.85/1.04  sim_tautology_del:                      0
% 2.85/1.04  sim_eq_tautology_del:                   7
% 2.85/1.04  sim_eq_res_simp:                        1
% 2.85/1.04  sim_fw_demodulated:                     0
% 2.85/1.04  sim_bw_demodulated:                     12
% 2.85/1.04  sim_light_normalised:                   18
% 2.85/1.04  sim_joinable_taut:                      0
% 2.85/1.04  sim_joinable_simp:                      0
% 2.85/1.04  sim_ac_normalised:                      0
% 2.85/1.04  sim_smt_subsumption:                    0
% 2.85/1.04  
%------------------------------------------------------------------------------
