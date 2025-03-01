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
% DateTime   : Thu Dec  3 12:17:27 EST 2020

% Result     : Theorem 2.01s
% Output     : CNFRefutation 2.01s
% Verified   : 
% Statistics : Number of formulae       :  172 (9399 expanded)
%              Number of clauses        :  106 (2569 expanded)
%              Number of leaves         :   17 (2851 expanded)
%              Depth                    :   22
%              Number of atoms          :  613 (61775 expanded)
%              Number of equality atoms :  260 (10870 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f14,conjecture,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
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
    inference(negated_conjecture,[],[f14])).

fof(f36,plain,(
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
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
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
    inference(flattening,[],[f36])).

fof(f41,plain,(
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

fof(f40,plain,(
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

fof(f39,plain,
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

fof(f42,plain,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    & v2_funct_1(sK2)
    & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & ~ v2_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f37,f41,f40,f39])).

fof(f71,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f42])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f63,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f68,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f66,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f42])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f72,plain,(
    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f8,axiom,(
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

fof(f25,plain,(
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
    inference(ennf_transformation,[],[f8])).

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
    inference(flattening,[],[f25])).

fof(f38,plain,(
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
    inference(nnf_transformation,[],[f26])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f70,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f42])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f64,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f67,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f34])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f69,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f73,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => r2_funct_2(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f27])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f74,plain,(
    ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f2,axiom,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f17,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f46,plain,(
    ! [X0] :
      ( v2_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f45,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k2_relset_1(X0,X1,X2) = X1
          & v2_funct_1(X2) )
       => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(k2_funct_1(X2),X1,X0)
          & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f29])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_funct_1(X2),X1,X0)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f3,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
          & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f48,plain,(
    ! [X0] :
      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => k2_funct_1(k2_funct_1(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f21,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f20])).

fof(f49,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_26,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1060,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_20,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_29,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_383,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_29])).

cnf(c_384,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_383])).

cnf(c_31,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_388,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_31])).

cnf(c_389,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_388])).

cnf(c_1097,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1060,c_384,c_389])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1071,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1521,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1097,c_1071])).

cnf(c_25,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1094,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_25,c_384,c_389])).

cnf(c_1670,plain,
    ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_1521,c_1094])).

cnf(c_1741,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1670,c_1097])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1065,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3604,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_struct_0(sK0)
    | k2_relat_1(sK2) = k1_xboole_0
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1741,c_1065])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1072,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1525,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1097,c_1072])).

cnf(c_1940,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_1525,c_1670])).

cnf(c_3605,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2)
    | k2_relat_1(sK2) = k1_xboole_0
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3604,c_1940])).

cnf(c_27,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1059,plain,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_1091,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1059,c_384,c_389])).

cnf(c_1742,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1670,c_1091])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_21,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_356,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_21])).

cnf(c_30,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_374,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_356,c_30])).

cnf(c_375,plain,
    ( ~ l1_struct_0(sK1)
    | u1_struct_0(sK1) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_374])).

cnf(c_377,plain,
    ( u1_struct_0(sK1) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_375,c_29])).

cnf(c_1088,plain,
    ( k2_struct_0(sK1) != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_377,c_384])).

cnf(c_1743,plain,
    ( k2_relat_1(sK2) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1670,c_1088])).

cnf(c_3772,plain,
    ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3605,c_1742,c_1743])).

cnf(c_1739,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_1670,c_1521])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1062,plain,
    ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
    | k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2220,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1739,c_1062])).

cnf(c_28,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_35,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_24,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_38,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2597,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2220,c_35,c_38,c_1741,c_1742])).

cnf(c_16,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_23,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_395,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0)
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK0) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_23])).

cnf(c_396,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_395])).

cnf(c_596,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sP0_iProver_split
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_396])).

cnf(c_1055,plain,
    ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_596])).

cnf(c_1255,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1055,c_384,c_389])).

cnf(c_595,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(X0)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_396])).

cnf(c_1056,plain,
    ( v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_595])).

cnf(c_1210,plain,
    ( v1_funct_2(X0,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1056,c_384,c_389])).

cnf(c_1261,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1255,c_1210])).

cnf(c_2527,plain,
    ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1261,c_1670])).

cnf(c_2600,plain,
    ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2597,c_2527])).

cnf(c_3776,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_2600])).

cnf(c_37,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1327,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1328,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1327])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | v2_funct_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1391,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | v2_funct_1(k2_funct_1(sK2))
    | ~ v2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1392,plain,
    ( v1_relat_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) = iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1391])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1390,plain,
    ( ~ v1_relat_1(sK2)
    | v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1394,plain,
    ( v1_relat_1(sK2) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1390])).

cnf(c_17,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1064,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) = iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3481,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k2_struct_0(sK0)))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1739,c_1064])).

cnf(c_3699,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k2_struct_0(sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3481,c_35,c_38,c_1741,c_1742])).

cnf(c_3775,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_3699])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_funct_1(X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1063,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | v1_funct_2(k2_funct_1(X2),X1,X0) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2609,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k2_struct_0(sK0)) = iProver_top
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1739,c_1063])).

cnf(c_3088,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k2_struct_0(sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2609,c_35,c_38,c_1741,c_1742])).

cnf(c_3777,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_3088])).

cnf(c_3708,plain,
    ( k2_relset_1(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_3699,c_1071])).

cnf(c_1073,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1418,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1097,c_1073])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1076,plain,
    ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2880,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1418,c_1076])).

cnf(c_1386,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_3012,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2880,c_28,c_26,c_24,c_1327,c_1386])).

cnf(c_3710,plain,
    ( k2_relset_1(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_3708,c_3012])).

cnf(c_4679,plain,
    ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_3710,c_3772])).

cnf(c_4683,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4679,c_1062])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_funct_1(k2_funct_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1074,plain,
    ( k2_funct_1(k2_funct_1(X0)) = X0
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2023,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1418,c_1074])).

cnf(c_1387,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_2534,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2023,c_28,c_26,c_24,c_1327,c_1387])).

cnf(c_4689,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2
    | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4683,c_2534])).

cnf(c_5097,plain,
    ( v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3776,c_35,c_37,c_38,c_1328,c_1392,c_1394,c_3775,c_3777,c_4689])).

cnf(c_5044,plain,
    ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4689,c_35,c_37,c_38,c_1328,c_1392,c_1394,c_3775,c_3777])).

cnf(c_5101,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5097,c_5044])).

cnf(c_1058,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3779,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_1741])).

cnf(c_3782,plain,
    ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_1742])).

cnf(c_5105,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5101,c_1058,c_3779,c_3782])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:01:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.01/1.05  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.01/1.05  
% 2.01/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.01/1.05  
% 2.01/1.05  ------  iProver source info
% 2.01/1.05  
% 2.01/1.05  git: date: 2020-06-30 10:37:57 +0100
% 2.01/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.01/1.05  git: non_committed_changes: false
% 2.01/1.05  git: last_make_outside_of_git: false
% 2.01/1.05  
% 2.01/1.05  ------ 
% 2.01/1.05  
% 2.01/1.05  ------ Input Options
% 2.01/1.05  
% 2.01/1.05  --out_options                           all
% 2.01/1.05  --tptp_safe_out                         true
% 2.01/1.05  --problem_path                          ""
% 2.01/1.05  --include_path                          ""
% 2.01/1.05  --clausifier                            res/vclausify_rel
% 2.01/1.05  --clausifier_options                    --mode clausify
% 2.01/1.05  --stdin                                 false
% 2.01/1.05  --stats_out                             all
% 2.01/1.05  
% 2.01/1.05  ------ General Options
% 2.01/1.05  
% 2.01/1.05  --fof                                   false
% 2.01/1.05  --time_out_real                         305.
% 2.01/1.05  --time_out_virtual                      -1.
% 2.01/1.05  --symbol_type_check                     false
% 2.01/1.05  --clausify_out                          false
% 2.01/1.05  --sig_cnt_out                           false
% 2.01/1.05  --trig_cnt_out                          false
% 2.01/1.05  --trig_cnt_out_tolerance                1.
% 2.01/1.05  --trig_cnt_out_sk_spl                   false
% 2.01/1.05  --abstr_cl_out                          false
% 2.01/1.05  
% 2.01/1.05  ------ Global Options
% 2.01/1.05  
% 2.01/1.05  --schedule                              default
% 2.01/1.05  --add_important_lit                     false
% 2.01/1.05  --prop_solver_per_cl                    1000
% 2.01/1.05  --min_unsat_core                        false
% 2.01/1.05  --soft_assumptions                      false
% 2.01/1.05  --soft_lemma_size                       3
% 2.01/1.05  --prop_impl_unit_size                   0
% 2.01/1.05  --prop_impl_unit                        []
% 2.01/1.05  --share_sel_clauses                     true
% 2.01/1.05  --reset_solvers                         false
% 2.01/1.05  --bc_imp_inh                            [conj_cone]
% 2.01/1.05  --conj_cone_tolerance                   3.
% 2.01/1.05  --extra_neg_conj                        none
% 2.01/1.05  --large_theory_mode                     true
% 2.01/1.05  --prolific_symb_bound                   200
% 2.01/1.05  --lt_threshold                          2000
% 2.01/1.05  --clause_weak_htbl                      true
% 2.01/1.05  --gc_record_bc_elim                     false
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing Options
% 2.01/1.05  
% 2.01/1.05  --preprocessing_flag                    true
% 2.01/1.05  --time_out_prep_mult                    0.1
% 2.01/1.05  --splitting_mode                        input
% 2.01/1.05  --splitting_grd                         true
% 2.01/1.05  --splitting_cvd                         false
% 2.01/1.05  --splitting_cvd_svl                     false
% 2.01/1.05  --splitting_nvd                         32
% 2.01/1.05  --sub_typing                            true
% 2.01/1.05  --prep_gs_sim                           true
% 2.01/1.05  --prep_unflatten                        true
% 2.01/1.05  --prep_res_sim                          true
% 2.01/1.05  --prep_upred                            true
% 2.01/1.05  --prep_sem_filter                       exhaustive
% 2.01/1.05  --prep_sem_filter_out                   false
% 2.01/1.05  --pred_elim                             true
% 2.01/1.05  --res_sim_input                         true
% 2.01/1.05  --eq_ax_congr_red                       true
% 2.01/1.05  --pure_diseq_elim                       true
% 2.01/1.05  --brand_transform                       false
% 2.01/1.05  --non_eq_to_eq                          false
% 2.01/1.05  --prep_def_merge                        true
% 2.01/1.05  --prep_def_merge_prop_impl              false
% 2.01/1.05  --prep_def_merge_mbd                    true
% 2.01/1.05  --prep_def_merge_tr_red                 false
% 2.01/1.05  --prep_def_merge_tr_cl                  false
% 2.01/1.05  --smt_preprocessing                     true
% 2.01/1.05  --smt_ac_axioms                         fast
% 2.01/1.05  --preprocessed_out                      false
% 2.01/1.05  --preprocessed_stats                    false
% 2.01/1.05  
% 2.01/1.05  ------ Abstraction refinement Options
% 2.01/1.05  
% 2.01/1.05  --abstr_ref                             []
% 2.01/1.05  --abstr_ref_prep                        false
% 2.01/1.05  --abstr_ref_until_sat                   false
% 2.01/1.05  --abstr_ref_sig_restrict                funpre
% 2.01/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 2.01/1.05  --abstr_ref_under                       []
% 2.01/1.05  
% 2.01/1.05  ------ SAT Options
% 2.01/1.05  
% 2.01/1.05  --sat_mode                              false
% 2.01/1.05  --sat_fm_restart_options                ""
% 2.01/1.05  --sat_gr_def                            false
% 2.01/1.05  --sat_epr_types                         true
% 2.01/1.05  --sat_non_cyclic_types                  false
% 2.01/1.05  --sat_finite_models                     false
% 2.01/1.05  --sat_fm_lemmas                         false
% 2.01/1.05  --sat_fm_prep                           false
% 2.01/1.05  --sat_fm_uc_incr                        true
% 2.01/1.05  --sat_out_model                         small
% 2.01/1.05  --sat_out_clauses                       false
% 2.01/1.05  
% 2.01/1.05  ------ QBF Options
% 2.01/1.05  
% 2.01/1.05  --qbf_mode                              false
% 2.01/1.05  --qbf_elim_univ                         false
% 2.01/1.05  --qbf_dom_inst                          none
% 2.01/1.05  --qbf_dom_pre_inst                      false
% 2.01/1.05  --qbf_sk_in                             false
% 2.01/1.05  --qbf_pred_elim                         true
% 2.01/1.05  --qbf_split                             512
% 2.01/1.05  
% 2.01/1.05  ------ BMC1 Options
% 2.01/1.05  
% 2.01/1.05  --bmc1_incremental                      false
% 2.01/1.05  --bmc1_axioms                           reachable_all
% 2.01/1.05  --bmc1_min_bound                        0
% 2.01/1.05  --bmc1_max_bound                        -1
% 2.01/1.05  --bmc1_max_bound_default                -1
% 2.01/1.05  --bmc1_symbol_reachability              true
% 2.01/1.05  --bmc1_property_lemmas                  false
% 2.01/1.05  --bmc1_k_induction                      false
% 2.01/1.05  --bmc1_non_equiv_states                 false
% 2.01/1.05  --bmc1_deadlock                         false
% 2.01/1.05  --bmc1_ucm                              false
% 2.01/1.05  --bmc1_add_unsat_core                   none
% 2.01/1.05  --bmc1_unsat_core_children              false
% 2.01/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 2.01/1.05  --bmc1_out_stat                         full
% 2.01/1.05  --bmc1_ground_init                      false
% 2.01/1.05  --bmc1_pre_inst_next_state              false
% 2.01/1.05  --bmc1_pre_inst_state                   false
% 2.01/1.05  --bmc1_pre_inst_reach_state             false
% 2.01/1.05  --bmc1_out_unsat_core                   false
% 2.01/1.05  --bmc1_aig_witness_out                  false
% 2.01/1.05  --bmc1_verbose                          false
% 2.01/1.05  --bmc1_dump_clauses_tptp                false
% 2.01/1.05  --bmc1_dump_unsat_core_tptp             false
% 2.01/1.05  --bmc1_dump_file                        -
% 2.01/1.05  --bmc1_ucm_expand_uc_limit              128
% 2.01/1.05  --bmc1_ucm_n_expand_iterations          6
% 2.01/1.05  --bmc1_ucm_extend_mode                  1
% 2.01/1.05  --bmc1_ucm_init_mode                    2
% 2.01/1.05  --bmc1_ucm_cone_mode                    none
% 2.01/1.05  --bmc1_ucm_reduced_relation_type        0
% 2.01/1.05  --bmc1_ucm_relax_model                  4
% 2.01/1.05  --bmc1_ucm_full_tr_after_sat            true
% 2.01/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 2.01/1.05  --bmc1_ucm_layered_model                none
% 2.01/1.05  --bmc1_ucm_max_lemma_size               10
% 2.01/1.05  
% 2.01/1.05  ------ AIG Options
% 2.01/1.05  
% 2.01/1.05  --aig_mode                              false
% 2.01/1.05  
% 2.01/1.05  ------ Instantiation Options
% 2.01/1.05  
% 2.01/1.05  --instantiation_flag                    true
% 2.01/1.05  --inst_sos_flag                         false
% 2.01/1.05  --inst_sos_phase                        true
% 2.01/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.01/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.01/1.05  --inst_lit_sel_side                     num_symb
% 2.01/1.05  --inst_solver_per_active                1400
% 2.01/1.05  --inst_solver_calls_frac                1.
% 2.01/1.05  --inst_passive_queue_type               priority_queues
% 2.01/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.01/1.05  --inst_passive_queues_freq              [25;2]
% 2.01/1.05  --inst_dismatching                      true
% 2.01/1.05  --inst_eager_unprocessed_to_passive     true
% 2.01/1.05  --inst_prop_sim_given                   true
% 2.01/1.05  --inst_prop_sim_new                     false
% 2.01/1.05  --inst_subs_new                         false
% 2.01/1.05  --inst_eq_res_simp                      false
% 2.01/1.05  --inst_subs_given                       false
% 2.01/1.05  --inst_orphan_elimination               true
% 2.01/1.05  --inst_learning_loop_flag               true
% 2.01/1.05  --inst_learning_start                   3000
% 2.01/1.05  --inst_learning_factor                  2
% 2.01/1.05  --inst_start_prop_sim_after_learn       3
% 2.01/1.05  --inst_sel_renew                        solver
% 2.01/1.05  --inst_lit_activity_flag                true
% 2.01/1.05  --inst_restr_to_given                   false
% 2.01/1.05  --inst_activity_threshold               500
% 2.01/1.05  --inst_out_proof                        true
% 2.01/1.05  
% 2.01/1.05  ------ Resolution Options
% 2.01/1.05  
% 2.01/1.05  --resolution_flag                       true
% 2.01/1.05  --res_lit_sel                           adaptive
% 2.01/1.05  --res_lit_sel_side                      none
% 2.01/1.05  --res_ordering                          kbo
% 2.01/1.05  --res_to_prop_solver                    active
% 2.01/1.05  --res_prop_simpl_new                    false
% 2.01/1.05  --res_prop_simpl_given                  true
% 2.01/1.05  --res_passive_queue_type                priority_queues
% 2.01/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.01/1.05  --res_passive_queues_freq               [15;5]
% 2.01/1.05  --res_forward_subs                      full
% 2.01/1.05  --res_backward_subs                     full
% 2.01/1.05  --res_forward_subs_resolution           true
% 2.01/1.05  --res_backward_subs_resolution          true
% 2.01/1.05  --res_orphan_elimination                true
% 2.01/1.05  --res_time_limit                        2.
% 2.01/1.05  --res_out_proof                         true
% 2.01/1.05  
% 2.01/1.05  ------ Superposition Options
% 2.01/1.05  
% 2.01/1.05  --superposition_flag                    true
% 2.01/1.05  --sup_passive_queue_type                priority_queues
% 2.01/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.01/1.05  --sup_passive_queues_freq               [8;1;4]
% 2.01/1.05  --demod_completeness_check              fast
% 2.01/1.05  --demod_use_ground                      true
% 2.01/1.05  --sup_to_prop_solver                    passive
% 2.01/1.05  --sup_prop_simpl_new                    true
% 2.01/1.05  --sup_prop_simpl_given                  true
% 2.01/1.05  --sup_fun_splitting                     false
% 2.01/1.05  --sup_smt_interval                      50000
% 2.01/1.05  
% 2.01/1.05  ------ Superposition Simplification Setup
% 2.01/1.05  
% 2.01/1.05  --sup_indices_passive                   []
% 2.01/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 2.01/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_full_bw                           [BwDemod]
% 2.01/1.05  --sup_immed_triv                        [TrivRules]
% 2.01/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.01/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_immed_bw_main                     []
% 2.01/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.01/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 2.01/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.01/1.05  
% 2.01/1.05  ------ Combination Options
% 2.01/1.05  
% 2.01/1.05  --comb_res_mult                         3
% 2.01/1.05  --comb_sup_mult                         2
% 2.01/1.05  --comb_inst_mult                        10
% 2.01/1.05  
% 2.01/1.05  ------ Debug Options
% 2.01/1.05  
% 2.01/1.05  --dbg_backtrace                         false
% 2.01/1.05  --dbg_dump_prop_clauses                 false
% 2.01/1.05  --dbg_dump_prop_clauses_file            -
% 2.01/1.05  --dbg_out_stat                          false
% 2.01/1.05  ------ Parsing...
% 2.01/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.01/1.05  ------ Proving...
% 2.01/1.05  ------ Problem Properties 
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  clauses                                 29
% 2.01/1.05  conjectures                             5
% 2.01/1.05  EPR                                     2
% 2.01/1.05  Horn                                    25
% 2.01/1.05  unary                                   8
% 2.01/1.05  binary                                  3
% 2.01/1.05  lits                                    90
% 2.01/1.05  lits eq                                 23
% 2.01/1.05  fd_pure                                 0
% 2.01/1.05  fd_pseudo                               0
% 2.01/1.05  fd_cond                                 3
% 2.01/1.05  fd_pseudo_cond                          0
% 2.01/1.05  AC symbols                              0
% 2.01/1.05  
% 2.01/1.05  ------ Schedule dynamic 5 is on 
% 2.01/1.05  
% 2.01/1.05  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  ------ 
% 2.01/1.05  Current options:
% 2.01/1.05  ------ 
% 2.01/1.05  
% 2.01/1.05  ------ Input Options
% 2.01/1.05  
% 2.01/1.05  --out_options                           all
% 2.01/1.05  --tptp_safe_out                         true
% 2.01/1.05  --problem_path                          ""
% 2.01/1.05  --include_path                          ""
% 2.01/1.05  --clausifier                            res/vclausify_rel
% 2.01/1.05  --clausifier_options                    --mode clausify
% 2.01/1.05  --stdin                                 false
% 2.01/1.05  --stats_out                             all
% 2.01/1.05  
% 2.01/1.05  ------ General Options
% 2.01/1.05  
% 2.01/1.05  --fof                                   false
% 2.01/1.05  --time_out_real                         305.
% 2.01/1.05  --time_out_virtual                      -1.
% 2.01/1.05  --symbol_type_check                     false
% 2.01/1.05  --clausify_out                          false
% 2.01/1.05  --sig_cnt_out                           false
% 2.01/1.05  --trig_cnt_out                          false
% 2.01/1.05  --trig_cnt_out_tolerance                1.
% 2.01/1.05  --trig_cnt_out_sk_spl                   false
% 2.01/1.05  --abstr_cl_out                          false
% 2.01/1.05  
% 2.01/1.05  ------ Global Options
% 2.01/1.05  
% 2.01/1.05  --schedule                              default
% 2.01/1.05  --add_important_lit                     false
% 2.01/1.05  --prop_solver_per_cl                    1000
% 2.01/1.05  --min_unsat_core                        false
% 2.01/1.05  --soft_assumptions                      false
% 2.01/1.05  --soft_lemma_size                       3
% 2.01/1.05  --prop_impl_unit_size                   0
% 2.01/1.05  --prop_impl_unit                        []
% 2.01/1.05  --share_sel_clauses                     true
% 2.01/1.05  --reset_solvers                         false
% 2.01/1.05  --bc_imp_inh                            [conj_cone]
% 2.01/1.05  --conj_cone_tolerance                   3.
% 2.01/1.05  --extra_neg_conj                        none
% 2.01/1.05  --large_theory_mode                     true
% 2.01/1.05  --prolific_symb_bound                   200
% 2.01/1.05  --lt_threshold                          2000
% 2.01/1.05  --clause_weak_htbl                      true
% 2.01/1.05  --gc_record_bc_elim                     false
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing Options
% 2.01/1.05  
% 2.01/1.05  --preprocessing_flag                    true
% 2.01/1.05  --time_out_prep_mult                    0.1
% 2.01/1.05  --splitting_mode                        input
% 2.01/1.05  --splitting_grd                         true
% 2.01/1.05  --splitting_cvd                         false
% 2.01/1.05  --splitting_cvd_svl                     false
% 2.01/1.05  --splitting_nvd                         32
% 2.01/1.05  --sub_typing                            true
% 2.01/1.05  --prep_gs_sim                           true
% 2.01/1.05  --prep_unflatten                        true
% 2.01/1.05  --prep_res_sim                          true
% 2.01/1.05  --prep_upred                            true
% 2.01/1.05  --prep_sem_filter                       exhaustive
% 2.01/1.05  --prep_sem_filter_out                   false
% 2.01/1.05  --pred_elim                             true
% 2.01/1.05  --res_sim_input                         true
% 2.01/1.05  --eq_ax_congr_red                       true
% 2.01/1.05  --pure_diseq_elim                       true
% 2.01/1.05  --brand_transform                       false
% 2.01/1.05  --non_eq_to_eq                          false
% 2.01/1.05  --prep_def_merge                        true
% 2.01/1.05  --prep_def_merge_prop_impl              false
% 2.01/1.05  --prep_def_merge_mbd                    true
% 2.01/1.05  --prep_def_merge_tr_red                 false
% 2.01/1.05  --prep_def_merge_tr_cl                  false
% 2.01/1.05  --smt_preprocessing                     true
% 2.01/1.05  --smt_ac_axioms                         fast
% 2.01/1.05  --preprocessed_out                      false
% 2.01/1.05  --preprocessed_stats                    false
% 2.01/1.05  
% 2.01/1.05  ------ Abstraction refinement Options
% 2.01/1.05  
% 2.01/1.05  --abstr_ref                             []
% 2.01/1.05  --abstr_ref_prep                        false
% 2.01/1.05  --abstr_ref_until_sat                   false
% 2.01/1.05  --abstr_ref_sig_restrict                funpre
% 2.01/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 2.01/1.05  --abstr_ref_under                       []
% 2.01/1.05  
% 2.01/1.05  ------ SAT Options
% 2.01/1.05  
% 2.01/1.05  --sat_mode                              false
% 2.01/1.05  --sat_fm_restart_options                ""
% 2.01/1.05  --sat_gr_def                            false
% 2.01/1.05  --sat_epr_types                         true
% 2.01/1.05  --sat_non_cyclic_types                  false
% 2.01/1.05  --sat_finite_models                     false
% 2.01/1.05  --sat_fm_lemmas                         false
% 2.01/1.05  --sat_fm_prep                           false
% 2.01/1.05  --sat_fm_uc_incr                        true
% 2.01/1.05  --sat_out_model                         small
% 2.01/1.05  --sat_out_clauses                       false
% 2.01/1.05  
% 2.01/1.05  ------ QBF Options
% 2.01/1.05  
% 2.01/1.05  --qbf_mode                              false
% 2.01/1.05  --qbf_elim_univ                         false
% 2.01/1.05  --qbf_dom_inst                          none
% 2.01/1.05  --qbf_dom_pre_inst                      false
% 2.01/1.05  --qbf_sk_in                             false
% 2.01/1.05  --qbf_pred_elim                         true
% 2.01/1.05  --qbf_split                             512
% 2.01/1.05  
% 2.01/1.05  ------ BMC1 Options
% 2.01/1.05  
% 2.01/1.05  --bmc1_incremental                      false
% 2.01/1.05  --bmc1_axioms                           reachable_all
% 2.01/1.05  --bmc1_min_bound                        0
% 2.01/1.05  --bmc1_max_bound                        -1
% 2.01/1.05  --bmc1_max_bound_default                -1
% 2.01/1.05  --bmc1_symbol_reachability              true
% 2.01/1.05  --bmc1_property_lemmas                  false
% 2.01/1.05  --bmc1_k_induction                      false
% 2.01/1.05  --bmc1_non_equiv_states                 false
% 2.01/1.05  --bmc1_deadlock                         false
% 2.01/1.05  --bmc1_ucm                              false
% 2.01/1.05  --bmc1_add_unsat_core                   none
% 2.01/1.05  --bmc1_unsat_core_children              false
% 2.01/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 2.01/1.05  --bmc1_out_stat                         full
% 2.01/1.05  --bmc1_ground_init                      false
% 2.01/1.05  --bmc1_pre_inst_next_state              false
% 2.01/1.05  --bmc1_pre_inst_state                   false
% 2.01/1.05  --bmc1_pre_inst_reach_state             false
% 2.01/1.05  --bmc1_out_unsat_core                   false
% 2.01/1.05  --bmc1_aig_witness_out                  false
% 2.01/1.05  --bmc1_verbose                          false
% 2.01/1.05  --bmc1_dump_clauses_tptp                false
% 2.01/1.05  --bmc1_dump_unsat_core_tptp             false
% 2.01/1.05  --bmc1_dump_file                        -
% 2.01/1.05  --bmc1_ucm_expand_uc_limit              128
% 2.01/1.05  --bmc1_ucm_n_expand_iterations          6
% 2.01/1.05  --bmc1_ucm_extend_mode                  1
% 2.01/1.05  --bmc1_ucm_init_mode                    2
% 2.01/1.05  --bmc1_ucm_cone_mode                    none
% 2.01/1.05  --bmc1_ucm_reduced_relation_type        0
% 2.01/1.05  --bmc1_ucm_relax_model                  4
% 2.01/1.05  --bmc1_ucm_full_tr_after_sat            true
% 2.01/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 2.01/1.05  --bmc1_ucm_layered_model                none
% 2.01/1.05  --bmc1_ucm_max_lemma_size               10
% 2.01/1.05  
% 2.01/1.05  ------ AIG Options
% 2.01/1.05  
% 2.01/1.05  --aig_mode                              false
% 2.01/1.05  
% 2.01/1.05  ------ Instantiation Options
% 2.01/1.05  
% 2.01/1.05  --instantiation_flag                    true
% 2.01/1.05  --inst_sos_flag                         false
% 2.01/1.05  --inst_sos_phase                        true
% 2.01/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.01/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.01/1.05  --inst_lit_sel_side                     none
% 2.01/1.05  --inst_solver_per_active                1400
% 2.01/1.05  --inst_solver_calls_frac                1.
% 2.01/1.05  --inst_passive_queue_type               priority_queues
% 2.01/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.01/1.05  --inst_passive_queues_freq              [25;2]
% 2.01/1.05  --inst_dismatching                      true
% 2.01/1.05  --inst_eager_unprocessed_to_passive     true
% 2.01/1.05  --inst_prop_sim_given                   true
% 2.01/1.05  --inst_prop_sim_new                     false
% 2.01/1.05  --inst_subs_new                         false
% 2.01/1.05  --inst_eq_res_simp                      false
% 2.01/1.05  --inst_subs_given                       false
% 2.01/1.05  --inst_orphan_elimination               true
% 2.01/1.05  --inst_learning_loop_flag               true
% 2.01/1.05  --inst_learning_start                   3000
% 2.01/1.05  --inst_learning_factor                  2
% 2.01/1.05  --inst_start_prop_sim_after_learn       3
% 2.01/1.05  --inst_sel_renew                        solver
% 2.01/1.05  --inst_lit_activity_flag                true
% 2.01/1.05  --inst_restr_to_given                   false
% 2.01/1.05  --inst_activity_threshold               500
% 2.01/1.05  --inst_out_proof                        true
% 2.01/1.05  
% 2.01/1.05  ------ Resolution Options
% 2.01/1.05  
% 2.01/1.05  --resolution_flag                       false
% 2.01/1.05  --res_lit_sel                           adaptive
% 2.01/1.05  --res_lit_sel_side                      none
% 2.01/1.05  --res_ordering                          kbo
% 2.01/1.05  --res_to_prop_solver                    active
% 2.01/1.05  --res_prop_simpl_new                    false
% 2.01/1.05  --res_prop_simpl_given                  true
% 2.01/1.05  --res_passive_queue_type                priority_queues
% 2.01/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.01/1.05  --res_passive_queues_freq               [15;5]
% 2.01/1.05  --res_forward_subs                      full
% 2.01/1.05  --res_backward_subs                     full
% 2.01/1.05  --res_forward_subs_resolution           true
% 2.01/1.05  --res_backward_subs_resolution          true
% 2.01/1.05  --res_orphan_elimination                true
% 2.01/1.05  --res_time_limit                        2.
% 2.01/1.05  --res_out_proof                         true
% 2.01/1.05  
% 2.01/1.05  ------ Superposition Options
% 2.01/1.05  
% 2.01/1.05  --superposition_flag                    true
% 2.01/1.05  --sup_passive_queue_type                priority_queues
% 2.01/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.01/1.05  --sup_passive_queues_freq               [8;1;4]
% 2.01/1.05  --demod_completeness_check              fast
% 2.01/1.05  --demod_use_ground                      true
% 2.01/1.05  --sup_to_prop_solver                    passive
% 2.01/1.05  --sup_prop_simpl_new                    true
% 2.01/1.05  --sup_prop_simpl_given                  true
% 2.01/1.05  --sup_fun_splitting                     false
% 2.01/1.05  --sup_smt_interval                      50000
% 2.01/1.05  
% 2.01/1.05  ------ Superposition Simplification Setup
% 2.01/1.05  
% 2.01/1.05  --sup_indices_passive                   []
% 2.01/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.01/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 2.01/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_full_bw                           [BwDemod]
% 2.01/1.05  --sup_immed_triv                        [TrivRules]
% 2.01/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.01/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_immed_bw_main                     []
% 2.01/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.01/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 2.01/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.01/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.01/1.05  
% 2.01/1.05  ------ Combination Options
% 2.01/1.05  
% 2.01/1.05  --comb_res_mult                         3
% 2.01/1.05  --comb_sup_mult                         2
% 2.01/1.05  --comb_inst_mult                        10
% 2.01/1.05  
% 2.01/1.05  ------ Debug Options
% 2.01/1.05  
% 2.01/1.05  --dbg_backtrace                         false
% 2.01/1.05  --dbg_dump_prop_clauses                 false
% 2.01/1.05  --dbg_dump_prop_clauses_file            -
% 2.01/1.05  --dbg_out_stat                          false
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  ------ Proving...
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  % SZS status Theorem for theBenchmark.p
% 2.01/1.05  
% 2.01/1.05   Resolution empty clause
% 2.01/1.05  
% 2.01/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 2.01/1.05  
% 2.01/1.05  fof(f14,conjecture,(
% 2.01/1.05    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f15,negated_conjecture,(
% 2.01/1.05    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.01/1.05    inference(negated_conjecture,[],[f14])).
% 2.01/1.05  
% 2.01/1.05  fof(f36,plain,(
% 2.01/1.05    ? [X0] : (? [X1] : (? [X2] : ((~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 2.01/1.05    inference(ennf_transformation,[],[f15])).
% 2.01/1.05  
% 2.01/1.05  fof(f37,plain,(
% 2.01/1.05    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 2.01/1.05    inference(flattening,[],[f36])).
% 2.01/1.05  
% 2.01/1.05  fof(f41,plain,(
% 2.01/1.05    ( ! [X0,X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 2.01/1.05    introduced(choice_axiom,[])).
% 2.01/1.05  
% 2.01/1.05  fof(f40,plain,(
% 2.01/1.05    ( ! [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1))) )),
% 2.01/1.05    introduced(choice_axiom,[])).
% 2.01/1.05  
% 2.01/1.05  fof(f39,plain,(
% 2.01/1.05    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(sK0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK0))),
% 2.01/1.05    introduced(choice_axiom,[])).
% 2.01/1.05  
% 2.01/1.05  fof(f42,plain,(
% 2.01/1.05    ((~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1)) & l1_struct_0(sK0)),
% 2.01/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f37,f41,f40,f39])).
% 2.01/1.05  
% 2.01/1.05  fof(f71,plain,(
% 2.01/1.05    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f11,axiom,(
% 2.01/1.05    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f31,plain,(
% 2.01/1.05    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 2.01/1.05    inference(ennf_transformation,[],[f11])).
% 2.01/1.05  
% 2.01/1.05  fof(f63,plain,(
% 2.01/1.05    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f31])).
% 2.01/1.05  
% 2.01/1.05  fof(f68,plain,(
% 2.01/1.05    l1_struct_0(sK1)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f66,plain,(
% 2.01/1.05    l1_struct_0(sK0)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f7,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f24,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(ennf_transformation,[],[f7])).
% 2.01/1.05  
% 2.01/1.05  fof(f52,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.01/1.05    inference(cnf_transformation,[],[f24])).
% 2.01/1.05  
% 2.01/1.05  fof(f72,plain,(
% 2.01/1.05    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f8,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f25,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(ennf_transformation,[],[f8])).
% 2.01/1.05  
% 2.01/1.05  fof(f26,plain,(
% 2.01/1.05    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(flattening,[],[f25])).
% 2.01/1.05  
% 2.01/1.05  fof(f38,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(nnf_transformation,[],[f26])).
% 2.01/1.05  
% 2.01/1.05  fof(f53,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.01/1.05    inference(cnf_transformation,[],[f38])).
% 2.01/1.05  
% 2.01/1.05  fof(f6,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f23,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(ennf_transformation,[],[f6])).
% 2.01/1.05  
% 2.01/1.05  fof(f51,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.01/1.05    inference(cnf_transformation,[],[f23])).
% 2.01/1.05  
% 2.01/1.05  fof(f70,plain,(
% 2.01/1.05    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f1,axiom,(
% 2.01/1.05    v1_xboole_0(k1_xboole_0)),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f43,plain,(
% 2.01/1.05    v1_xboole_0(k1_xboole_0)),
% 2.01/1.05    inference(cnf_transformation,[],[f1])).
% 2.01/1.05  
% 2.01/1.05  fof(f12,axiom,(
% 2.01/1.05    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f32,plain,(
% 2.01/1.05    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.01/1.05    inference(ennf_transformation,[],[f12])).
% 2.01/1.05  
% 2.01/1.05  fof(f33,plain,(
% 2.01/1.05    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.01/1.05    inference(flattening,[],[f32])).
% 2.01/1.05  
% 2.01/1.05  fof(f64,plain,(
% 2.01/1.05    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f33])).
% 2.01/1.05  
% 2.01/1.05  fof(f67,plain,(
% 2.01/1.05    ~v2_struct_0(sK1)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f13,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f34,plain,(
% 2.01/1.05    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.01/1.05    inference(ennf_transformation,[],[f13])).
% 2.01/1.05  
% 2.01/1.05  fof(f35,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.01/1.05    inference(flattening,[],[f34])).
% 2.01/1.05  
% 2.01/1.05  fof(f65,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f35])).
% 2.01/1.05  
% 2.01/1.05  fof(f69,plain,(
% 2.01/1.05    v1_funct_1(sK2)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f73,plain,(
% 2.01/1.05    v2_funct_1(sK2)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f9,axiom,(
% 2.01/1.05    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => r2_funct_2(X0,X1,X2,X2))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f27,plain,(
% 2.01/1.05    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.01/1.05    inference(ennf_transformation,[],[f9])).
% 2.01/1.05  
% 2.01/1.05  fof(f28,plain,(
% 2.01/1.05    ! [X0,X1,X2,X3] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.01/1.05    inference(flattening,[],[f27])).
% 2.01/1.05  
% 2.01/1.05  fof(f59,plain,(
% 2.01/1.05    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f28])).
% 2.01/1.05  
% 2.01/1.05  fof(f74,plain,(
% 2.01/1.05    ~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)),
% 2.01/1.05    inference(cnf_transformation,[],[f42])).
% 2.01/1.05  
% 2.01/1.05  fof(f5,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f22,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.01/1.05    inference(ennf_transformation,[],[f5])).
% 2.01/1.05  
% 2.01/1.05  fof(f50,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.01/1.05    inference(cnf_transformation,[],[f22])).
% 2.01/1.05  
% 2.01/1.05  fof(f2,axiom,(
% 2.01/1.05    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f16,plain,(
% 2.01/1.05    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.01/1.05    inference(ennf_transformation,[],[f2])).
% 2.01/1.05  
% 2.01/1.05  fof(f17,plain,(
% 2.01/1.05    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.01/1.05    inference(flattening,[],[f16])).
% 2.01/1.05  
% 2.01/1.05  fof(f46,plain,(
% 2.01/1.05    ( ! [X0] : (v2_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f17])).
% 2.01/1.05  
% 2.01/1.05  fof(f45,plain,(
% 2.01/1.05    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f17])).
% 2.01/1.05  
% 2.01/1.05  fof(f10,axiom,(
% 2.01/1.05    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f29,plain,(
% 2.01/1.05    ! [X0,X1,X2] : (((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | (k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.01/1.05    inference(ennf_transformation,[],[f10])).
% 2.01/1.05  
% 2.01/1.05  fof(f30,plain,(
% 2.01/1.05    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.01/1.05    inference(flattening,[],[f29])).
% 2.01/1.05  
% 2.01/1.05  fof(f62,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f30])).
% 2.01/1.05  
% 2.01/1.05  fof(f61,plain,(
% 2.01/1.05    ( ! [X2,X0,X1] : (v1_funct_2(k2_funct_1(X2),X1,X0) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f30])).
% 2.01/1.05  
% 2.01/1.05  fof(f3,axiom,(
% 2.01/1.05    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)))))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f18,plain,(
% 2.01/1.05    ! [X0] : (((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.01/1.05    inference(ennf_transformation,[],[f3])).
% 2.01/1.05  
% 2.01/1.05  fof(f19,plain,(
% 2.01/1.05    ! [X0] : ((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.01/1.05    inference(flattening,[],[f18])).
% 2.01/1.05  
% 2.01/1.05  fof(f48,plain,(
% 2.01/1.05    ( ! [X0] : (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f19])).
% 2.01/1.05  
% 2.01/1.05  fof(f4,axiom,(
% 2.01/1.05    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => k2_funct_1(k2_funct_1(X0)) = X0))),
% 2.01/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.01/1.05  
% 2.01/1.05  fof(f20,plain,(
% 2.01/1.05    ! [X0] : ((k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.01/1.05    inference(ennf_transformation,[],[f4])).
% 2.01/1.05  
% 2.01/1.05  fof(f21,plain,(
% 2.01/1.05    ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.01/1.05    inference(flattening,[],[f20])).
% 2.01/1.05  
% 2.01/1.05  fof(f49,plain,(
% 2.01/1.05    ( ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.01/1.05    inference(cnf_transformation,[],[f21])).
% 2.01/1.05  
% 2.01/1.05  cnf(c_26,negated_conjecture,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 2.01/1.05      inference(cnf_transformation,[],[f71]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1060,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_20,plain,
% 2.01/1.05      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f63]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_29,negated_conjecture,
% 2.01/1.05      ( l1_struct_0(sK1) ),
% 2.01/1.05      inference(cnf_transformation,[],[f68]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_383,plain,
% 2.01/1.05      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 2.01/1.05      inference(resolution_lifted,[status(thm)],[c_20,c_29]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_384,plain,
% 2.01/1.05      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 2.01/1.05      inference(unflattening,[status(thm)],[c_383]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_31,negated_conjecture,
% 2.01/1.05      ( l1_struct_0(sK0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f66]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_388,plain,
% 2.01/1.05      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 2.01/1.05      inference(resolution_lifted,[status(thm)],[c_20,c_31]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_389,plain,
% 2.01/1.05      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 2.01/1.05      inference(unflattening,[status(thm)],[c_388]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1097,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1060,c_384,c_389]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_9,plain,
% 2.01/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f52]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1071,plain,
% 2.01/1.05      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1521,plain,
% 2.01/1.05      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_relat_1(sK2) ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1097,c_1071]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_25,negated_conjecture,
% 2.01/1.05      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.01/1.05      inference(cnf_transformation,[],[f72]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1094,plain,
% 2.01/1.05      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_25,c_384,c_389]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1670,plain,
% 2.01/1.05      ( k2_struct_0(sK1) = k2_relat_1(sK2) ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_1521,c_1094]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1741,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_1670,c_1097]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_15,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | k1_relset_1(X1,X2,X0) = X1
% 2.01/1.05      | k1_xboole_0 = X2 ),
% 2.01/1.05      inference(cnf_transformation,[],[f53]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1065,plain,
% 2.01/1.05      ( k1_relset_1(X0,X1,X2) = X0
% 2.01/1.05      | k1_xboole_0 = X1
% 2.01/1.05      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3604,plain,
% 2.01/1.05      ( k1_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_struct_0(sK0)
% 2.01/1.05      | k2_relat_1(sK2) = k1_xboole_0
% 2.01/1.05      | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1741,c_1065]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_8,plain,
% 2.01/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f51]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1072,plain,
% 2.01/1.05      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1525,plain,
% 2.01/1.05      ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1097,c_1072]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1940,plain,
% 2.01/1.05      ( k1_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1525,c_1670]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3605,plain,
% 2.01/1.05      ( k2_struct_0(sK0) = k1_relat_1(sK2)
% 2.01/1.05      | k2_relat_1(sK2) = k1_xboole_0
% 2.01/1.05      | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_3604,c_1940]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_27,negated_conjecture,
% 2.01/1.05      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 2.01/1.05      inference(cnf_transformation,[],[f70]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1059,plain,
% 2.01/1.05      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1091,plain,
% 2.01/1.05      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1059,c_384,c_389]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1742,plain,
% 2.01/1.05      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_1670,c_1091]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_0,plain,
% 2.01/1.05      ( v1_xboole_0(k1_xboole_0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f43]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_21,plain,
% 2.01/1.05      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.01/1.05      inference(cnf_transformation,[],[f64]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_356,plain,
% 2.01/1.05      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 ),
% 2.01/1.05      inference(resolution_lifted,[status(thm)],[c_0,c_21]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_30,negated_conjecture,
% 2.01/1.05      ( ~ v2_struct_0(sK1) ),
% 2.01/1.05      inference(cnf_transformation,[],[f67]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_374,plain,
% 2.01/1.05      ( ~ l1_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 | sK1 != X0 ),
% 2.01/1.05      inference(resolution_lifted,[status(thm)],[c_356,c_30]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_375,plain,
% 2.01/1.05      ( ~ l1_struct_0(sK1) | u1_struct_0(sK1) != k1_xboole_0 ),
% 2.01/1.05      inference(unflattening,[status(thm)],[c_374]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_377,plain,
% 2.01/1.05      ( u1_struct_0(sK1) != k1_xboole_0 ),
% 2.01/1.05      inference(global_propositional_subsumption,[status(thm)],[c_375,c_29]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1088,plain,
% 2.01/1.05      ( k2_struct_0(sK1) != k1_xboole_0 ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_377,c_384]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1743,plain,
% 2.01/1.05      ( k2_relat_1(sK2) != k1_xboole_0 ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_1670,c_1088]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3772,plain,
% 2.01/1.05      ( k2_struct_0(sK0) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_3605,c_1742,c_1743]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1739,plain,
% 2.01/1.05      ( k2_relset_1(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_relat_1(sK2) ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_1670,c_1521]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_22,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 2.01/1.05      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.01/1.05      inference(cnf_transformation,[],[f65]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1062,plain,
% 2.01/1.05      ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
% 2.01/1.05      | k2_relset_1(X0,X1,X2) != X1
% 2.01/1.05      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.01/1.05      | v1_funct_1(X2) != iProver_top
% 2.01/1.05      | v2_funct_1(X2) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2220,plain,
% 2.01/1.05      ( k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_funct_1(sK2)
% 2.01/1.05      | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1739,c_1062]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_28,negated_conjecture,
% 2.01/1.05      ( v1_funct_1(sK2) ),
% 2.01/1.05      inference(cnf_transformation,[],[f69]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_35,plain,
% 2.01/1.05      ( v1_funct_1(sK2) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_24,negated_conjecture,
% 2.01/1.05      ( v2_funct_1(sK2) ),
% 2.01/1.05      inference(cnf_transformation,[],[f73]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_38,plain,
% 2.01/1.05      ( v2_funct_1(sK2) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2597,plain,
% 2.01/1.05      ( k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2) = k2_funct_1(sK2) ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_2220,c_35,c_38,c_1741,c_1742]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_16,plain,
% 2.01/1.05      ( r2_funct_2(X0,X1,X2,X2)
% 2.01/1.05      | ~ v1_funct_2(X2,X0,X1)
% 2.01/1.05      | ~ v1_funct_2(X3,X0,X1)
% 2.01/1.05      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.01/1.05      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.01/1.05      | ~ v1_funct_1(X3)
% 2.01/1.05      | ~ v1_funct_1(X2) ),
% 2.01/1.05      inference(cnf_transformation,[],[f59]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_23,negated_conjecture,
% 2.01/1.05      ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
% 2.01/1.05      inference(cnf_transformation,[],[f74]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_395,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 2.01/1.05      | ~ v1_funct_2(X3,X1,X2)
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | ~ v1_funct_1(X3)
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
% 2.01/1.05      | u1_struct_0(sK1) != X2
% 2.01/1.05      | u1_struct_0(sK0) != X1
% 2.01/1.05      | sK2 != X0 ),
% 2.01/1.05      inference(resolution_lifted,[status(thm)],[c_16,c_23]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_396,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.01/1.05      | ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.01/1.05      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.01/1.05      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.01/1.05      inference(unflattening,[status(thm)],[c_395]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_596,plain,
% 2.01/1.05      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.01/1.05      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.01/1.05      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.01/1.05      | sP0_iProver_split
% 2.01/1.05      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.01/1.05      inference(splitting,
% 2.01/1.05                [splitting(split),new_symbols(definition,[])],
% 2.01/1.05                [c_396]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1055,plain,
% 2.01/1.05      ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.01/1.05      | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top
% 2.01/1.05      | sP0_iProver_split = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_596]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1255,plain,
% 2.01/1.05      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 2.01/1.05      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top
% 2.01/1.05      | sP0_iProver_split = iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1055,c_384,c_389]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_595,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1))
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ sP0_iProver_split ),
% 2.01/1.05      inference(splitting,
% 2.01/1.05                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.01/1.05                [c_396]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1056,plain,
% 2.01/1.05      ( v1_funct_2(X0,u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 2.01/1.05      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_funct_1(X0) != iProver_top
% 2.01/1.05      | sP0_iProver_split != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_595]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1210,plain,
% 2.01/1.05      ( v1_funct_2(X0,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.01/1.05      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_funct_1(X0) != iProver_top
% 2.01/1.05      | sP0_iProver_split != iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1056,c_384,c_389]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1261,plain,
% 2.01/1.05      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 2.01/1.05      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
% 2.01/1.05      inference(forward_subsumption_resolution,[status(thm)],[c_1255,c_1210]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2527,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)) != sK2
% 2.01/1.05      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_relat_1(sK2),sK2))) != iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_1261,c_1670]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2600,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
% 2.01/1.05      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_2597,c_2527]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3776,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) != sK2
% 2.01/1.05      | v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_3772,c_2600]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_37,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_7,plain,
% 2.01/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f50]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1327,plain,
% 2.01/1.05      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.01/1.05      | v1_relat_1(sK2) ),
% 2.01/1.05      inference(instantiation,[status(thm)],[c_7]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1328,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.01/1.05      | v1_relat_1(sK2) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_1327]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1,plain,
% 2.01/1.05      ( ~ v1_relat_1(X0)
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | v2_funct_1(k2_funct_1(X0)) ),
% 2.01/1.05      inference(cnf_transformation,[],[f46]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1391,plain,
% 2.01/1.05      ( ~ v1_relat_1(sK2)
% 2.01/1.05      | ~ v1_funct_1(sK2)
% 2.01/1.05      | v2_funct_1(k2_funct_1(sK2))
% 2.01/1.05      | ~ v2_funct_1(sK2) ),
% 2.01/1.05      inference(instantiation,[status(thm)],[c_1]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1392,plain,
% 2.01/1.05      ( v1_relat_1(sK2) != iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_1391]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2,plain,
% 2.01/1.05      ( ~ v1_relat_1(X0)
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | v1_funct_1(k2_funct_1(X0))
% 2.01/1.05      | ~ v2_funct_1(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f45]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1390,plain,
% 2.01/1.05      ( ~ v1_relat_1(sK2)
% 2.01/1.05      | v1_funct_1(k2_funct_1(sK2))
% 2.01/1.05      | ~ v1_funct_1(sK2)
% 2.01/1.05      | ~ v2_funct_1(sK2) ),
% 2.01/1.05      inference(instantiation,[status(thm)],[c_2]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1394,plain,
% 2.01/1.05      ( v1_relat_1(sK2) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_1390]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_17,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.01/1.05      inference(cnf_transformation,[],[f62]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1064,plain,
% 2.01/1.05      ( k2_relset_1(X0,X1,X2) != X1
% 2.01/1.05      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) = iProver_top
% 2.01/1.05      | v1_funct_1(X2) != iProver_top
% 2.01/1.05      | v2_funct_1(X2) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3481,plain,
% 2.01/1.05      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k2_struct_0(sK0)))) = iProver_top
% 2.01/1.05      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1739,c_1064]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3699,plain,
% 2.01/1.05      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k2_struct_0(sK0)))) = iProver_top ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_3481,c_35,c_38,c_1741,c_1742]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3775,plain,
% 2.01/1.05      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_3772,c_3699]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_18,plain,
% 2.01/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 2.01/1.05      | v1_funct_2(k2_funct_1(X0),X2,X1)
% 2.01/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.01/1.05      inference(cnf_transformation,[],[f61]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1063,plain,
% 2.01/1.05      ( k2_relset_1(X0,X1,X2) != X1
% 2.01/1.05      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.01/1.05      | v1_funct_2(k2_funct_1(X2),X1,X0) = iProver_top
% 2.01/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.01/1.05      | v1_funct_1(X2) != iProver_top
% 2.01/1.05      | v2_funct_1(X2) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2609,plain,
% 2.01/1.05      ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k2_struct_0(sK0)) = iProver_top
% 2.01/1.05      | v1_funct_2(sK2,k2_struct_0(sK0),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1739,c_1063]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3088,plain,
% 2.01/1.05      ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k2_struct_0(sK0)) = iProver_top ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_2609,c_35,c_38,c_1741,c_1742]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3777,plain,
% 2.01/1.05      ( v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_3772,c_3088]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3708,plain,
% 2.01/1.05      ( k2_relset_1(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) = k2_relat_1(k2_funct_1(sK2)) ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_3699,c_1071]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1073,plain,
% 2.01/1.05      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.01/1.05      | v1_relat_1(X0) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1418,plain,
% 2.01/1.05      ( v1_relat_1(sK2) = iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1097,c_1073]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_4,plain,
% 2.01/1.05      ( ~ v1_relat_1(X0)
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 2.01/1.05      inference(cnf_transformation,[],[f48]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1076,plain,
% 2.01/1.05      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 2.01/1.05      | v1_relat_1(X0) != iProver_top
% 2.01/1.05      | v1_funct_1(X0) != iProver_top
% 2.01/1.05      | v2_funct_1(X0) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2880,plain,
% 2.01/1.05      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1418,c_1076]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1386,plain,
% 2.01/1.05      ( ~ v1_relat_1(sK2)
% 2.01/1.05      | ~ v1_funct_1(sK2)
% 2.01/1.05      | ~ v2_funct_1(sK2)
% 2.01/1.05      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(instantiation,[status(thm)],[c_4]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3012,plain,
% 2.01/1.05      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_2880,c_28,c_26,c_24,c_1327,c_1386]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3710,plain,
% 2.01/1.05      ( k2_relset_1(k2_relat_1(sK2),k2_struct_0(sK0),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_3708,c_3012]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_4679,plain,
% 2.01/1.05      ( k2_relset_1(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_3710,c_3772]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_4683,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 2.01/1.05      | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.01/1.05      | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_4679,c_1062]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_6,plain,
% 2.01/1.05      ( ~ v1_relat_1(X0)
% 2.01/1.05      | ~ v1_funct_1(X0)
% 2.01/1.05      | ~ v2_funct_1(X0)
% 2.01/1.05      | k2_funct_1(k2_funct_1(X0)) = X0 ),
% 2.01/1.05      inference(cnf_transformation,[],[f49]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1074,plain,
% 2.01/1.05      ( k2_funct_1(k2_funct_1(X0)) = X0
% 2.01/1.05      | v1_relat_1(X0) != iProver_top
% 2.01/1.05      | v1_funct_1(X0) != iProver_top
% 2.01/1.05      | v2_funct_1(X0) != iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2023,plain,
% 2.01/1.05      ( k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top
% 2.01/1.05      | v2_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(superposition,[status(thm)],[c_1418,c_1074]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1387,plain,
% 2.01/1.05      ( ~ v1_relat_1(sK2)
% 2.01/1.05      | ~ v1_funct_1(sK2)
% 2.01/1.05      | ~ v2_funct_1(sK2)
% 2.01/1.05      | k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 2.01/1.05      inference(instantiation,[status(thm)],[c_6]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_2534,plain,
% 2.01/1.05      ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_2023,c_28,c_26,c_24,c_1327,c_1387]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_4689,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2
% 2.01/1.05      | v1_funct_2(k2_funct_1(sK2),k2_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK2),k1_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.01/1.05      | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_4683,c_2534]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_5097,plain,
% 2.01/1.05      ( v1_funct_2(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2))) != iProver_top ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_3776,c_35,c_37,c_38,c_1328,c_1392,c_1394,c_3775,c_3777,
% 2.01/1.05                 c_4689]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_5044,plain,
% 2.01/1.05      ( k2_tops_2(k2_relat_1(sK2),k1_relat_1(sK2),k2_funct_1(sK2)) = sK2 ),
% 2.01/1.05      inference(global_propositional_subsumption,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_4689,c_35,c_37,c_38,c_1328,c_1392,c_1394,c_3775,c_3777]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_5101,plain,
% 2.01/1.05      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) != iProver_top
% 2.01/1.05      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) != iProver_top
% 2.01/1.05      | v1_funct_1(sK2) != iProver_top ),
% 2.01/1.05      inference(light_normalisation,[status(thm)],[c_5097,c_5044]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_1058,plain,
% 2.01/1.05      ( v1_funct_1(sK2) = iProver_top ),
% 2.01/1.05      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3779,plain,
% 2.01/1.05      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK2),k2_relat_1(sK2)))) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_3772,c_1741]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_3782,plain,
% 2.01/1.05      ( v1_funct_2(sK2,k1_relat_1(sK2),k2_relat_1(sK2)) = iProver_top ),
% 2.01/1.05      inference(demodulation,[status(thm)],[c_3772,c_1742]) ).
% 2.01/1.05  
% 2.01/1.05  cnf(c_5105,plain,
% 2.01/1.05      ( $false ),
% 2.01/1.05      inference(forward_subsumption_resolution,
% 2.01/1.05                [status(thm)],
% 2.01/1.05                [c_5101,c_1058,c_3779,c_3782]) ).
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 2.01/1.05  
% 2.01/1.05  ------                               Statistics
% 2.01/1.05  
% 2.01/1.05  ------ General
% 2.01/1.05  
% 2.01/1.05  abstr_ref_over_cycles:                  0
% 2.01/1.05  abstr_ref_under_cycles:                 0
% 2.01/1.05  gc_basic_clause_elim:                   0
% 2.01/1.05  forced_gc_time:                         0
% 2.01/1.05  parsing_time:                           0.025
% 2.01/1.05  unif_index_cands_time:                  0.
% 2.01/1.05  unif_index_add_time:                    0.
% 2.01/1.05  orderings_time:                         0.
% 2.01/1.05  out_proof_time:                         0.017
% 2.01/1.05  total_time:                             0.226
% 2.01/1.05  num_of_symbols:                         55
% 2.01/1.05  num_of_terms:                           4586
% 2.01/1.05  
% 2.01/1.05  ------ Preprocessing
% 2.01/1.05  
% 2.01/1.05  num_of_splits:                          1
% 2.01/1.05  num_of_split_atoms:                     1
% 2.01/1.05  num_of_reused_defs:                     0
% 2.01/1.05  num_eq_ax_congr_red:                    6
% 2.01/1.05  num_of_sem_filtered_clauses:            1
% 2.01/1.05  num_of_subtypes:                        0
% 2.01/1.05  monotx_restored_types:                  0
% 2.01/1.05  sat_num_of_epr_types:                   0
% 2.01/1.05  sat_num_of_non_cyclic_types:            0
% 2.01/1.05  sat_guarded_non_collapsed_types:        0
% 2.01/1.05  num_pure_diseq_elim:                    0
% 2.01/1.05  simp_replaced_by:                       0
% 2.01/1.05  res_preprocessed:                       153
% 2.01/1.05  prep_upred:                             0
% 2.01/1.05  prep_unflattend:                        6
% 2.01/1.05  smt_new_axioms:                         0
% 2.01/1.05  pred_elim_cands:                        5
% 2.01/1.05  pred_elim:                              4
% 2.01/1.05  pred_elim_cl:                           4
% 2.01/1.05  pred_elim_cycles:                       6
% 2.01/1.05  merged_defs:                            0
% 2.01/1.05  merged_defs_ncl:                        0
% 2.01/1.05  bin_hyper_res:                          0
% 2.01/1.05  prep_cycles:                            4
% 2.01/1.05  pred_elim_time:                         0.002
% 2.01/1.05  splitting_time:                         0.
% 2.01/1.05  sem_filter_time:                        0.
% 2.01/1.05  monotx_time:                            0.
% 2.01/1.05  subtype_inf_time:                       0.
% 2.01/1.05  
% 2.01/1.05  ------ Problem properties
% 2.01/1.05  
% 2.01/1.05  clauses:                                29
% 2.01/1.05  conjectures:                            5
% 2.01/1.05  epr:                                    2
% 2.01/1.05  horn:                                   25
% 2.01/1.05  ground:                                 9
% 2.01/1.05  unary:                                  8
% 2.01/1.05  binary:                                 3
% 2.01/1.05  lits:                                   90
% 2.01/1.05  lits_eq:                                23
% 2.01/1.05  fd_pure:                                0
% 2.01/1.05  fd_pseudo:                              0
% 2.01/1.05  fd_cond:                                3
% 2.01/1.05  fd_pseudo_cond:                         0
% 2.01/1.05  ac_symbols:                             0
% 2.01/1.05  
% 2.01/1.05  ------ Propositional Solver
% 2.01/1.05  
% 2.01/1.05  prop_solver_calls:                      28
% 2.01/1.05  prop_fast_solver_calls:                 1217
% 2.01/1.05  smt_solver_calls:                       0
% 2.01/1.05  smt_fast_solver_calls:                  0
% 2.01/1.05  prop_num_of_clauses:                    1593
% 2.01/1.05  prop_preprocess_simplified:             5591
% 2.01/1.05  prop_fo_subsumed:                       55
% 2.01/1.05  prop_solver_time:                       0.
% 2.01/1.05  smt_solver_time:                        0.
% 2.01/1.05  smt_fast_solver_time:                   0.
% 2.01/1.05  prop_fast_solver_time:                  0.
% 2.01/1.05  prop_unsat_core_time:                   0.
% 2.01/1.05  
% 2.01/1.05  ------ QBF
% 2.01/1.05  
% 2.01/1.05  qbf_q_res:                              0
% 2.01/1.05  qbf_num_tautologies:                    0
% 2.01/1.05  qbf_prep_cycles:                        0
% 2.01/1.05  
% 2.01/1.05  ------ BMC1
% 2.01/1.05  
% 2.01/1.05  bmc1_current_bound:                     -1
% 2.01/1.05  bmc1_last_solved_bound:                 -1
% 2.01/1.05  bmc1_unsat_core_size:                   -1
% 2.01/1.05  bmc1_unsat_core_parents_size:           -1
% 2.01/1.05  bmc1_merge_next_fun:                    0
% 2.01/1.05  bmc1_unsat_core_clauses_time:           0.
% 2.01/1.05  
% 2.01/1.05  ------ Instantiation
% 2.01/1.05  
% 2.01/1.05  inst_num_of_clauses:                    573
% 2.01/1.05  inst_num_in_passive:                    42
% 2.01/1.05  inst_num_in_active:                     345
% 2.01/1.05  inst_num_in_unprocessed:                186
% 2.01/1.05  inst_num_of_loops:                      360
% 2.01/1.05  inst_num_of_learning_restarts:          0
% 2.01/1.05  inst_num_moves_active_passive:          11
% 2.01/1.05  inst_lit_activity:                      0
% 2.01/1.05  inst_lit_activity_moves:                0
% 2.01/1.05  inst_num_tautologies:                   0
% 2.01/1.05  inst_num_prop_implied:                  0
% 2.01/1.05  inst_num_existing_simplified:           0
% 2.01/1.05  inst_num_eq_res_simplified:             0
% 2.01/1.05  inst_num_child_elim:                    0
% 2.01/1.05  inst_num_of_dismatching_blockings:      97
% 2.01/1.05  inst_num_of_non_proper_insts:           457
% 2.01/1.05  inst_num_of_duplicates:                 0
% 2.01/1.05  inst_inst_num_from_inst_to_res:         0
% 2.01/1.05  inst_dismatching_checking_time:         0.
% 2.01/1.05  
% 2.01/1.05  ------ Resolution
% 2.01/1.05  
% 2.01/1.05  res_num_of_clauses:                     0
% 2.01/1.05  res_num_in_passive:                     0
% 2.01/1.05  res_num_in_active:                      0
% 2.01/1.05  res_num_of_loops:                       157
% 2.01/1.05  res_forward_subset_subsumed:            39
% 2.01/1.05  res_backward_subset_subsumed:           4
% 2.01/1.05  res_forward_subsumed:                   0
% 2.01/1.05  res_backward_subsumed:                  0
% 2.01/1.05  res_forward_subsumption_resolution:     0
% 2.01/1.05  res_backward_subsumption_resolution:    0
% 2.01/1.05  res_clause_to_clause_subsumption:       222
% 2.01/1.05  res_orphan_elimination:                 0
% 2.01/1.05  res_tautology_del:                      49
% 2.01/1.05  res_num_eq_res_simplified:              0
% 2.01/1.05  res_num_sel_changes:                    0
% 2.01/1.05  res_moves_from_active_to_pass:          0
% 2.01/1.05  
% 2.01/1.05  ------ Superposition
% 2.01/1.05  
% 2.01/1.05  sup_time_total:                         0.
% 2.01/1.05  sup_time_generating:                    0.
% 2.01/1.05  sup_time_sim_full:                      0.
% 2.01/1.05  sup_time_sim_immed:                     0.
% 2.01/1.05  
% 2.01/1.05  sup_num_of_clauses:                     56
% 2.01/1.05  sup_num_in_active:                      53
% 2.01/1.05  sup_num_in_passive:                     3
% 2.01/1.05  sup_num_of_loops:                       70
% 2.01/1.05  sup_fw_superposition:                   39
% 2.01/1.05  sup_bw_superposition:                   40
% 2.01/1.05  sup_immediate_simplified:               44
% 2.01/1.05  sup_given_eliminated:                   0
% 2.01/1.05  comparisons_done:                       0
% 2.01/1.05  comparisons_avoided:                    0
% 2.01/1.05  
% 2.01/1.05  ------ Simplifications
% 2.01/1.05  
% 2.01/1.05  
% 2.01/1.05  sim_fw_subset_subsumed:                 12
% 2.01/1.05  sim_bw_subset_subsumed:                 0
% 2.01/1.05  sim_fw_subsumed:                        3
% 2.01/1.05  sim_bw_subsumed:                        0
% 2.01/1.05  sim_fw_subsumption_res:                 4
% 2.01/1.05  sim_bw_subsumption_res:                 0
% 2.01/1.05  sim_tautology_del:                      0
% 2.01/1.05  sim_eq_tautology_del:                   25
% 2.01/1.05  sim_eq_res_simp:                        0
% 2.01/1.05  sim_fw_demodulated:                     0
% 2.01/1.05  sim_bw_demodulated:                     17
% 2.01/1.05  sim_light_normalised:                   43
% 2.01/1.05  sim_joinable_taut:                      0
% 2.01/1.05  sim_joinable_simp:                      0
% 2.01/1.05  sim_ac_normalised:                      0
% 2.01/1.05  sim_smt_subsumption:                    0
% 2.01/1.05  
%------------------------------------------------------------------------------
