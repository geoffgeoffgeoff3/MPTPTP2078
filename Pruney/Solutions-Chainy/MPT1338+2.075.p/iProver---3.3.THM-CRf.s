%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:17:15 EST 2020

% Result     : Theorem 1.91s
% Output     : CNFRefutation 1.91s
% Verified   : 
% Statistics : Number of formulae       :  187 (4735 expanded)
%              Number of clauses        :  127 (1462 expanded)
%              Number of leaves         :   17 (1333 expanded)
%              Depth                    :   35
%              Number of atoms          :  556 (33953 expanded)
%              Number of equality atoms :  254 (11041 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2))
        & k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2))
        & k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f13,conjecture,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
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
    inference(negated_conjecture,[],[f13])).

fof(f32,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
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
    inference(flattening,[],[f32])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0)
            | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
          & v2_funct_1(X2)
          & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
          & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
          & v1_funct_1(X2) )
     => ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)) != k2_struct_0(X0)
          | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)) != k2_struct_0(X1) )
        & v2_funct_1(sK2)
        & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1)
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
        & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1))
        & v1_funct_1(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
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
            ( ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)) != k2_struct_0(X0)
              | k1_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)) != k2_struct_0(sK1) )
            & v2_funct_1(X2)
            & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1))))
            & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1))
            & v1_funct_1(X2) )
        & l1_struct_0(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
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
              ( ( k2_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)) != k2_struct_0(sK0)
                | k1_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)) != k2_struct_0(X1) )
              & v2_funct_1(X2)
              & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1)
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1))))
              & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1))
              & v1_funct_1(X2) )
          & l1_struct_0(X1)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) )
    & v2_funct_1(sK2)
    & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & ~ v2_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f33,f37,f36,f35])).

fof(f59,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f38])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f51,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f54,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f56,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f25])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f4])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f58,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f23])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f52,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f55,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k4_relat_1(X2) = k3_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k4_relat_1(X2) = k3_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( k4_relat_1(X2) = k3_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => k2_funct_1(X0) = k4_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( k2_funct_1(X0) = k4_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0] :
      ( k2_funct_1(X0) = k4_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f41,plain,(
    ! [X0] :
      ( k2_funct_1(X0) = k4_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f61,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f60,plain,(
    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f62,plain,
    ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f30])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X2,X1,k3_relset_1(X1,X2,X0)) = k1_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_453,plain,
    ( k2_relset_1(X0,X1,k3_relset_1(X1,X0,X2)) = k1_relset_1(X1,X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_18])).

cnf(c_454,plain,
    ( k2_relset_1(X0,X1,k3_relset_1(X1,X0,sK2)) = k1_relset_1(X1,X0,sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
    inference(unflattening,[status(thm)],[c_453])).

cnf(c_633,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
    inference(subtyping,[status(esa)],[c_454])).

cnf(c_12,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_23,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_265,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_23])).

cnf(c_266,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_265])).

cnf(c_638,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_266])).

cnf(c_21,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_260,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_21])).

cnf(c_261,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_260])).

cnf(c_639,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_261])).

cnf(c_820,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
    inference(light_normalisation,[status(thm)],[c_633,c_638,c_639])).

cnf(c_11,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_3,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_480,plain,
    ( v4_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_18])).

cnf(c_481,plain,
    ( v4_relat_1(sK2,X0)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_480])).

cnf(c_523,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v1_relat_1(X0)
    | X2 != X1
    | k1_relat_1(X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_481])).

cnf(c_524,plain,
    ( ~ v1_partfun1(sK2,X0)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(sK2) = X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_523])).

cnf(c_19,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_8,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_13,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_247,plain,
    ( ~ l1_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_22])).

cnf(c_248,plain,
    ( ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(k2_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_247])).

cnf(c_35,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(k2_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_250,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_248,c_22,c_21,c_35])).

cnf(c_272,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_struct_0(sK1) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_250])).

cnf(c_273,plain,
    ( ~ v1_funct_2(X0,X1,k2_struct_0(sK1))
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1))))
    | ~ v1_funct_1(X0) ),
    inference(unflattening,[status(thm)],[c_272])).

cnf(c_20,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_380,plain,
    ( ~ v1_funct_2(X0,X1,k2_struct_0(sK1))
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1))))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_273,c_20])).

cnf(c_381,plain,
    ( ~ v1_funct_2(sK2,X0,k2_struct_0(sK1))
    | v1_partfun1(sK2,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,k2_struct_0(sK1)))) ),
    inference(unflattening,[status(thm)],[c_380])).

cnf(c_410,plain,
    ( v1_partfun1(sK2,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,k2_struct_0(sK1))))
    | u1_struct_0(sK0) != X0
    | u1_struct_0(sK1) != k2_struct_0(sK1)
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_381])).

cnf(c_411,plain,
    ( v1_partfun1(sK2,u1_struct_0(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))))
    | u1_struct_0(sK1) != k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_410])).

cnf(c_38,plain,
    ( ~ l1_struct_0(sK1)
    | u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_413,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))))
    | v1_partfun1(sK2,u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_411,c_21,c_38])).

cnf(c_414,plain,
    ( v1_partfun1(sK2,u1_struct_0(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1)))) ),
    inference(renaming,[status(thm)],[c_413])).

cnf(c_492,plain,
    ( v1_partfun1(sK2,u1_struct_0(sK0))
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_414])).

cnf(c_565,plain,
    ( ~ v1_relat_1(sK2)
    | u1_struct_0(sK0) != X0
    | k1_relat_1(sK2) = X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_524,c_492])).

cnf(c_566,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(sK2) = u1_struct_0(sK0)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0))
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(unflattening,[status(thm)],[c_565])).

cnf(c_630,plain,
    ( ~ v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | k1_relat_1(sK2) = u1_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_566])).

cnf(c_644,plain,
    ( ~ v1_relat_1(sK2)
    | sP0_iProver_split
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | k1_relat_1(sK2) = u1_struct_0(sK0) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_630])).

cnf(c_774,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | k1_relat_1(sK2) = u1_struct_0(sK0)
    | v1_relat_1(sK2) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_644])).

cnf(c_825,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))
    | u1_struct_0(sK0) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_774,c_638,c_639])).

cnf(c_826,plain,
    ( u1_struct_0(sK0) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_825])).

cnf(c_827,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(demodulation,[status(thm)],[c_826,c_638])).

cnf(c_842,plain,
    ( ~ v1_relat_1(sK2)
    | sP0_iProver_split
    | k2_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_827])).

cnf(c_648,plain,
    ( X0_55 = X0_55 ),
    theory(equality)).

cnf(c_863,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_648])).

cnf(c_643,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_630])).

cnf(c_775,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_643])).

cnf(c_789,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),X0_53))
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_775,c_638,c_639])).

cnf(c_890,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_789])).

cnf(c_891,plain,
    ( ~ sP0_iProver_split ),
    inference(predicate_to_equality_rev,[status(thm)],[c_890])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_429,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_18])).

cnf(c_430,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_429])).

cnf(c_635,plain,
    ( ~ v1_relat_1(X0_52)
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_430])).

cnf(c_858,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0_53,X1_53))
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)) ),
    inference(instantiation,[status(thm)],[c_635])).

cnf(c_905,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_858])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_642,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_937,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_642])).

cnf(c_982,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_827,c_842,c_863,c_891,c_905,c_937])).

cnf(c_1174,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
    inference(light_normalisation,[status(thm)],[c_820,c_982])).

cnf(c_1178,plain,
    ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k1_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) ),
    inference(equality_resolution,[status(thm)],[c_1174])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k3_relset_1(X1,X2,X0) = k4_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_462,plain,
    ( k3_relset_1(X0,X1,X2) = k4_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_18])).

cnf(c_463,plain,
    ( k3_relset_1(X0,X1,sK2) = k4_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_462])).

cnf(c_632,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k3_relset_1(X0_53,X1_53,sK2) = k4_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_463])).

cnf(c_798,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k3_relset_1(X0_53,X1_53,sK2) = k4_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_632,c_638,c_639])).

cnf(c_915,plain,
    ( k3_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k4_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_798])).

cnf(c_773,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0_52)
    | v1_relat_1(X0_52) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_635])).

cnf(c_808,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(X0_52)
    | v1_relat_1(X0_52) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_773,c_638,c_639])).

cnf(c_906,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
    | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_905])).

cnf(c_938,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_937])).

cnf(c_1103,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_808,c_863,c_906,c_938])).

cnf(c_2,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k4_relat_1(X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_16,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_358,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k4_relat_1(X0) = k2_funct_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_16])).

cnf(c_359,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k4_relat_1(sK2) = k2_funct_1(sK2) ),
    inference(unflattening,[status(thm)],[c_358])).

cnf(c_361,plain,
    ( ~ v1_relat_1(sK2)
    | k4_relat_1(sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_359,c_20])).

cnf(c_637,plain,
    ( ~ v1_relat_1(sK2)
    | k4_relat_1(sK2) = k2_funct_1(sK2) ),
    inference(subtyping,[status(esa)],[c_361])).

cnf(c_772,plain,
    ( k4_relat_1(sK2) = k2_funct_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_637])).

cnf(c_1108,plain,
    ( k4_relat_1(sK2) = k2_funct_1(sK2) ),
    inference(superposition,[status(thm)],[c_1103,c_772])).

cnf(c_1244,plain,
    ( k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_915,c_982,c_1108])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_471,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_18])).

cnf(c_472,plain,
    ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_471])).

cnf(c_631,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k1_relset_1(X0_53,X1_53,sK2) = k1_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_472])).

cnf(c_803,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k1_relset_1(X0_53,X1_53,sK2) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_631,c_638,c_639])).

cnf(c_918,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_803])).

cnf(c_1309,plain,
    ( k1_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_918,c_982])).

cnf(c_1518,plain,
    ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_1178,c_1244,c_1309])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X2,X1,k3_relset_1(X1,X2,X0)) = k2_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_444,plain,
    ( k1_relset_1(X0,X1,k3_relset_1(X1,X0,X2)) = k2_relset_1(X1,X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_18])).

cnf(c_445,plain,
    ( k1_relset_1(X0,X1,k3_relset_1(X1,X0,sK2)) = k2_relset_1(X1,X0,sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
    inference(unflattening,[status(thm)],[c_444])).

cnf(c_634,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
    inference(subtyping,[status(esa)],[c_445])).

cnf(c_815,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
    inference(light_normalisation,[status(thm)],[c_634,c_638,c_639])).

cnf(c_1109,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
    | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
    inference(light_normalisation,[status(thm)],[c_815,c_982])).

cnf(c_1113,plain,
    ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k2_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) ),
    inference(equality_resolution,[status(thm)],[c_1109])).

cnf(c_17,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_640,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_782,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_640,c_638,c_639])).

cnf(c_990,plain,
    ( k2_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(demodulation,[status(thm)],[c_982,c_782])).

cnf(c_1114,plain,
    ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_1113,c_990])).

cnf(c_1352,plain,
    ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_1114,c_1244])).

cnf(c_15,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_641,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
    | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_334,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_16])).

cnf(c_335,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK2)
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1 ),
    inference(unflattening,[status(thm)],[c_334])).

cnf(c_339,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(sK2,X0,X1)
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_335,c_20])).

cnf(c_340,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1 ),
    inference(renaming,[status(thm)],[c_339])).

cnf(c_399,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1
    | u1_struct_0(sK0) != X0
    | u1_struct_0(sK1) != X1
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_340])).

cnf(c_400,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_399])).

cnf(c_402,plain,
    ( k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2)
    | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_400,c_18])).

cnf(c_636,plain,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1)
    | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(subtyping,[status(esa)],[c_402])).

cnf(c_794,plain,
    ( k2_struct_0(sK1) != k2_struct_0(sK1)
    | k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_636,c_638,c_639,c_782])).

cnf(c_795,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_794])).

cnf(c_834,plain,
    ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != k2_struct_0(sK0)
    | k1_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_641,c_638,c_639,c_795])).

cnf(c_989,plain,
    ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2)
    | k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_struct_0(sK1) ),
    inference(demodulation,[status(thm)],[c_982,c_834])).

cnf(c_1354,plain,
    ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2)
    | k2_struct_0(sK1) != k2_struct_0(sK1) ),
    inference(demodulation,[status(thm)],[c_1352,c_989])).

cnf(c_1355,plain,
    ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_1354])).

cnf(c_1520,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1518,c_1355])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 20:36:56 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 1.91/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.91/0.99  
% 1.91/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.91/0.99  
% 1.91/0.99  ------  iProver source info
% 1.91/0.99  
% 1.91/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.91/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.91/0.99  git: non_committed_changes: false
% 1.91/0.99  git: last_make_outside_of_git: false
% 1.91/0.99  
% 1.91/0.99  ------ 
% 1.91/0.99  
% 1.91/0.99  ------ Input Options
% 1.91/0.99  
% 1.91/0.99  --out_options                           all
% 1.91/0.99  --tptp_safe_out                         true
% 1.91/0.99  --problem_path                          ""
% 1.91/0.99  --include_path                          ""
% 1.91/0.99  --clausifier                            res/vclausify_rel
% 1.91/0.99  --clausifier_options                    --mode clausify
% 1.91/0.99  --stdin                                 false
% 1.91/0.99  --stats_out                             all
% 1.91/0.99  
% 1.91/0.99  ------ General Options
% 1.91/0.99  
% 1.91/0.99  --fof                                   false
% 1.91/0.99  --time_out_real                         305.
% 1.91/0.99  --time_out_virtual                      -1.
% 1.91/0.99  --symbol_type_check                     false
% 1.91/0.99  --clausify_out                          false
% 1.91/0.99  --sig_cnt_out                           false
% 1.91/0.99  --trig_cnt_out                          false
% 1.91/0.99  --trig_cnt_out_tolerance                1.
% 1.91/0.99  --trig_cnt_out_sk_spl                   false
% 1.91/0.99  --abstr_cl_out                          false
% 1.91/0.99  
% 1.91/0.99  ------ Global Options
% 1.91/0.99  
% 1.91/0.99  --schedule                              default
% 1.91/0.99  --add_important_lit                     false
% 1.91/0.99  --prop_solver_per_cl                    1000
% 1.91/0.99  --min_unsat_core                        false
% 1.91/0.99  --soft_assumptions                      false
% 1.91/0.99  --soft_lemma_size                       3
% 1.91/0.99  --prop_impl_unit_size                   0
% 1.91/0.99  --prop_impl_unit                        []
% 1.91/0.99  --share_sel_clauses                     true
% 1.91/0.99  --reset_solvers                         false
% 1.91/0.99  --bc_imp_inh                            [conj_cone]
% 1.91/0.99  --conj_cone_tolerance                   3.
% 1.91/0.99  --extra_neg_conj                        none
% 1.91/0.99  --large_theory_mode                     true
% 1.91/0.99  --prolific_symb_bound                   200
% 1.91/0.99  --lt_threshold                          2000
% 1.91/0.99  --clause_weak_htbl                      true
% 1.91/0.99  --gc_record_bc_elim                     false
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing Options
% 1.91/0.99  
% 1.91/0.99  --preprocessing_flag                    true
% 1.91/0.99  --time_out_prep_mult                    0.1
% 1.91/0.99  --splitting_mode                        input
% 1.91/0.99  --splitting_grd                         true
% 1.91/0.99  --splitting_cvd                         false
% 1.91/0.99  --splitting_cvd_svl                     false
% 1.91/0.99  --splitting_nvd                         32
% 1.91/0.99  --sub_typing                            true
% 1.91/0.99  --prep_gs_sim                           true
% 1.91/0.99  --prep_unflatten                        true
% 1.91/0.99  --prep_res_sim                          true
% 1.91/0.99  --prep_upred                            true
% 1.91/0.99  --prep_sem_filter                       exhaustive
% 1.91/0.99  --prep_sem_filter_out                   false
% 1.91/0.99  --pred_elim                             true
% 1.91/0.99  --res_sim_input                         true
% 1.91/0.99  --eq_ax_congr_red                       true
% 1.91/0.99  --pure_diseq_elim                       true
% 1.91/0.99  --brand_transform                       false
% 1.91/0.99  --non_eq_to_eq                          false
% 1.91/0.99  --prep_def_merge                        true
% 1.91/0.99  --prep_def_merge_prop_impl              false
% 1.91/0.99  --prep_def_merge_mbd                    true
% 1.91/0.99  --prep_def_merge_tr_red                 false
% 1.91/0.99  --prep_def_merge_tr_cl                  false
% 1.91/0.99  --smt_preprocessing                     true
% 1.91/0.99  --smt_ac_axioms                         fast
% 1.91/0.99  --preprocessed_out                      false
% 1.91/0.99  --preprocessed_stats                    false
% 1.91/0.99  
% 1.91/0.99  ------ Abstraction refinement Options
% 1.91/0.99  
% 1.91/0.99  --abstr_ref                             []
% 1.91/0.99  --abstr_ref_prep                        false
% 1.91/0.99  --abstr_ref_until_sat                   false
% 1.91/0.99  --abstr_ref_sig_restrict                funpre
% 1.91/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.91/0.99  --abstr_ref_under                       []
% 1.91/0.99  
% 1.91/0.99  ------ SAT Options
% 1.91/0.99  
% 1.91/0.99  --sat_mode                              false
% 1.91/0.99  --sat_fm_restart_options                ""
% 1.91/0.99  --sat_gr_def                            false
% 1.91/0.99  --sat_epr_types                         true
% 1.91/0.99  --sat_non_cyclic_types                  false
% 1.91/0.99  --sat_finite_models                     false
% 1.91/0.99  --sat_fm_lemmas                         false
% 1.91/0.99  --sat_fm_prep                           false
% 1.91/0.99  --sat_fm_uc_incr                        true
% 1.91/0.99  --sat_out_model                         small
% 1.91/0.99  --sat_out_clauses                       false
% 1.91/0.99  
% 1.91/0.99  ------ QBF Options
% 1.91/0.99  
% 1.91/0.99  --qbf_mode                              false
% 1.91/0.99  --qbf_elim_univ                         false
% 1.91/0.99  --qbf_dom_inst                          none
% 1.91/0.99  --qbf_dom_pre_inst                      false
% 1.91/0.99  --qbf_sk_in                             false
% 1.91/0.99  --qbf_pred_elim                         true
% 1.91/0.99  --qbf_split                             512
% 1.91/0.99  
% 1.91/0.99  ------ BMC1 Options
% 1.91/0.99  
% 1.91/0.99  --bmc1_incremental                      false
% 1.91/0.99  --bmc1_axioms                           reachable_all
% 1.91/0.99  --bmc1_min_bound                        0
% 1.91/0.99  --bmc1_max_bound                        -1
% 1.91/0.99  --bmc1_max_bound_default                -1
% 1.91/0.99  --bmc1_symbol_reachability              true
% 1.91/0.99  --bmc1_property_lemmas                  false
% 1.91/0.99  --bmc1_k_induction                      false
% 1.91/0.99  --bmc1_non_equiv_states                 false
% 1.91/0.99  --bmc1_deadlock                         false
% 1.91/0.99  --bmc1_ucm                              false
% 1.91/0.99  --bmc1_add_unsat_core                   none
% 1.91/0.99  --bmc1_unsat_core_children              false
% 1.91/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.91/0.99  --bmc1_out_stat                         full
% 1.91/0.99  --bmc1_ground_init                      false
% 1.91/0.99  --bmc1_pre_inst_next_state              false
% 1.91/0.99  --bmc1_pre_inst_state                   false
% 1.91/0.99  --bmc1_pre_inst_reach_state             false
% 1.91/0.99  --bmc1_out_unsat_core                   false
% 1.91/0.99  --bmc1_aig_witness_out                  false
% 1.91/0.99  --bmc1_verbose                          false
% 1.91/0.99  --bmc1_dump_clauses_tptp                false
% 1.91/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.91/0.99  --bmc1_dump_file                        -
% 1.91/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.91/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.91/0.99  --bmc1_ucm_extend_mode                  1
% 1.91/0.99  --bmc1_ucm_init_mode                    2
% 1.91/0.99  --bmc1_ucm_cone_mode                    none
% 1.91/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.91/0.99  --bmc1_ucm_relax_model                  4
% 1.91/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.91/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.91/0.99  --bmc1_ucm_layered_model                none
% 1.91/0.99  --bmc1_ucm_max_lemma_size               10
% 1.91/0.99  
% 1.91/0.99  ------ AIG Options
% 1.91/0.99  
% 1.91/0.99  --aig_mode                              false
% 1.91/0.99  
% 1.91/0.99  ------ Instantiation Options
% 1.91/0.99  
% 1.91/0.99  --instantiation_flag                    true
% 1.91/0.99  --inst_sos_flag                         false
% 1.91/0.99  --inst_sos_phase                        true
% 1.91/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.91/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.91/0.99  --inst_lit_sel_side                     num_symb
% 1.91/0.99  --inst_solver_per_active                1400
% 1.91/0.99  --inst_solver_calls_frac                1.
% 1.91/0.99  --inst_passive_queue_type               priority_queues
% 1.91/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.91/0.99  --inst_passive_queues_freq              [25;2]
% 1.91/0.99  --inst_dismatching                      true
% 1.91/0.99  --inst_eager_unprocessed_to_passive     true
% 1.91/0.99  --inst_prop_sim_given                   true
% 1.91/0.99  --inst_prop_sim_new                     false
% 1.91/0.99  --inst_subs_new                         false
% 1.91/0.99  --inst_eq_res_simp                      false
% 1.91/0.99  --inst_subs_given                       false
% 1.91/0.99  --inst_orphan_elimination               true
% 1.91/0.99  --inst_learning_loop_flag               true
% 1.91/0.99  --inst_learning_start                   3000
% 1.91/0.99  --inst_learning_factor                  2
% 1.91/0.99  --inst_start_prop_sim_after_learn       3
% 1.91/0.99  --inst_sel_renew                        solver
% 1.91/0.99  --inst_lit_activity_flag                true
% 1.91/0.99  --inst_restr_to_given                   false
% 1.91/0.99  --inst_activity_threshold               500
% 1.91/0.99  --inst_out_proof                        true
% 1.91/0.99  
% 1.91/0.99  ------ Resolution Options
% 1.91/0.99  
% 1.91/0.99  --resolution_flag                       true
% 1.91/0.99  --res_lit_sel                           adaptive
% 1.91/0.99  --res_lit_sel_side                      none
% 1.91/0.99  --res_ordering                          kbo
% 1.91/0.99  --res_to_prop_solver                    active
% 1.91/0.99  --res_prop_simpl_new                    false
% 1.91/0.99  --res_prop_simpl_given                  true
% 1.91/0.99  --res_passive_queue_type                priority_queues
% 1.91/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.91/0.99  --res_passive_queues_freq               [15;5]
% 1.91/0.99  --res_forward_subs                      full
% 1.91/0.99  --res_backward_subs                     full
% 1.91/0.99  --res_forward_subs_resolution           true
% 1.91/0.99  --res_backward_subs_resolution          true
% 1.91/0.99  --res_orphan_elimination                true
% 1.91/0.99  --res_time_limit                        2.
% 1.91/0.99  --res_out_proof                         true
% 1.91/0.99  
% 1.91/0.99  ------ Superposition Options
% 1.91/0.99  
% 1.91/0.99  --superposition_flag                    true
% 1.91/0.99  --sup_passive_queue_type                priority_queues
% 1.91/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.91/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.91/0.99  --demod_completeness_check              fast
% 1.91/0.99  --demod_use_ground                      true
% 1.91/0.99  --sup_to_prop_solver                    passive
% 1.91/0.99  --sup_prop_simpl_new                    true
% 1.91/0.99  --sup_prop_simpl_given                  true
% 1.91/0.99  --sup_fun_splitting                     false
% 1.91/0.99  --sup_smt_interval                      50000
% 1.91/0.99  
% 1.91/0.99  ------ Superposition Simplification Setup
% 1.91/0.99  
% 1.91/0.99  --sup_indices_passive                   []
% 1.91/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.91/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_full_bw                           [BwDemod]
% 1.91/0.99  --sup_immed_triv                        [TrivRules]
% 1.91/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.91/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_immed_bw_main                     []
% 1.91/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.91/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.91/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.91/0.99  
% 1.91/0.99  ------ Combination Options
% 1.91/0.99  
% 1.91/0.99  --comb_res_mult                         3
% 1.91/0.99  --comb_sup_mult                         2
% 1.91/0.99  --comb_inst_mult                        10
% 1.91/0.99  
% 1.91/0.99  ------ Debug Options
% 1.91/0.99  
% 1.91/0.99  --dbg_backtrace                         false
% 1.91/0.99  --dbg_dump_prop_clauses                 false
% 1.91/0.99  --dbg_dump_prop_clauses_file            -
% 1.91/0.99  --dbg_out_stat                          false
% 1.91/0.99  ------ Parsing...
% 1.91/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 10 0s  sf_e  pe_s  pe_e 
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.91/0.99  ------ Proving...
% 1.91/0.99  ------ Problem Properties 
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  clauses                                 14
% 1.91/0.99  conjectures                             2
% 1.91/0.99  EPR                                     0
% 1.91/0.99  Horn                                    13
% 1.91/0.99  unary                                   4
% 1.91/0.99  binary                                  8
% 1.91/0.99  lits                                    27
% 1.91/0.99  lits eq                                 20
% 1.91/0.99  fd_pure                                 0
% 1.91/0.99  fd_pseudo                               0
% 1.91/0.99  fd_cond                                 0
% 1.91/0.99  fd_pseudo_cond                          0
% 1.91/0.99  AC symbols                              0
% 1.91/0.99  
% 1.91/0.99  ------ Schedule dynamic 5 is on 
% 1.91/0.99  
% 1.91/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  ------ 
% 1.91/0.99  Current options:
% 1.91/0.99  ------ 
% 1.91/0.99  
% 1.91/0.99  ------ Input Options
% 1.91/0.99  
% 1.91/0.99  --out_options                           all
% 1.91/0.99  --tptp_safe_out                         true
% 1.91/0.99  --problem_path                          ""
% 1.91/0.99  --include_path                          ""
% 1.91/0.99  --clausifier                            res/vclausify_rel
% 1.91/0.99  --clausifier_options                    --mode clausify
% 1.91/0.99  --stdin                                 false
% 1.91/0.99  --stats_out                             all
% 1.91/0.99  
% 1.91/0.99  ------ General Options
% 1.91/0.99  
% 1.91/0.99  --fof                                   false
% 1.91/0.99  --time_out_real                         305.
% 1.91/0.99  --time_out_virtual                      -1.
% 1.91/0.99  --symbol_type_check                     false
% 1.91/0.99  --clausify_out                          false
% 1.91/0.99  --sig_cnt_out                           false
% 1.91/0.99  --trig_cnt_out                          false
% 1.91/0.99  --trig_cnt_out_tolerance                1.
% 1.91/0.99  --trig_cnt_out_sk_spl                   false
% 1.91/0.99  --abstr_cl_out                          false
% 1.91/0.99  
% 1.91/0.99  ------ Global Options
% 1.91/0.99  
% 1.91/0.99  --schedule                              default
% 1.91/0.99  --add_important_lit                     false
% 1.91/0.99  --prop_solver_per_cl                    1000
% 1.91/0.99  --min_unsat_core                        false
% 1.91/0.99  --soft_assumptions                      false
% 1.91/0.99  --soft_lemma_size                       3
% 1.91/0.99  --prop_impl_unit_size                   0
% 1.91/0.99  --prop_impl_unit                        []
% 1.91/0.99  --share_sel_clauses                     true
% 1.91/0.99  --reset_solvers                         false
% 1.91/0.99  --bc_imp_inh                            [conj_cone]
% 1.91/0.99  --conj_cone_tolerance                   3.
% 1.91/0.99  --extra_neg_conj                        none
% 1.91/0.99  --large_theory_mode                     true
% 1.91/0.99  --prolific_symb_bound                   200
% 1.91/0.99  --lt_threshold                          2000
% 1.91/0.99  --clause_weak_htbl                      true
% 1.91/0.99  --gc_record_bc_elim                     false
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing Options
% 1.91/0.99  
% 1.91/0.99  --preprocessing_flag                    true
% 1.91/0.99  --time_out_prep_mult                    0.1
% 1.91/0.99  --splitting_mode                        input
% 1.91/0.99  --splitting_grd                         true
% 1.91/0.99  --splitting_cvd                         false
% 1.91/0.99  --splitting_cvd_svl                     false
% 1.91/0.99  --splitting_nvd                         32
% 1.91/0.99  --sub_typing                            true
% 1.91/0.99  --prep_gs_sim                           true
% 1.91/0.99  --prep_unflatten                        true
% 1.91/0.99  --prep_res_sim                          true
% 1.91/0.99  --prep_upred                            true
% 1.91/0.99  --prep_sem_filter                       exhaustive
% 1.91/0.99  --prep_sem_filter_out                   false
% 1.91/0.99  --pred_elim                             true
% 1.91/0.99  --res_sim_input                         true
% 1.91/0.99  --eq_ax_congr_red                       true
% 1.91/0.99  --pure_diseq_elim                       true
% 1.91/0.99  --brand_transform                       false
% 1.91/0.99  --non_eq_to_eq                          false
% 1.91/0.99  --prep_def_merge                        true
% 1.91/0.99  --prep_def_merge_prop_impl              false
% 1.91/0.99  --prep_def_merge_mbd                    true
% 1.91/0.99  --prep_def_merge_tr_red                 false
% 1.91/0.99  --prep_def_merge_tr_cl                  false
% 1.91/0.99  --smt_preprocessing                     true
% 1.91/0.99  --smt_ac_axioms                         fast
% 1.91/0.99  --preprocessed_out                      false
% 1.91/0.99  --preprocessed_stats                    false
% 1.91/0.99  
% 1.91/0.99  ------ Abstraction refinement Options
% 1.91/0.99  
% 1.91/0.99  --abstr_ref                             []
% 1.91/0.99  --abstr_ref_prep                        false
% 1.91/0.99  --abstr_ref_until_sat                   false
% 1.91/0.99  --abstr_ref_sig_restrict                funpre
% 1.91/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.91/0.99  --abstr_ref_under                       []
% 1.91/0.99  
% 1.91/0.99  ------ SAT Options
% 1.91/0.99  
% 1.91/0.99  --sat_mode                              false
% 1.91/0.99  --sat_fm_restart_options                ""
% 1.91/0.99  --sat_gr_def                            false
% 1.91/0.99  --sat_epr_types                         true
% 1.91/0.99  --sat_non_cyclic_types                  false
% 1.91/0.99  --sat_finite_models                     false
% 1.91/0.99  --sat_fm_lemmas                         false
% 1.91/0.99  --sat_fm_prep                           false
% 1.91/0.99  --sat_fm_uc_incr                        true
% 1.91/0.99  --sat_out_model                         small
% 1.91/0.99  --sat_out_clauses                       false
% 1.91/0.99  
% 1.91/0.99  ------ QBF Options
% 1.91/0.99  
% 1.91/0.99  --qbf_mode                              false
% 1.91/0.99  --qbf_elim_univ                         false
% 1.91/0.99  --qbf_dom_inst                          none
% 1.91/0.99  --qbf_dom_pre_inst                      false
% 1.91/0.99  --qbf_sk_in                             false
% 1.91/0.99  --qbf_pred_elim                         true
% 1.91/0.99  --qbf_split                             512
% 1.91/0.99  
% 1.91/0.99  ------ BMC1 Options
% 1.91/0.99  
% 1.91/0.99  --bmc1_incremental                      false
% 1.91/0.99  --bmc1_axioms                           reachable_all
% 1.91/0.99  --bmc1_min_bound                        0
% 1.91/0.99  --bmc1_max_bound                        -1
% 1.91/0.99  --bmc1_max_bound_default                -1
% 1.91/0.99  --bmc1_symbol_reachability              true
% 1.91/0.99  --bmc1_property_lemmas                  false
% 1.91/0.99  --bmc1_k_induction                      false
% 1.91/0.99  --bmc1_non_equiv_states                 false
% 1.91/0.99  --bmc1_deadlock                         false
% 1.91/0.99  --bmc1_ucm                              false
% 1.91/0.99  --bmc1_add_unsat_core                   none
% 1.91/0.99  --bmc1_unsat_core_children              false
% 1.91/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.91/0.99  --bmc1_out_stat                         full
% 1.91/0.99  --bmc1_ground_init                      false
% 1.91/0.99  --bmc1_pre_inst_next_state              false
% 1.91/0.99  --bmc1_pre_inst_state                   false
% 1.91/0.99  --bmc1_pre_inst_reach_state             false
% 1.91/0.99  --bmc1_out_unsat_core                   false
% 1.91/0.99  --bmc1_aig_witness_out                  false
% 1.91/0.99  --bmc1_verbose                          false
% 1.91/0.99  --bmc1_dump_clauses_tptp                false
% 1.91/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.91/0.99  --bmc1_dump_file                        -
% 1.91/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.91/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.91/0.99  --bmc1_ucm_extend_mode                  1
% 1.91/0.99  --bmc1_ucm_init_mode                    2
% 1.91/0.99  --bmc1_ucm_cone_mode                    none
% 1.91/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.91/0.99  --bmc1_ucm_relax_model                  4
% 1.91/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.91/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.91/0.99  --bmc1_ucm_layered_model                none
% 1.91/0.99  --bmc1_ucm_max_lemma_size               10
% 1.91/0.99  
% 1.91/0.99  ------ AIG Options
% 1.91/0.99  
% 1.91/0.99  --aig_mode                              false
% 1.91/0.99  
% 1.91/0.99  ------ Instantiation Options
% 1.91/0.99  
% 1.91/0.99  --instantiation_flag                    true
% 1.91/0.99  --inst_sos_flag                         false
% 1.91/0.99  --inst_sos_phase                        true
% 1.91/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.91/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.91/0.99  --inst_lit_sel_side                     none
% 1.91/0.99  --inst_solver_per_active                1400
% 1.91/0.99  --inst_solver_calls_frac                1.
% 1.91/0.99  --inst_passive_queue_type               priority_queues
% 1.91/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.91/0.99  --inst_passive_queues_freq              [25;2]
% 1.91/0.99  --inst_dismatching                      true
% 1.91/0.99  --inst_eager_unprocessed_to_passive     true
% 1.91/0.99  --inst_prop_sim_given                   true
% 1.91/0.99  --inst_prop_sim_new                     false
% 1.91/0.99  --inst_subs_new                         false
% 1.91/0.99  --inst_eq_res_simp                      false
% 1.91/0.99  --inst_subs_given                       false
% 1.91/0.99  --inst_orphan_elimination               true
% 1.91/0.99  --inst_learning_loop_flag               true
% 1.91/0.99  --inst_learning_start                   3000
% 1.91/0.99  --inst_learning_factor                  2
% 1.91/0.99  --inst_start_prop_sim_after_learn       3
% 1.91/0.99  --inst_sel_renew                        solver
% 1.91/0.99  --inst_lit_activity_flag                true
% 1.91/0.99  --inst_restr_to_given                   false
% 1.91/0.99  --inst_activity_threshold               500
% 1.91/0.99  --inst_out_proof                        true
% 1.91/0.99  
% 1.91/0.99  ------ Resolution Options
% 1.91/0.99  
% 1.91/0.99  --resolution_flag                       false
% 1.91/0.99  --res_lit_sel                           adaptive
% 1.91/0.99  --res_lit_sel_side                      none
% 1.91/0.99  --res_ordering                          kbo
% 1.91/0.99  --res_to_prop_solver                    active
% 1.91/0.99  --res_prop_simpl_new                    false
% 1.91/0.99  --res_prop_simpl_given                  true
% 1.91/0.99  --res_passive_queue_type                priority_queues
% 1.91/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.91/0.99  --res_passive_queues_freq               [15;5]
% 1.91/0.99  --res_forward_subs                      full
% 1.91/0.99  --res_backward_subs                     full
% 1.91/0.99  --res_forward_subs_resolution           true
% 1.91/0.99  --res_backward_subs_resolution          true
% 1.91/0.99  --res_orphan_elimination                true
% 1.91/0.99  --res_time_limit                        2.
% 1.91/0.99  --res_out_proof                         true
% 1.91/0.99  
% 1.91/0.99  ------ Superposition Options
% 1.91/0.99  
% 1.91/0.99  --superposition_flag                    true
% 1.91/0.99  --sup_passive_queue_type                priority_queues
% 1.91/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.91/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.91/0.99  --demod_completeness_check              fast
% 1.91/0.99  --demod_use_ground                      true
% 1.91/0.99  --sup_to_prop_solver                    passive
% 1.91/0.99  --sup_prop_simpl_new                    true
% 1.91/0.99  --sup_prop_simpl_given                  true
% 1.91/0.99  --sup_fun_splitting                     false
% 1.91/0.99  --sup_smt_interval                      50000
% 1.91/0.99  
% 1.91/0.99  ------ Superposition Simplification Setup
% 1.91/0.99  
% 1.91/0.99  --sup_indices_passive                   []
% 1.91/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.91/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.91/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_full_bw                           [BwDemod]
% 1.91/0.99  --sup_immed_triv                        [TrivRules]
% 1.91/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.91/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_immed_bw_main                     []
% 1.91/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.91/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.91/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.91/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.91/0.99  
% 1.91/0.99  ------ Combination Options
% 1.91/0.99  
% 1.91/0.99  --comb_res_mult                         3
% 1.91/0.99  --comb_sup_mult                         2
% 1.91/0.99  --comb_inst_mult                        10
% 1.91/0.99  
% 1.91/0.99  ------ Debug Options
% 1.91/0.99  
% 1.91/0.99  --dbg_backtrace                         false
% 1.91/0.99  --dbg_dump_prop_clauses                 false
% 1.91/0.99  --dbg_dump_prop_clauses_file            -
% 1.91/0.99  --dbg_out_stat                          false
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  ------ Proving...
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  % SZS status Theorem for theBenchmark.p
% 1.91/0.99  
% 1.91/0.99   Resolution empty clause
% 1.91/0.99  
% 1.91/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.91/0.99  
% 1.91/0.99  fof(f7,axiom,(
% 1.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) & k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f22,plain,(
% 1.91/0.99    ! [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) & k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.91/0.99    inference(ennf_transformation,[],[f7])).
% 1.91/0.99  
% 1.91/0.99  fof(f46,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k2_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f22])).
% 1.91/0.99  
% 1.91/0.99  fof(f13,conjecture,(
% 1.91/0.99    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1))))))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f14,negated_conjecture,(
% 1.91/0.99    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => (k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X0) & k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) = k2_struct_0(X1))))))),
% 1.91/0.99    inference(negated_conjecture,[],[f13])).
% 1.91/0.99  
% 1.91/0.99  fof(f32,plain,(
% 1.91/0.99    ? [X0] : (? [X1] : (? [X2] : (((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 1.91/0.99    inference(ennf_transformation,[],[f14])).
% 1.91/0.99  
% 1.91/0.99  fof(f33,plain,(
% 1.91/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 1.91/0.99    inference(flattening,[],[f32])).
% 1.91/0.99  
% 1.91/0.99  fof(f37,plain,(
% 1.91/0.99    ( ! [X0,X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)) != k2_struct_0(X1)) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 1.91/0.99    introduced(choice_axiom,[])).
% 1.91/0.99  
% 1.91/0.99  fof(f36,plain,(
% 1.91/0.99    ( ! [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : ((k2_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)) != k2_struct_0(sK1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1))) )),
% 1.91/0.99    introduced(choice_axiom,[])).
% 1.91/0.99  
% 1.91/0.99  fof(f35,plain,(
% 1.91/0.99    ? [X0] : (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : ((k2_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)) != k2_struct_0(sK0) | k1_relset_1(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)) != k2_struct_0(X1)) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK0))),
% 1.91/0.99    introduced(choice_axiom,[])).
% 1.91/0.99  
% 1.91/0.99  fof(f38,plain,(
% 1.91/0.99    (((k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0) | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1)) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1)) & l1_struct_0(sK0)),
% 1.91/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f33,f37,f36,f35])).
% 1.91/0.99  
% 1.91/0.99  fof(f59,plain,(
% 1.91/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f10,axiom,(
% 1.91/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f27,plain,(
% 1.91/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 1.91/0.99    inference(ennf_transformation,[],[f10])).
% 1.91/0.99  
% 1.91/0.99  fof(f51,plain,(
% 1.91/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f27])).
% 1.91/0.99  
% 1.91/0.99  fof(f54,plain,(
% 1.91/0.99    l1_struct_0(sK0)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f56,plain,(
% 1.91/0.99    l1_struct_0(sK1)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f9,axiom,(
% 1.91/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f25,plain,(
% 1.91/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.91/0.99    inference(ennf_transformation,[],[f9])).
% 1.91/0.99  
% 1.91/0.99  fof(f26,plain,(
% 1.91/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.91/0.99    inference(flattening,[],[f25])).
% 1.91/0.99  
% 1.91/0.99  fof(f34,plain,(
% 1.91/0.99    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.91/0.99    inference(nnf_transformation,[],[f26])).
% 1.91/0.99  
% 1.91/0.99  fof(f49,plain,(
% 1.91/0.99    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f34])).
% 1.91/0.99  
% 1.91/0.99  fof(f4,axiom,(
% 1.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f15,plain,(
% 1.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.91/0.99    inference(pure_predicate_removal,[],[f4])).
% 1.91/0.99  
% 1.91/0.99  fof(f19,plain,(
% 1.91/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.91/0.99    inference(ennf_transformation,[],[f15])).
% 1.91/0.99  
% 1.91/0.99  fof(f42,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f19])).
% 1.91/0.99  
% 1.91/0.99  fof(f58,plain,(
% 1.91/0.99    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f8,axiom,(
% 1.91/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f23,plain,(
% 1.91/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.91/0.99    inference(ennf_transformation,[],[f8])).
% 1.91/0.99  
% 1.91/0.99  fof(f24,plain,(
% 1.91/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.91/0.99    inference(flattening,[],[f23])).
% 1.91/0.99  
% 1.91/0.99  fof(f48,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f24])).
% 1.91/0.99  
% 1.91/0.99  fof(f11,axiom,(
% 1.91/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k2_struct_0(X0)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f28,plain,(
% 1.91/0.99    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.91/0.99    inference(ennf_transformation,[],[f11])).
% 1.91/0.99  
% 1.91/0.99  fof(f29,plain,(
% 1.91/0.99    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.91/0.99    inference(flattening,[],[f28])).
% 1.91/0.99  
% 1.91/0.99  fof(f52,plain,(
% 1.91/0.99    ( ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f29])).
% 1.91/0.99  
% 1.91/0.99  fof(f55,plain,(
% 1.91/0.99    ~v2_struct_0(sK1)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f57,plain,(
% 1.91/0.99    v1_funct_1(sK2)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f1,axiom,(
% 1.91/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f16,plain,(
% 1.91/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.91/0.99    inference(ennf_transformation,[],[f1])).
% 1.91/0.99  
% 1.91/0.99  fof(f39,plain,(
% 1.91/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f16])).
% 1.91/0.99  
% 1.91/0.99  fof(f2,axiom,(
% 1.91/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f40,plain,(
% 1.91/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f2])).
% 1.91/0.99  
% 1.91/0.99  fof(f6,axiom,(
% 1.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k4_relat_1(X2) = k3_relset_1(X0,X1,X2))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f21,plain,(
% 1.91/0.99    ! [X0,X1,X2] : (k4_relat_1(X2) = k3_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.91/0.99    inference(ennf_transformation,[],[f6])).
% 1.91/0.99  
% 1.91/0.99  fof(f44,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (k4_relat_1(X2) = k3_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f21])).
% 1.91/0.99  
% 1.91/0.99  fof(f3,axiom,(
% 1.91/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => k2_funct_1(X0) = k4_relat_1(X0)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f17,plain,(
% 1.91/0.99    ! [X0] : ((k2_funct_1(X0) = k4_relat_1(X0) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.91/0.99    inference(ennf_transformation,[],[f3])).
% 1.91/0.99  
% 1.91/0.99  fof(f18,plain,(
% 1.91/0.99    ! [X0] : (k2_funct_1(X0) = k4_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.91/0.99    inference(flattening,[],[f17])).
% 1.91/0.99  
% 1.91/0.99  fof(f41,plain,(
% 1.91/0.99    ( ! [X0] : (k2_funct_1(X0) = k4_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f18])).
% 1.91/0.99  
% 1.91/0.99  fof(f61,plain,(
% 1.91/0.99    v2_funct_1(sK2)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f5,axiom,(
% 1.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f20,plain,(
% 1.91/0.99    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.91/0.99    inference(ennf_transformation,[],[f5])).
% 1.91/0.99  
% 1.91/0.99  fof(f43,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f20])).
% 1.91/0.99  
% 1.91/0.99  fof(f45,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X1,X0,k3_relset_1(X0,X1,X2)) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.91/0.99    inference(cnf_transformation,[],[f22])).
% 1.91/0.99  
% 1.91/0.99  fof(f60,plain,(
% 1.91/0.99    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f62,plain,(
% 1.91/0.99    k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0) | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1)),
% 1.91/0.99    inference(cnf_transformation,[],[f38])).
% 1.91/0.99  
% 1.91/0.99  fof(f12,axiom,(
% 1.91/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 1.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.91/0.99  
% 1.91/0.99  fof(f30,plain,(
% 1.91/0.99    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 1.91/0.99    inference(ennf_transformation,[],[f12])).
% 1.91/0.99  
% 1.91/0.99  fof(f31,plain,(
% 1.91/0.99    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.91/0.99    inference(flattening,[],[f30])).
% 1.91/0.99  
% 1.91/0.99  fof(f53,plain,(
% 1.91/0.99    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.91/0.99    inference(cnf_transformation,[],[f31])).
% 1.91/0.99  
% 1.91/0.99  cnf(c_6,plain,
% 1.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | k2_relset_1(X2,X1,k3_relset_1(X1,X2,X0)) = k1_relset_1(X1,X2,X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_18,negated_conjecture,
% 1.91/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 1.91/0.99      inference(cnf_transformation,[],[f59]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_453,plain,
% 1.91/0.99      ( k2_relset_1(X0,X1,k3_relset_1(X1,X0,X2)) = k1_relset_1(X1,X0,X2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
% 1.91/0.99      | sK2 != X2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_454,plain,
% 1.91/0.99      ( k2_relset_1(X0,X1,k3_relset_1(X1,X0,sK2)) = k1_relset_1(X1,X0,sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_453]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_633,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_454]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_12,plain,
% 1.91/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_23,negated_conjecture,
% 1.91/0.99      ( l1_struct_0(sK0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_265,plain,
% 1.91/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_23]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_266,plain,
% 1.91/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_265]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_638,plain,
% 1.91/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_266]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_21,negated_conjecture,
% 1.91/0.99      ( l1_struct_0(sK1) ),
% 1.91/0.99      inference(cnf_transformation,[],[f56]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_260,plain,
% 1.91/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_21]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_261,plain,
% 1.91/0.99      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_260]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_639,plain,
% 1.91/0.99      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_261]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_820,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_633,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_11,plain,
% 1.91/0.99      ( ~ v1_partfun1(X0,X1)
% 1.91/0.99      | ~ v4_relat_1(X0,X1)
% 1.91/0.99      | ~ v1_relat_1(X0)
% 1.91/0.99      | k1_relat_1(X0) = X1 ),
% 1.91/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_3,plain,
% 1.91/0.99      ( v4_relat_1(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.91/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_480,plain,
% 1.91/0.99      ( v4_relat_1(X0,X1)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.91/0.99      | sK2 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_481,plain,
% 1.91/0.99      ( v4_relat_1(sK2,X0)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_480]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_523,plain,
% 1.91/0.99      ( ~ v1_partfun1(X0,X1)
% 1.91/0.99      | ~ v1_relat_1(X0)
% 1.91/0.99      | X2 != X1
% 1.91/0.99      | k1_relat_1(X0) = X1
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X2,X3))
% 1.91/0.99      | sK2 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_481]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_524,plain,
% 1.91/0.99      ( ~ v1_partfun1(sK2,X0)
% 1.91/0.99      | ~ v1_relat_1(sK2)
% 1.91/0.99      | k1_relat_1(sK2) = X0
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_523]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_19,negated_conjecture,
% 1.91/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 1.91/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_8,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.91/0.99      | v1_partfun1(X0,X1)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | v1_xboole_0(X2)
% 1.91/0.99      | ~ v1_funct_1(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_13,plain,
% 1.91/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(k2_struct_0(X0)) ),
% 1.91/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_22,negated_conjecture,
% 1.91/0.99      ( ~ v2_struct_0(sK1) ),
% 1.91/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_247,plain,
% 1.91/0.99      ( ~ l1_struct_0(X0) | ~ v1_xboole_0(k2_struct_0(X0)) | sK1 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_22]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_248,plain,
% 1.91/0.99      ( ~ l1_struct_0(sK1) | ~ v1_xboole_0(k2_struct_0(sK1)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_247]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_35,plain,
% 1.91/0.99      ( v2_struct_0(sK1)
% 1.91/0.99      | ~ l1_struct_0(sK1)
% 1.91/0.99      | ~ v1_xboole_0(k2_struct_0(sK1)) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_13]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_250,plain,
% 1.91/0.99      ( ~ v1_xboole_0(k2_struct_0(sK1)) ),
% 1.91/0.99      inference(global_propositional_subsumption,
% 1.91/0.99                [status(thm)],
% 1.91/0.99                [c_248,c_22,c_21,c_35]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_272,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.91/0.99      | v1_partfun1(X0,X1)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | ~ v1_funct_1(X0)
% 1.91/0.99      | k2_struct_0(sK1) != X2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_250]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_273,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,k2_struct_0(sK1))
% 1.91/0.99      | v1_partfun1(X0,X1)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1))))
% 1.91/0.99      | ~ v1_funct_1(X0) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_272]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_20,negated_conjecture,
% 1.91/0.99      ( v1_funct_1(sK2) ),
% 1.91/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_380,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,k2_struct_0(sK1))
% 1.91/0.99      | v1_partfun1(X0,X1)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k2_struct_0(sK1))))
% 1.91/0.99      | sK2 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_273,c_20]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_381,plain,
% 1.91/0.99      ( ~ v1_funct_2(sK2,X0,k2_struct_0(sK1))
% 1.91/0.99      | v1_partfun1(sK2,X0)
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,k2_struct_0(sK1)))) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_380]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_410,plain,
% 1.91/0.99      ( v1_partfun1(sK2,X0)
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,k2_struct_0(sK1))))
% 1.91/0.99      | u1_struct_0(sK0) != X0
% 1.91/0.99      | u1_struct_0(sK1) != k2_struct_0(sK1)
% 1.91/0.99      | sK2 != sK2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_381]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_411,plain,
% 1.91/0.99      ( v1_partfun1(sK2,u1_struct_0(sK0))
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))))
% 1.91/0.99      | u1_struct_0(sK1) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_410]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_38,plain,
% 1.91/0.99      ( ~ l1_struct_0(sK1) | u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_413,plain,
% 1.91/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))))
% 1.91/0.99      | v1_partfun1(sK2,u1_struct_0(sK0)) ),
% 1.91/0.99      inference(global_propositional_subsumption,
% 1.91/0.99                [status(thm)],
% 1.91/0.99                [c_411,c_21,c_38]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_414,plain,
% 1.91/0.99      ( v1_partfun1(sK2,u1_struct_0(sK0))
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1)))) ),
% 1.91/0.99      inference(renaming,[status(thm)],[c_413]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_492,plain,
% 1.91/0.99      ( v1_partfun1(sK2,u1_struct_0(sK0))
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | sK2 != sK2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_414]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_565,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2)
% 1.91/0.99      | u1_struct_0(sK0) != X0
% 1.91/0.99      | k1_relat_1(sK2) = X0
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | sK2 != sK2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_524,c_492]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_566,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2)
% 1.91/0.99      | k1_relat_1(sK2) = u1_struct_0(sK0)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0))
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_565]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_630,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | k1_relat_1(sK2) = u1_struct_0(sK0) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_566]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_644,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2)
% 1.91/0.99      | sP0_iProver_split
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | k1_relat_1(sK2) = u1_struct_0(sK0) ),
% 1.91/0.99      inference(splitting,
% 1.91/0.99                [splitting(split),new_symbols(definition,[])],
% 1.91/0.99                [c_630]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_774,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | k1_relat_1(sK2) = u1_struct_0(sK0)
% 1.91/0.99      | v1_relat_1(sK2) != iProver_top
% 1.91/0.99      | sP0_iProver_split = iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_644]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_825,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))
% 1.91/0.99      | u1_struct_0(sK0) = k1_relat_1(sK2)
% 1.91/0.99      | v1_relat_1(sK2) != iProver_top
% 1.91/0.99      | sP0_iProver_split = iProver_top ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_774,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_826,plain,
% 1.91/0.99      ( u1_struct_0(sK0) = k1_relat_1(sK2)
% 1.91/0.99      | v1_relat_1(sK2) != iProver_top
% 1.91/0.99      | sP0_iProver_split = iProver_top ),
% 1.91/0.99      inference(equality_resolution_simp,[status(thm)],[c_825]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_827,plain,
% 1.91/0.99      ( k2_struct_0(sK0) = k1_relat_1(sK2)
% 1.91/0.99      | v1_relat_1(sK2) != iProver_top
% 1.91/0.99      | sP0_iProver_split = iProver_top ),
% 1.91/0.99      inference(demodulation,[status(thm)],[c_826,c_638]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_842,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2)
% 1.91/0.99      | sP0_iProver_split
% 1.91/0.99      | k2_struct_0(sK0) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_827]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_648,plain,( X0_55 = X0_55 ),theory(equality) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_863,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_648]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_643,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
% 1.91/0.99      | ~ sP0_iProver_split ),
% 1.91/0.99      inference(splitting,
% 1.91/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.91/0.99                [c_630]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_775,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),X0_53))
% 1.91/0.99      | sP0_iProver_split != iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_643]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_789,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),X0_53))
% 1.91/0.99      | sP0_iProver_split != iProver_top ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_775,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_890,plain,
% 1.91/0.99      ( sP0_iProver_split != iProver_top ),
% 1.91/0.99      inference(equality_resolution,[status(thm)],[c_789]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_891,plain,
% 1.91/0.99      ( ~ sP0_iProver_split ),
% 1.91/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_890]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_0,plain,
% 1.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_429,plain,
% 1.91/0.99      ( ~ v1_relat_1(X0)
% 1.91/0.99      | v1_relat_1(X1)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0)
% 1.91/0.99      | sK2 != X1 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_430,plain,
% 1.91/0.99      ( ~ v1_relat_1(X0)
% 1.91/0.99      | v1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_429]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_635,plain,
% 1.91/0.99      ( ~ v1_relat_1(X0_52)
% 1.91/0.99      | v1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0_52) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_430]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_858,plain,
% 1.91/0.99      ( ~ v1_relat_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | v1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53)) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_635]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_905,plain,
% 1.91/0.99      ( ~ v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | v1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_858]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1,plain,
% 1.91/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.91/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_642,plain,
% 1.91/0.99      ( v1_relat_1(k2_zfmisc_1(X0_53,X1_53)) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_937,plain,
% 1.91/0.99      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) ),
% 1.91/0.99      inference(instantiation,[status(thm)],[c_642]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_982,plain,
% 1.91/0.99      ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(global_propositional_subsumption,
% 1.91/0.99                [status(thm)],
% 1.91/0.99                [c_827,c_842,c_863,c_891,c_905,c_937]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1174,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k2_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k1_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_820,c_982]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1178,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k1_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) ),
% 1.91/0.99      inference(equality_resolution,[status(thm)],[c_1174]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_5,plain,
% 1.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | k3_relset_1(X1,X2,X0) = k4_relat_1(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_462,plain,
% 1.91/0.99      ( k3_relset_1(X0,X1,X2) = k4_relat_1(X2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.91/0.99      | sK2 != X2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_463,plain,
% 1.91/0.99      ( k3_relset_1(X0,X1,sK2) = k4_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_462]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_632,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k3_relset_1(X0_53,X1_53,sK2) = k4_relat_1(sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_463]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_798,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k3_relset_1(X0_53,X1_53,sK2) = k4_relat_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_632,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_915,plain,
% 1.91/0.99      ( k3_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k4_relat_1(sK2) ),
% 1.91/0.99      inference(equality_resolution,[status(thm)],[c_798]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_773,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(X0_52)
% 1.91/0.99      | v1_relat_1(X0_52) != iProver_top
% 1.91/0.99      | v1_relat_1(sK2) = iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_635]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_808,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(X0_52)
% 1.91/0.99      | v1_relat_1(X0_52) != iProver_top
% 1.91/0.99      | v1_relat_1(sK2) = iProver_top ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_773,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_906,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))
% 1.91/0.99      | v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != iProver_top
% 1.91/0.99      | v1_relat_1(sK2) = iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_905]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_938,plain,
% 1.91/0.99      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) = iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_937]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1103,plain,
% 1.91/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 1.91/0.99      inference(global_propositional_subsumption,
% 1.91/0.99                [status(thm)],
% 1.91/0.99                [c_808,c_863,c_906,c_938]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_2,plain,
% 1.91/0.99      ( ~ v1_funct_1(X0)
% 1.91/0.99      | ~ v2_funct_1(X0)
% 1.91/0.99      | ~ v1_relat_1(X0)
% 1.91/0.99      | k4_relat_1(X0) = k2_funct_1(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_16,negated_conjecture,
% 1.91/0.99      ( v2_funct_1(sK2) ),
% 1.91/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_358,plain,
% 1.91/0.99      ( ~ v1_funct_1(X0)
% 1.91/0.99      | ~ v1_relat_1(X0)
% 1.91/0.99      | k4_relat_1(X0) = k2_funct_1(X0)
% 1.91/0.99      | sK2 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_16]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_359,plain,
% 1.91/0.99      ( ~ v1_funct_1(sK2)
% 1.91/0.99      | ~ v1_relat_1(sK2)
% 1.91/0.99      | k4_relat_1(sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_358]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_361,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2) | k4_relat_1(sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(global_propositional_subsumption,[status(thm)],[c_359,c_20]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_637,plain,
% 1.91/0.99      ( ~ v1_relat_1(sK2) | k4_relat_1(sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_361]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_772,plain,
% 1.91/0.99      ( k4_relat_1(sK2) = k2_funct_1(sK2) | v1_relat_1(sK2) != iProver_top ),
% 1.91/0.99      inference(predicate_to_equality,[status(thm)],[c_637]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1108,plain,
% 1.91/0.99      ( k4_relat_1(sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(superposition,[status(thm)],[c_1103,c_772]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1244,plain,
% 1.91/0.99      ( k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_915,c_982,c_1108]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_4,plain,
% 1.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_471,plain,
% 1.91/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.91/0.99      | sK2 != X2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_472,plain,
% 1.91/0.99      ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_471]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_631,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k1_relset_1(X0_53,X1_53,sK2) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_472]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_803,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k1_relset_1(X0_53,X1_53,sK2) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_631,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_918,plain,
% 1.91/0.99      ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(equality_resolution,[status(thm)],[c_803]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1309,plain,
% 1.91/0.99      ( k1_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_918,c_982]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1518,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_1178,c_1244,c_1309]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_7,plain,
% 1.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | k1_relset_1(X2,X1,k3_relset_1(X1,X2,X0)) = k2_relset_1(X1,X2,X0) ),
% 1.91/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_444,plain,
% 1.91/0.99      ( k1_relset_1(X0,X1,k3_relset_1(X1,X0,X2)) = k2_relset_1(X1,X0,X2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
% 1.91/0.99      | sK2 != X2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_445,plain,
% 1.91/0.99      ( k1_relset_1(X0,X1,k3_relset_1(X1,X0,sK2)) = k2_relset_1(X1,X0,sK2)
% 1.91/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_444]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_634,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_445]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_815,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_634,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1109,plain,
% 1.91/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))
% 1.91/0.99      | k1_relset_1(X1_53,X0_53,k3_relset_1(X0_53,X1_53,sK2)) = k2_relset_1(X0_53,X1_53,sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_815,c_982]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1113,plain,
% 1.91/0.99      ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k2_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) ),
% 1.91/0.99      inference(equality_resolution,[status(thm)],[c_1109]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_17,negated_conjecture,
% 1.91/0.99      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_640,negated_conjecture,
% 1.91/0.99      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_17]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_782,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_640,c_638,c_639]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_990,plain,
% 1.91/0.99      ( k2_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(demodulation,[status(thm)],[c_982,c_782]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1114,plain,
% 1.91/0.99      ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k3_relset_1(k1_relat_1(sK2),k2_struct_0(sK1),sK2)) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_1113,c_990]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1352,plain,
% 1.91/0.99      ( k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_struct_0(sK1) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_1114,c_1244]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_15,negated_conjecture,
% 1.91/0.99      ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
% 1.91/0.99      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_641,negated_conjecture,
% 1.91/0.99      ( k2_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK0)
% 1.91/0.99      | k1_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_14,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | ~ v1_funct_1(X0)
% 1.91/0.99      | ~ v2_funct_1(X0)
% 1.91/0.99      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 1.91/0.99      | k2_relset_1(X1,X2,X0) != X2 ),
% 1.91/0.99      inference(cnf_transformation,[],[f53]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_334,plain,
% 1.91/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.91/0.99      | ~ v1_funct_1(X0)
% 1.91/0.99      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 1.91/0.99      | k2_relset_1(X1,X2,X0) != X2
% 1.91/0.99      | sK2 != X0 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_16]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_335,plain,
% 1.91/0.99      ( ~ v1_funct_2(sK2,X0,X1)
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.91/0.99      | ~ v1_funct_1(sK2)
% 1.91/0.99      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(X0,X1,sK2) != X1 ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_334]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_339,plain,
% 1.91/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.91/0.99      | ~ v1_funct_2(sK2,X0,X1)
% 1.91/0.99      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(X0,X1,sK2) != X1 ),
% 1.91/0.99      inference(global_propositional_subsumption,[status(thm)],[c_335,c_20]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_340,plain,
% 1.91/0.99      ( ~ v1_funct_2(sK2,X0,X1)
% 1.91/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.91/0.99      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(X0,X1,sK2) != X1 ),
% 1.91/0.99      inference(renaming,[status(thm)],[c_339]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_399,plain,
% 1.91/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.91/0.99      | k2_tops_2(X0,X1,sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(X0,X1,sK2) != X1
% 1.91/0.99      | u1_struct_0(sK0) != X0
% 1.91/0.99      | u1_struct_0(sK1) != X1
% 1.91/0.99      | sK2 != sK2 ),
% 1.91/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_340]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_400,plain,
% 1.91/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 1.91/0.99      | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1) ),
% 1.91/0.99      inference(unflattening,[status(thm)],[c_399]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_402,plain,
% 1.91/0.99      ( k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2)
% 1.91/0.99      | k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1) ),
% 1.91/0.99      inference(global_propositional_subsumption,[status(thm)],[c_400,c_18]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_636,plain,
% 1.91/0.99      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) != u1_struct_0(sK1)
% 1.91/0.99      | k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(subtyping,[status(esa)],[c_402]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_794,plain,
% 1.91/0.99      ( k2_struct_0(sK1) != k2_struct_0(sK1)
% 1.91/0.99      | k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_636,c_638,c_639,c_782]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_795,plain,
% 1.91/0.99      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 1.91/0.99      inference(equality_resolution_simp,[status(thm)],[c_794]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_834,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != k2_struct_0(sK0)
% 1.91/0.99      | k1_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(light_normalisation,[status(thm)],[c_641,c_638,c_639,c_795]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_989,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2)
% 1.91/0.99      | k1_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(demodulation,[status(thm)],[c_982,c_834]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1354,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2)
% 1.91/0.99      | k2_struct_0(sK1) != k2_struct_0(sK1) ),
% 1.91/0.99      inference(demodulation,[status(thm)],[c_1352,c_989]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1355,plain,
% 1.91/0.99      ( k2_relset_1(k2_struct_0(sK1),k1_relat_1(sK2),k2_funct_1(sK2)) != k1_relat_1(sK2) ),
% 1.91/0.99      inference(equality_resolution_simp,[status(thm)],[c_1354]) ).
% 1.91/0.99  
% 1.91/0.99  cnf(c_1520,plain,
% 1.91/0.99      ( $false ),
% 1.91/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_1518,c_1355]) ).
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.91/0.99  
% 1.91/0.99  ------                               Statistics
% 1.91/0.99  
% 1.91/0.99  ------ General
% 1.91/0.99  
% 1.91/0.99  abstr_ref_over_cycles:                  0
% 1.91/0.99  abstr_ref_under_cycles:                 0
% 1.91/0.99  gc_basic_clause_elim:                   0
% 1.91/0.99  forced_gc_time:                         0
% 1.91/0.99  parsing_time:                           0.008
% 1.91/0.99  unif_index_cands_time:                  0.
% 1.91/0.99  unif_index_add_time:                    0.
% 1.91/0.99  orderings_time:                         0.
% 1.91/0.99  out_proof_time:                         0.015
% 1.91/0.99  total_time:                             0.091
% 1.91/0.99  num_of_symbols:                         57
% 1.91/0.99  num_of_terms:                           1670
% 1.91/0.99  
% 1.91/0.99  ------ Preprocessing
% 1.91/0.99  
% 1.91/0.99  num_of_splits:                          1
% 1.91/0.99  num_of_split_atoms:                     1
% 1.91/0.99  num_of_reused_defs:                     0
% 1.91/0.99  num_eq_ax_congr_red:                    14
% 1.91/0.99  num_of_sem_filtered_clauses:            1
% 1.91/0.99  num_of_subtypes:                        4
% 1.91/0.99  monotx_restored_types:                  0
% 1.91/0.99  sat_num_of_epr_types:                   0
% 1.91/0.99  sat_num_of_non_cyclic_types:            0
% 1.91/0.99  sat_guarded_non_collapsed_types:        0
% 1.91/0.99  num_pure_diseq_elim:                    0
% 1.91/0.99  simp_replaced_by:                       0
% 1.91/0.99  res_preprocessed:                       97
% 1.91/0.99  prep_upred:                             0
% 1.91/0.99  prep_unflattend:                        24
% 1.91/0.99  smt_new_axioms:                         0
% 1.91/0.99  pred_elim_cands:                        1
% 1.91/0.99  pred_elim:                              9
% 1.91/0.99  pred_elim_cl:                           10
% 1.91/0.99  pred_elim_cycles:                       12
% 1.91/0.99  merged_defs:                            0
% 1.91/0.99  merged_defs_ncl:                        0
% 1.91/0.99  bin_hyper_res:                          0
% 1.91/0.99  prep_cycles:                            4
% 1.91/0.99  pred_elim_time:                         0.007
% 1.91/0.99  splitting_time:                         0.
% 1.91/0.99  sem_filter_time:                        0.
% 1.91/0.99  monotx_time:                            0.
% 1.91/0.99  subtype_inf_time:                       0.
% 1.91/0.99  
% 1.91/0.99  ------ Problem properties
% 1.91/0.99  
% 1.91/0.99  clauses:                                14
% 1.91/0.99  conjectures:                            2
% 1.91/0.99  epr:                                    0
% 1.91/0.99  horn:                                   13
% 1.91/0.99  ground:                                 7
% 1.91/0.99  unary:                                  4
% 1.91/0.99  binary:                                 8
% 1.91/0.99  lits:                                   27
% 1.91/0.99  lits_eq:                                20
% 1.91/0.99  fd_pure:                                0
% 1.91/0.99  fd_pseudo:                              0
% 1.91/0.99  fd_cond:                                0
% 1.91/0.99  fd_pseudo_cond:                         0
% 1.91/0.99  ac_symbols:                             0
% 1.91/0.99  
% 1.91/0.99  ------ Propositional Solver
% 1.91/0.99  
% 1.91/0.99  prop_solver_calls:                      27
% 1.91/0.99  prop_fast_solver_calls:                 544
% 1.91/0.99  smt_solver_calls:                       0
% 1.91/0.99  smt_fast_solver_calls:                  0
% 1.91/0.99  prop_num_of_clauses:                    511
% 1.91/0.99  prop_preprocess_simplified:             2222
% 1.91/0.99  prop_fo_subsumed:                       9
% 1.91/0.99  prop_solver_time:                       0.
% 1.91/0.99  smt_solver_time:                        0.
% 1.91/0.99  smt_fast_solver_time:                   0.
% 1.91/0.99  prop_fast_solver_time:                  0.
% 1.91/0.99  prop_unsat_core_time:                   0.
% 1.91/0.99  
% 1.91/0.99  ------ QBF
% 1.91/0.99  
% 1.91/0.99  qbf_q_res:                              0
% 1.91/0.99  qbf_num_tautologies:                    0
% 1.91/0.99  qbf_prep_cycles:                        0
% 1.91/0.99  
% 1.91/0.99  ------ BMC1
% 1.91/0.99  
% 1.91/0.99  bmc1_current_bound:                     -1
% 1.91/0.99  bmc1_last_solved_bound:                 -1
% 1.91/0.99  bmc1_unsat_core_size:                   -1
% 1.91/0.99  bmc1_unsat_core_parents_size:           -1
% 1.91/0.99  bmc1_merge_next_fun:                    0
% 1.91/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.91/0.99  
% 1.91/0.99  ------ Instantiation
% 1.91/0.99  
% 1.91/0.99  inst_num_of_clauses:                    207
% 1.91/0.99  inst_num_in_passive:                    5
% 1.91/0.99  inst_num_in_active:                     128
% 1.91/0.99  inst_num_in_unprocessed:                74
% 1.91/0.99  inst_num_of_loops:                      140
% 1.91/0.99  inst_num_of_learning_restarts:          0
% 1.91/0.99  inst_num_moves_active_passive:          8
% 1.91/0.99  inst_lit_activity:                      0
% 1.91/0.99  inst_lit_activity_moves:                0
% 1.91/0.99  inst_num_tautologies:                   0
% 1.91/0.99  inst_num_prop_implied:                  0
% 1.91/0.99  inst_num_existing_simplified:           0
% 1.91/0.99  inst_num_eq_res_simplified:             0
% 1.91/0.99  inst_num_child_elim:                    0
% 1.91/0.99  inst_num_of_dismatching_blockings:      47
% 1.91/0.99  inst_num_of_non_proper_insts:           205
% 1.91/0.99  inst_num_of_duplicates:                 0
% 1.91/0.99  inst_inst_num_from_inst_to_res:         0
% 1.91/0.99  inst_dismatching_checking_time:         0.
% 1.91/0.99  
% 1.91/0.99  ------ Resolution
% 1.91/0.99  
% 1.91/0.99  res_num_of_clauses:                     0
% 1.91/0.99  res_num_in_passive:                     0
% 1.91/0.99  res_num_in_active:                      0
% 1.91/0.99  res_num_of_loops:                       101
% 1.91/0.99  res_forward_subset_subsumed:            60
% 1.91/0.99  res_backward_subset_subsumed:           0
% 1.91/0.99  res_forward_subsumed:                   0
% 1.91/0.99  res_backward_subsumed:                  0
% 1.91/0.99  res_forward_subsumption_resolution:     0
% 1.91/0.99  res_backward_subsumption_resolution:    0
% 1.91/0.99  res_clause_to_clause_subsumption:       28
% 1.91/0.99  res_orphan_elimination:                 0
% 1.91/0.99  res_tautology_del:                      48
% 1.91/0.99  res_num_eq_res_simplified:              0
% 1.91/0.99  res_num_sel_changes:                    0
% 1.91/0.99  res_moves_from_active_to_pass:          0
% 1.91/0.99  
% 1.91/0.99  ------ Superposition
% 1.91/0.99  
% 1.91/0.99  sup_time_total:                         0.
% 1.91/0.99  sup_time_generating:                    0.
% 1.91/0.99  sup_time_sim_full:                      0.
% 1.91/0.99  sup_time_sim_immed:                     0.
% 1.91/0.99  
% 1.91/0.99  sup_num_of_clauses:                     18
% 1.91/0.99  sup_num_in_active:                      17
% 1.91/0.99  sup_num_in_passive:                     1
% 1.91/0.99  sup_num_of_loops:                       26
% 1.91/0.99  sup_fw_superposition:                   0
% 1.91/0.99  sup_bw_superposition:                   1
% 1.91/0.99  sup_immediate_simplified:               2
% 1.91/0.99  sup_given_eliminated:                   0
% 1.91/0.99  comparisons_done:                       0
% 1.91/0.99  comparisons_avoided:                    0
% 1.91/0.99  
% 1.91/0.99  ------ Simplifications
% 1.91/0.99  
% 1.91/0.99  
% 1.91/0.99  sim_fw_subset_subsumed:                 1
% 1.91/0.99  sim_bw_subset_subsumed:                 1
% 1.91/0.99  sim_fw_subsumed:                        0
% 1.91/0.99  sim_bw_subsumed:                        0
% 1.91/0.99  sim_fw_subsumption_res:                 1
% 1.91/0.99  sim_bw_subsumption_res:                 0
% 1.91/0.99  sim_tautology_del:                      0
% 1.91/0.99  sim_eq_tautology_del:                   0
% 1.91/0.99  sim_eq_res_simp:                        3
% 1.91/0.99  sim_fw_demodulated:                     1
% 1.91/0.99  sim_bw_demodulated:                     8
% 1.91/0.99  sim_light_normalised:                   18
% 1.91/0.99  sim_joinable_taut:                      0
% 1.91/0.99  sim_joinable_simp:                      0
% 1.91/0.99  sim_ac_normalised:                      0
% 1.91/0.99  sim_smt_subsumption:                    0
% 1.91/0.99  
%------------------------------------------------------------------------------
