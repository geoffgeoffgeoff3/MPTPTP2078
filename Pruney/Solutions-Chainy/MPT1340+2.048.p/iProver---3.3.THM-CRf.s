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
% DateTime   : Thu Dec  3 12:17:31 EST 2020

% Result     : Theorem 3.68s
% Output     : CNFRefutation 3.68s
% Verified   : 
% Statistics : Number of formulae       :  225 (3905 expanded)
%              Number of clauses        :  140 (1120 expanded)
%              Number of leaves         :   22 (1114 expanded)
%              Depth                    :   23
%              Number of atoms          :  849 (25318 expanded)
%              Number of equality atoms :  307 (4011 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f25,conjecture,(
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

fof(f26,negated_conjecture,(
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
    inference(negated_conjecture,[],[f25])).

fof(f66,plain,(
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
    inference(ennf_transformation,[],[f26])).

fof(f67,plain,(
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
    inference(flattening,[],[f66])).

fof(f73,plain,(
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

fof(f72,plain,(
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

fof(f71,plain,
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

fof(f74,plain,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    & v2_funct_1(sK2)
    & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & ~ v2_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f67,f73,f72,f71])).

fof(f119,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f74])).

fof(f22,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f111,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f61])).

fof(f116,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f74])).

fof(f114,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f74])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f78,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f79,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f51])).

fof(f101,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f52])).

fof(f23,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f63,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f62])).

fof(f112,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f63])).

fof(f115,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f74])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f53])).

fof(f70,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f54])).

fof(f102,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f70])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f15])).

fof(f49,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f27])).

fof(f98,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f117,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f74])).

fof(f118,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f74])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f99,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f120,plain,(
    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f74])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => r2_funct_2(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f56,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f55])).

fof(f104,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f56])).

fof(f122,plain,(
    ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f74])).

fof(f24,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f65,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f64])).

fof(f113,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f65])).

fof(f121,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f74])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f34,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f33])).

fof(f84,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f83,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f8,axiom,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f36,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f35])).

fof(f87,plain,(
    ! [X0] :
      ( v2_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f21,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f60,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f59])).

fof(f110,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f60])).

fof(f109,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f60])).

fof(f20,axiom,(
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

fof(f57,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f58,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f57])).

fof(f107,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f106,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_funct_1(X2),X1,X0)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f12,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
          & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f44,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f43])).

fof(f94,plain,(
    ! [X0] :
      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f93,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f13,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f46,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f45])).

fof(f95,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f14,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0))
              & k2_relat_1(X1) = k1_relat_1(X0)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0))
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f48,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0))
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f47])).

fof(f97,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0))
      | k2_relat_1(X1) != k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_42,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f119])).

cnf(c_1493,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_42])).

cnf(c_36,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_45,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f116])).

cnf(c_522,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_36,c_45])).

cnf(c_523,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_522])).

cnf(c_47,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f114])).

cnf(c_527,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_36,c_47])).

cnf(c_528,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_527])).

cnf(c_1540,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1493,c_523,c_528])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1519,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2391,plain,
    ( v1_relat_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1540,c_1519])).

cnf(c_53,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_42])).

cnf(c_1889,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_2243,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1889])).

cnf(c_2244,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2243])).

cnf(c_4,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_2340,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_2341,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2340])).

cnf(c_2776,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2391,c_53,c_2244,c_2341])).

cnf(c_25,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_37,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_46,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f115])).

cnf(c_509,plain,
    ( ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_37,c_46])).

cnf(c_510,plain,
    ( ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_509])).

cnf(c_60,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_37])).

cnf(c_512,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_510,c_46,c_45,c_60])).

cnf(c_534,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | u1_struct_0(sK1) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_512])).

cnf(c_535,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0) ),
    inference(unflattening,[status(thm)],[c_534])).

cnf(c_28,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f102])).

cnf(c_631,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | ~ v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_535,c_28])).

cnf(c_23,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_647,plain,
    ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_631,c_23])).

cnf(c_1488,plain,
    ( k1_relat_1(X0) = X1
    | v1_funct_2(X0,X1,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_647])).

cnf(c_1654,plain,
    ( k1_relat_1(X0) = X1
    | v1_funct_2(X0,X1,k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1488,c_523])).

cnf(c_2210,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1540,c_1654])).

cnf(c_44,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_51,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_44])).

cnf(c_43,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f118])).

cnf(c_1492,plain,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_43])).

cnf(c_1534,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1492,c_523,c_528])).

cnf(c_2261,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2210,c_51,c_1534])).

cnf(c_2783,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_2776,c_2261])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_1501,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2279,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1540,c_1501])).

cnf(c_41,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f120])).

cnf(c_1537,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_41,c_523,c_528])).

cnf(c_2481,plain,
    ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_2279,c_1537])).

cnf(c_29,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_39,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f122])).

cnf(c_557,plain,
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
    inference(resolution_lifted,[status(thm)],[c_29,c_39])).

cnf(c_558,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_557])).

cnf(c_886,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sP0_iProver_split
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_558])).

cnf(c_1489,plain,
    ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_886])).

cnf(c_1785,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1489,c_523,c_528])).

cnf(c_885,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_558])).

cnf(c_1490,plain,
    ( v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_885])).

cnf(c_1645,plain,
    ( v1_funct_2(X0,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1490,c_523,c_528])).

cnf(c_1791,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1785,c_1645])).

cnf(c_38,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f113])).

cnf(c_1495,plain,
    ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
    | k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v2_funct_1(X2) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_2000,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1537,c_1495])).

cnf(c_40,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f121])).

cnf(c_54,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_2234,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2000,c_51,c_54,c_1540,c_1534])).

cnf(c_2268,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1791,c_2234])).

cnf(c_2485,plain,
    ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2481,c_2268])).

cnf(c_4928,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2783,c_2485])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1883,plain,
    ( v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1884,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1883])).

cnf(c_9,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1886,plain,
    ( ~ v1_funct_1(sK2)
    | v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1887,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1886])).

cnf(c_10,plain,
    ( ~ v2_funct_1(X0)
    | v2_funct_1(k2_funct_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1899,plain,
    ( v2_funct_1(k2_funct_1(sK2))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_33,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f110])).

cnf(c_1933,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(c_34,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f109])).

cnf(c_1936,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_34])).

cnf(c_2034,plain,
    ( v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_2040,plain,
    ( v1_funct_1(k2_funct_1(k2_funct_1(sK2))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2034])).

cnf(c_2151,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
    | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_24])).

cnf(c_30,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f107])).

cnf(c_2019,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1 ),
    inference(instantiation,[status(thm)],[c_30])).

cnf(c_2551,plain,
    ( ~ v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2))))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2019])).

cnf(c_31,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_funct_1(X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f106])).

cnf(c_2014,plain,
    ( v1_funct_2(k2_funct_1(sK2),X0,X1)
    | ~ v1_funct_2(sK2,X1,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X1,X0,sK2) != X0 ),
    inference(instantiation,[status(thm)],[c_31])).

cnf(c_2559,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2))
    | ~ v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2014])).

cnf(c_2084,plain,
    ( ~ v1_funct_2(k2_funct_1(sK2),X0,X1)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v2_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_tops_2(X0,X1,k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | k2_relset_1(X0,X1,k2_funct_1(sK2)) != X1 ),
    inference(instantiation,[status(thm)],[c_38])).

cnf(c_3775,plain,
    ( ~ v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2))))
    | ~ v2_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2084])).

cnf(c_1494,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_18,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1506,plain,
    ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3501,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1494,c_1506])).

cnf(c_1924,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_3708,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3501,c_44,c_42,c_40,c_1924,c_2243,c_2340])).

cnf(c_1497,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_3711,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3708,c_1497])).

cnf(c_19,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1505,plain,
    ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3220,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1494,c_1505])).

cnf(c_1927,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_3525,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3220,c_44,c_42,c_40,c_1927,c_2243,c_2340])).

cnf(c_3723,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3711,c_3525])).

cnf(c_1934,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1933])).

cnf(c_1937,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1936])).

cnf(c_2555,plain,
    ( k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2)
    | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2551])).

cnf(c_3816,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3723,c_44,c_51,c_42,c_53,c_54,c_1933,c_1934,c_1937,c_2151,c_2243,c_2244,c_2340,c_2341,c_2555])).

cnf(c_3822,plain,
    ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_3816,c_1501])).

cnf(c_3824,plain,
    ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_3822,c_3708])).

cnf(c_898,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_2634,plain,
    ( v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
    | X0 != k2_funct_1(k2_funct_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_898])).

cnf(c_5962,plain,
    ( v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)))
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
    | k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_funct_1(k2_funct_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_2634])).

cnf(c_5966,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_funct_1(k2_funct_1(sK2))
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) = iProver_top
    | v1_funct_1(k2_funct_1(k2_funct_1(sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5962])).

cnf(c_3987,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3824,c_1495])).

cnf(c_11300,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3987,c_44,c_42,c_40,c_1883,c_1899,c_1933,c_1936,c_2151,c_2243,c_2340,c_2551,c_2559,c_3775,c_3824])).

cnf(c_21,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1503,plain,
    ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4191,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2))
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1494,c_1503])).

cnf(c_1947,plain,
    ( ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_4575,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4191,c_44,c_42,c_40,c_1947,c_2243,c_2340])).

cnf(c_22,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0))
    | k2_funct_1(X0) = X1
    | k1_relat_1(X0) != k2_relat_1(X1) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_1502,plain,
    ( k5_relat_1(X0,X1) != k6_relat_1(k2_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X1) != k2_relat_1(X0)
    | v2_funct_1(X1) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_5916,plain,
    ( k6_relat_1(k2_relat_1(k2_funct_1(sK2))) != k6_relat_1(k1_relat_1(sK2))
    | k2_funct_1(k2_funct_1(sK2)) = sK2
    | k1_relat_1(k2_funct_1(sK2)) != k2_relat_1(sK2)
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4575,c_1502])).

cnf(c_5942,plain,
    ( k6_relat_1(k1_relat_1(sK2)) != k6_relat_1(k1_relat_1(sK2))
    | k2_funct_1(k2_funct_1(sK2)) = sK2
    | k2_relat_1(sK2) != k2_relat_1(sK2)
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5916,c_3525,c_3708])).

cnf(c_5943,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_5942])).

cnf(c_1900,plain,
    ( v2_funct_1(k2_funct_1(sK2)) = iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1899])).

cnf(c_11015,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5943,c_51,c_53,c_54,c_1884,c_1887,c_1900,c_2244,c_2341])).

cnf(c_11302,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_11300,c_11015])).

cnf(c_13256,plain,
    ( m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4928,c_44,c_51,c_42,c_53,c_40,c_1883,c_1884,c_1887,c_1899,c_1933,c_1936,c_2040,c_2151,c_2243,c_2244,c_2340,c_2341,c_2551,c_2559,c_3775,c_3824,c_5966,c_11302])).

cnf(c_13257,plain,
    ( v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top ),
    inference(renaming,[status(thm)],[c_13256])).

cnf(c_13260,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_13257,c_11302])).

cnf(c_2489,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2481,c_1540])).

cnf(c_4929,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2783,c_2489])).

cnf(c_2490,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2481,c_1534])).

cnf(c_4932,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2783,c_2490])).

cnf(c_13263,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_13260,c_4929,c_4932])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n012.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:52:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.68/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.68/0.99  
% 3.68/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.68/0.99  
% 3.68/0.99  ------  iProver source info
% 3.68/0.99  
% 3.68/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.68/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.68/0.99  git: non_committed_changes: false
% 3.68/0.99  git: last_make_outside_of_git: false
% 3.68/0.99  
% 3.68/0.99  ------ 
% 3.68/0.99  
% 3.68/0.99  ------ Input Options
% 3.68/0.99  
% 3.68/0.99  --out_options                           all
% 3.68/0.99  --tptp_safe_out                         true
% 3.68/0.99  --problem_path                          ""
% 3.68/0.99  --include_path                          ""
% 3.68/0.99  --clausifier                            res/vclausify_rel
% 3.68/0.99  --clausifier_options                    --mode clausify
% 3.68/0.99  --stdin                                 false
% 3.68/0.99  --stats_out                             all
% 3.68/0.99  
% 3.68/0.99  ------ General Options
% 3.68/0.99  
% 3.68/0.99  --fof                                   false
% 3.68/0.99  --time_out_real                         305.
% 3.68/0.99  --time_out_virtual                      -1.
% 3.68/0.99  --symbol_type_check                     false
% 3.68/0.99  --clausify_out                          false
% 3.68/0.99  --sig_cnt_out                           false
% 3.68/0.99  --trig_cnt_out                          false
% 3.68/0.99  --trig_cnt_out_tolerance                1.
% 3.68/0.99  --trig_cnt_out_sk_spl                   false
% 3.68/0.99  --abstr_cl_out                          false
% 3.68/0.99  
% 3.68/0.99  ------ Global Options
% 3.68/0.99  
% 3.68/0.99  --schedule                              default
% 3.68/0.99  --add_important_lit                     false
% 3.68/0.99  --prop_solver_per_cl                    1000
% 3.68/0.99  --min_unsat_core                        false
% 3.68/0.99  --soft_assumptions                      false
% 3.68/0.99  --soft_lemma_size                       3
% 3.68/0.99  --prop_impl_unit_size                   0
% 3.68/0.99  --prop_impl_unit                        []
% 3.68/0.99  --share_sel_clauses                     true
% 3.68/0.99  --reset_solvers                         false
% 3.68/0.99  --bc_imp_inh                            [conj_cone]
% 3.68/0.99  --conj_cone_tolerance                   3.
% 3.68/0.99  --extra_neg_conj                        none
% 3.68/0.99  --large_theory_mode                     true
% 3.68/0.99  --prolific_symb_bound                   200
% 3.68/0.99  --lt_threshold                          2000
% 3.68/0.99  --clause_weak_htbl                      true
% 3.68/0.99  --gc_record_bc_elim                     false
% 3.68/0.99  
% 3.68/0.99  ------ Preprocessing Options
% 3.68/0.99  
% 3.68/0.99  --preprocessing_flag                    true
% 3.68/0.99  --time_out_prep_mult                    0.1
% 3.68/0.99  --splitting_mode                        input
% 3.68/0.99  --splitting_grd                         true
% 3.68/0.99  --splitting_cvd                         false
% 3.68/0.99  --splitting_cvd_svl                     false
% 3.68/0.99  --splitting_nvd                         32
% 3.68/0.99  --sub_typing                            true
% 3.68/0.99  --prep_gs_sim                           true
% 3.68/0.99  --prep_unflatten                        true
% 3.68/0.99  --prep_res_sim                          true
% 3.68/0.99  --prep_upred                            true
% 3.68/0.99  --prep_sem_filter                       exhaustive
% 3.68/0.99  --prep_sem_filter_out                   false
% 3.68/0.99  --pred_elim                             true
% 3.68/0.99  --res_sim_input                         true
% 3.68/0.99  --eq_ax_congr_red                       true
% 3.68/0.99  --pure_diseq_elim                       true
% 3.68/0.99  --brand_transform                       false
% 3.68/0.99  --non_eq_to_eq                          false
% 3.68/0.99  --prep_def_merge                        true
% 3.68/0.99  --prep_def_merge_prop_impl              false
% 3.68/0.99  --prep_def_merge_mbd                    true
% 3.68/0.99  --prep_def_merge_tr_red                 false
% 3.68/0.99  --prep_def_merge_tr_cl                  false
% 3.68/0.99  --smt_preprocessing                     true
% 3.68/0.99  --smt_ac_axioms                         fast
% 3.68/0.99  --preprocessed_out                      false
% 3.68/0.99  --preprocessed_stats                    false
% 3.68/0.99  
% 3.68/0.99  ------ Abstraction refinement Options
% 3.68/0.99  
% 3.68/0.99  --abstr_ref                             []
% 3.68/0.99  --abstr_ref_prep                        false
% 3.68/0.99  --abstr_ref_until_sat                   false
% 3.68/0.99  --abstr_ref_sig_restrict                funpre
% 3.68/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.68/0.99  --abstr_ref_under                       []
% 3.68/0.99  
% 3.68/0.99  ------ SAT Options
% 3.68/0.99  
% 3.68/0.99  --sat_mode                              false
% 3.68/0.99  --sat_fm_restart_options                ""
% 3.68/0.99  --sat_gr_def                            false
% 3.68/0.99  --sat_epr_types                         true
% 3.68/0.99  --sat_non_cyclic_types                  false
% 3.68/0.99  --sat_finite_models                     false
% 3.68/0.99  --sat_fm_lemmas                         false
% 3.68/0.99  --sat_fm_prep                           false
% 3.68/0.99  --sat_fm_uc_incr                        true
% 3.68/0.99  --sat_out_model                         small
% 3.68/0.99  --sat_out_clauses                       false
% 3.68/0.99  
% 3.68/0.99  ------ QBF Options
% 3.68/0.99  
% 3.68/0.99  --qbf_mode                              false
% 3.68/0.99  --qbf_elim_univ                         false
% 3.68/0.99  --qbf_dom_inst                          none
% 3.68/0.99  --qbf_dom_pre_inst                      false
% 3.68/0.99  --qbf_sk_in                             false
% 3.68/0.99  --qbf_pred_elim                         true
% 3.68/0.99  --qbf_split                             512
% 3.68/0.99  
% 3.68/0.99  ------ BMC1 Options
% 3.68/0.99  
% 3.68/0.99  --bmc1_incremental                      false
% 3.68/0.99  --bmc1_axioms                           reachable_all
% 3.68/0.99  --bmc1_min_bound                        0
% 3.68/0.99  --bmc1_max_bound                        -1
% 3.68/0.99  --bmc1_max_bound_default                -1
% 3.68/0.99  --bmc1_symbol_reachability              true
% 3.68/0.99  --bmc1_property_lemmas                  false
% 3.68/0.99  --bmc1_k_induction                      false
% 3.68/0.99  --bmc1_non_equiv_states                 false
% 3.68/0.99  --bmc1_deadlock                         false
% 3.68/0.99  --bmc1_ucm                              false
% 3.68/0.99  --bmc1_add_unsat_core                   none
% 3.68/0.99  --bmc1_unsat_core_children              false
% 3.68/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.68/0.99  --bmc1_out_stat                         full
% 3.68/0.99  --bmc1_ground_init                      false
% 3.68/0.99  --bmc1_pre_inst_next_state              false
% 3.68/0.99  --bmc1_pre_inst_state                   false
% 3.68/0.99  --bmc1_pre_inst_reach_state             false
% 3.68/0.99  --bmc1_out_unsat_core                   false
% 3.68/0.99  --bmc1_aig_witness_out                  false
% 3.68/0.99  --bmc1_verbose                          false
% 3.68/0.99  --bmc1_dump_clauses_tptp                false
% 3.68/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.68/0.99  --bmc1_dump_file                        -
% 3.68/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.68/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.68/0.99  --bmc1_ucm_extend_mode                  1
% 3.68/0.99  --bmc1_ucm_init_mode                    2
% 3.68/0.99  --bmc1_ucm_cone_mode                    none
% 3.68/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.68/0.99  --bmc1_ucm_relax_model                  4
% 3.68/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.68/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.68/0.99  --bmc1_ucm_layered_model                none
% 3.68/0.99  --bmc1_ucm_max_lemma_size               10
% 3.68/0.99  
% 3.68/0.99  ------ AIG Options
% 3.68/0.99  
% 3.68/0.99  --aig_mode                              false
% 3.68/0.99  
% 3.68/0.99  ------ Instantiation Options
% 3.68/0.99  
% 3.68/0.99  --instantiation_flag                    true
% 3.68/0.99  --inst_sos_flag                         false
% 3.68/0.99  --inst_sos_phase                        true
% 3.68/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.68/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.68/0.99  --inst_lit_sel_side                     num_symb
% 3.68/0.99  --inst_solver_per_active                1400
% 3.68/0.99  --inst_solver_calls_frac                1.
% 3.68/0.99  --inst_passive_queue_type               priority_queues
% 3.68/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.68/0.99  --inst_passive_queues_freq              [25;2]
% 3.68/0.99  --inst_dismatching                      true
% 3.68/0.99  --inst_eager_unprocessed_to_passive     true
% 3.68/0.99  --inst_prop_sim_given                   true
% 3.68/0.99  --inst_prop_sim_new                     false
% 3.68/0.99  --inst_subs_new                         false
% 3.68/0.99  --inst_eq_res_simp                      false
% 3.68/0.99  --inst_subs_given                       false
% 3.68/0.99  --inst_orphan_elimination               true
% 3.68/0.99  --inst_learning_loop_flag               true
% 3.68/0.99  --inst_learning_start                   3000
% 3.68/0.99  --inst_learning_factor                  2
% 3.68/0.99  --inst_start_prop_sim_after_learn       3
% 3.68/0.99  --inst_sel_renew                        solver
% 3.68/0.99  --inst_lit_activity_flag                true
% 3.68/0.99  --inst_restr_to_given                   false
% 3.68/0.99  --inst_activity_threshold               500
% 3.68/0.99  --inst_out_proof                        true
% 3.68/0.99  
% 3.68/0.99  ------ Resolution Options
% 3.68/0.99  
% 3.68/0.99  --resolution_flag                       true
% 3.68/0.99  --res_lit_sel                           adaptive
% 3.68/0.99  --res_lit_sel_side                      none
% 3.68/0.99  --res_ordering                          kbo
% 3.68/0.99  --res_to_prop_solver                    active
% 3.68/0.99  --res_prop_simpl_new                    false
% 3.68/0.99  --res_prop_simpl_given                  true
% 3.68/0.99  --res_passive_queue_type                priority_queues
% 3.68/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.68/0.99  --res_passive_queues_freq               [15;5]
% 3.68/0.99  --res_forward_subs                      full
% 3.68/0.99  --res_backward_subs                     full
% 3.68/0.99  --res_forward_subs_resolution           true
% 3.68/0.99  --res_backward_subs_resolution          true
% 3.68/0.99  --res_orphan_elimination                true
% 3.68/0.99  --res_time_limit                        2.
% 3.68/0.99  --res_out_proof                         true
% 3.68/0.99  
% 3.68/0.99  ------ Superposition Options
% 3.68/0.99  
% 3.68/0.99  --superposition_flag                    true
% 3.68/0.99  --sup_passive_queue_type                priority_queues
% 3.68/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.68/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.68/0.99  --demod_completeness_check              fast
% 3.68/0.99  --demod_use_ground                      true
% 3.68/0.99  --sup_to_prop_solver                    passive
% 3.68/0.99  --sup_prop_simpl_new                    true
% 3.68/0.99  --sup_prop_simpl_given                  true
% 3.68/0.99  --sup_fun_splitting                     false
% 3.68/0.99  --sup_smt_interval                      50000
% 3.68/0.99  
% 3.68/0.99  ------ Superposition Simplification Setup
% 3.68/0.99  
% 3.68/0.99  --sup_indices_passive                   []
% 3.68/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.68/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_full_bw                           [BwDemod]
% 3.68/0.99  --sup_immed_triv                        [TrivRules]
% 3.68/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.68/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_immed_bw_main                     []
% 3.68/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.68/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.68/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.68/0.99  
% 3.68/0.99  ------ Combination Options
% 3.68/0.99  
% 3.68/0.99  --comb_res_mult                         3
% 3.68/0.99  --comb_sup_mult                         2
% 3.68/0.99  --comb_inst_mult                        10
% 3.68/0.99  
% 3.68/0.99  ------ Debug Options
% 3.68/0.99  
% 3.68/0.99  --dbg_backtrace                         false
% 3.68/0.99  --dbg_dump_prop_clauses                 false
% 3.68/0.99  --dbg_dump_prop_clauses_file            -
% 3.68/0.99  --dbg_out_stat                          false
% 3.68/0.99  ------ Parsing...
% 3.68/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.68/0.99  
% 3.68/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 3.68/0.99  
% 3.68/0.99  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.68/0.99  
% 3.68/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.68/0.99  ------ Proving...
% 3.68/0.99  ------ Problem Properties 
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  clauses                                 37
% 3.68/0.99  conjectures                             5
% 3.68/0.99  EPR                                     4
% 3.68/0.99  Horn                                    37
% 3.68/0.99  unary                                   9
% 3.68/0.99  binary                                  3
% 3.68/0.99  lits                                    134
% 3.68/0.99  lits eq                                 25
% 3.68/0.99  fd_pure                                 0
% 3.68/0.99  fd_pseudo                               0
% 3.68/0.99  fd_cond                                 0
% 3.68/0.99  fd_pseudo_cond                          3
% 3.68/0.99  AC symbols                              0
% 3.68/0.99  
% 3.68/0.99  ------ Schedule dynamic 5 is on 
% 3.68/0.99  
% 3.68/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  ------ 
% 3.68/0.99  Current options:
% 3.68/0.99  ------ 
% 3.68/0.99  
% 3.68/0.99  ------ Input Options
% 3.68/0.99  
% 3.68/0.99  --out_options                           all
% 3.68/0.99  --tptp_safe_out                         true
% 3.68/0.99  --problem_path                          ""
% 3.68/0.99  --include_path                          ""
% 3.68/0.99  --clausifier                            res/vclausify_rel
% 3.68/0.99  --clausifier_options                    --mode clausify
% 3.68/0.99  --stdin                                 false
% 3.68/0.99  --stats_out                             all
% 3.68/0.99  
% 3.68/0.99  ------ General Options
% 3.68/0.99  
% 3.68/0.99  --fof                                   false
% 3.68/0.99  --time_out_real                         305.
% 3.68/0.99  --time_out_virtual                      -1.
% 3.68/0.99  --symbol_type_check                     false
% 3.68/0.99  --clausify_out                          false
% 3.68/0.99  --sig_cnt_out                           false
% 3.68/0.99  --trig_cnt_out                          false
% 3.68/0.99  --trig_cnt_out_tolerance                1.
% 3.68/0.99  --trig_cnt_out_sk_spl                   false
% 3.68/0.99  --abstr_cl_out                          false
% 3.68/0.99  
% 3.68/0.99  ------ Global Options
% 3.68/0.99  
% 3.68/0.99  --schedule                              default
% 3.68/0.99  --add_important_lit                     false
% 3.68/0.99  --prop_solver_per_cl                    1000
% 3.68/0.99  --min_unsat_core                        false
% 3.68/0.99  --soft_assumptions                      false
% 3.68/0.99  --soft_lemma_size                       3
% 3.68/0.99  --prop_impl_unit_size                   0
% 3.68/0.99  --prop_impl_unit                        []
% 3.68/0.99  --share_sel_clauses                     true
% 3.68/0.99  --reset_solvers                         false
% 3.68/0.99  --bc_imp_inh                            [conj_cone]
% 3.68/0.99  --conj_cone_tolerance                   3.
% 3.68/0.99  --extra_neg_conj                        none
% 3.68/0.99  --large_theory_mode                     true
% 3.68/0.99  --prolific_symb_bound                   200
% 3.68/0.99  --lt_threshold                          2000
% 3.68/0.99  --clause_weak_htbl                      true
% 3.68/0.99  --gc_record_bc_elim                     false
% 3.68/0.99  
% 3.68/0.99  ------ Preprocessing Options
% 3.68/0.99  
% 3.68/0.99  --preprocessing_flag                    true
% 3.68/0.99  --time_out_prep_mult                    0.1
% 3.68/0.99  --splitting_mode                        input
% 3.68/0.99  --splitting_grd                         true
% 3.68/0.99  --splitting_cvd                         false
% 3.68/0.99  --splitting_cvd_svl                     false
% 3.68/0.99  --splitting_nvd                         32
% 3.68/0.99  --sub_typing                            true
% 3.68/0.99  --prep_gs_sim                           true
% 3.68/0.99  --prep_unflatten                        true
% 3.68/0.99  --prep_res_sim                          true
% 3.68/0.99  --prep_upred                            true
% 3.68/0.99  --prep_sem_filter                       exhaustive
% 3.68/0.99  --prep_sem_filter_out                   false
% 3.68/0.99  --pred_elim                             true
% 3.68/0.99  --res_sim_input                         true
% 3.68/0.99  --eq_ax_congr_red                       true
% 3.68/0.99  --pure_diseq_elim                       true
% 3.68/0.99  --brand_transform                       false
% 3.68/0.99  --non_eq_to_eq                          false
% 3.68/0.99  --prep_def_merge                        true
% 3.68/0.99  --prep_def_merge_prop_impl              false
% 3.68/0.99  --prep_def_merge_mbd                    true
% 3.68/0.99  --prep_def_merge_tr_red                 false
% 3.68/0.99  --prep_def_merge_tr_cl                  false
% 3.68/0.99  --smt_preprocessing                     true
% 3.68/0.99  --smt_ac_axioms                         fast
% 3.68/0.99  --preprocessed_out                      false
% 3.68/0.99  --preprocessed_stats                    false
% 3.68/0.99  
% 3.68/0.99  ------ Abstraction refinement Options
% 3.68/0.99  
% 3.68/0.99  --abstr_ref                             []
% 3.68/0.99  --abstr_ref_prep                        false
% 3.68/0.99  --abstr_ref_until_sat                   false
% 3.68/0.99  --abstr_ref_sig_restrict                funpre
% 3.68/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.68/0.99  --abstr_ref_under                       []
% 3.68/0.99  
% 3.68/0.99  ------ SAT Options
% 3.68/0.99  
% 3.68/0.99  --sat_mode                              false
% 3.68/0.99  --sat_fm_restart_options                ""
% 3.68/0.99  --sat_gr_def                            false
% 3.68/0.99  --sat_epr_types                         true
% 3.68/0.99  --sat_non_cyclic_types                  false
% 3.68/0.99  --sat_finite_models                     false
% 3.68/0.99  --sat_fm_lemmas                         false
% 3.68/0.99  --sat_fm_prep                           false
% 3.68/0.99  --sat_fm_uc_incr                        true
% 3.68/0.99  --sat_out_model                         small
% 3.68/0.99  --sat_out_clauses                       false
% 3.68/0.99  
% 3.68/0.99  ------ QBF Options
% 3.68/0.99  
% 3.68/0.99  --qbf_mode                              false
% 3.68/0.99  --qbf_elim_univ                         false
% 3.68/0.99  --qbf_dom_inst                          none
% 3.68/0.99  --qbf_dom_pre_inst                      false
% 3.68/0.99  --qbf_sk_in                             false
% 3.68/0.99  --qbf_pred_elim                         true
% 3.68/0.99  --qbf_split                             512
% 3.68/0.99  
% 3.68/0.99  ------ BMC1 Options
% 3.68/0.99  
% 3.68/0.99  --bmc1_incremental                      false
% 3.68/0.99  --bmc1_axioms                           reachable_all
% 3.68/0.99  --bmc1_min_bound                        0
% 3.68/0.99  --bmc1_max_bound                        -1
% 3.68/0.99  --bmc1_max_bound_default                -1
% 3.68/0.99  --bmc1_symbol_reachability              true
% 3.68/0.99  --bmc1_property_lemmas                  false
% 3.68/0.99  --bmc1_k_induction                      false
% 3.68/0.99  --bmc1_non_equiv_states                 false
% 3.68/0.99  --bmc1_deadlock                         false
% 3.68/0.99  --bmc1_ucm                              false
% 3.68/0.99  --bmc1_add_unsat_core                   none
% 3.68/0.99  --bmc1_unsat_core_children              false
% 3.68/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.68/0.99  --bmc1_out_stat                         full
% 3.68/0.99  --bmc1_ground_init                      false
% 3.68/0.99  --bmc1_pre_inst_next_state              false
% 3.68/0.99  --bmc1_pre_inst_state                   false
% 3.68/0.99  --bmc1_pre_inst_reach_state             false
% 3.68/0.99  --bmc1_out_unsat_core                   false
% 3.68/0.99  --bmc1_aig_witness_out                  false
% 3.68/0.99  --bmc1_verbose                          false
% 3.68/0.99  --bmc1_dump_clauses_tptp                false
% 3.68/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.68/0.99  --bmc1_dump_file                        -
% 3.68/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.68/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.68/0.99  --bmc1_ucm_extend_mode                  1
% 3.68/0.99  --bmc1_ucm_init_mode                    2
% 3.68/0.99  --bmc1_ucm_cone_mode                    none
% 3.68/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.68/0.99  --bmc1_ucm_relax_model                  4
% 3.68/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.68/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.68/0.99  --bmc1_ucm_layered_model                none
% 3.68/0.99  --bmc1_ucm_max_lemma_size               10
% 3.68/0.99  
% 3.68/0.99  ------ AIG Options
% 3.68/0.99  
% 3.68/0.99  --aig_mode                              false
% 3.68/0.99  
% 3.68/0.99  ------ Instantiation Options
% 3.68/0.99  
% 3.68/0.99  --instantiation_flag                    true
% 3.68/0.99  --inst_sos_flag                         false
% 3.68/0.99  --inst_sos_phase                        true
% 3.68/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.68/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.68/0.99  --inst_lit_sel_side                     none
% 3.68/0.99  --inst_solver_per_active                1400
% 3.68/0.99  --inst_solver_calls_frac                1.
% 3.68/0.99  --inst_passive_queue_type               priority_queues
% 3.68/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.68/0.99  --inst_passive_queues_freq              [25;2]
% 3.68/0.99  --inst_dismatching                      true
% 3.68/0.99  --inst_eager_unprocessed_to_passive     true
% 3.68/0.99  --inst_prop_sim_given                   true
% 3.68/0.99  --inst_prop_sim_new                     false
% 3.68/0.99  --inst_subs_new                         false
% 3.68/0.99  --inst_eq_res_simp                      false
% 3.68/0.99  --inst_subs_given                       false
% 3.68/0.99  --inst_orphan_elimination               true
% 3.68/0.99  --inst_learning_loop_flag               true
% 3.68/0.99  --inst_learning_start                   3000
% 3.68/0.99  --inst_learning_factor                  2
% 3.68/0.99  --inst_start_prop_sim_after_learn       3
% 3.68/0.99  --inst_sel_renew                        solver
% 3.68/0.99  --inst_lit_activity_flag                true
% 3.68/0.99  --inst_restr_to_given                   false
% 3.68/0.99  --inst_activity_threshold               500
% 3.68/0.99  --inst_out_proof                        true
% 3.68/0.99  
% 3.68/0.99  ------ Resolution Options
% 3.68/0.99  
% 3.68/0.99  --resolution_flag                       false
% 3.68/0.99  --res_lit_sel                           adaptive
% 3.68/0.99  --res_lit_sel_side                      none
% 3.68/0.99  --res_ordering                          kbo
% 3.68/0.99  --res_to_prop_solver                    active
% 3.68/0.99  --res_prop_simpl_new                    false
% 3.68/0.99  --res_prop_simpl_given                  true
% 3.68/0.99  --res_passive_queue_type                priority_queues
% 3.68/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.68/0.99  --res_passive_queues_freq               [15;5]
% 3.68/0.99  --res_forward_subs                      full
% 3.68/0.99  --res_backward_subs                     full
% 3.68/0.99  --res_forward_subs_resolution           true
% 3.68/0.99  --res_backward_subs_resolution          true
% 3.68/0.99  --res_orphan_elimination                true
% 3.68/0.99  --res_time_limit                        2.
% 3.68/0.99  --res_out_proof                         true
% 3.68/0.99  
% 3.68/0.99  ------ Superposition Options
% 3.68/0.99  
% 3.68/0.99  --superposition_flag                    true
% 3.68/0.99  --sup_passive_queue_type                priority_queues
% 3.68/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.68/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.68/0.99  --demod_completeness_check              fast
% 3.68/0.99  --demod_use_ground                      true
% 3.68/0.99  --sup_to_prop_solver                    passive
% 3.68/0.99  --sup_prop_simpl_new                    true
% 3.68/0.99  --sup_prop_simpl_given                  true
% 3.68/0.99  --sup_fun_splitting                     false
% 3.68/0.99  --sup_smt_interval                      50000
% 3.68/0.99  
% 3.68/0.99  ------ Superposition Simplification Setup
% 3.68/0.99  
% 3.68/0.99  --sup_indices_passive                   []
% 3.68/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.68/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.68/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_full_bw                           [BwDemod]
% 3.68/0.99  --sup_immed_triv                        [TrivRules]
% 3.68/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.68/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_immed_bw_main                     []
% 3.68/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.68/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.68/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.68/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.68/0.99  
% 3.68/0.99  ------ Combination Options
% 3.68/0.99  
% 3.68/0.99  --comb_res_mult                         3
% 3.68/0.99  --comb_sup_mult                         2
% 3.68/0.99  --comb_inst_mult                        10
% 3.68/0.99  
% 3.68/0.99  ------ Debug Options
% 3.68/0.99  
% 3.68/0.99  --dbg_backtrace                         false
% 3.68/0.99  --dbg_dump_prop_clauses                 false
% 3.68/0.99  --dbg_dump_prop_clauses_file            -
% 3.68/0.99  --dbg_out_stat                          false
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  ------ Proving...
% 3.68/0.99  
% 3.68/0.99  
% 3.68/0.99  % SZS status Theorem for theBenchmark.p
% 3.68/0.99  
% 3.68/0.99   Resolution empty clause
% 3.68/0.99  
% 3.68/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.68/0.99  
% 3.68/0.99  fof(f25,conjecture,(
% 3.68/0.99    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f26,negated_conjecture,(
% 3.68/0.99    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 3.68/0.99    inference(negated_conjecture,[],[f25])).
% 3.68/0.99  
% 3.68/0.99  fof(f66,plain,(
% 3.68/0.99    ? [X0] : (? [X1] : (? [X2] : ((~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 3.68/0.99    inference(ennf_transformation,[],[f26])).
% 3.68/0.99  
% 3.68/0.99  fof(f67,plain,(
% 3.68/0.99    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 3.68/0.99    inference(flattening,[],[f66])).
% 3.68/0.99  
% 3.68/0.99  fof(f73,plain,(
% 3.68/0.99    ( ! [X0,X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 3.68/0.99    introduced(choice_axiom,[])).
% 3.68/0.99  
% 3.68/0.99  fof(f72,plain,(
% 3.68/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1))) )),
% 3.68/0.99    introduced(choice_axiom,[])).
% 3.68/0.99  
% 3.68/0.99  fof(f71,plain,(
% 3.68/0.99    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(sK0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK0))),
% 3.68/0.99    introduced(choice_axiom,[])).
% 3.68/0.99  
% 3.68/0.99  fof(f74,plain,(
% 3.68/0.99    ((~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1)) & l1_struct_0(sK0)),
% 3.68/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f67,f73,f72,f71])).
% 3.68/0.99  
% 3.68/0.99  fof(f119,plain,(
% 3.68/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f22,axiom,(
% 3.68/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f61,plain,(
% 3.68/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 3.68/0.99    inference(ennf_transformation,[],[f22])).
% 3.68/0.99  
% 3.68/0.99  fof(f111,plain,(
% 3.68/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f61])).
% 3.68/0.99  
% 3.68/0.99  fof(f116,plain,(
% 3.68/0.99    l1_struct_0(sK1)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f114,plain,(
% 3.68/0.99    l1_struct_0(sK0)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f2,axiom,(
% 3.68/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f28,plain,(
% 3.68/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(ennf_transformation,[],[f2])).
% 3.68/0.99  
% 3.68/0.99  fof(f78,plain,(
% 3.68/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f28])).
% 3.68/0.99  
% 3.68/0.99  fof(f3,axiom,(
% 3.68/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f79,plain,(
% 3.68/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 3.68/0.99    inference(cnf_transformation,[],[f3])).
% 3.68/0.99  
% 3.68/0.99  fof(f17,axiom,(
% 3.68/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f51,plain,(
% 3.68/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 3.68/0.99    inference(ennf_transformation,[],[f17])).
% 3.68/0.99  
% 3.68/0.99  fof(f52,plain,(
% 3.68/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 3.68/0.99    inference(flattening,[],[f51])).
% 3.68/0.99  
% 3.68/0.99  fof(f101,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f52])).
% 3.68/0.99  
% 3.68/0.99  fof(f23,axiom,(
% 3.68/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f62,plain,(
% 3.68/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f23])).
% 3.68/0.99  
% 3.68/0.99  fof(f63,plain,(
% 3.68/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.68/0.99    inference(flattening,[],[f62])).
% 3.68/0.99  
% 3.68/0.99  fof(f112,plain,(
% 3.68/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f63])).
% 3.68/0.99  
% 3.68/0.99  fof(f115,plain,(
% 3.68/0.99    ~v2_struct_0(sK1)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f18,axiom,(
% 3.68/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f53,plain,(
% 3.68/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.68/0.99    inference(ennf_transformation,[],[f18])).
% 3.68/0.99  
% 3.68/0.99  fof(f54,plain,(
% 3.68/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.68/0.99    inference(flattening,[],[f53])).
% 3.68/0.99  
% 3.68/0.99  fof(f70,plain,(
% 3.68/0.99    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.68/0.99    inference(nnf_transformation,[],[f54])).
% 3.68/0.99  
% 3.68/0.99  fof(f102,plain,(
% 3.68/0.99    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f70])).
% 3.68/0.99  
% 3.68/0.99  fof(f15,axiom,(
% 3.68/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f27,plain,(
% 3.68/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 3.68/0.99    inference(pure_predicate_removal,[],[f15])).
% 3.68/0.99  
% 3.68/0.99  fof(f49,plain,(
% 3.68/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.68/0.99    inference(ennf_transformation,[],[f27])).
% 3.68/0.99  
% 3.68/0.99  fof(f98,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.68/0.99    inference(cnf_transformation,[],[f49])).
% 3.68/0.99  
% 3.68/0.99  fof(f117,plain,(
% 3.68/0.99    v1_funct_1(sK2)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f118,plain,(
% 3.68/0.99    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f16,axiom,(
% 3.68/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f50,plain,(
% 3.68/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.68/0.99    inference(ennf_transformation,[],[f16])).
% 3.68/0.99  
% 3.68/0.99  fof(f99,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.68/0.99    inference(cnf_transformation,[],[f50])).
% 3.68/0.99  
% 3.68/0.99  fof(f120,plain,(
% 3.68/0.99    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f19,axiom,(
% 3.68/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => r2_funct_2(X0,X1,X2,X2))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f55,plain,(
% 3.68/0.99    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.68/0.99    inference(ennf_transformation,[],[f19])).
% 3.68/0.99  
% 3.68/0.99  fof(f56,plain,(
% 3.68/0.99    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.68/0.99    inference(flattening,[],[f55])).
% 3.68/0.99  
% 3.68/0.99  fof(f104,plain,(
% 3.68/0.99    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f56])).
% 3.68/0.99  
% 3.68/0.99  fof(f122,plain,(
% 3.68/0.99    ~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f24,axiom,(
% 3.68/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f64,plain,(
% 3.68/0.99    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.68/0.99    inference(ennf_transformation,[],[f24])).
% 3.68/0.99  
% 3.68/0.99  fof(f65,plain,(
% 3.68/0.99    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.68/0.99    inference(flattening,[],[f64])).
% 3.68/0.99  
% 3.68/0.99  fof(f113,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f65])).
% 3.68/0.99  
% 3.68/0.99  fof(f121,plain,(
% 3.68/0.99    v2_funct_1(sK2)),
% 3.68/0.99    inference(cnf_transformation,[],[f74])).
% 3.68/0.99  
% 3.68/0.99  fof(f7,axiom,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f33,plain,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f7])).
% 3.68/0.99  
% 3.68/0.99  fof(f34,plain,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f33])).
% 3.68/0.99  
% 3.68/0.99  fof(f84,plain,(
% 3.68/0.99    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f34])).
% 3.68/0.99  
% 3.68/0.99  fof(f83,plain,(
% 3.68/0.99    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f34])).
% 3.68/0.99  
% 3.68/0.99  fof(f8,axiom,(
% 3.68/0.99    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f35,plain,(
% 3.68/0.99    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f8])).
% 3.68/0.99  
% 3.68/0.99  fof(f36,plain,(
% 3.68/0.99    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f35])).
% 3.68/0.99  
% 3.68/0.99  fof(f87,plain,(
% 3.68/0.99    ( ! [X0] : (v2_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f36])).
% 3.68/0.99  
% 3.68/0.99  fof(f21,axiom,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f59,plain,(
% 3.68/0.99    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f21])).
% 3.68/0.99  
% 3.68/0.99  fof(f60,plain,(
% 3.68/0.99    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f59])).
% 3.68/0.99  
% 3.68/0.99  fof(f110,plain,(
% 3.68/0.99    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f60])).
% 3.68/0.99  
% 3.68/0.99  fof(f109,plain,(
% 3.68/0.99    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f60])).
% 3.68/0.99  
% 3.68/0.99  fof(f20,axiom,(
% 3.68/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f57,plain,(
% 3.68/0.99    ! [X0,X1,X2] : (((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | (k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.68/0.99    inference(ennf_transformation,[],[f20])).
% 3.68/0.99  
% 3.68/0.99  fof(f58,plain,(
% 3.68/0.99    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.68/0.99    inference(flattening,[],[f57])).
% 3.68/0.99  
% 3.68/0.99  fof(f107,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f58])).
% 3.68/0.99  
% 3.68/0.99  fof(f106,plain,(
% 3.68/0.99    ( ! [X2,X0,X1] : (v1_funct_2(k2_funct_1(X2),X1,X0) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f58])).
% 3.68/0.99  
% 3.68/0.99  fof(f12,axiom,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f43,plain,(
% 3.68/0.99    ! [X0] : (((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f12])).
% 3.68/0.99  
% 3.68/0.99  fof(f44,plain,(
% 3.68/0.99    ! [X0] : ((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f43])).
% 3.68/0.99  
% 3.68/0.99  fof(f94,plain,(
% 3.68/0.99    ( ! [X0] : (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f44])).
% 3.68/0.99  
% 3.68/0.99  fof(f93,plain,(
% 3.68/0.99    ( ! [X0] : (k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f44])).
% 3.68/0.99  
% 3.68/0.99  fof(f13,axiom,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f45,plain,(
% 3.68/0.99    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f13])).
% 3.68/0.99  
% 3.68/0.99  fof(f46,plain,(
% 3.68/0.99    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f45])).
% 3.68/0.99  
% 3.68/0.99  fof(f95,plain,(
% 3.68/0.99    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f46])).
% 3.68/0.99  
% 3.68/0.99  fof(f14,axiom,(
% 3.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k5_relat_1(X1,X0) = k6_relat_1(k2_relat_1(X0)) & k2_relat_1(X1) = k1_relat_1(X0) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 3.68/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.68/0.99  
% 3.68/0.99  fof(f47,plain,(
% 3.68/0.99    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 | (k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0)) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.68/0.99    inference(ennf_transformation,[],[f14])).
% 3.68/0.99  
% 3.68/0.99  fof(f48,plain,(
% 3.68/0.99    ! [X0] : (! [X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0)) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.68/0.99    inference(flattening,[],[f47])).
% 3.68/0.99  
% 3.68/0.99  fof(f97,plain,(
% 3.68/0.99    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0)) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.68/0.99    inference(cnf_transformation,[],[f48])).
% 3.68/0.99  
% 3.68/0.99  cnf(c_42,negated_conjecture,
% 3.68/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 3.68/0.99      inference(cnf_transformation,[],[f119]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1493,plain,
% 3.68/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_42]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_36,plain,
% 3.68/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 3.68/0.99      inference(cnf_transformation,[],[f111]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_45,negated_conjecture,
% 3.68/0.99      ( l1_struct_0(sK1) ),
% 3.68/0.99      inference(cnf_transformation,[],[f116]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_522,plain,
% 3.68/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 3.68/0.99      inference(resolution_lifted,[status(thm)],[c_36,c_45]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_523,plain,
% 3.68/0.99      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 3.68/0.99      inference(unflattening,[status(thm)],[c_522]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_47,negated_conjecture,
% 3.68/0.99      ( l1_struct_0(sK0) ),
% 3.68/0.99      inference(cnf_transformation,[],[f114]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_527,plain,
% 3.68/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 3.68/0.99      inference(resolution_lifted,[status(thm)],[c_36,c_47]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_528,plain,
% 3.68/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 3.68/0.99      inference(unflattening,[status(thm)],[c_527]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1540,plain,
% 3.68/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
% 3.68/0.99      inference(light_normalisation,[status(thm)],[c_1493,c_523,c_528]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_3,plain,
% 3.68/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 3.68/0.99      inference(cnf_transformation,[],[f78]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1519,plain,
% 3.68/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.68/0.99      | v1_relat_1(X1) != iProver_top
% 3.68/0.99      | v1_relat_1(X0) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2391,plain,
% 3.68/0.99      ( v1_relat_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != iProver_top
% 3.68/0.99      | v1_relat_1(sK2) = iProver_top ),
% 3.68/0.99      inference(superposition,[status(thm)],[c_1540,c_1519]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_53,plain,
% 3.68/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_42]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1889,plain,
% 3.68/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | v1_relat_1(X0)
% 3.68/0.99      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 3.68/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2243,plain,
% 3.68/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 3.68/0.99      | v1_relat_1(sK2) ),
% 3.68/0.99      inference(instantiation,[status(thm)],[c_1889]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2244,plain,
% 3.68/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 3.68/0.99      | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
% 3.68/0.99      | v1_relat_1(sK2) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_2243]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_4,plain,
% 3.68/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 3.68/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2340,plain,
% 3.68/0.99      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 3.68/0.99      inference(instantiation,[status(thm)],[c_4]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2341,plain,
% 3.68/0.99      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_2340]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2776,plain,
% 3.68/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 3.68/0.99      inference(global_propositional_subsumption,
% 3.68/0.99                [status(thm)],
% 3.68/0.99                [c_2391,c_53,c_2244,c_2341]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_25,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/0.99      | v1_partfun1(X0,X1)
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | v1_xboole_0(X2)
% 3.68/0.99      | ~ v1_funct_1(X0) ),
% 3.68/0.99      inference(cnf_transformation,[],[f101]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_37,plain,
% 3.68/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 3.68/0.99      inference(cnf_transformation,[],[f112]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_46,negated_conjecture,
% 3.68/0.99      ( ~ v2_struct_0(sK1) ),
% 3.68/0.99      inference(cnf_transformation,[],[f115]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_509,plain,
% 3.68/0.99      ( ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK1 != X0 ),
% 3.68/0.99      inference(resolution_lifted,[status(thm)],[c_37,c_46]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_510,plain,
% 3.68/0.99      ( ~ l1_struct_0(sK1) | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 3.68/0.99      inference(unflattening,[status(thm)],[c_509]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_60,plain,
% 3.68/0.99      ( v2_struct_0(sK1)
% 3.68/0.99      | ~ l1_struct_0(sK1)
% 3.68/0.99      | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 3.68/0.99      inference(instantiation,[status(thm)],[c_37]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_512,plain,
% 3.68/0.99      ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 3.68/0.99      inference(global_propositional_subsumption,
% 3.68/0.99                [status(thm)],
% 3.68/0.99                [c_510,c_46,c_45,c_60]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_534,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/0.99      | v1_partfun1(X0,X1)
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | ~ v1_funct_1(X0)
% 3.68/0.99      | u1_struct_0(sK1) != X2 ),
% 3.68/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_512]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_535,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 3.68/0.99      | v1_partfun1(X0,X1)
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_funct_1(X0) ),
% 3.68/0.99      inference(unflattening,[status(thm)],[c_534]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_28,plain,
% 3.68/0.99      ( ~ v1_partfun1(X0,X1)
% 3.68/0.99      | ~ v4_relat_1(X0,X1)
% 3.68/0.99      | ~ v1_relat_1(X0)
% 3.68/0.99      | k1_relat_1(X0) = X1 ),
% 3.68/0.99      inference(cnf_transformation,[],[f102]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_631,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 3.68/0.99      | ~ v4_relat_1(X0,X1)
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_funct_1(X0)
% 3.68/0.99      | ~ v1_relat_1(X0)
% 3.68/0.99      | k1_relat_1(X0) = X1 ),
% 3.68/0.99      inference(resolution,[status(thm)],[c_535,c_28]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_23,plain,
% 3.68/0.99      ( v4_relat_1(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 3.68/0.99      inference(cnf_transformation,[],[f98]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_647,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,u1_struct_0(sK1))
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_funct_1(X0)
% 3.68/0.99      | ~ v1_relat_1(X0)
% 3.68/0.99      | k1_relat_1(X0) = X1 ),
% 3.68/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_631,c_23]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1488,plain,
% 3.68/0.99      ( k1_relat_1(X0) = X1
% 3.68/0.99      | v1_funct_2(X0,X1,u1_struct_0(sK1)) != iProver_top
% 3.68/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,u1_struct_0(sK1)))) != iProver_top
% 3.68/0.99      | v1_funct_1(X0) != iProver_top
% 3.68/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_647]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1654,plain,
% 3.68/0.99      ( k1_relat_1(X0) = X1
% 3.68/0.99      | v1_funct_2(X0,X1,k2_struct_0(sK1)) != iProver_top
% 3.68/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1)))) != iProver_top
% 3.68/0.99      | v1_funct_1(X0) != iProver_top
% 3.68/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.68/0.99      inference(light_normalisation,[status(thm)],[c_1488,c_523]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2210,plain,
% 3.68/0.99      ( k2_struct_0(sK0) = k1_relat_1(sK2)
% 3.68/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/0.99      | v1_funct_1(sK2) != iProver_top
% 3.68/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.68/0.99      inference(superposition,[status(thm)],[c_1540,c_1654]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_44,negated_conjecture,
% 3.68/0.99      ( v1_funct_1(sK2) ),
% 3.68/0.99      inference(cnf_transformation,[],[f117]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_51,plain,
% 3.68/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_44]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_43,negated_conjecture,
% 3.68/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 3.68/0.99      inference(cnf_transformation,[],[f118]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1492,plain,
% 3.68/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_43]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1534,plain,
% 3.68/0.99      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
% 3.68/0.99      inference(light_normalisation,[status(thm)],[c_1492,c_523,c_528]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2261,plain,
% 3.68/0.99      ( k2_struct_0(sK0) = k1_relat_1(sK2) | v1_relat_1(sK2) != iProver_top ),
% 3.68/0.99      inference(global_propositional_subsumption,
% 3.68/0.99                [status(thm)],
% 3.68/0.99                [c_2210,c_51,c_1534]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2783,plain,
% 3.68/0.99      ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
% 3.68/0.99      inference(superposition,[status(thm)],[c_2776,c_2261]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_24,plain,
% 3.68/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.68/0.99      inference(cnf_transformation,[],[f99]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1501,plain,
% 3.68/0.99      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.68/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.68/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2279,plain,
% 3.68/0.99      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
% 3.68/0.99      inference(superposition,[status(thm)],[c_1540,c_1501]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_41,negated_conjecture,
% 3.68/0.99      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 3.68/0.99      inference(cnf_transformation,[],[f120]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1537,plain,
% 3.68/0.99      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 3.68/0.99      inference(light_normalisation,[status(thm)],[c_41,c_523,c_528]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_2481,plain,
% 3.68/0.99      ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
% 3.68/0.99      inference(demodulation,[status(thm)],[c_2279,c_1537]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_29,plain,
% 3.68/0.99      ( r2_funct_2(X0,X1,X2,X2)
% 3.68/0.99      | ~ v1_funct_2(X2,X0,X1)
% 3.68/0.99      | ~ v1_funct_2(X3,X0,X1)
% 3.68/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.68/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.68/0.99      | ~ v1_funct_1(X2)
% 3.68/0.99      | ~ v1_funct_1(X3) ),
% 3.68/0.99      inference(cnf_transformation,[],[f104]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_39,negated_conjecture,
% 3.68/0.99      ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
% 3.68/0.99      inference(cnf_transformation,[],[f122]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_557,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/0.99      | ~ v1_funct_2(X3,X1,X2)
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/0.99      | ~ v1_funct_1(X0)
% 3.68/0.99      | ~ v1_funct_1(X3)
% 3.68/0.99      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
% 3.68/0.99      | u1_struct_0(sK1) != X2
% 3.68/0.99      | u1_struct_0(sK0) != X1
% 3.68/0.99      | sK2 != X0 ),
% 3.68/0.99      inference(resolution_lifted,[status(thm)],[c_29,c_39]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_558,plain,
% 3.68/0.99      ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
% 3.68/0.99      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 3.68/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 3.68/0.99      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_funct_1(X0)
% 3.68/0.99      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 3.68/0.99      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 3.68/0.99      inference(unflattening,[status(thm)],[c_557]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_886,plain,
% 3.68/0.99      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 3.68/0.99      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 3.68/0.99      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 3.68/0.99      | sP0_iProver_split
% 3.68/0.99      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 3.68/0.99      inference(splitting,
% 3.68/0.99                [splitting(split),new_symbols(definition,[])],
% 3.68/0.99                [c_558]) ).
% 3.68/0.99  
% 3.68/0.99  cnf(c_1489,plain,
% 3.68/0.99      ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 3.68/0.99      | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 3.68/0.99      | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 3.68/0.99      | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
% 3.68/1.00      | sP0_iProver_split = iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_886]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1785,plain,
% 3.68/1.00      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
% 3.68/1.00      | sP0_iProver_split = iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_1489,c_523,c_528]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_885,plain,
% 3.68/1.00      ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
% 3.68/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ sP0_iProver_split ),
% 3.68/1.00      inference(splitting,
% 3.68/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 3.68/1.00                [c_558]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1490,plain,
% 3.68/1.00      ( v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | sP0_iProver_split != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_885]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1645,plain,
% 3.68/1.00      ( v1_funct_2(X0,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | sP0_iProver_split != iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_1490,c_523,c_528]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1791,plain,
% 3.68/1.00      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
% 3.68/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1785,c_1645]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_38,plain,
% 3.68/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/1.00      | ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 3.68/1.00      | k2_relset_1(X1,X2,X0) != X2 ),
% 3.68/1.00      inference(cnf_transformation,[],[f113]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1495,plain,
% 3.68/1.00      ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
% 3.68/1.00      | k2_relset_1(X0,X1,X2) != X1
% 3.68/1.00      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.68/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.68/1.00      | v2_funct_1(X2) != iProver_top
% 3.68/1.00      | v1_funct_1(X2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2000,plain,
% 3.68/1.00      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
% 3.68/1.00      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v2_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_1537,c_1495]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_40,negated_conjecture,
% 3.68/1.00      ( v2_funct_1(sK2) ),
% 3.68/1.00      inference(cnf_transformation,[],[f121]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_54,plain,
% 3.68/1.00      ( v2_funct_1(sK2) = iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2234,plain,
% 3.68/1.00      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_2000,c_51,c_54,c_1540,c_1534]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2268,plain,
% 3.68/1.00      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_1791,c_2234]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2485,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2481,c_2268]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_4928,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2783,c_2485]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_8,plain,
% 3.68/1.00      ( ~ v1_funct_1(X0) | v1_funct_1(k2_funct_1(X0)) | ~ v1_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1883,plain,
% 3.68/1.00      ( v1_funct_1(k2_funct_1(sK2)) | ~ v1_funct_1(sK2) | ~ v1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_8]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1884,plain,
% 3.68/1.00      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_1883]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_9,plain,
% 3.68/1.00      ( ~ v1_funct_1(X0) | ~ v1_relat_1(X0) | v1_relat_1(k2_funct_1(X0)) ),
% 3.68/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1886,plain,
% 3.68/1.00      ( ~ v1_funct_1(sK2) | v1_relat_1(k2_funct_1(sK2)) | ~ v1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_9]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1887,plain,
% 3.68/1.00      ( v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_1886]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_10,plain,
% 3.68/1.00      ( ~ v2_funct_1(X0)
% 3.68/1.00      | v2_funct_1(k2_funct_1(X0))
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1899,plain,
% 3.68/1.00      ( v2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_10]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_33,plain,
% 3.68/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f110]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1933,plain,
% 3.68/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_33]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_34,plain,
% 3.68/1.00      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f109]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1936,plain,
% 3.68/1.00      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_34]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2034,plain,
% 3.68/1.00      ( v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
% 3.68/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | ~ v1_relat_1(k2_funct_1(sK2)) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_8]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2040,plain,
% 3.68/1.00      ( v1_funct_1(k2_funct_1(k2_funct_1(sK2))) = iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_2034]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2151,plain,
% 3.68/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
% 3.68/1.00      | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_24]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_30,plain,
% 3.68/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/1.00      | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.68/1.00      | ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | k2_relset_1(X1,X2,X0) != X2 ),
% 3.68/1.00      inference(cnf_transformation,[],[f107]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2019,plain,
% 3.68/1.00      ( ~ v1_funct_2(sK2,X0,X1)
% 3.68/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.68/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.68/1.00      | ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | k2_relset_1(X0,X1,sK2) != X1 ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_30]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2551,plain,
% 3.68/1.00      ( ~ v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
% 3.68/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2))))
% 3.68/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
% 3.68/1.00      | ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_2019]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_31,plain,
% 3.68/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.68/1.00      | v1_funct_2(k2_funct_1(X0),X2,X1)
% 3.68/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.68/1.00      | ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | k2_relset_1(X1,X2,X0) != X2 ),
% 3.68/1.00      inference(cnf_transformation,[],[f106]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2014,plain,
% 3.68/1.00      ( v1_funct_2(k2_funct_1(sK2),X0,X1)
% 3.68/1.00      | ~ v1_funct_2(sK2,X1,X0)
% 3.68/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.68/1.00      | ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | k2_relset_1(X1,X0,sK2) != X0 ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_31]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2559,plain,
% 3.68/1.00      ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2))
% 3.68/1.00      | ~ v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2))
% 3.68/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2))))
% 3.68/1.00      | ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_2014]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2084,plain,
% 3.68/1.00      ( ~ v1_funct_2(k2_funct_1(sK2),X0,X1)
% 3.68/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.68/1.00      | ~ v2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | k2_tops_2(X0,X1,k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | k2_relset_1(X0,X1,k2_funct_1(sK2)) != X1 ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_38]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3775,plain,
% 3.68/1.00      ( ~ v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2))
% 3.68/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2))))
% 3.68/1.00      | ~ v2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_2084]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1494,plain,
% 3.68/1.00      ( v2_funct_1(sK2) = iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_18,plain,
% 3.68/1.00      ( ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0)
% 3.68/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f94]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1506,plain,
% 3.68/1.00      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.68/1.00      | v2_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3501,plain,
% 3.68/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_1494,c_1506]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1924,plain,
% 3.68/1.00      ( ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2)
% 3.68/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_18]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3708,plain,
% 3.68/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_3501,c_44,c_42,c_40,c_1924,c_2243,c_2340]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1497,plain,
% 3.68/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3711,plain,
% 3.68/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_3708,c_1497]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_19,plain,
% 3.68/1.00      ( ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0)
% 3.68/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 3.68/1.00      inference(cnf_transformation,[],[f93]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1505,plain,
% 3.68/1.00      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 3.68/1.00      | v2_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3220,plain,
% 3.68/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_1494,c_1505]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1927,plain,
% 3.68/1.00      ( ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2)
% 3.68/1.00      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_19]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3525,plain,
% 3.68/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_3220,c_44,c_42,c_40,c_1927,c_2243,c_2340]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3723,plain,
% 3.68/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_3711,c_3525]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1934,plain,
% 3.68/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_1933]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1937,plain,
% 3.68/1.00      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_1936]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2555,plain,
% 3.68/1.00      ( k2_relset_1(k1_relat_1(sK2),k2_relat_1(sK2),sK2) != k2_relat_1(sK2)
% 3.68/1.00      | v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top
% 3.68/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 3.68/1.00      | v2_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_2551]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3816,plain,
% 3.68/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_3723,c_44,c_51,c_42,c_53,c_54,c_1933,c_1934,c_1937,c_2151,
% 3.68/1.00                 c_2243,c_2244,c_2340,c_2341,c_2555]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3822,plain,
% 3.68/1.00      ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_3816,c_1501]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3824,plain,
% 3.68/1.00      ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_3822,c_3708]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_898,plain,
% 3.68/1.00      ( ~ v1_funct_1(X0) | v1_funct_1(X1) | X1 != X0 ),
% 3.68/1.00      theory(equality) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2634,plain,
% 3.68/1.00      ( v1_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
% 3.68/1.00      | X0 != k2_funct_1(k2_funct_1(sK2)) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_898]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_5962,plain,
% 3.68/1.00      ( v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)))
% 3.68/1.00      | ~ v1_funct_1(k2_funct_1(k2_funct_1(sK2)))
% 3.68/1.00      | k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_funct_1(k2_funct_1(sK2)) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_2634]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_5966,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) = iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(k2_funct_1(sK2))) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_5962]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_3987,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 3.68/1.00      | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
% 3.68/1.00      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_3824,c_1495]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_11300,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2)) ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_3987,c_44,c_42,c_40,c_1883,c_1899,c_1933,c_1936,c_2151,
% 3.68/1.00                 c_2243,c_2340,c_2551,c_2559,c_3775,c_3824]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_21,plain,
% 3.68/1.00      ( ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X0)
% 3.68/1.00      | k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ),
% 3.68/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1503,plain,
% 3.68/1.00      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
% 3.68/1.00      | v2_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_4191,plain,
% 3.68/1.00      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2))
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_1494,c_1503]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1947,plain,
% 3.68/1.00      ( ~ v2_funct_1(sK2)
% 3.68/1.00      | ~ v1_funct_1(sK2)
% 3.68/1.00      | ~ v1_relat_1(sK2)
% 3.68/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2)) ),
% 3.68/1.00      inference(instantiation,[status(thm)],[c_21]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_4575,plain,
% 3.68/1.00      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_relat_1(k1_relat_1(sK2)) ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_4191,c_44,c_42,c_40,c_1947,c_2243,c_2340]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_22,plain,
% 3.68/1.00      ( ~ v2_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X0)
% 3.68/1.00      | ~ v1_funct_1(X1)
% 3.68/1.00      | ~ v1_relat_1(X0)
% 3.68/1.00      | ~ v1_relat_1(X1)
% 3.68/1.00      | k5_relat_1(X1,X0) != k6_relat_1(k2_relat_1(X0))
% 3.68/1.00      | k2_funct_1(X0) = X1
% 3.68/1.00      | k1_relat_1(X0) != k2_relat_1(X1) ),
% 3.68/1.00      inference(cnf_transformation,[],[f97]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1502,plain,
% 3.68/1.00      ( k5_relat_1(X0,X1) != k6_relat_1(k2_relat_1(X1))
% 3.68/1.00      | k2_funct_1(X1) = X0
% 3.68/1.00      | k1_relat_1(X1) != k2_relat_1(X0)
% 3.68/1.00      | v2_funct_1(X1) != iProver_top
% 3.68/1.00      | v1_funct_1(X1) != iProver_top
% 3.68/1.00      | v1_funct_1(X0) != iProver_top
% 3.68/1.00      | v1_relat_1(X1) != iProver_top
% 3.68/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_5916,plain,
% 3.68/1.00      ( k6_relat_1(k2_relat_1(k2_funct_1(sK2))) != k6_relat_1(k1_relat_1(sK2))
% 3.68/1.00      | k2_funct_1(k2_funct_1(sK2)) = sK2
% 3.68/1.00      | k1_relat_1(k2_funct_1(sK2)) != k2_relat_1(sK2)
% 3.68/1.00      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(superposition,[status(thm)],[c_4575,c_1502]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_5942,plain,
% 3.68/1.00      ( k6_relat_1(k1_relat_1(sK2)) != k6_relat_1(k1_relat_1(sK2))
% 3.68/1.00      | k2_funct_1(k2_funct_1(sK2)) = sK2
% 3.68/1.00      | k2_relat_1(sK2) != k2_relat_1(sK2)
% 3.68/1.00      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_5916,c_3525,c_3708]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_5943,plain,
% 3.68/1.00      ( k2_funct_1(k2_funct_1(sK2)) = sK2
% 3.68/1.00      | v2_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(equality_resolution_simp,[status(thm)],[c_5942]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_1900,plain,
% 3.68/1.00      ( v2_funct_1(k2_funct_1(sK2)) = iProver_top
% 3.68/1.00      | v2_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_funct_1(sK2) != iProver_top
% 3.68/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.68/1.00      inference(predicate_to_equality,[status(thm)],[c_1899]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_11015,plain,
% 3.68/1.00      ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_5943,c_51,c_53,c_54,c_1884,c_1887,c_1900,c_2244,c_2341]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_11302,plain,
% 3.68/1.00      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_11300,c_11015]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_13256,plain,
% 3.68/1.00      ( m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 3.68/1.00      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top ),
% 3.68/1.00      inference(global_propositional_subsumption,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_4928,c_44,c_51,c_42,c_53,c_40,c_1883,c_1884,c_1887,c_1899,
% 3.68/1.00                 c_1933,c_1936,c_2040,c_2151,c_2243,c_2244,c_2340,c_2341,
% 3.68/1.00                 c_2551,c_2559,c_3775,c_3824,c_5966,c_11302]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_13257,plain,
% 3.68/1.00      ( v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top ),
% 3.68/1.00      inference(renaming,[status(thm)],[c_13256]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_13260,plain,
% 3.68/1.00      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 3.68/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top ),
% 3.68/1.00      inference(light_normalisation,[status(thm)],[c_13257,c_11302]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2489,plain,
% 3.68/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2481,c_1540]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_4929,plain,
% 3.68/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2783,c_2489]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_2490,plain,
% 3.68/1.00      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2481,c_1534]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_4932,plain,
% 3.68/1.00      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
% 3.68/1.00      inference(demodulation,[status(thm)],[c_2783,c_2490]) ).
% 3.68/1.00  
% 3.68/1.00  cnf(c_13263,plain,
% 3.68/1.00      ( $false ),
% 3.68/1.00      inference(forward_subsumption_resolution,
% 3.68/1.00                [status(thm)],
% 3.68/1.00                [c_13260,c_4929,c_4932]) ).
% 3.68/1.00  
% 3.68/1.00  
% 3.68/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.68/1.00  
% 3.68/1.00  ------                               Statistics
% 3.68/1.00  
% 3.68/1.00  ------ General
% 3.68/1.00  
% 3.68/1.00  abstr_ref_over_cycles:                  0
% 3.68/1.00  abstr_ref_under_cycles:                 0
% 3.68/1.00  gc_basic_clause_elim:                   0
% 3.68/1.00  forced_gc_time:                         0
% 3.68/1.00  parsing_time:                           0.01
% 3.68/1.00  unif_index_cands_time:                  0.
% 3.68/1.00  unif_index_add_time:                    0.
% 3.68/1.00  orderings_time:                         0.
% 3.68/1.00  out_proof_time:                         0.016
% 3.68/1.00  total_time:                             0.432
% 3.68/1.00  num_of_symbols:                         61
% 3.68/1.00  num_of_terms:                           12307
% 3.68/1.00  
% 3.68/1.00  ------ Preprocessing
% 3.68/1.00  
% 3.68/1.00  num_of_splits:                          1
% 3.68/1.00  num_of_split_atoms:                     1
% 3.68/1.00  num_of_reused_defs:                     0
% 3.68/1.00  num_eq_ax_congr_red:                    20
% 3.68/1.00  num_of_sem_filtered_clauses:            1
% 3.68/1.00  num_of_subtypes:                        0
% 3.68/1.00  monotx_restored_types:                  0
% 3.68/1.00  sat_num_of_epr_types:                   0
% 3.68/1.00  sat_num_of_non_cyclic_types:            0
% 3.68/1.00  sat_guarded_non_collapsed_types:        0
% 3.68/1.00  num_pure_diseq_elim:                    0
% 3.68/1.00  simp_replaced_by:                       0
% 3.68/1.00  res_preprocessed:                       192
% 3.68/1.00  prep_upred:                             0
% 3.68/1.00  prep_unflattend:                        11
% 3.68/1.00  smt_new_axioms:                         0
% 3.68/1.00  pred_elim_cands:                        6
% 3.68/1.00  pred_elim:                              6
% 3.68/1.00  pred_elim_cl:                           7
% 3.68/1.00  pred_elim_cycles:                       9
% 3.68/1.00  merged_defs:                            0
% 3.68/1.00  merged_defs_ncl:                        0
% 3.68/1.00  bin_hyper_res:                          0
% 3.68/1.00  prep_cycles:                            4
% 3.68/1.00  pred_elim_time:                         0.006
% 3.68/1.00  splitting_time:                         0.
% 3.68/1.00  sem_filter_time:                        0.
% 3.68/1.00  monotx_time:                            0.001
% 3.68/1.00  subtype_inf_time:                       0.
% 3.68/1.00  
% 3.68/1.00  ------ Problem properties
% 3.68/1.00  
% 3.68/1.00  clauses:                                37
% 3.68/1.00  conjectures:                            5
% 3.68/1.00  epr:                                    4
% 3.68/1.00  horn:                                   37
% 3.68/1.00  ground:                                 8
% 3.68/1.00  unary:                                  9
% 3.68/1.00  binary:                                 3
% 3.68/1.00  lits:                                   134
% 3.68/1.00  lits_eq:                                25
% 3.68/1.00  fd_pure:                                0
% 3.68/1.00  fd_pseudo:                              0
% 3.68/1.00  fd_cond:                                0
% 3.68/1.00  fd_pseudo_cond:                         3
% 3.68/1.00  ac_symbols:                             0
% 3.68/1.00  
% 3.68/1.00  ------ Propositional Solver
% 3.68/1.00  
% 3.68/1.00  prop_solver_calls:                      29
% 3.68/1.00  prop_fast_solver_calls:                 2133
% 3.68/1.00  smt_solver_calls:                       0
% 3.68/1.00  smt_fast_solver_calls:                  0
% 3.68/1.00  prop_num_of_clauses:                    5671
% 3.68/1.00  prop_preprocess_simplified:             12574
% 3.68/1.00  prop_fo_subsumed:                       205
% 3.68/1.00  prop_solver_time:                       0.
% 3.68/1.00  smt_solver_time:                        0.
% 3.68/1.00  smt_fast_solver_time:                   0.
% 3.68/1.00  prop_fast_solver_time:                  0.
% 3.68/1.00  prop_unsat_core_time:                   0.
% 3.68/1.00  
% 3.68/1.00  ------ QBF
% 3.68/1.00  
% 3.68/1.00  qbf_q_res:                              0
% 3.68/1.00  qbf_num_tautologies:                    0
% 3.68/1.00  qbf_prep_cycles:                        0
% 3.68/1.00  
% 3.68/1.00  ------ BMC1
% 3.68/1.00  
% 3.68/1.00  bmc1_current_bound:                     -1
% 3.68/1.00  bmc1_last_solved_bound:                 -1
% 3.68/1.00  bmc1_unsat_core_size:                   -1
% 3.68/1.00  bmc1_unsat_core_parents_size:           -1
% 3.68/1.00  bmc1_merge_next_fun:                    0
% 3.68/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.68/1.00  
% 3.68/1.00  ------ Instantiation
% 3.68/1.00  
% 3.68/1.00  inst_num_of_clauses:                    1707
% 3.68/1.00  inst_num_in_passive:                    189
% 3.68/1.00  inst_num_in_active:                     741
% 3.68/1.00  inst_num_in_unprocessed:                777
% 3.68/1.00  inst_num_of_loops:                      820
% 3.68/1.00  inst_num_of_learning_restarts:          0
% 3.68/1.00  inst_num_moves_active_passive:          76
% 3.68/1.00  inst_lit_activity:                      0
% 3.68/1.00  inst_lit_activity_moves:                1
% 3.68/1.00  inst_num_tautologies:                   0
% 3.68/1.00  inst_num_prop_implied:                  0
% 3.68/1.00  inst_num_existing_simplified:           0
% 3.68/1.00  inst_num_eq_res_simplified:             0
% 3.68/1.00  inst_num_child_elim:                    0
% 3.68/1.00  inst_num_of_dismatching_blockings:      112
% 3.68/1.00  inst_num_of_non_proper_insts:           979
% 3.68/1.00  inst_num_of_duplicates:                 0
% 3.68/1.00  inst_inst_num_from_inst_to_res:         0
% 3.68/1.00  inst_dismatching_checking_time:         0.
% 3.68/1.00  
% 3.68/1.00  ------ Resolution
% 3.68/1.00  
% 3.68/1.00  res_num_of_clauses:                     0
% 3.68/1.00  res_num_in_passive:                     0
% 3.68/1.00  res_num_in_active:                      0
% 3.68/1.00  res_num_of_loops:                       196
% 3.68/1.00  res_forward_subset_subsumed:            51
% 3.68/1.00  res_backward_subset_subsumed:           0
% 3.68/1.00  res_forward_subsumed:                   0
% 3.68/1.00  res_backward_subsumed:                  0
% 3.68/1.00  res_forward_subsumption_resolution:     1
% 3.68/1.00  res_backward_subsumption_resolution:    0
% 3.68/1.00  res_clause_to_clause_subsumption:       588
% 3.68/1.00  res_orphan_elimination:                 0
% 3.68/1.00  res_tautology_del:                      73
% 3.68/1.00  res_num_eq_res_simplified:              0
% 3.68/1.00  res_num_sel_changes:                    0
% 3.68/1.00  res_moves_from_active_to_pass:          0
% 3.68/1.00  
% 3.68/1.00  ------ Superposition
% 3.68/1.00  
% 3.68/1.00  sup_time_total:                         0.
% 3.68/1.00  sup_time_generating:                    0.
% 3.68/1.00  sup_time_sim_full:                      0.
% 3.68/1.00  sup_time_sim_immed:                     0.
% 3.68/1.00  
% 3.68/1.00  sup_num_of_clauses:                     197
% 3.68/1.00  sup_num_in_active:                      125
% 3.68/1.00  sup_num_in_passive:                     72
% 3.68/1.00  sup_num_of_loops:                       163
% 3.68/1.00  sup_fw_superposition:                   135
% 3.68/1.00  sup_bw_superposition:                   151
% 3.68/1.00  sup_immediate_simplified:               98
% 3.68/1.00  sup_given_eliminated:                   0
% 3.68/1.00  comparisons_done:                       0
% 3.68/1.00  comparisons_avoided:                    0
% 3.68/1.00  
% 3.68/1.00  ------ Simplifications
% 3.68/1.00  
% 3.68/1.00  
% 3.68/1.00  sim_fw_subset_subsumed:                 27
% 3.68/1.00  sim_bw_subset_subsumed:                 3
% 3.68/1.00  sim_fw_subsumed:                        1
% 3.68/1.00  sim_bw_subsumed:                        0
% 3.68/1.00  sim_fw_subsumption_res:                 3
% 3.68/1.00  sim_bw_subsumption_res:                 0
% 3.68/1.00  sim_tautology_del:                      4
% 3.68/1.00  sim_eq_tautology_del:                   41
% 3.68/1.00  sim_eq_res_simp:                        3
% 3.68/1.00  sim_fw_demodulated:                     0
% 3.68/1.00  sim_bw_demodulated:                     37
% 3.68/1.00  sim_light_normalised:                   91
% 3.68/1.00  sim_joinable_taut:                      0
% 3.68/1.00  sim_joinable_simp:                      0
% 3.68/1.00  sim_ac_normalised:                      0
% 3.68/1.00  sim_smt_subsumption:                    0
% 3.68/1.00  
%------------------------------------------------------------------------------
