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
% DateTime   : Thu Dec  3 12:17:01 EST 2020

% Result     : Theorem 2.78s
% Output     : CNFRefutation 2.78s
% Verified   : 
% Statistics : Number of formulae       :  160 (3950 expanded)
%              Number of clauses        :   90 (1068 expanded)
%              Number of leaves         :   18 (1183 expanded)
%              Depth                    :   22
%              Number of atoms          :  535 (28792 expanded)
%              Number of equality atoms :  213 (9669 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f21,conjecture,(
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
               => ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0)
                  & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
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
                 => ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0)
                    & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f21])).

fof(f50,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
                | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f51,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
                | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0) ) ),
    inference(flattening,[],[f50])).

fof(f60,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
            | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
          & v2_funct_1(X2)
          & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK3)) != k2_struct_0(X0)
          | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK3)) != k2_struct_0(X1) )
        & v2_funct_1(sK3)
        & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK3) = k2_struct_0(X1)
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK3,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f59,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
                | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ( k2_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK2),X2)) != k2_struct_0(X0)
              | k1_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK2),X2)) != k2_struct_0(sK2) )
            & v2_funct_1(X2)
            & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK2),X2) = k2_struct_0(sK2)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK2))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK2))
            & v1_funct_1(X2) )
        & l1_struct_0(sK2)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f58,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
                  | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
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
              ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k2_struct_0(sK1)
                | k1_relset_1(u1_struct_0(X1),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f61,plain,
    ( ( k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1)
      | k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2) )
    & v2_funct_1(sK3)
    & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
    & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2))
    & v1_funct_1(sK3)
    & l1_struct_0(sK2)
    & ~ v2_struct_0(sK2)
    & l1_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f51,f60,f59,f58])).

fof(f101,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f61])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f87,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f98,plain,(
    l1_struct_0(sK2) ),
    inference(cnf_transformation,[],[f61])).

fof(f96,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f61])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f36])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f40])).

fof(f55,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f41])).

fof(f85,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f99,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f61])).

fof(f17,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f44,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f43])).

fof(f88,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f97,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f61])).

fof(f100,plain,(
    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f61])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f76,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f102,plain,(
    k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f61])).

fof(f19,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f47,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f46])).

fof(f92,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f103,plain,(
    v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f61])).

fof(f20,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f49,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
        & v1_funct_1(k2_tops_2(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f48])).

fof(f95,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f14,axiom,(
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

fof(f38,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f39,plain,(
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
    inference(flattening,[],[f38])).

fof(f54,plain,(
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
    inference(nnf_transformation,[],[f39])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f54])).

fof(f104,plain,
    ( k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1)
    | k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f61])).

fof(f94,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f32,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f31])).

fof(f73,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f8,axiom,(
    ! [X0] :
      ( ( v1_relat_1(X0)
        & ~ v1_xboole_0(X0) )
     => ~ v1_xboole_0(k1_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k1_relat_1(X0))
      | ~ v1_relat_1(X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f30,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k1_relat_1(X0))
      | ~ v1_relat_1(X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f71,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k1_relat_1(X0))
      | ~ v1_relat_1(X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_xboole_0(k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f70,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

cnf(c_37,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_1453,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_25,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_40,negated_conjecture,
    ( l1_struct_0(sK2) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_535,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_40])).

cnf(c_536,plain,
    ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_535])).

cnf(c_42,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_540,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_42])).

cnf(c_541,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_540])).

cnf(c_1490,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1453,c_536,c_541])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_24,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_672,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_xboole_0(X2)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_15,c_24])).

cnf(c_13,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_674,plain,
    ( ~ v1_funct_1(X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_2(X0,X1,X2)
    | v1_xboole_0(X2)
    | k1_relat_1(X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_672,c_13,c_12])).

cnf(c_675,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | k1_relat_1(X0) = X1 ),
    inference(renaming,[status(thm)],[c_674])).

cnf(c_1445,plain,
    ( k1_relat_1(X0) = X1
    | v1_funct_2(X0,X1,X2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_xboole_0(X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_675])).

cnf(c_2286,plain,
    ( k2_struct_0(sK1) = k1_relat_1(sK3)
    | v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1490,c_1445])).

cnf(c_39,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_46,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_26,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_41,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_522,plain,
    ( ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_41])).

cnf(c_523,plain,
    ( ~ l1_struct_0(sK2)
    | ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_522])).

cnf(c_525,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_523,c_40])).

cnf(c_1450,plain,
    ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_1479,plain,
    ( v1_xboole_0(k2_struct_0(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1450,c_536])).

cnf(c_38,negated_conjecture,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_1452,plain,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_1484,plain,
    ( v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1452,c_536,c_541])).

cnf(c_3476,plain,
    ( k2_struct_0(sK1) = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2286,c_46,c_1479,c_1484])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1463,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2465,plain,
    ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1490,c_1463])).

cnf(c_36,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f102])).

cnf(c_1487,plain,
    ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_struct_0(sK2) ),
    inference(light_normalisation,[status(thm)],[c_36,c_536,c_541])).

cnf(c_2711,plain,
    ( k2_struct_0(sK2) = k2_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2465,c_1487])).

cnf(c_30,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_35,negated_conjecture,
    ( v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_569,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_35])).

cnf(c_570,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK3)
    | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
    | k2_relset_1(X0,X1,sK3) != X1 ),
    inference(unflattening,[status(thm)],[c_569])).

cnf(c_574,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(sK3,X0,X1)
    | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
    | k2_relset_1(X0,X1,sK3) != X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_570,c_39])).

cnf(c_575,plain,
    ( ~ v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
    | k2_relset_1(X0,X1,sK3) != X1 ),
    inference(renaming,[status(thm)],[c_574])).

cnf(c_1448,plain,
    ( k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
    | k2_relset_1(X0,X1,sK3) != X1
    | v1_funct_2(sK3,X0,X1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_575])).

cnf(c_2021,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_funct_1(sK3)
    | v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1487,c_1448])).

cnf(c_2151,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_funct_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2021,c_1490,c_1484])).

cnf(c_2740,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) = k2_funct_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2711,c_2151])).

cnf(c_3481,plain,
    ( k2_tops_2(k1_relat_1(sK3),k2_relat_1(sK3),sK3) = k2_funct_1(sK3) ),
    inference(demodulation,[status(thm)],[c_3476,c_2740])).

cnf(c_31,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1456,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) = iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_4279,plain,
    ( v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
    | m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k1_relat_1(sK3)))) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3481,c_1456])).

cnf(c_2741,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_relat_1(sK3)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2711,c_1490])).

cnf(c_3480,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3476,c_2741])).

cnf(c_2742,plain,
    ( v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2711,c_1484])).

cnf(c_3483,plain,
    ( v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3476,c_2742])).

cnf(c_4755,plain,
    ( m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k1_relat_1(sK3)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4279,c_46,c_3480,c_3483])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1457,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_4760,plain,
    ( k1_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k2_relat_1(sK3)
    | k1_relat_1(sK3) = k1_xboole_0
    | v1_funct_2(k2_funct_1(sK3),k2_relat_1(sK3),k1_relat_1(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4755,c_1457])).

cnf(c_34,negated_conjecture,
    ( k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2)
    | k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_1577,plain,
    ( k1_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3)) != k2_struct_0(sK2)
    | k2_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3)) != k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_34,c_536,c_541])).

cnf(c_2154,plain,
    ( k1_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK2)
    | k2_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK1) ),
    inference(demodulation,[status(thm)],[c_2151,c_1577])).

cnf(c_2739,plain,
    ( k1_relset_1(k2_relat_1(sK3),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_relat_1(sK3)
    | k2_relset_1(k2_relat_1(sK3),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK1) ),
    inference(demodulation,[status(thm)],[c_2711,c_2154])).

cnf(c_3479,plain,
    ( k1_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) != k2_relat_1(sK3)
    | k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) != k1_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_3476,c_2739])).

cnf(c_32,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1455,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_4280,plain,
    ( v1_funct_2(k2_funct_1(sK3),k2_relat_1(sK3),k1_relat_1(sK3)) = iProver_top
    | v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3481,c_1455])).

cnf(c_4761,plain,
    ( k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k2_relat_1(k2_funct_1(sK3)) ),
    inference(superposition,[status(thm)],[c_4755,c_1463])).

cnf(c_10,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_607,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_35])).

cnf(c_608,plain,
    ( ~ v1_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_607])).

cnf(c_610,plain,
    ( ~ v1_relat_1(sK3)
    | k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_608,c_39])).

cnf(c_1446,plain,
    ( k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_610])).

cnf(c_1685,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1892,plain,
    ( k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1446,c_39,c_37,c_608,c_1685])).

cnf(c_4778,plain,
    ( k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k1_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_4761,c_1892])).

cnf(c_5138,plain,
    ( k1_relat_1(sK3) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4760,c_46,c_3479,c_3480,c_3483,c_4280,c_4778])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | v1_xboole_0(X0)
    | ~ v1_xboole_0(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1465,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(k1_relat_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_5187,plain,
    ( v1_relat_1(sK3) != iProver_top
    | v1_xboole_0(sK3) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_5138,c_1465])).

cnf(c_8,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1466,plain,
    ( v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(k2_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2743,plain,
    ( v1_xboole_0(k2_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2711,c_1479])).

cnf(c_2810,plain,
    ( v1_xboole_0(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1466,c_2743])).

cnf(c_1686,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1685])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_143,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_48,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5187,c_2810,c_1686,c_143,c_48])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:39:38 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.78/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.78/0.99  
% 2.78/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.78/0.99  
% 2.78/0.99  ------  iProver source info
% 2.78/0.99  
% 2.78/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.78/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.78/0.99  git: non_committed_changes: false
% 2.78/0.99  git: last_make_outside_of_git: false
% 2.78/0.99  
% 2.78/0.99  ------ 
% 2.78/0.99  
% 2.78/0.99  ------ Input Options
% 2.78/0.99  
% 2.78/0.99  --out_options                           all
% 2.78/0.99  --tptp_safe_out                         true
% 2.78/0.99  --problem_path                          ""
% 2.78/0.99  --include_path                          ""
% 2.78/0.99  --clausifier                            res/vclausify_rel
% 2.78/0.99  --clausifier_options                    --mode clausify
% 2.78/0.99  --stdin                                 false
% 2.78/0.99  --stats_out                             all
% 2.78/0.99  
% 2.78/0.99  ------ General Options
% 2.78/0.99  
% 2.78/0.99  --fof                                   false
% 2.78/0.99  --time_out_real                         305.
% 2.78/0.99  --time_out_virtual                      -1.
% 2.78/0.99  --symbol_type_check                     false
% 2.78/0.99  --clausify_out                          false
% 2.78/0.99  --sig_cnt_out                           false
% 2.78/0.99  --trig_cnt_out                          false
% 2.78/0.99  --trig_cnt_out_tolerance                1.
% 2.78/0.99  --trig_cnt_out_sk_spl                   false
% 2.78/0.99  --abstr_cl_out                          false
% 2.78/0.99  
% 2.78/0.99  ------ Global Options
% 2.78/0.99  
% 2.78/0.99  --schedule                              default
% 2.78/0.99  --add_important_lit                     false
% 2.78/0.99  --prop_solver_per_cl                    1000
% 2.78/0.99  --min_unsat_core                        false
% 2.78/0.99  --soft_assumptions                      false
% 2.78/0.99  --soft_lemma_size                       3
% 2.78/0.99  --prop_impl_unit_size                   0
% 2.78/0.99  --prop_impl_unit                        []
% 2.78/0.99  --share_sel_clauses                     true
% 2.78/0.99  --reset_solvers                         false
% 2.78/0.99  --bc_imp_inh                            [conj_cone]
% 2.78/0.99  --conj_cone_tolerance                   3.
% 2.78/0.99  --extra_neg_conj                        none
% 2.78/0.99  --large_theory_mode                     true
% 2.78/0.99  --prolific_symb_bound                   200
% 2.78/0.99  --lt_threshold                          2000
% 2.78/0.99  --clause_weak_htbl                      true
% 2.78/0.99  --gc_record_bc_elim                     false
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing Options
% 2.78/0.99  
% 2.78/0.99  --preprocessing_flag                    true
% 2.78/0.99  --time_out_prep_mult                    0.1
% 2.78/0.99  --splitting_mode                        input
% 2.78/0.99  --splitting_grd                         true
% 2.78/0.99  --splitting_cvd                         false
% 2.78/0.99  --splitting_cvd_svl                     false
% 2.78/0.99  --splitting_nvd                         32
% 2.78/0.99  --sub_typing                            true
% 2.78/0.99  --prep_gs_sim                           true
% 2.78/0.99  --prep_unflatten                        true
% 2.78/0.99  --prep_res_sim                          true
% 2.78/0.99  --prep_upred                            true
% 2.78/0.99  --prep_sem_filter                       exhaustive
% 2.78/0.99  --prep_sem_filter_out                   false
% 2.78/0.99  --pred_elim                             true
% 2.78/0.99  --res_sim_input                         true
% 2.78/0.99  --eq_ax_congr_red                       true
% 2.78/0.99  --pure_diseq_elim                       true
% 2.78/0.99  --brand_transform                       false
% 2.78/0.99  --non_eq_to_eq                          false
% 2.78/0.99  --prep_def_merge                        true
% 2.78/0.99  --prep_def_merge_prop_impl              false
% 2.78/0.99  --prep_def_merge_mbd                    true
% 2.78/0.99  --prep_def_merge_tr_red                 false
% 2.78/0.99  --prep_def_merge_tr_cl                  false
% 2.78/0.99  --smt_preprocessing                     true
% 2.78/0.99  --smt_ac_axioms                         fast
% 2.78/0.99  --preprocessed_out                      false
% 2.78/0.99  --preprocessed_stats                    false
% 2.78/0.99  
% 2.78/0.99  ------ Abstraction refinement Options
% 2.78/0.99  
% 2.78/0.99  --abstr_ref                             []
% 2.78/0.99  --abstr_ref_prep                        false
% 2.78/0.99  --abstr_ref_until_sat                   false
% 2.78/0.99  --abstr_ref_sig_restrict                funpre
% 2.78/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.78/0.99  --abstr_ref_under                       []
% 2.78/0.99  
% 2.78/0.99  ------ SAT Options
% 2.78/0.99  
% 2.78/0.99  --sat_mode                              false
% 2.78/0.99  --sat_fm_restart_options                ""
% 2.78/0.99  --sat_gr_def                            false
% 2.78/0.99  --sat_epr_types                         true
% 2.78/0.99  --sat_non_cyclic_types                  false
% 2.78/0.99  --sat_finite_models                     false
% 2.78/0.99  --sat_fm_lemmas                         false
% 2.78/0.99  --sat_fm_prep                           false
% 2.78/0.99  --sat_fm_uc_incr                        true
% 2.78/0.99  --sat_out_model                         small
% 2.78/0.99  --sat_out_clauses                       false
% 2.78/0.99  
% 2.78/0.99  ------ QBF Options
% 2.78/0.99  
% 2.78/0.99  --qbf_mode                              false
% 2.78/0.99  --qbf_elim_univ                         false
% 2.78/0.99  --qbf_dom_inst                          none
% 2.78/0.99  --qbf_dom_pre_inst                      false
% 2.78/0.99  --qbf_sk_in                             false
% 2.78/0.99  --qbf_pred_elim                         true
% 2.78/0.99  --qbf_split                             512
% 2.78/0.99  
% 2.78/0.99  ------ BMC1 Options
% 2.78/0.99  
% 2.78/0.99  --bmc1_incremental                      false
% 2.78/0.99  --bmc1_axioms                           reachable_all
% 2.78/0.99  --bmc1_min_bound                        0
% 2.78/0.99  --bmc1_max_bound                        -1
% 2.78/0.99  --bmc1_max_bound_default                -1
% 2.78/0.99  --bmc1_symbol_reachability              true
% 2.78/0.99  --bmc1_property_lemmas                  false
% 2.78/0.99  --bmc1_k_induction                      false
% 2.78/0.99  --bmc1_non_equiv_states                 false
% 2.78/0.99  --bmc1_deadlock                         false
% 2.78/0.99  --bmc1_ucm                              false
% 2.78/0.99  --bmc1_add_unsat_core                   none
% 2.78/0.99  --bmc1_unsat_core_children              false
% 2.78/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.78/0.99  --bmc1_out_stat                         full
% 2.78/0.99  --bmc1_ground_init                      false
% 2.78/0.99  --bmc1_pre_inst_next_state              false
% 2.78/0.99  --bmc1_pre_inst_state                   false
% 2.78/0.99  --bmc1_pre_inst_reach_state             false
% 2.78/0.99  --bmc1_out_unsat_core                   false
% 2.78/0.99  --bmc1_aig_witness_out                  false
% 2.78/0.99  --bmc1_verbose                          false
% 2.78/0.99  --bmc1_dump_clauses_tptp                false
% 2.78/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.78/0.99  --bmc1_dump_file                        -
% 2.78/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.78/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.78/0.99  --bmc1_ucm_extend_mode                  1
% 2.78/0.99  --bmc1_ucm_init_mode                    2
% 2.78/0.99  --bmc1_ucm_cone_mode                    none
% 2.78/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.78/0.99  --bmc1_ucm_relax_model                  4
% 2.78/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.78/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.78/0.99  --bmc1_ucm_layered_model                none
% 2.78/0.99  --bmc1_ucm_max_lemma_size               10
% 2.78/0.99  
% 2.78/0.99  ------ AIG Options
% 2.78/0.99  
% 2.78/0.99  --aig_mode                              false
% 2.78/0.99  
% 2.78/0.99  ------ Instantiation Options
% 2.78/0.99  
% 2.78/0.99  --instantiation_flag                    true
% 2.78/0.99  --inst_sos_flag                         false
% 2.78/0.99  --inst_sos_phase                        true
% 2.78/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.78/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.78/0.99  --inst_lit_sel_side                     num_symb
% 2.78/0.99  --inst_solver_per_active                1400
% 2.78/0.99  --inst_solver_calls_frac                1.
% 2.78/0.99  --inst_passive_queue_type               priority_queues
% 2.78/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.78/0.99  --inst_passive_queues_freq              [25;2]
% 2.78/0.99  --inst_dismatching                      true
% 2.78/0.99  --inst_eager_unprocessed_to_passive     true
% 2.78/0.99  --inst_prop_sim_given                   true
% 2.78/0.99  --inst_prop_sim_new                     false
% 2.78/0.99  --inst_subs_new                         false
% 2.78/0.99  --inst_eq_res_simp                      false
% 2.78/0.99  --inst_subs_given                       false
% 2.78/0.99  --inst_orphan_elimination               true
% 2.78/0.99  --inst_learning_loop_flag               true
% 2.78/0.99  --inst_learning_start                   3000
% 2.78/0.99  --inst_learning_factor                  2
% 2.78/0.99  --inst_start_prop_sim_after_learn       3
% 2.78/0.99  --inst_sel_renew                        solver
% 2.78/0.99  --inst_lit_activity_flag                true
% 2.78/0.99  --inst_restr_to_given                   false
% 2.78/0.99  --inst_activity_threshold               500
% 2.78/0.99  --inst_out_proof                        true
% 2.78/0.99  
% 2.78/0.99  ------ Resolution Options
% 2.78/0.99  
% 2.78/0.99  --resolution_flag                       true
% 2.78/0.99  --res_lit_sel                           adaptive
% 2.78/0.99  --res_lit_sel_side                      none
% 2.78/0.99  --res_ordering                          kbo
% 2.78/0.99  --res_to_prop_solver                    active
% 2.78/0.99  --res_prop_simpl_new                    false
% 2.78/0.99  --res_prop_simpl_given                  true
% 2.78/0.99  --res_passive_queue_type                priority_queues
% 2.78/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.78/0.99  --res_passive_queues_freq               [15;5]
% 2.78/0.99  --res_forward_subs                      full
% 2.78/0.99  --res_backward_subs                     full
% 2.78/0.99  --res_forward_subs_resolution           true
% 2.78/0.99  --res_backward_subs_resolution          true
% 2.78/0.99  --res_orphan_elimination                true
% 2.78/0.99  --res_time_limit                        2.
% 2.78/0.99  --res_out_proof                         true
% 2.78/0.99  
% 2.78/0.99  ------ Superposition Options
% 2.78/0.99  
% 2.78/0.99  --superposition_flag                    true
% 2.78/0.99  --sup_passive_queue_type                priority_queues
% 2.78/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.78/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.78/0.99  --demod_completeness_check              fast
% 2.78/0.99  --demod_use_ground                      true
% 2.78/0.99  --sup_to_prop_solver                    passive
% 2.78/0.99  --sup_prop_simpl_new                    true
% 2.78/0.99  --sup_prop_simpl_given                  true
% 2.78/0.99  --sup_fun_splitting                     false
% 2.78/0.99  --sup_smt_interval                      50000
% 2.78/0.99  
% 2.78/0.99  ------ Superposition Simplification Setup
% 2.78/0.99  
% 2.78/0.99  --sup_indices_passive                   []
% 2.78/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.78/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_full_bw                           [BwDemod]
% 2.78/0.99  --sup_immed_triv                        [TrivRules]
% 2.78/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.78/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_immed_bw_main                     []
% 2.78/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.78/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/0.99  
% 2.78/0.99  ------ Combination Options
% 2.78/0.99  
% 2.78/0.99  --comb_res_mult                         3
% 2.78/0.99  --comb_sup_mult                         2
% 2.78/0.99  --comb_inst_mult                        10
% 2.78/0.99  
% 2.78/0.99  ------ Debug Options
% 2.78/0.99  
% 2.78/0.99  --dbg_backtrace                         false
% 2.78/0.99  --dbg_dump_prop_clauses                 false
% 2.78/0.99  --dbg_dump_prop_clauses_file            -
% 2.78/0.99  --dbg_out_stat                          false
% 2.78/0.99  ------ Parsing...
% 2.78/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.78/0.99  ------ Proving...
% 2.78/0.99  ------ Problem Properties 
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  clauses                                 31
% 2.78/0.99  conjectures                             5
% 2.78/0.99  EPR                                     2
% 2.78/0.99  Horn                                    25
% 2.78/0.99  unary                                   10
% 2.78/0.99  binary                                  8
% 2.78/0.99  lits                                    75
% 2.78/0.99  lits eq                                 25
% 2.78/0.99  fd_pure                                 0
% 2.78/0.99  fd_pseudo                               0
% 2.78/0.99  fd_cond                                 4
% 2.78/0.99  fd_pseudo_cond                          1
% 2.78/0.99  AC symbols                              0
% 2.78/0.99  
% 2.78/0.99  ------ Schedule dynamic 5 is on 
% 2.78/0.99  
% 2.78/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  ------ 
% 2.78/0.99  Current options:
% 2.78/0.99  ------ 
% 2.78/0.99  
% 2.78/0.99  ------ Input Options
% 2.78/0.99  
% 2.78/0.99  --out_options                           all
% 2.78/0.99  --tptp_safe_out                         true
% 2.78/0.99  --problem_path                          ""
% 2.78/0.99  --include_path                          ""
% 2.78/0.99  --clausifier                            res/vclausify_rel
% 2.78/0.99  --clausifier_options                    --mode clausify
% 2.78/0.99  --stdin                                 false
% 2.78/0.99  --stats_out                             all
% 2.78/0.99  
% 2.78/0.99  ------ General Options
% 2.78/0.99  
% 2.78/0.99  --fof                                   false
% 2.78/0.99  --time_out_real                         305.
% 2.78/0.99  --time_out_virtual                      -1.
% 2.78/0.99  --symbol_type_check                     false
% 2.78/0.99  --clausify_out                          false
% 2.78/0.99  --sig_cnt_out                           false
% 2.78/0.99  --trig_cnt_out                          false
% 2.78/0.99  --trig_cnt_out_tolerance                1.
% 2.78/0.99  --trig_cnt_out_sk_spl                   false
% 2.78/0.99  --abstr_cl_out                          false
% 2.78/0.99  
% 2.78/0.99  ------ Global Options
% 2.78/0.99  
% 2.78/0.99  --schedule                              default
% 2.78/0.99  --add_important_lit                     false
% 2.78/0.99  --prop_solver_per_cl                    1000
% 2.78/0.99  --min_unsat_core                        false
% 2.78/0.99  --soft_assumptions                      false
% 2.78/0.99  --soft_lemma_size                       3
% 2.78/0.99  --prop_impl_unit_size                   0
% 2.78/0.99  --prop_impl_unit                        []
% 2.78/0.99  --share_sel_clauses                     true
% 2.78/0.99  --reset_solvers                         false
% 2.78/0.99  --bc_imp_inh                            [conj_cone]
% 2.78/0.99  --conj_cone_tolerance                   3.
% 2.78/0.99  --extra_neg_conj                        none
% 2.78/0.99  --large_theory_mode                     true
% 2.78/0.99  --prolific_symb_bound                   200
% 2.78/0.99  --lt_threshold                          2000
% 2.78/0.99  --clause_weak_htbl                      true
% 2.78/0.99  --gc_record_bc_elim                     false
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing Options
% 2.78/0.99  
% 2.78/0.99  --preprocessing_flag                    true
% 2.78/0.99  --time_out_prep_mult                    0.1
% 2.78/0.99  --splitting_mode                        input
% 2.78/0.99  --splitting_grd                         true
% 2.78/0.99  --splitting_cvd                         false
% 2.78/0.99  --splitting_cvd_svl                     false
% 2.78/0.99  --splitting_nvd                         32
% 2.78/0.99  --sub_typing                            true
% 2.78/0.99  --prep_gs_sim                           true
% 2.78/0.99  --prep_unflatten                        true
% 2.78/0.99  --prep_res_sim                          true
% 2.78/0.99  --prep_upred                            true
% 2.78/0.99  --prep_sem_filter                       exhaustive
% 2.78/0.99  --prep_sem_filter_out                   false
% 2.78/0.99  --pred_elim                             true
% 2.78/0.99  --res_sim_input                         true
% 2.78/0.99  --eq_ax_congr_red                       true
% 2.78/0.99  --pure_diseq_elim                       true
% 2.78/0.99  --brand_transform                       false
% 2.78/0.99  --non_eq_to_eq                          false
% 2.78/0.99  --prep_def_merge                        true
% 2.78/0.99  --prep_def_merge_prop_impl              false
% 2.78/0.99  --prep_def_merge_mbd                    true
% 2.78/0.99  --prep_def_merge_tr_red                 false
% 2.78/0.99  --prep_def_merge_tr_cl                  false
% 2.78/0.99  --smt_preprocessing                     true
% 2.78/0.99  --smt_ac_axioms                         fast
% 2.78/0.99  --preprocessed_out                      false
% 2.78/0.99  --preprocessed_stats                    false
% 2.78/0.99  
% 2.78/0.99  ------ Abstraction refinement Options
% 2.78/0.99  
% 2.78/0.99  --abstr_ref                             []
% 2.78/0.99  --abstr_ref_prep                        false
% 2.78/0.99  --abstr_ref_until_sat                   false
% 2.78/0.99  --abstr_ref_sig_restrict                funpre
% 2.78/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.78/0.99  --abstr_ref_under                       []
% 2.78/0.99  
% 2.78/0.99  ------ SAT Options
% 2.78/0.99  
% 2.78/0.99  --sat_mode                              false
% 2.78/0.99  --sat_fm_restart_options                ""
% 2.78/0.99  --sat_gr_def                            false
% 2.78/0.99  --sat_epr_types                         true
% 2.78/0.99  --sat_non_cyclic_types                  false
% 2.78/0.99  --sat_finite_models                     false
% 2.78/0.99  --sat_fm_lemmas                         false
% 2.78/0.99  --sat_fm_prep                           false
% 2.78/0.99  --sat_fm_uc_incr                        true
% 2.78/0.99  --sat_out_model                         small
% 2.78/0.99  --sat_out_clauses                       false
% 2.78/0.99  
% 2.78/0.99  ------ QBF Options
% 2.78/0.99  
% 2.78/0.99  --qbf_mode                              false
% 2.78/0.99  --qbf_elim_univ                         false
% 2.78/0.99  --qbf_dom_inst                          none
% 2.78/0.99  --qbf_dom_pre_inst                      false
% 2.78/0.99  --qbf_sk_in                             false
% 2.78/0.99  --qbf_pred_elim                         true
% 2.78/0.99  --qbf_split                             512
% 2.78/0.99  
% 2.78/0.99  ------ BMC1 Options
% 2.78/0.99  
% 2.78/0.99  --bmc1_incremental                      false
% 2.78/0.99  --bmc1_axioms                           reachable_all
% 2.78/0.99  --bmc1_min_bound                        0
% 2.78/0.99  --bmc1_max_bound                        -1
% 2.78/0.99  --bmc1_max_bound_default                -1
% 2.78/0.99  --bmc1_symbol_reachability              true
% 2.78/0.99  --bmc1_property_lemmas                  false
% 2.78/0.99  --bmc1_k_induction                      false
% 2.78/0.99  --bmc1_non_equiv_states                 false
% 2.78/0.99  --bmc1_deadlock                         false
% 2.78/0.99  --bmc1_ucm                              false
% 2.78/0.99  --bmc1_add_unsat_core                   none
% 2.78/0.99  --bmc1_unsat_core_children              false
% 2.78/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.78/0.99  --bmc1_out_stat                         full
% 2.78/0.99  --bmc1_ground_init                      false
% 2.78/0.99  --bmc1_pre_inst_next_state              false
% 2.78/0.99  --bmc1_pre_inst_state                   false
% 2.78/0.99  --bmc1_pre_inst_reach_state             false
% 2.78/0.99  --bmc1_out_unsat_core                   false
% 2.78/0.99  --bmc1_aig_witness_out                  false
% 2.78/0.99  --bmc1_verbose                          false
% 2.78/0.99  --bmc1_dump_clauses_tptp                false
% 2.78/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.78/0.99  --bmc1_dump_file                        -
% 2.78/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.78/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.78/0.99  --bmc1_ucm_extend_mode                  1
% 2.78/0.99  --bmc1_ucm_init_mode                    2
% 2.78/0.99  --bmc1_ucm_cone_mode                    none
% 2.78/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.78/0.99  --bmc1_ucm_relax_model                  4
% 2.78/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.78/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.78/0.99  --bmc1_ucm_layered_model                none
% 2.78/0.99  --bmc1_ucm_max_lemma_size               10
% 2.78/0.99  
% 2.78/0.99  ------ AIG Options
% 2.78/0.99  
% 2.78/0.99  --aig_mode                              false
% 2.78/0.99  
% 2.78/0.99  ------ Instantiation Options
% 2.78/0.99  
% 2.78/0.99  --instantiation_flag                    true
% 2.78/0.99  --inst_sos_flag                         false
% 2.78/0.99  --inst_sos_phase                        true
% 2.78/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.78/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.78/0.99  --inst_lit_sel_side                     none
% 2.78/0.99  --inst_solver_per_active                1400
% 2.78/0.99  --inst_solver_calls_frac                1.
% 2.78/0.99  --inst_passive_queue_type               priority_queues
% 2.78/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.78/0.99  --inst_passive_queues_freq              [25;2]
% 2.78/0.99  --inst_dismatching                      true
% 2.78/0.99  --inst_eager_unprocessed_to_passive     true
% 2.78/0.99  --inst_prop_sim_given                   true
% 2.78/0.99  --inst_prop_sim_new                     false
% 2.78/0.99  --inst_subs_new                         false
% 2.78/0.99  --inst_eq_res_simp                      false
% 2.78/0.99  --inst_subs_given                       false
% 2.78/0.99  --inst_orphan_elimination               true
% 2.78/0.99  --inst_learning_loop_flag               true
% 2.78/0.99  --inst_learning_start                   3000
% 2.78/0.99  --inst_learning_factor                  2
% 2.78/0.99  --inst_start_prop_sim_after_learn       3
% 2.78/0.99  --inst_sel_renew                        solver
% 2.78/0.99  --inst_lit_activity_flag                true
% 2.78/0.99  --inst_restr_to_given                   false
% 2.78/0.99  --inst_activity_threshold               500
% 2.78/0.99  --inst_out_proof                        true
% 2.78/0.99  
% 2.78/0.99  ------ Resolution Options
% 2.78/0.99  
% 2.78/0.99  --resolution_flag                       false
% 2.78/0.99  --res_lit_sel                           adaptive
% 2.78/0.99  --res_lit_sel_side                      none
% 2.78/0.99  --res_ordering                          kbo
% 2.78/0.99  --res_to_prop_solver                    active
% 2.78/0.99  --res_prop_simpl_new                    false
% 2.78/0.99  --res_prop_simpl_given                  true
% 2.78/0.99  --res_passive_queue_type                priority_queues
% 2.78/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.78/0.99  --res_passive_queues_freq               [15;5]
% 2.78/0.99  --res_forward_subs                      full
% 2.78/0.99  --res_backward_subs                     full
% 2.78/0.99  --res_forward_subs_resolution           true
% 2.78/0.99  --res_backward_subs_resolution          true
% 2.78/0.99  --res_orphan_elimination                true
% 2.78/0.99  --res_time_limit                        2.
% 2.78/0.99  --res_out_proof                         true
% 2.78/0.99  
% 2.78/0.99  ------ Superposition Options
% 2.78/0.99  
% 2.78/0.99  --superposition_flag                    true
% 2.78/0.99  --sup_passive_queue_type                priority_queues
% 2.78/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.78/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.78/0.99  --demod_completeness_check              fast
% 2.78/0.99  --demod_use_ground                      true
% 2.78/0.99  --sup_to_prop_solver                    passive
% 2.78/0.99  --sup_prop_simpl_new                    true
% 2.78/0.99  --sup_prop_simpl_given                  true
% 2.78/0.99  --sup_fun_splitting                     false
% 2.78/0.99  --sup_smt_interval                      50000
% 2.78/0.99  
% 2.78/0.99  ------ Superposition Simplification Setup
% 2.78/0.99  
% 2.78/0.99  --sup_indices_passive                   []
% 2.78/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.78/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_full_bw                           [BwDemod]
% 2.78/0.99  --sup_immed_triv                        [TrivRules]
% 2.78/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.78/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_immed_bw_main                     []
% 2.78/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.78/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/0.99  
% 2.78/0.99  ------ Combination Options
% 2.78/0.99  
% 2.78/0.99  --comb_res_mult                         3
% 2.78/0.99  --comb_sup_mult                         2
% 2.78/0.99  --comb_inst_mult                        10
% 2.78/0.99  
% 2.78/0.99  ------ Debug Options
% 2.78/0.99  
% 2.78/0.99  --dbg_backtrace                         false
% 2.78/0.99  --dbg_dump_prop_clauses                 false
% 2.78/0.99  --dbg_dump_prop_clauses_file            -
% 2.78/0.99  --dbg_out_stat                          false
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  ------ Proving...
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  % SZS status Theorem for theBenchmark.p
% 2.78/0.99  
% 2.78/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.78/0.99  
% 2.78/0.99  fof(f21,conjecture,(
% 2.78/0.99    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1))))))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f22,negated_conjecture,(
% 2.78/0.99    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1))))))),
% 2.78/0.99    inference(negated_conjecture,[],[f21])).
% 2.78/0.99  
% 2.78/0.99  fof(f50,plain,(
% 2.78/0.99    ? [X0] : (? [X1] : (? [X2] : (((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 2.78/0.99    inference(ennf_transformation,[],[f22])).
% 2.78/0.99  
% 2.78/0.99  fof(f51,plain,(
% 2.78/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 2.78/0.99    inference(flattening,[],[f50])).
% 2.78/0.99  
% 2.78/0.99  fof(f60,plain,(
% 2.78/0.99    ( ! [X0,X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK3)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK3)) != k2_struct_0(X1)) & v2_funct_1(sK3) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK3) = k2_struct_0(X1) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK3,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK3))) )),
% 2.78/0.99    introduced(choice_axiom,[])).
% 2.78/0.99  
% 2.78/0.99  fof(f59,plain,(
% 2.78/0.99    ( ! [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : ((k2_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK2),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK2),X2)) != k2_struct_0(sK2)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK2),X2) = k2_struct_0(sK2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK2)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK2)) & v1_funct_1(X2)) & l1_struct_0(sK2) & ~v2_struct_0(sK2))) )),
% 2.78/0.99    introduced(choice_axiom,[])).
% 2.78/0.99  
% 2.78/0.99  fof(f58,plain,(
% 2.78/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k2_struct_0(sK1) | k1_relset_1(u1_struct_0(X1),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK1),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK1),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK1))),
% 2.78/0.99    introduced(choice_axiom,[])).
% 2.78/0.99  
% 2.78/0.99  fof(f61,plain,(
% 2.78/0.99    (((k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1) | k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2)) & v2_funct_1(sK3) & k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) & v1_funct_1(sK3)) & l1_struct_0(sK2) & ~v2_struct_0(sK2)) & l1_struct_0(sK1)),
% 2.78/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f51,f60,f59,f58])).
% 2.78/0.99  
% 2.78/0.99  fof(f101,plain,(
% 2.78/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f16,axiom,(
% 2.78/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f42,plain,(
% 2.78/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 2.78/0.99    inference(ennf_transformation,[],[f16])).
% 2.78/0.99  
% 2.78/0.99  fof(f87,plain,(
% 2.78/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f42])).
% 2.78/0.99  
% 2.78/0.99  fof(f98,plain,(
% 2.78/0.99    l1_struct_0(sK2)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f96,plain,(
% 2.78/0.99    l1_struct_0(sK1)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f13,axiom,(
% 2.78/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f36,plain,(
% 2.78/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.78/0.99    inference(ennf_transformation,[],[f13])).
% 2.78/0.99  
% 2.78/0.99  fof(f37,plain,(
% 2.78/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.78/0.99    inference(flattening,[],[f36])).
% 2.78/0.99  
% 2.78/0.99  fof(f78,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f37])).
% 2.78/0.99  
% 2.78/0.99  fof(f15,axiom,(
% 2.78/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f40,plain,(
% 2.78/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 2.78/0.99    inference(ennf_transformation,[],[f15])).
% 2.78/0.99  
% 2.78/0.99  fof(f41,plain,(
% 2.78/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.78/0.99    inference(flattening,[],[f40])).
% 2.78/0.99  
% 2.78/0.99  fof(f55,plain,(
% 2.78/0.99    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.78/0.99    inference(nnf_transformation,[],[f41])).
% 2.78/0.99  
% 2.78/0.99  fof(f85,plain,(
% 2.78/0.99    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f55])).
% 2.78/0.99  
% 2.78/0.99  fof(f11,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f24,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 2.78/0.99    inference(pure_predicate_removal,[],[f11])).
% 2.78/0.99  
% 2.78/0.99  fof(f34,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(ennf_transformation,[],[f24])).
% 2.78/0.99  
% 2.78/0.99  fof(f75,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/0.99    inference(cnf_transformation,[],[f34])).
% 2.78/0.99  
% 2.78/0.99  fof(f10,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f33,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(ennf_transformation,[],[f10])).
% 2.78/0.99  
% 2.78/0.99  fof(f74,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/0.99    inference(cnf_transformation,[],[f33])).
% 2.78/0.99  
% 2.78/0.99  fof(f99,plain,(
% 2.78/0.99    v1_funct_1(sK3)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f17,axiom,(
% 2.78/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f43,plain,(
% 2.78/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.78/0.99    inference(ennf_transformation,[],[f17])).
% 2.78/0.99  
% 2.78/0.99  fof(f44,plain,(
% 2.78/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.78/0.99    inference(flattening,[],[f43])).
% 2.78/0.99  
% 2.78/0.99  fof(f88,plain,(
% 2.78/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f44])).
% 2.78/0.99  
% 2.78/0.99  fof(f97,plain,(
% 2.78/0.99    ~v2_struct_0(sK2)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f100,plain,(
% 2.78/0.99    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2))),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f12,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f35,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(ennf_transformation,[],[f12])).
% 2.78/0.99  
% 2.78/0.99  fof(f76,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/0.99    inference(cnf_transformation,[],[f35])).
% 2.78/0.99  
% 2.78/0.99  fof(f102,plain,(
% 2.78/0.99    k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f19,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f46,plain,(
% 2.78/0.99    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.78/0.99    inference(ennf_transformation,[],[f19])).
% 2.78/0.99  
% 2.78/0.99  fof(f47,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.78/0.99    inference(flattening,[],[f46])).
% 2.78/0.99  
% 2.78/0.99  fof(f92,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f47])).
% 2.78/0.99  
% 2.78/0.99  fof(f103,plain,(
% 2.78/0.99    v2_funct_1(sK3)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f20,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f48,plain,(
% 2.78/0.99    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.78/0.99    inference(ennf_transformation,[],[f20])).
% 2.78/0.99  
% 2.78/0.99  fof(f49,plain,(
% 2.78/0.99    ! [X0,X1,X2] : ((m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) & v1_funct_1(k2_tops_2(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.78/0.99    inference(flattening,[],[f48])).
% 2.78/0.99  
% 2.78/0.99  fof(f95,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k2_tops_2(X0,X1,X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f49])).
% 2.78/0.99  
% 2.78/0.99  fof(f14,axiom,(
% 2.78/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f38,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(ennf_transformation,[],[f14])).
% 2.78/0.99  
% 2.78/0.99  fof(f39,plain,(
% 2.78/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(flattening,[],[f38])).
% 2.78/0.99  
% 2.78/0.99  fof(f54,plain,(
% 2.78/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/0.99    inference(nnf_transformation,[],[f39])).
% 2.78/0.99  
% 2.78/0.99  fof(f79,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/0.99    inference(cnf_transformation,[],[f54])).
% 2.78/0.99  
% 2.78/0.99  fof(f104,plain,(
% 2.78/0.99    k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1) | k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2)),
% 2.78/0.99    inference(cnf_transformation,[],[f61])).
% 2.78/0.99  
% 2.78/0.99  fof(f94,plain,(
% 2.78/0.99    ( ! [X2,X0,X1] : (v1_funct_2(k2_tops_2(X0,X1,X2),X1,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f49])).
% 2.78/0.99  
% 2.78/0.99  fof(f9,axiom,(
% 2.78/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f31,plain,(
% 2.78/0.99    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.78/0.99    inference(ennf_transformation,[],[f9])).
% 2.78/0.99  
% 2.78/0.99  fof(f32,plain,(
% 2.78/0.99    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.78/0.99    inference(flattening,[],[f31])).
% 2.78/0.99  
% 2.78/0.99  fof(f73,plain,(
% 2.78/0.99    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f32])).
% 2.78/0.99  
% 2.78/0.99  fof(f8,axiom,(
% 2.78/0.99    ! [X0] : ((v1_relat_1(X0) & ~v1_xboole_0(X0)) => ~v1_xboole_0(k1_relat_1(X0)))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f29,plain,(
% 2.78/0.99    ! [X0] : (~v1_xboole_0(k1_relat_1(X0)) | (~v1_relat_1(X0) | v1_xboole_0(X0)))),
% 2.78/0.99    inference(ennf_transformation,[],[f8])).
% 2.78/0.99  
% 2.78/0.99  fof(f30,plain,(
% 2.78/0.99    ! [X0] : (~v1_xboole_0(k1_relat_1(X0)) | ~v1_relat_1(X0) | v1_xboole_0(X0))),
% 2.78/0.99    inference(flattening,[],[f29])).
% 2.78/0.99  
% 2.78/0.99  fof(f71,plain,(
% 2.78/0.99    ( ! [X0] : (~v1_xboole_0(k1_relat_1(X0)) | ~v1_relat_1(X0) | v1_xboole_0(X0)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f30])).
% 2.78/0.99  
% 2.78/0.99  fof(f7,axiom,(
% 2.78/0.99    ! [X0] : (v1_xboole_0(X0) => v1_xboole_0(k2_relat_1(X0)))),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f28,plain,(
% 2.78/0.99    ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0))),
% 2.78/0.99    inference(ennf_transformation,[],[f7])).
% 2.78/0.99  
% 2.78/0.99  fof(f70,plain,(
% 2.78/0.99    ( ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0)) )),
% 2.78/0.99    inference(cnf_transformation,[],[f28])).
% 2.78/0.99  
% 2.78/0.99  fof(f1,axiom,(
% 2.78/0.99    v1_xboole_0(k1_xboole_0)),
% 2.78/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.78/0.99  
% 2.78/0.99  fof(f62,plain,(
% 2.78/0.99    v1_xboole_0(k1_xboole_0)),
% 2.78/0.99    inference(cnf_transformation,[],[f1])).
% 2.78/0.99  
% 2.78/0.99  cnf(c_37,negated_conjecture,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) ),
% 2.78/0.99      inference(cnf_transformation,[],[f101]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1453,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_25,plain,
% 2.78/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f87]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_40,negated_conjecture,
% 2.78/0.99      ( l1_struct_0(sK2) ),
% 2.78/0.99      inference(cnf_transformation,[],[f98]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_535,plain,
% 2.78/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK2 != X0 ),
% 2.78/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_40]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_536,plain,
% 2.78/0.99      ( u1_struct_0(sK2) = k2_struct_0(sK2) ),
% 2.78/0.99      inference(unflattening,[status(thm)],[c_535]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_42,negated_conjecture,
% 2.78/0.99      ( l1_struct_0(sK1) ),
% 2.78/0.99      inference(cnf_transformation,[],[f96]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_540,plain,
% 2.78/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 2.78/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_42]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_541,plain,
% 2.78/0.99      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 2.78/0.99      inference(unflattening,[status(thm)],[c_540]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1490,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))) = iProver_top ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_1453,c_536,c_541]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_15,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | v1_partfun1(X0,X1)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0)
% 2.78/0.99      | v1_xboole_0(X2) ),
% 2.78/0.99      inference(cnf_transformation,[],[f78]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_24,plain,
% 2.78/0.99      ( ~ v1_partfun1(X0,X1)
% 2.78/0.99      | ~ v4_relat_1(X0,X1)
% 2.78/0.99      | ~ v1_relat_1(X0)
% 2.78/0.99      | k1_relat_1(X0) = X1 ),
% 2.78/0.99      inference(cnf_transformation,[],[f85]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_672,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ v4_relat_1(X0,X1)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0)
% 2.78/0.99      | ~ v1_relat_1(X0)
% 2.78/0.99      | v1_xboole_0(X2)
% 2.78/0.99      | k1_relat_1(X0) = X1 ),
% 2.78/0.99      inference(resolution,[status(thm)],[c_15,c_24]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_13,plain,
% 2.78/0.99      ( v4_relat_1(X0,X1)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.78/0.99      inference(cnf_transformation,[],[f75]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_12,plain,
% 2.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | v1_relat_1(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f74]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_674,plain,
% 2.78/0.99      ( ~ v1_funct_1(X0)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | v1_xboole_0(X2)
% 2.78/0.99      | k1_relat_1(X0) = X1 ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_672,c_13,c_12]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_675,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0)
% 2.78/0.99      | v1_xboole_0(X2)
% 2.78/0.99      | k1_relat_1(X0) = X1 ),
% 2.78/0.99      inference(renaming,[status(thm)],[c_674]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1445,plain,
% 2.78/0.99      ( k1_relat_1(X0) = X1
% 2.78/0.99      | v1_funct_2(X0,X1,X2) != iProver_top
% 2.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.78/0.99      | v1_funct_1(X0) != iProver_top
% 2.78/0.99      | v1_xboole_0(X2) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_675]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2286,plain,
% 2.78/0.99      ( k2_struct_0(sK1) = k1_relat_1(sK3)
% 2.78/0.99      | v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) != iProver_top
% 2.78/0.99      | v1_funct_1(sK3) != iProver_top
% 2.78/0.99      | v1_xboole_0(k2_struct_0(sK2)) = iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_1490,c_1445]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_39,negated_conjecture,
% 2.78/0.99      ( v1_funct_1(sK3) ),
% 2.78/0.99      inference(cnf_transformation,[],[f99]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_46,plain,
% 2.78/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_26,plain,
% 2.78/0.99      ( v2_struct_0(X0)
% 2.78/0.99      | ~ l1_struct_0(X0)
% 2.78/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.78/0.99      inference(cnf_transformation,[],[f88]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_41,negated_conjecture,
% 2.78/0.99      ( ~ v2_struct_0(sK2) ),
% 2.78/0.99      inference(cnf_transformation,[],[f97]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_522,plain,
% 2.78/0.99      ( ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK2 != X0 ),
% 2.78/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_41]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_523,plain,
% 2.78/0.99      ( ~ l1_struct_0(sK2) | ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.78/0.99      inference(unflattening,[status(thm)],[c_522]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_525,plain,
% 2.78/0.99      ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_523,c_40]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1450,plain,
% 2.78/0.99      ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1479,plain,
% 2.78/0.99      ( v1_xboole_0(k2_struct_0(sK2)) != iProver_top ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_1450,c_536]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_38,negated_conjecture,
% 2.78/0.99      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) ),
% 2.78/0.99      inference(cnf_transformation,[],[f100]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1452,plain,
% 2.78/0.99      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK2)) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1484,plain,
% 2.78/0.99      ( v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) = iProver_top ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_1452,c_536,c_541]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_3476,plain,
% 2.78/0.99      ( k2_struct_0(sK1) = k1_relat_1(sK3) ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_2286,c_46,c_1479,c_1484]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_14,plain,
% 2.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f76]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1463,plain,
% 2.78/0.99      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.78/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2465,plain,
% 2.78/0.99      ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_relat_1(sK3) ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_1490,c_1463]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_36,negated_conjecture,
% 2.78/0.99      ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK2),sK3) = k2_struct_0(sK2) ),
% 2.78/0.99      inference(cnf_transformation,[],[f102]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1487,plain,
% 2.78/0.99      ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_struct_0(sK2) ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_36,c_536,c_541]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2711,plain,
% 2.78/0.99      ( k2_struct_0(sK2) = k2_relat_1(sK3) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2465,c_1487]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_30,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0)
% 2.78/0.99      | ~ v2_funct_1(X0)
% 2.78/0.99      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 2.78/0.99      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.78/0.99      inference(cnf_transformation,[],[f92]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_35,negated_conjecture,
% 2.78/0.99      ( v2_funct_1(sK3) ),
% 2.78/0.99      inference(cnf_transformation,[],[f103]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_569,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0)
% 2.78/0.99      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 2.78/0.99      | k2_relset_1(X1,X2,X0) != X2
% 2.78/0.99      | sK3 != X0 ),
% 2.78/0.99      inference(resolution_lifted,[status(thm)],[c_30,c_35]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_570,plain,
% 2.78/0.99      ( ~ v1_funct_2(sK3,X0,X1)
% 2.78/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/0.99      | ~ v1_funct_1(sK3)
% 2.78/0.99      | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
% 2.78/0.99      | k2_relset_1(X0,X1,sK3) != X1 ),
% 2.78/0.99      inference(unflattening,[status(thm)],[c_569]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_574,plain,
% 2.78/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/0.99      | ~ v1_funct_2(sK3,X0,X1)
% 2.78/0.99      | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
% 2.78/0.99      | k2_relset_1(X0,X1,sK3) != X1 ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_570,c_39]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_575,plain,
% 2.78/0.99      ( ~ v1_funct_2(sK3,X0,X1)
% 2.78/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/0.99      | k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
% 2.78/0.99      | k2_relset_1(X0,X1,sK3) != X1 ),
% 2.78/0.99      inference(renaming,[status(thm)],[c_574]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1448,plain,
% 2.78/0.99      ( k2_tops_2(X0,X1,sK3) = k2_funct_1(sK3)
% 2.78/0.99      | k2_relset_1(X0,X1,sK3) != X1
% 2.78/0.99      | v1_funct_2(sK3,X0,X1) != iProver_top
% 2.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_575]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2021,plain,
% 2.78/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_funct_1(sK3)
% 2.78/0.99      | v1_funct_2(sK3,k2_struct_0(sK1),k2_struct_0(sK2)) != iProver_top
% 2.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK2)))) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_1487,c_1448]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2151,plain,
% 2.78/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3) = k2_funct_1(sK3) ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_2021,c_1490,c_1484]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2740,plain,
% 2.78/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_relat_1(sK3),sK3) = k2_funct_1(sK3) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2711,c_2151]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_3481,plain,
% 2.78/0.99      ( k2_tops_2(k1_relat_1(sK3),k2_relat_1(sK3),sK3) = k2_funct_1(sK3) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_3476,c_2740]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_31,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.78/0.99      | ~ v1_funct_1(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f95]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1456,plain,
% 2.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 2.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.78/0.99      | m1_subset_1(k2_tops_2(X1,X2,X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) = iProver_top
% 2.78/0.99      | v1_funct_1(X0) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4279,plain,
% 2.78/0.99      ( v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
% 2.78/0.99      | m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k1_relat_1(sK3)))) = iProver_top
% 2.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
% 2.78/0.99      | v1_funct_1(sK3) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_3481,c_1456]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2741,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_relat_1(sK3)))) = iProver_top ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2711,c_1490]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_3480,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) = iProver_top ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_3476,c_2741]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2742,plain,
% 2.78/0.99      ( v1_funct_2(sK3,k2_struct_0(sK1),k2_relat_1(sK3)) = iProver_top ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2711,c_1484]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_3483,plain,
% 2.78/0.99      ( v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) = iProver_top ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_3476,c_2742]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4755,plain,
% 2.78/0.99      ( m1_subset_1(k2_funct_1(sK3),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK3),k1_relat_1(sK3)))) = iProver_top ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_4279,c_46,c_3480,c_3483]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_22,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.78/0.99      | k1_xboole_0 = X2 ),
% 2.78/0.99      inference(cnf_transformation,[],[f79]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1457,plain,
% 2.78/0.99      ( k1_relset_1(X0,X1,X2) = X0
% 2.78/0.99      | k1_xboole_0 = X1
% 2.78/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.78/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4760,plain,
% 2.78/0.99      ( k1_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k2_relat_1(sK3)
% 2.78/0.99      | k1_relat_1(sK3) = k1_xboole_0
% 2.78/0.99      | v1_funct_2(k2_funct_1(sK3),k2_relat_1(sK3),k1_relat_1(sK3)) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_4755,c_1457]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_34,negated_conjecture,
% 2.78/0.99      ( k1_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK2)
% 2.78/0.99      | k2_relset_1(u1_struct_0(sK2),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK2),sK3)) != k2_struct_0(sK1) ),
% 2.78/0.99      inference(cnf_transformation,[],[f104]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1577,plain,
% 2.78/0.99      ( k1_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3)) != k2_struct_0(sK2)
% 2.78/0.99      | k2_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK2),sK3)) != k2_struct_0(sK1) ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_34,c_536,c_541]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2154,plain,
% 2.78/0.99      ( k1_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK2)
% 2.78/0.99      | k2_relset_1(k2_struct_0(sK2),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK1) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2151,c_1577]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2739,plain,
% 2.78/0.99      ( k1_relset_1(k2_relat_1(sK3),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_relat_1(sK3)
% 2.78/0.99      | k2_relset_1(k2_relat_1(sK3),k2_struct_0(sK1),k2_funct_1(sK3)) != k2_struct_0(sK1) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2711,c_2154]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_3479,plain,
% 2.78/0.99      ( k1_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) != k2_relat_1(sK3)
% 2.78/0.99      | k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) != k1_relat_1(sK3) ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_3476,c_2739]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_32,plain,
% 2.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/0.99      | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1)
% 2.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/0.99      | ~ v1_funct_1(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f94]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1455,plain,
% 2.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 2.78/0.99      | v1_funct_2(k2_tops_2(X1,X2,X0),X2,X1) = iProver_top
% 2.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.78/0.99      | v1_funct_1(X0) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4280,plain,
% 2.78/0.99      ( v1_funct_2(k2_funct_1(sK3),k2_relat_1(sK3),k1_relat_1(sK3)) = iProver_top
% 2.78/0.99      | v1_funct_2(sK3,k1_relat_1(sK3),k2_relat_1(sK3)) != iProver_top
% 2.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),k2_relat_1(sK3)))) != iProver_top
% 2.78/0.99      | v1_funct_1(sK3) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_3481,c_1455]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4761,plain,
% 2.78/0.99      ( k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k2_relat_1(k2_funct_1(sK3)) ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_4755,c_1463]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_10,plain,
% 2.78/0.99      ( ~ v1_funct_1(X0)
% 2.78/0.99      | ~ v2_funct_1(X0)
% 2.78/0.99      | ~ v1_relat_1(X0)
% 2.78/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_607,plain,
% 2.78/0.99      ( ~ v1_funct_1(X0)
% 2.78/0.99      | ~ v1_relat_1(X0)
% 2.78/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 2.78/0.99      | sK3 != X0 ),
% 2.78/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_35]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_608,plain,
% 2.78/0.99      ( ~ v1_funct_1(sK3)
% 2.78/0.99      | ~ v1_relat_1(sK3)
% 2.78/0.99      | k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
% 2.78/0.99      inference(unflattening,[status(thm)],[c_607]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_610,plain,
% 2.78/0.99      ( ~ v1_relat_1(sK3)
% 2.78/0.99      | k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_608,c_39]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1446,plain,
% 2.78/0.99      ( k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3)
% 2.78/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_610]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1685,plain,
% 2.78/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2))))
% 2.78/0.99      | v1_relat_1(sK3) ),
% 2.78/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1892,plain,
% 2.78/0.99      ( k2_relat_1(k2_funct_1(sK3)) = k1_relat_1(sK3) ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_1446,c_39,c_37,c_608,c_1685]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_4778,plain,
% 2.78/0.99      ( k2_relset_1(k2_relat_1(sK3),k1_relat_1(sK3),k2_funct_1(sK3)) = k1_relat_1(sK3) ),
% 2.78/0.99      inference(light_normalisation,[status(thm)],[c_4761,c_1892]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_5138,plain,
% 2.78/0.99      ( k1_relat_1(sK3) = k1_xboole_0 ),
% 2.78/0.99      inference(global_propositional_subsumption,
% 2.78/0.99                [status(thm)],
% 2.78/0.99                [c_4760,c_46,c_3479,c_3480,c_3483,c_4280,c_4778]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_9,plain,
% 2.78/0.99      ( ~ v1_relat_1(X0)
% 2.78/0.99      | v1_xboole_0(X0)
% 2.78/0.99      | ~ v1_xboole_0(k1_relat_1(X0)) ),
% 2.78/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1465,plain,
% 2.78/0.99      ( v1_relat_1(X0) != iProver_top
% 2.78/0.99      | v1_xboole_0(X0) = iProver_top
% 2.78/0.99      | v1_xboole_0(k1_relat_1(X0)) != iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_5187,plain,
% 2.78/0.99      ( v1_relat_1(sK3) != iProver_top
% 2.78/0.99      | v1_xboole_0(sK3) = iProver_top
% 2.78/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_5138,c_1465]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_8,plain,
% 2.78/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(k2_relat_1(X0)) ),
% 2.78/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1466,plain,
% 2.78/0.99      ( v1_xboole_0(X0) != iProver_top
% 2.78/0.99      | v1_xboole_0(k2_relat_1(X0)) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2743,plain,
% 2.78/0.99      ( v1_xboole_0(k2_relat_1(sK3)) != iProver_top ),
% 2.78/0.99      inference(demodulation,[status(thm)],[c_2711,c_1479]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_2810,plain,
% 2.78/0.99      ( v1_xboole_0(sK3) != iProver_top ),
% 2.78/0.99      inference(superposition,[status(thm)],[c_1466,c_2743]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_1686,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) != iProver_top
% 2.78/0.99      | v1_relat_1(sK3) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_1685]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_0,plain,
% 2.78/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 2.78/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_143,plain,
% 2.78/0.99      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(c_48,plain,
% 2.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK2)))) = iProver_top ),
% 2.78/0.99      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.78/0.99  
% 2.78/0.99  cnf(contradiction,plain,
% 2.78/0.99      ( $false ),
% 2.78/0.99      inference(minisat,[status(thm)],[c_5187,c_2810,c_1686,c_143,c_48]) ).
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.78/0.99  
% 2.78/0.99  ------                               Statistics
% 2.78/0.99  
% 2.78/0.99  ------ General
% 2.78/0.99  
% 2.78/0.99  abstr_ref_over_cycles:                  0
% 2.78/0.99  abstr_ref_under_cycles:                 0
% 2.78/0.99  gc_basic_clause_elim:                   0
% 2.78/0.99  forced_gc_time:                         0
% 2.78/0.99  parsing_time:                           0.01
% 2.78/0.99  unif_index_cands_time:                  0.
% 2.78/0.99  unif_index_add_time:                    0.
% 2.78/0.99  orderings_time:                         0.
% 2.78/0.99  out_proof_time:                         0.011
% 2.78/0.99  total_time:                             0.18
% 2.78/0.99  num_of_symbols:                         59
% 2.78/0.99  num_of_terms:                           4878
% 2.78/0.99  
% 2.78/0.99  ------ Preprocessing
% 2.78/0.99  
% 2.78/0.99  num_of_splits:                          0
% 2.78/0.99  num_of_split_atoms:                     0
% 2.78/0.99  num_of_reused_defs:                     0
% 2.78/0.99  num_eq_ax_congr_red:                    9
% 2.78/0.99  num_of_sem_filtered_clauses:            1
% 2.78/0.99  num_of_subtypes:                        0
% 2.78/0.99  monotx_restored_types:                  0
% 2.78/0.99  sat_num_of_epr_types:                   0
% 2.78/0.99  sat_num_of_non_cyclic_types:            0
% 2.78/0.99  sat_guarded_non_collapsed_types:        0
% 2.78/0.99  num_pure_diseq_elim:                    0
% 2.78/0.99  simp_replaced_by:                       0
% 2.78/0.99  res_preprocessed:                       172
% 2.78/0.99  prep_upred:                             0
% 2.78/0.99  prep_unflattend:                        18
% 2.78/0.99  smt_new_axioms:                         0
% 2.78/0.99  pred_elim_cands:                        5
% 2.78/0.99  pred_elim:                              7
% 2.78/0.99  pred_elim_cl:                           11
% 2.78/0.99  pred_elim_cycles:                       9
% 2.78/0.99  merged_defs:                            2
% 2.78/0.99  merged_defs_ncl:                        0
% 2.78/0.99  bin_hyper_res:                          2
% 2.78/0.99  prep_cycles:                            4
% 2.78/0.99  pred_elim_time:                         0.005
% 2.78/0.99  splitting_time:                         0.
% 2.78/0.99  sem_filter_time:                        0.
% 2.78/0.99  monotx_time:                            0.001
% 2.78/0.99  subtype_inf_time:                       0.
% 2.78/0.99  
% 2.78/0.99  ------ Problem properties
% 2.78/0.99  
% 2.78/0.99  clauses:                                31
% 2.78/0.99  conjectures:                            5
% 2.78/0.99  epr:                                    2
% 2.78/0.99  horn:                                   25
% 2.78/0.99  ground:                                 11
% 2.78/0.99  unary:                                  10
% 2.78/0.99  binary:                                 8
% 2.78/0.99  lits:                                   75
% 2.78/0.99  lits_eq:                                25
% 2.78/0.99  fd_pure:                                0
% 2.78/0.99  fd_pseudo:                              0
% 2.78/0.99  fd_cond:                                4
% 2.78/0.99  fd_pseudo_cond:                         1
% 2.78/0.99  ac_symbols:                             0
% 2.78/0.99  
% 2.78/0.99  ------ Propositional Solver
% 2.78/0.99  
% 2.78/0.99  prop_solver_calls:                      27
% 2.78/0.99  prop_fast_solver_calls:                 1085
% 2.78/0.99  smt_solver_calls:                       0
% 2.78/0.99  smt_fast_solver_calls:                  0
% 2.78/0.99  prop_num_of_clauses:                    1737
% 2.78/0.99  prop_preprocess_simplified:             5976
% 2.78/0.99  prop_fo_subsumed:                       28
% 2.78/0.99  prop_solver_time:                       0.
% 2.78/0.99  smt_solver_time:                        0.
% 2.78/0.99  smt_fast_solver_time:                   0.
% 2.78/0.99  prop_fast_solver_time:                  0.
% 2.78/0.99  prop_unsat_core_time:                   0.
% 2.78/0.99  
% 2.78/0.99  ------ QBF
% 2.78/0.99  
% 2.78/0.99  qbf_q_res:                              0
% 2.78/0.99  qbf_num_tautologies:                    0
% 2.78/0.99  qbf_prep_cycles:                        0
% 2.78/0.99  
% 2.78/0.99  ------ BMC1
% 2.78/0.99  
% 2.78/0.99  bmc1_current_bound:                     -1
% 2.78/0.99  bmc1_last_solved_bound:                 -1
% 2.78/0.99  bmc1_unsat_core_size:                   -1
% 2.78/0.99  bmc1_unsat_core_parents_size:           -1
% 2.78/0.99  bmc1_merge_next_fun:                    0
% 2.78/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.78/0.99  
% 2.78/0.99  ------ Instantiation
% 2.78/0.99  
% 2.78/0.99  inst_num_of_clauses:                    607
% 2.78/0.99  inst_num_in_passive:                    120
% 2.78/0.99  inst_num_in_active:                     303
% 2.78/0.99  inst_num_in_unprocessed:                184
% 2.78/0.99  inst_num_of_loops:                      310
% 2.78/0.99  inst_num_of_learning_restarts:          0
% 2.78/0.99  inst_num_moves_active_passive:          3
% 2.78/0.99  inst_lit_activity:                      0
% 2.78/0.99  inst_lit_activity_moves:                0
% 2.78/0.99  inst_num_tautologies:                   0
% 2.78/0.99  inst_num_prop_implied:                  0
% 2.78/0.99  inst_num_existing_simplified:           0
% 2.78/0.99  inst_num_eq_res_simplified:             0
% 2.78/0.99  inst_num_child_elim:                    0
% 2.78/0.99  inst_num_of_dismatching_blockings:      78
% 2.78/0.99  inst_num_of_non_proper_insts:           420
% 2.78/0.99  inst_num_of_duplicates:                 0
% 2.78/0.99  inst_inst_num_from_inst_to_res:         0
% 2.78/0.99  inst_dismatching_checking_time:         0.
% 2.78/0.99  
% 2.78/0.99  ------ Resolution
% 2.78/0.99  
% 2.78/0.99  res_num_of_clauses:                     0
% 2.78/0.99  res_num_in_passive:                     0
% 2.78/0.99  res_num_in_active:                      0
% 2.78/0.99  res_num_of_loops:                       176
% 2.78/0.99  res_forward_subset_subsumed:            48
% 2.78/0.99  res_backward_subset_subsumed:           2
% 2.78/0.99  res_forward_subsumed:                   0
% 2.78/0.99  res_backward_subsumed:                  0
% 2.78/0.99  res_forward_subsumption_resolution:     0
% 2.78/0.99  res_backward_subsumption_resolution:    0
% 2.78/0.99  res_clause_to_clause_subsumption:       114
% 2.78/0.99  res_orphan_elimination:                 0
% 2.78/0.99  res_tautology_del:                      56
% 2.78/0.99  res_num_eq_res_simplified:              0
% 2.78/0.99  res_num_sel_changes:                    0
% 2.78/0.99  res_moves_from_active_to_pass:          0
% 2.78/0.99  
% 2.78/0.99  ------ Superposition
% 2.78/0.99  
% 2.78/0.99  sup_time_total:                         0.
% 2.78/0.99  sup_time_generating:                    0.
% 2.78/0.99  sup_time_sim_full:                      0.
% 2.78/0.99  sup_time_sim_immed:                     0.
% 2.78/0.99  
% 2.78/0.99  sup_num_of_clauses:                     57
% 2.78/0.99  sup_num_in_active:                      33
% 2.78/0.99  sup_num_in_passive:                     24
% 2.78/0.99  sup_num_of_loops:                       61
% 2.78/0.99  sup_fw_superposition:                   9
% 2.78/0.99  sup_bw_superposition:                   31
% 2.78/0.99  sup_immediate_simplified:               9
% 2.78/0.99  sup_given_eliminated:                   0
% 2.78/0.99  comparisons_done:                       0
% 2.78/0.99  comparisons_avoided:                    3
% 2.78/0.99  
% 2.78/0.99  ------ Simplifications
% 2.78/0.99  
% 2.78/0.99  
% 2.78/0.99  sim_fw_subset_subsumed:                 6
% 2.78/0.99  sim_bw_subset_subsumed:                 1
% 2.78/0.99  sim_fw_subsumed:                        0
% 2.78/0.99  sim_bw_subsumed:                        0
% 2.78/0.99  sim_fw_subsumption_res:                 0
% 2.78/0.99  sim_bw_subsumption_res:                 0
% 2.78/0.99  sim_tautology_del:                      0
% 2.78/0.99  sim_eq_tautology_del:                   1
% 2.78/0.99  sim_eq_res_simp:                        0
% 2.78/0.99  sim_fw_demodulated:                     0
% 2.78/0.99  sim_bw_demodulated:                     29
% 2.78/0.99  sim_light_normalised:                   8
% 2.78/0.99  sim_joinable_taut:                      0
% 2.78/0.99  sim_joinable_simp:                      0
% 2.78/0.99  sim_ac_normalised:                      0
% 2.78/0.99  sim_smt_subsumption:                    0
% 2.78/0.99  
%------------------------------------------------------------------------------
