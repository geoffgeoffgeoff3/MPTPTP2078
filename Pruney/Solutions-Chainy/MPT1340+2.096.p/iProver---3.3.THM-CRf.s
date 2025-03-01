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
% DateTime   : Thu Dec  3 12:17:42 EST 2020

% Result     : Theorem 2.61s
% Output     : CNFRefutation 2.61s
% Verified   : 
% Statistics : Number of formulae       :  168 (1333 expanded)
%              Number of clauses        :   94 ( 362 expanded)
%              Number of leaves         :   20 ( 403 expanded)
%              Depth                    :   19
%              Number of atoms          :  613 (9000 expanded)
%              Number of equality atoms :  251 (1583 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f16,conjecture,(
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

fof(f17,negated_conjecture,(
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
    inference(negated_conjecture,[],[f16])).

fof(f39,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f40,plain,(
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
    inference(flattening,[],[f39])).

fof(f45,plain,(
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

fof(f44,plain,(
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

fof(f43,plain,
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

fof(f46,plain,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)
    & v2_funct_1(sK2)
    & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))
    & v1_funct_1(sK2)
    & l1_struct_0(sK1)
    & ~ v2_struct_0(sK1)
    & l1_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f40,f45,f44,f43])).

fof(f79,plain,(
    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f46])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f70,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f75,plain,(
    l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f46])).

fof(f73,plain,(
    l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f46])).

fof(f12,axiom,(
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

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(k2_funct_1(X2),X1,X0)
        & v1_funct_1(k2_funct_1(X2)) )
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f32])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f76,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f80,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f78,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f46])).

fof(f77,plain,(
    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f46])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f55,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( v2_funct_1(X1)
       => k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f22,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f21])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0)
      | ~ v2_funct_1(X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f48,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => k2_funct_1(X2) = k2_tops_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f37])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( k2_funct_1(X2) = k2_tops_2(X0,X1,X2)
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => k2_funct_1(k2_funct_1(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f24,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f23])).

fof(f54,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f36,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f71,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f74,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f46])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f20,plain,(
    ! [X0] :
      ( ( v2_funct_1(k2_funct_1(X0))
        & v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f52,plain,(
    ! [X0] :
      ( v2_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f51,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_funct_1(X2),X1,X0)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ v2_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
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

fof(f28,plain,(
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
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f41,plain,(
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
    inference(nnf_transformation,[],[f29])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f31,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f30])).

fof(f42,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_funct_2(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_funct_2(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(nnf_transformation,[],[f31])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f87,plain,(
    ! [X0,X3,X1] :
      ( r2_funct_2(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(equality_resolution,[],[f66])).

fof(f81,plain,(
    ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_28,negated_conjecture,
    ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_23,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_32,negated_conjecture,
    ( l1_struct_0(sK1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_408,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_32])).

cnf(c_409,plain,
    ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_408])).

cnf(c_34,negated_conjecture,
    ( l1_struct_0(sK0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_413,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_34])).

cnf(c_414,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_413])).

cnf(c_1131,plain,
    ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
    inference(light_normalisation,[status(thm)],[c_28,c_409,c_414])).

cnf(c_20,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1098,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) = iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2981,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1131,c_1098])).

cnf(c_31,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_38,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_27,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_41,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1093,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_1134,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1093,c_409,c_414])).

cnf(c_30,negated_conjecture,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1092,plain,
    ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_1128,plain,
    ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1092,c_409,c_414])).

cnf(c_3078,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2981,c_38,c_41,c_1134,c_1128])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1105,plain,
    ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3086,plain,
    ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),k2_struct_0(sK1)) = k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_3078,c_1105])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1108,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_3087,plain,
    ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0) = k9_relat_1(k2_funct_1(sK2),X0) ),
    inference(superposition,[status(thm)],[c_3078,c_1108])).

cnf(c_1091,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k9_relat_1(k2_funct_1(X0),X1) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1110,plain,
    ( k9_relat_1(k2_funct_1(X0),X1) = k10_relat_1(X0,X1)
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2564,plain,
    ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0)
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1091,c_1110])).

cnf(c_1394,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1395,plain,
    ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0)
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1394])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1115,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1569,plain,
    ( v1_relat_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1134,c_1115])).

cnf(c_2,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1114,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1712,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1569,c_1114])).

cnf(c_2984,plain,
    ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2564,c_38,c_41,c_1395,c_1712])).

cnf(c_3092,plain,
    ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
    inference(light_normalisation,[status(thm)],[c_3087,c_2984])).

cnf(c_3094,plain,
    ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = k10_relat_1(sK2,k2_struct_0(sK1)) ),
    inference(demodulation,[status(thm)],[c_3086,c_3092])).

cnf(c_25,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1095,plain,
    ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
    | k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_3447,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
    | k10_relat_1(sK2,k2_struct_0(sK1)) != k2_struct_0(sK0)
    | v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3094,c_1095])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_funct_1(k2_funct_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1109,plain,
    ( k2_funct_1(k2_funct_1(X0)) = X0
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2043,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1091,c_1109])).

cnf(c_1390,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1391,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1390])).

cnf(c_2155,plain,
    ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2043,c_38,c_41,c_1391,c_1712])).

cnf(c_3454,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = sK2
    | k10_relat_1(sK2,k2_struct_0(sK1)) != k2_struct_0(sK0)
    | v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3447,c_2155])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_24,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_381,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | k2_struct_0(X0) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_24])).

cnf(c_33,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_399,plain,
    ( ~ l1_struct_0(X0)
    | k2_struct_0(X0) != k1_xboole_0
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_381,c_33])).

cnf(c_400,plain,
    ( ~ l1_struct_0(sK1)
    | k2_struct_0(sK1) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_399])).

cnf(c_3,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | v2_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1364,plain,
    ( ~ v1_funct_1(sK2)
    | v2_funct_1(k2_funct_1(sK2))
    | ~ v2_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1365,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v2_funct_1(k2_funct_1(sK2)) = iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1364])).

cnf(c_4,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1367,plain,
    ( v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1368,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1367])).

cnf(c_21,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k2_funct_1(X0),X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1097,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | v1_funct_2(k2_funct_1(X2),X1,X0) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2705,plain,
    ( v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) = iProver_top
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1131,c_1097])).

cnf(c_17,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1099,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2920,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK0)
    | k2_struct_0(sK1) = k1_xboole_0
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1134,c_1099])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1106,plain,
    ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1969,plain,
    ( k8_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) ),
    inference(superposition,[status(thm)],[c_1134,c_1106])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1107,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1574,plain,
    ( k8_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,X0) = k10_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_1134,c_1107])).

cnf(c_1970,plain,
    ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k10_relat_1(sK2,k2_struct_0(sK1)) ),
    inference(demodulation,[status(thm)],[c_1969,c_1574])).

cnf(c_2921,plain,
    ( k10_relat_1(sK2,k2_struct_0(sK1)) = k2_struct_0(sK0)
    | k2_struct_0(sK1) = k1_xboole_0
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2920,c_1970])).

cnf(c_3973,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3454,c_32,c_38,c_41,c_400,c_1134,c_1128,c_1365,c_1368,c_1712,c_2705,c_2921,c_2981])).

cnf(c_18,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_26,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_422,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK0) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_26])).

cnf(c_423,plain,
    ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
    | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
    | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
    | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
    inference(unflattening,[status(thm)],[c_422])).

cnf(c_1090,plain,
    ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
    | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_423])).

cnf(c_1289,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1090,c_409,c_414])).

cnf(c_1515,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1131,c_1095])).

cnf(c_1641,plain,
    ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1515,c_38,c_41,c_1134,c_1128])).

cnf(c_1663,plain,
    ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
    | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1289,c_1641])).

cnf(c_3976,plain,
    ( sK2 != sK2
    | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3973,c_1663])).

cnf(c_621,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1559,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_621])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3976,c_1559,c_1128,c_1134,c_38])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:45:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.61/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.61/0.99  
% 2.61/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.61/0.99  
% 2.61/0.99  ------  iProver source info
% 2.61/0.99  
% 2.61/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.61/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.61/0.99  git: non_committed_changes: false
% 2.61/0.99  git: last_make_outside_of_git: false
% 2.61/0.99  
% 2.61/0.99  ------ 
% 2.61/0.99  
% 2.61/0.99  ------ Input Options
% 2.61/0.99  
% 2.61/0.99  --out_options                           all
% 2.61/0.99  --tptp_safe_out                         true
% 2.61/0.99  --problem_path                          ""
% 2.61/0.99  --include_path                          ""
% 2.61/0.99  --clausifier                            res/vclausify_rel
% 2.61/0.99  --clausifier_options                    --mode clausify
% 2.61/0.99  --stdin                                 false
% 2.61/0.99  --stats_out                             all
% 2.61/0.99  
% 2.61/0.99  ------ General Options
% 2.61/0.99  
% 2.61/0.99  --fof                                   false
% 2.61/0.99  --time_out_real                         305.
% 2.61/0.99  --time_out_virtual                      -1.
% 2.61/0.99  --symbol_type_check                     false
% 2.61/0.99  --clausify_out                          false
% 2.61/0.99  --sig_cnt_out                           false
% 2.61/0.99  --trig_cnt_out                          false
% 2.61/0.99  --trig_cnt_out_tolerance                1.
% 2.61/0.99  --trig_cnt_out_sk_spl                   false
% 2.61/0.99  --abstr_cl_out                          false
% 2.61/0.99  
% 2.61/0.99  ------ Global Options
% 2.61/0.99  
% 2.61/0.99  --schedule                              default
% 2.61/0.99  --add_important_lit                     false
% 2.61/0.99  --prop_solver_per_cl                    1000
% 2.61/0.99  --min_unsat_core                        false
% 2.61/0.99  --soft_assumptions                      false
% 2.61/0.99  --soft_lemma_size                       3
% 2.61/0.99  --prop_impl_unit_size                   0
% 2.61/0.99  --prop_impl_unit                        []
% 2.61/0.99  --share_sel_clauses                     true
% 2.61/0.99  --reset_solvers                         false
% 2.61/0.99  --bc_imp_inh                            [conj_cone]
% 2.61/0.99  --conj_cone_tolerance                   3.
% 2.61/0.99  --extra_neg_conj                        none
% 2.61/0.99  --large_theory_mode                     true
% 2.61/0.99  --prolific_symb_bound                   200
% 2.61/0.99  --lt_threshold                          2000
% 2.61/0.99  --clause_weak_htbl                      true
% 2.61/0.99  --gc_record_bc_elim                     false
% 2.61/0.99  
% 2.61/0.99  ------ Preprocessing Options
% 2.61/0.99  
% 2.61/0.99  --preprocessing_flag                    true
% 2.61/0.99  --time_out_prep_mult                    0.1
% 2.61/0.99  --splitting_mode                        input
% 2.61/0.99  --splitting_grd                         true
% 2.61/0.99  --splitting_cvd                         false
% 2.61/0.99  --splitting_cvd_svl                     false
% 2.61/0.99  --splitting_nvd                         32
% 2.61/0.99  --sub_typing                            true
% 2.61/0.99  --prep_gs_sim                           true
% 2.61/0.99  --prep_unflatten                        true
% 2.61/0.99  --prep_res_sim                          true
% 2.61/0.99  --prep_upred                            true
% 2.61/0.99  --prep_sem_filter                       exhaustive
% 2.61/0.99  --prep_sem_filter_out                   false
% 2.61/0.99  --pred_elim                             true
% 2.61/0.99  --res_sim_input                         true
% 2.61/0.99  --eq_ax_congr_red                       true
% 2.61/0.99  --pure_diseq_elim                       true
% 2.61/0.99  --brand_transform                       false
% 2.61/0.99  --non_eq_to_eq                          false
% 2.61/0.99  --prep_def_merge                        true
% 2.61/0.99  --prep_def_merge_prop_impl              false
% 2.61/0.99  --prep_def_merge_mbd                    true
% 2.61/0.99  --prep_def_merge_tr_red                 false
% 2.61/0.99  --prep_def_merge_tr_cl                  false
% 2.61/0.99  --smt_preprocessing                     true
% 2.61/0.99  --smt_ac_axioms                         fast
% 2.61/0.99  --preprocessed_out                      false
% 2.61/0.99  --preprocessed_stats                    false
% 2.61/0.99  
% 2.61/0.99  ------ Abstraction refinement Options
% 2.61/0.99  
% 2.61/0.99  --abstr_ref                             []
% 2.61/0.99  --abstr_ref_prep                        false
% 2.61/0.99  --abstr_ref_until_sat                   false
% 2.61/0.99  --abstr_ref_sig_restrict                funpre
% 2.61/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.61/0.99  --abstr_ref_under                       []
% 2.61/0.99  
% 2.61/0.99  ------ SAT Options
% 2.61/0.99  
% 2.61/0.99  --sat_mode                              false
% 2.61/0.99  --sat_fm_restart_options                ""
% 2.61/0.99  --sat_gr_def                            false
% 2.61/0.99  --sat_epr_types                         true
% 2.61/0.99  --sat_non_cyclic_types                  false
% 2.61/0.99  --sat_finite_models                     false
% 2.61/0.99  --sat_fm_lemmas                         false
% 2.61/0.99  --sat_fm_prep                           false
% 2.61/0.99  --sat_fm_uc_incr                        true
% 2.61/0.99  --sat_out_model                         small
% 2.61/0.99  --sat_out_clauses                       false
% 2.61/0.99  
% 2.61/0.99  ------ QBF Options
% 2.61/0.99  
% 2.61/0.99  --qbf_mode                              false
% 2.61/0.99  --qbf_elim_univ                         false
% 2.61/0.99  --qbf_dom_inst                          none
% 2.61/0.99  --qbf_dom_pre_inst                      false
% 2.61/0.99  --qbf_sk_in                             false
% 2.61/0.99  --qbf_pred_elim                         true
% 2.61/0.99  --qbf_split                             512
% 2.61/0.99  
% 2.61/0.99  ------ BMC1 Options
% 2.61/0.99  
% 2.61/0.99  --bmc1_incremental                      false
% 2.61/0.99  --bmc1_axioms                           reachable_all
% 2.61/0.99  --bmc1_min_bound                        0
% 2.61/0.99  --bmc1_max_bound                        -1
% 2.61/0.99  --bmc1_max_bound_default                -1
% 2.61/0.99  --bmc1_symbol_reachability              true
% 2.61/0.99  --bmc1_property_lemmas                  false
% 2.61/0.99  --bmc1_k_induction                      false
% 2.61/0.99  --bmc1_non_equiv_states                 false
% 2.61/0.99  --bmc1_deadlock                         false
% 2.61/0.99  --bmc1_ucm                              false
% 2.61/0.99  --bmc1_add_unsat_core                   none
% 2.61/0.99  --bmc1_unsat_core_children              false
% 2.61/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.61/0.99  --bmc1_out_stat                         full
% 2.61/0.99  --bmc1_ground_init                      false
% 2.61/0.99  --bmc1_pre_inst_next_state              false
% 2.61/0.99  --bmc1_pre_inst_state                   false
% 2.61/0.99  --bmc1_pre_inst_reach_state             false
% 2.61/0.99  --bmc1_out_unsat_core                   false
% 2.61/0.99  --bmc1_aig_witness_out                  false
% 2.61/0.99  --bmc1_verbose                          false
% 2.61/0.99  --bmc1_dump_clauses_tptp                false
% 2.61/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.61/0.99  --bmc1_dump_file                        -
% 2.61/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.61/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.61/0.99  --bmc1_ucm_extend_mode                  1
% 2.61/0.99  --bmc1_ucm_init_mode                    2
% 2.61/0.99  --bmc1_ucm_cone_mode                    none
% 2.61/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.61/0.99  --bmc1_ucm_relax_model                  4
% 2.61/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.61/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.61/0.99  --bmc1_ucm_layered_model                none
% 2.61/0.99  --bmc1_ucm_max_lemma_size               10
% 2.61/0.99  
% 2.61/0.99  ------ AIG Options
% 2.61/0.99  
% 2.61/0.99  --aig_mode                              false
% 2.61/0.99  
% 2.61/0.99  ------ Instantiation Options
% 2.61/0.99  
% 2.61/0.99  --instantiation_flag                    true
% 2.61/0.99  --inst_sos_flag                         false
% 2.61/0.99  --inst_sos_phase                        true
% 2.61/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.61/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.61/0.99  --inst_lit_sel_side                     num_symb
% 2.61/0.99  --inst_solver_per_active                1400
% 2.61/0.99  --inst_solver_calls_frac                1.
% 2.61/0.99  --inst_passive_queue_type               priority_queues
% 2.61/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.61/0.99  --inst_passive_queues_freq              [25;2]
% 2.61/0.99  --inst_dismatching                      true
% 2.61/0.99  --inst_eager_unprocessed_to_passive     true
% 2.61/0.99  --inst_prop_sim_given                   true
% 2.61/0.99  --inst_prop_sim_new                     false
% 2.61/0.99  --inst_subs_new                         false
% 2.61/0.99  --inst_eq_res_simp                      false
% 2.61/0.99  --inst_subs_given                       false
% 2.61/0.99  --inst_orphan_elimination               true
% 2.61/0.99  --inst_learning_loop_flag               true
% 2.61/0.99  --inst_learning_start                   3000
% 2.61/0.99  --inst_learning_factor                  2
% 2.61/0.99  --inst_start_prop_sim_after_learn       3
% 2.61/0.99  --inst_sel_renew                        solver
% 2.61/0.99  --inst_lit_activity_flag                true
% 2.61/0.99  --inst_restr_to_given                   false
% 2.61/0.99  --inst_activity_threshold               500
% 2.61/0.99  --inst_out_proof                        true
% 2.61/0.99  
% 2.61/0.99  ------ Resolution Options
% 2.61/0.99  
% 2.61/0.99  --resolution_flag                       true
% 2.61/0.99  --res_lit_sel                           adaptive
% 2.61/0.99  --res_lit_sel_side                      none
% 2.61/0.99  --res_ordering                          kbo
% 2.61/0.99  --res_to_prop_solver                    active
% 2.61/0.99  --res_prop_simpl_new                    false
% 2.61/0.99  --res_prop_simpl_given                  true
% 2.61/0.99  --res_passive_queue_type                priority_queues
% 2.61/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.61/0.99  --res_passive_queues_freq               [15;5]
% 2.61/0.99  --res_forward_subs                      full
% 2.61/0.99  --res_backward_subs                     full
% 2.61/0.99  --res_forward_subs_resolution           true
% 2.61/0.99  --res_backward_subs_resolution          true
% 2.61/0.99  --res_orphan_elimination                true
% 2.61/0.99  --res_time_limit                        2.
% 2.61/0.99  --res_out_proof                         true
% 2.61/0.99  
% 2.61/0.99  ------ Superposition Options
% 2.61/0.99  
% 2.61/0.99  --superposition_flag                    true
% 2.61/0.99  --sup_passive_queue_type                priority_queues
% 2.61/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.61/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.61/0.99  --demod_completeness_check              fast
% 2.61/0.99  --demod_use_ground                      true
% 2.61/0.99  --sup_to_prop_solver                    passive
% 2.61/0.99  --sup_prop_simpl_new                    true
% 2.61/0.99  --sup_prop_simpl_given                  true
% 2.61/0.99  --sup_fun_splitting                     false
% 2.61/0.99  --sup_smt_interval                      50000
% 2.61/0.99  
% 2.61/0.99  ------ Superposition Simplification Setup
% 2.61/0.99  
% 2.61/0.99  --sup_indices_passive                   []
% 2.61/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.61/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_full_bw                           [BwDemod]
% 2.61/0.99  --sup_immed_triv                        [TrivRules]
% 2.61/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.61/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_immed_bw_main                     []
% 2.61/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.61/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/0.99  
% 2.61/0.99  ------ Combination Options
% 2.61/0.99  
% 2.61/0.99  --comb_res_mult                         3
% 2.61/0.99  --comb_sup_mult                         2
% 2.61/0.99  --comb_inst_mult                        10
% 2.61/0.99  
% 2.61/0.99  ------ Debug Options
% 2.61/0.99  
% 2.61/0.99  --dbg_backtrace                         false
% 2.61/0.99  --dbg_dump_prop_clauses                 false
% 2.61/0.99  --dbg_dump_prop_clauses_file            -
% 2.61/0.99  --dbg_out_stat                          false
% 2.61/0.99  ------ Parsing...
% 2.61/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.61/0.99  
% 2.61/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 2.61/0.99  
% 2.61/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.61/0.99  
% 2.61/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.61/0.99  ------ Proving...
% 2.61/0.99  ------ Problem Properties 
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  clauses                                 30
% 2.61/0.99  conjectures                             5
% 2.61/0.99  EPR                                     2
% 2.61/0.99  Horn                                    26
% 2.61/0.99  unary                                   9
% 2.61/0.99  binary                                  4
% 2.61/0.99  lits                                    89
% 2.61/0.99  lits eq                                 25
% 2.61/0.99  fd_pure                                 0
% 2.61/0.99  fd_pseudo                               0
% 2.61/0.99  fd_cond                                 3
% 2.61/0.99  fd_pseudo_cond                          0
% 2.61/0.99  AC symbols                              0
% 2.61/0.99  
% 2.61/0.99  ------ Schedule dynamic 5 is on 
% 2.61/0.99  
% 2.61/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  ------ 
% 2.61/0.99  Current options:
% 2.61/0.99  ------ 
% 2.61/0.99  
% 2.61/0.99  ------ Input Options
% 2.61/0.99  
% 2.61/0.99  --out_options                           all
% 2.61/0.99  --tptp_safe_out                         true
% 2.61/0.99  --problem_path                          ""
% 2.61/0.99  --include_path                          ""
% 2.61/0.99  --clausifier                            res/vclausify_rel
% 2.61/0.99  --clausifier_options                    --mode clausify
% 2.61/0.99  --stdin                                 false
% 2.61/0.99  --stats_out                             all
% 2.61/0.99  
% 2.61/0.99  ------ General Options
% 2.61/0.99  
% 2.61/0.99  --fof                                   false
% 2.61/0.99  --time_out_real                         305.
% 2.61/0.99  --time_out_virtual                      -1.
% 2.61/0.99  --symbol_type_check                     false
% 2.61/0.99  --clausify_out                          false
% 2.61/0.99  --sig_cnt_out                           false
% 2.61/0.99  --trig_cnt_out                          false
% 2.61/0.99  --trig_cnt_out_tolerance                1.
% 2.61/0.99  --trig_cnt_out_sk_spl                   false
% 2.61/0.99  --abstr_cl_out                          false
% 2.61/0.99  
% 2.61/0.99  ------ Global Options
% 2.61/0.99  
% 2.61/0.99  --schedule                              default
% 2.61/0.99  --add_important_lit                     false
% 2.61/0.99  --prop_solver_per_cl                    1000
% 2.61/0.99  --min_unsat_core                        false
% 2.61/0.99  --soft_assumptions                      false
% 2.61/0.99  --soft_lemma_size                       3
% 2.61/0.99  --prop_impl_unit_size                   0
% 2.61/0.99  --prop_impl_unit                        []
% 2.61/0.99  --share_sel_clauses                     true
% 2.61/0.99  --reset_solvers                         false
% 2.61/0.99  --bc_imp_inh                            [conj_cone]
% 2.61/0.99  --conj_cone_tolerance                   3.
% 2.61/0.99  --extra_neg_conj                        none
% 2.61/0.99  --large_theory_mode                     true
% 2.61/0.99  --prolific_symb_bound                   200
% 2.61/0.99  --lt_threshold                          2000
% 2.61/0.99  --clause_weak_htbl                      true
% 2.61/0.99  --gc_record_bc_elim                     false
% 2.61/0.99  
% 2.61/0.99  ------ Preprocessing Options
% 2.61/0.99  
% 2.61/0.99  --preprocessing_flag                    true
% 2.61/0.99  --time_out_prep_mult                    0.1
% 2.61/0.99  --splitting_mode                        input
% 2.61/0.99  --splitting_grd                         true
% 2.61/0.99  --splitting_cvd                         false
% 2.61/0.99  --splitting_cvd_svl                     false
% 2.61/0.99  --splitting_nvd                         32
% 2.61/0.99  --sub_typing                            true
% 2.61/0.99  --prep_gs_sim                           true
% 2.61/0.99  --prep_unflatten                        true
% 2.61/0.99  --prep_res_sim                          true
% 2.61/0.99  --prep_upred                            true
% 2.61/0.99  --prep_sem_filter                       exhaustive
% 2.61/0.99  --prep_sem_filter_out                   false
% 2.61/0.99  --pred_elim                             true
% 2.61/0.99  --res_sim_input                         true
% 2.61/0.99  --eq_ax_congr_red                       true
% 2.61/0.99  --pure_diseq_elim                       true
% 2.61/0.99  --brand_transform                       false
% 2.61/0.99  --non_eq_to_eq                          false
% 2.61/0.99  --prep_def_merge                        true
% 2.61/0.99  --prep_def_merge_prop_impl              false
% 2.61/0.99  --prep_def_merge_mbd                    true
% 2.61/0.99  --prep_def_merge_tr_red                 false
% 2.61/0.99  --prep_def_merge_tr_cl                  false
% 2.61/0.99  --smt_preprocessing                     true
% 2.61/0.99  --smt_ac_axioms                         fast
% 2.61/0.99  --preprocessed_out                      false
% 2.61/0.99  --preprocessed_stats                    false
% 2.61/0.99  
% 2.61/0.99  ------ Abstraction refinement Options
% 2.61/0.99  
% 2.61/0.99  --abstr_ref                             []
% 2.61/0.99  --abstr_ref_prep                        false
% 2.61/0.99  --abstr_ref_until_sat                   false
% 2.61/0.99  --abstr_ref_sig_restrict                funpre
% 2.61/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.61/0.99  --abstr_ref_under                       []
% 2.61/0.99  
% 2.61/0.99  ------ SAT Options
% 2.61/0.99  
% 2.61/0.99  --sat_mode                              false
% 2.61/0.99  --sat_fm_restart_options                ""
% 2.61/0.99  --sat_gr_def                            false
% 2.61/0.99  --sat_epr_types                         true
% 2.61/0.99  --sat_non_cyclic_types                  false
% 2.61/0.99  --sat_finite_models                     false
% 2.61/0.99  --sat_fm_lemmas                         false
% 2.61/0.99  --sat_fm_prep                           false
% 2.61/0.99  --sat_fm_uc_incr                        true
% 2.61/0.99  --sat_out_model                         small
% 2.61/0.99  --sat_out_clauses                       false
% 2.61/0.99  
% 2.61/0.99  ------ QBF Options
% 2.61/0.99  
% 2.61/0.99  --qbf_mode                              false
% 2.61/0.99  --qbf_elim_univ                         false
% 2.61/0.99  --qbf_dom_inst                          none
% 2.61/0.99  --qbf_dom_pre_inst                      false
% 2.61/0.99  --qbf_sk_in                             false
% 2.61/0.99  --qbf_pred_elim                         true
% 2.61/0.99  --qbf_split                             512
% 2.61/0.99  
% 2.61/0.99  ------ BMC1 Options
% 2.61/0.99  
% 2.61/0.99  --bmc1_incremental                      false
% 2.61/0.99  --bmc1_axioms                           reachable_all
% 2.61/0.99  --bmc1_min_bound                        0
% 2.61/0.99  --bmc1_max_bound                        -1
% 2.61/0.99  --bmc1_max_bound_default                -1
% 2.61/0.99  --bmc1_symbol_reachability              true
% 2.61/0.99  --bmc1_property_lemmas                  false
% 2.61/0.99  --bmc1_k_induction                      false
% 2.61/0.99  --bmc1_non_equiv_states                 false
% 2.61/0.99  --bmc1_deadlock                         false
% 2.61/0.99  --bmc1_ucm                              false
% 2.61/0.99  --bmc1_add_unsat_core                   none
% 2.61/0.99  --bmc1_unsat_core_children              false
% 2.61/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.61/0.99  --bmc1_out_stat                         full
% 2.61/0.99  --bmc1_ground_init                      false
% 2.61/0.99  --bmc1_pre_inst_next_state              false
% 2.61/0.99  --bmc1_pre_inst_state                   false
% 2.61/0.99  --bmc1_pre_inst_reach_state             false
% 2.61/0.99  --bmc1_out_unsat_core                   false
% 2.61/0.99  --bmc1_aig_witness_out                  false
% 2.61/0.99  --bmc1_verbose                          false
% 2.61/0.99  --bmc1_dump_clauses_tptp                false
% 2.61/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.61/0.99  --bmc1_dump_file                        -
% 2.61/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.61/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.61/0.99  --bmc1_ucm_extend_mode                  1
% 2.61/0.99  --bmc1_ucm_init_mode                    2
% 2.61/0.99  --bmc1_ucm_cone_mode                    none
% 2.61/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.61/0.99  --bmc1_ucm_relax_model                  4
% 2.61/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.61/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.61/0.99  --bmc1_ucm_layered_model                none
% 2.61/0.99  --bmc1_ucm_max_lemma_size               10
% 2.61/0.99  
% 2.61/0.99  ------ AIG Options
% 2.61/0.99  
% 2.61/0.99  --aig_mode                              false
% 2.61/0.99  
% 2.61/0.99  ------ Instantiation Options
% 2.61/0.99  
% 2.61/0.99  --instantiation_flag                    true
% 2.61/0.99  --inst_sos_flag                         false
% 2.61/0.99  --inst_sos_phase                        true
% 2.61/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.61/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.61/0.99  --inst_lit_sel_side                     none
% 2.61/0.99  --inst_solver_per_active                1400
% 2.61/0.99  --inst_solver_calls_frac                1.
% 2.61/0.99  --inst_passive_queue_type               priority_queues
% 2.61/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.61/0.99  --inst_passive_queues_freq              [25;2]
% 2.61/0.99  --inst_dismatching                      true
% 2.61/0.99  --inst_eager_unprocessed_to_passive     true
% 2.61/0.99  --inst_prop_sim_given                   true
% 2.61/0.99  --inst_prop_sim_new                     false
% 2.61/0.99  --inst_subs_new                         false
% 2.61/0.99  --inst_eq_res_simp                      false
% 2.61/0.99  --inst_subs_given                       false
% 2.61/0.99  --inst_orphan_elimination               true
% 2.61/0.99  --inst_learning_loop_flag               true
% 2.61/0.99  --inst_learning_start                   3000
% 2.61/0.99  --inst_learning_factor                  2
% 2.61/0.99  --inst_start_prop_sim_after_learn       3
% 2.61/0.99  --inst_sel_renew                        solver
% 2.61/0.99  --inst_lit_activity_flag                true
% 2.61/0.99  --inst_restr_to_given                   false
% 2.61/0.99  --inst_activity_threshold               500
% 2.61/0.99  --inst_out_proof                        true
% 2.61/0.99  
% 2.61/0.99  ------ Resolution Options
% 2.61/0.99  
% 2.61/0.99  --resolution_flag                       false
% 2.61/0.99  --res_lit_sel                           adaptive
% 2.61/0.99  --res_lit_sel_side                      none
% 2.61/0.99  --res_ordering                          kbo
% 2.61/0.99  --res_to_prop_solver                    active
% 2.61/0.99  --res_prop_simpl_new                    false
% 2.61/0.99  --res_prop_simpl_given                  true
% 2.61/0.99  --res_passive_queue_type                priority_queues
% 2.61/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.61/0.99  --res_passive_queues_freq               [15;5]
% 2.61/0.99  --res_forward_subs                      full
% 2.61/0.99  --res_backward_subs                     full
% 2.61/0.99  --res_forward_subs_resolution           true
% 2.61/0.99  --res_backward_subs_resolution          true
% 2.61/0.99  --res_orphan_elimination                true
% 2.61/0.99  --res_time_limit                        2.
% 2.61/0.99  --res_out_proof                         true
% 2.61/0.99  
% 2.61/0.99  ------ Superposition Options
% 2.61/0.99  
% 2.61/0.99  --superposition_flag                    true
% 2.61/0.99  --sup_passive_queue_type                priority_queues
% 2.61/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.61/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.61/0.99  --demod_completeness_check              fast
% 2.61/0.99  --demod_use_ground                      true
% 2.61/0.99  --sup_to_prop_solver                    passive
% 2.61/0.99  --sup_prop_simpl_new                    true
% 2.61/0.99  --sup_prop_simpl_given                  true
% 2.61/0.99  --sup_fun_splitting                     false
% 2.61/0.99  --sup_smt_interval                      50000
% 2.61/0.99  
% 2.61/0.99  ------ Superposition Simplification Setup
% 2.61/0.99  
% 2.61/0.99  --sup_indices_passive                   []
% 2.61/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.61/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.61/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_full_bw                           [BwDemod]
% 2.61/0.99  --sup_immed_triv                        [TrivRules]
% 2.61/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.61/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_immed_bw_main                     []
% 2.61/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.61/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.61/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.61/0.99  
% 2.61/0.99  ------ Combination Options
% 2.61/0.99  
% 2.61/0.99  --comb_res_mult                         3
% 2.61/0.99  --comb_sup_mult                         2
% 2.61/0.99  --comb_inst_mult                        10
% 2.61/0.99  
% 2.61/0.99  ------ Debug Options
% 2.61/0.99  
% 2.61/0.99  --dbg_backtrace                         false
% 2.61/0.99  --dbg_dump_prop_clauses                 false
% 2.61/0.99  --dbg_dump_prop_clauses_file            -
% 2.61/0.99  --dbg_out_stat                          false
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  ------ Proving...
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  % SZS status Theorem for theBenchmark.p
% 2.61/0.99  
% 2.61/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.61/0.99  
% 2.61/0.99  fof(f16,conjecture,(
% 2.61/0.99    ! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f17,negated_conjecture,(
% 2.61/0.99    ~! [X0] : (l1_struct_0(X0) => ! [X1] : ((l1_struct_0(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1)) => r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2)))))),
% 2.61/0.99    inference(negated_conjecture,[],[f16])).
% 2.61/0.99  
% 2.61/0.99  fof(f39,plain,(
% 2.61/0.99    ? [X0] : (? [X1] : (? [X2] : ((~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & (v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2))) & (l1_struct_0(X1) & ~v2_struct_0(X1))) & l1_struct_0(X0))),
% 2.61/0.99    inference(ennf_transformation,[],[f17])).
% 2.61/0.99  
% 2.61/0.99  fof(f40,plain,(
% 2.61/0.99    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0))),
% 2.61/0.99    inference(flattening,[],[f39])).
% 2.61/0.99  
% 2.61/0.99  fof(f45,plain,(
% 2.61/0.99    ( ! [X0,X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),sK2) = k2_struct_0(X1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(sK2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(sK2))) )),
% 2.61/0.99    introduced(choice_axiom,[])).
% 2.61/0.99  
% 2.61/0.99  fof(f44,plain,(
% 2.61/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) => (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(sK1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(sK1),X2) = k2_struct_0(sK1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(sK1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(sK1)) & v1_funct_1(X2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1))) )),
% 2.61/0.99    introduced(choice_axiom,[])).
% 2.61/0.99  
% 2.61/0.99  fof(f43,plain,(
% 2.61/0.99    ? [X0] : (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(X0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(X0),k2_tops_2(u1_struct_0(X0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(X0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(X0)) => (? [X1] : (? [X2] : (~r2_funct_2(u1_struct_0(sK0),u1_struct_0(X1),k2_tops_2(u1_struct_0(X1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(X1),X2)),X2) & v2_funct_1(X2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(X1),X2) = k2_struct_0(X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(sK0),u1_struct_0(X1)) & v1_funct_1(X2)) & l1_struct_0(X1) & ~v2_struct_0(X1)) & l1_struct_0(sK0))),
% 2.61/0.99    introduced(choice_axiom,[])).
% 2.61/0.99  
% 2.61/0.99  fof(f46,plain,(
% 2.61/0.99    ((~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) & v2_funct_1(sK2) & k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) & v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) & v1_funct_1(sK2)) & l1_struct_0(sK1) & ~v2_struct_0(sK1)) & l1_struct_0(sK0)),
% 2.61/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f40,f45,f44,f43])).
% 2.61/0.99  
% 2.61/0.99  fof(f79,plain,(
% 2.61/0.99    k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f13,axiom,(
% 2.61/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f34,plain,(
% 2.61/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 2.61/0.99    inference(ennf_transformation,[],[f13])).
% 2.61/0.99  
% 2.61/0.99  fof(f70,plain,(
% 2.61/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f34])).
% 2.61/0.99  
% 2.61/0.99  fof(f75,plain,(
% 2.61/0.99    l1_struct_0(sK1)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f73,plain,(
% 2.61/0.99    l1_struct_0(sK0)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f12,axiom,(
% 2.61/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f32,plain,(
% 2.61/0.99    ! [X0,X1,X2] : (((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | (k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.61/0.99    inference(ennf_transformation,[],[f12])).
% 2.61/0.99  
% 2.61/0.99  fof(f33,plain,(
% 2.61/0.99    ! [X0,X1,X2] : ((m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.61/0.99    inference(flattening,[],[f32])).
% 2.61/0.99  
% 2.61/0.99  fof(f69,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f33])).
% 2.61/0.99  
% 2.61/0.99  fof(f76,plain,(
% 2.61/0.99    v1_funct_1(sK2)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f80,plain,(
% 2.61/0.99    v2_funct_1(sK2)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f78,plain,(
% 2.61/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f77,plain,(
% 2.61/0.99    v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1))),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f9,axiom,(
% 2.61/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f27,plain,(
% 2.61/0.99    ! [X0,X1,X2] : ((k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(ennf_transformation,[],[f9])).
% 2.61/0.99  
% 2.61/0.99  fof(f57,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f27])).
% 2.61/0.99  
% 2.61/0.99  fof(f7,axiom,(
% 2.61/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f25,plain,(
% 2.61/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(ennf_transformation,[],[f7])).
% 2.61/0.99  
% 2.61/0.99  fof(f55,plain,(
% 2.61/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f25])).
% 2.61/0.99  
% 2.61/0.99  fof(f5,axiom,(
% 2.61/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (v2_funct_1(X1) => k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0)))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f21,plain,(
% 2.61/0.99    ! [X0,X1] : ((k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.61/0.99    inference(ennf_transformation,[],[f5])).
% 2.61/0.99  
% 2.61/0.99  fof(f22,plain,(
% 2.61/0.99    ! [X0,X1] : (k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.61/0.99    inference(flattening,[],[f21])).
% 2.61/0.99  
% 2.61/0.99  fof(f53,plain,(
% 2.61/0.99    ( ! [X0,X1] : (k10_relat_1(X1,X0) = k9_relat_1(k2_funct_1(X1),X0) | ~v2_funct_1(X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f22])).
% 2.61/0.99  
% 2.61/0.99  fof(f2,axiom,(
% 2.61/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f18,plain,(
% 2.61/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.61/0.99    inference(ennf_transformation,[],[f2])).
% 2.61/0.99  
% 2.61/0.99  fof(f48,plain,(
% 2.61/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f18])).
% 2.61/0.99  
% 2.61/0.99  fof(f3,axiom,(
% 2.61/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f49,plain,(
% 2.61/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f3])).
% 2.61/0.99  
% 2.61/0.99  fof(f15,axiom,(
% 2.61/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => k2_funct_1(X2) = k2_tops_2(X0,X1,X2)))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f37,plain,(
% 2.61/0.99    ! [X0,X1,X2] : ((k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.61/0.99    inference(ennf_transformation,[],[f15])).
% 2.61/0.99  
% 2.61/0.99  fof(f38,plain,(
% 2.61/0.99    ! [X0,X1,X2] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.61/0.99    inference(flattening,[],[f37])).
% 2.61/0.99  
% 2.61/0.99  fof(f72,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (k2_funct_1(X2) = k2_tops_2(X0,X1,X2) | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f38])).
% 2.61/0.99  
% 2.61/0.99  fof(f6,axiom,(
% 2.61/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => k2_funct_1(k2_funct_1(X0)) = X0))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f23,plain,(
% 2.61/0.99    ! [X0] : ((k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.61/0.99    inference(ennf_transformation,[],[f6])).
% 2.61/0.99  
% 2.61/0.99  fof(f24,plain,(
% 2.61/0.99    ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.61/0.99    inference(flattening,[],[f23])).
% 2.61/0.99  
% 2.61/0.99  fof(f54,plain,(
% 2.61/0.99    ( ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f24])).
% 2.61/0.99  
% 2.61/0.99  fof(f1,axiom,(
% 2.61/0.99    v1_xboole_0(k1_xboole_0)),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f47,plain,(
% 2.61/0.99    v1_xboole_0(k1_xboole_0)),
% 2.61/0.99    inference(cnf_transformation,[],[f1])).
% 2.61/0.99  
% 2.61/0.99  fof(f14,axiom,(
% 2.61/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k2_struct_0(X0)))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f35,plain,(
% 2.61/0.99    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.61/0.99    inference(ennf_transformation,[],[f14])).
% 2.61/0.99  
% 2.61/0.99  fof(f36,plain,(
% 2.61/0.99    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.61/0.99    inference(flattening,[],[f35])).
% 2.61/0.99  
% 2.61/0.99  fof(f71,plain,(
% 2.61/0.99    ( ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f36])).
% 2.61/0.99  
% 2.61/0.99  fof(f74,plain,(
% 2.61/0.99    ~v2_struct_0(sK1)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  fof(f4,axiom,(
% 2.61/0.99    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f19,plain,(
% 2.61/0.99    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.61/0.99    inference(ennf_transformation,[],[f4])).
% 2.61/0.99  
% 2.61/0.99  fof(f20,plain,(
% 2.61/0.99    ! [X0] : ((v2_funct_1(k2_funct_1(X0)) & v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.61/0.99    inference(flattening,[],[f19])).
% 2.61/0.99  
% 2.61/0.99  fof(f52,plain,(
% 2.61/0.99    ( ! [X0] : (v2_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f20])).
% 2.61/0.99  
% 2.61/0.99  fof(f51,plain,(
% 2.61/0.99    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f20])).
% 2.61/0.99  
% 2.61/0.99  fof(f68,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (v1_funct_2(k2_funct_1(X2),X1,X0) | k2_relset_1(X0,X1,X2) != X1 | ~v2_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f33])).
% 2.61/0.99  
% 2.61/0.99  fof(f10,axiom,(
% 2.61/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f28,plain,(
% 2.61/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(ennf_transformation,[],[f10])).
% 2.61/0.99  
% 2.61/0.99  fof(f29,plain,(
% 2.61/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(flattening,[],[f28])).
% 2.61/0.99  
% 2.61/0.99  fof(f41,plain,(
% 2.61/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(nnf_transformation,[],[f29])).
% 2.61/0.99  
% 2.61/0.99  fof(f59,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f41])).
% 2.61/0.99  
% 2.61/0.99  fof(f58,plain,(
% 2.61/0.99    ( ! [X2,X0,X1] : (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f27])).
% 2.61/0.99  
% 2.61/0.99  fof(f8,axiom,(
% 2.61/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f26,plain,(
% 2.61/0.99    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.61/0.99    inference(ennf_transformation,[],[f8])).
% 2.61/0.99  
% 2.61/0.99  fof(f56,plain,(
% 2.61/0.99    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.61/0.99    inference(cnf_transformation,[],[f26])).
% 2.61/0.99  
% 2.61/0.99  fof(f11,axiom,(
% 2.61/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (r2_funct_2(X0,X1,X2,X3) <=> X2 = X3))),
% 2.61/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.61/0.99  
% 2.61/0.99  fof(f30,plain,(
% 2.61/0.99    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.61/0.99    inference(ennf_transformation,[],[f11])).
% 2.61/0.99  
% 2.61/0.99  fof(f31,plain,(
% 2.61/0.99    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.61/0.99    inference(flattening,[],[f30])).
% 2.61/0.99  
% 2.61/0.99  fof(f42,plain,(
% 2.61/0.99    ! [X0,X1,X2,X3] : (((r2_funct_2(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.61/0.99    inference(nnf_transformation,[],[f31])).
% 2.61/0.99  
% 2.61/0.99  fof(f66,plain,(
% 2.61/0.99    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.61/0.99    inference(cnf_transformation,[],[f42])).
% 2.61/0.99  
% 2.61/0.99  fof(f87,plain,(
% 2.61/0.99    ( ! [X0,X3,X1] : (r2_funct_2(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 2.61/0.99    inference(equality_resolution,[],[f66])).
% 2.61/0.99  
% 2.61/0.99  fof(f81,plain,(
% 2.61/0.99    ~r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2)),
% 2.61/0.99    inference(cnf_transformation,[],[f46])).
% 2.61/0.99  
% 2.61/0.99  cnf(c_28,negated_conjecture,
% 2.61/0.99      ( k2_relset_1(u1_struct_0(sK0),u1_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.61/0.99      inference(cnf_transformation,[],[f79]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_23,plain,
% 2.61/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_32,negated_conjecture,
% 2.61/0.99      ( l1_struct_0(sK1) ),
% 2.61/0.99      inference(cnf_transformation,[],[f75]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_408,plain,
% 2.61/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK1 != X0 ),
% 2.61/0.99      inference(resolution_lifted,[status(thm)],[c_23,c_32]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_409,plain,
% 2.61/0.99      ( u1_struct_0(sK1) = k2_struct_0(sK1) ),
% 2.61/0.99      inference(unflattening,[status(thm)],[c_408]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_34,negated_conjecture,
% 2.61/0.99      ( l1_struct_0(sK0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_413,plain,
% 2.61/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 2.61/0.99      inference(resolution_lifted,[status(thm)],[c_23,c_34]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_414,plain,
% 2.61/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 2.61/0.99      inference(unflattening,[status(thm)],[c_413]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1131,plain,
% 2.61/0.99      ( k2_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK1) ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_28,c_409,c_414]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_20,plain,
% 2.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | m1_subset_1(k2_funct_1(X0),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.61/0.99      | ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.61/0.99      inference(cnf_transformation,[],[f69]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1098,plain,
% 2.61/0.99      ( k2_relset_1(X0,X1,X2) != X1
% 2.61/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) = iProver_top
% 2.61/0.99      | v1_funct_1(X2) != iProver_top
% 2.61/0.99      | v2_funct_1(X2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2981,plain,
% 2.61/0.99      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top
% 2.61/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1131,c_1098]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_31,negated_conjecture,
% 2.61/0.99      ( v1_funct_1(sK2) ),
% 2.61/0.99      inference(cnf_transformation,[],[f76]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_38,plain,
% 2.61/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_27,negated_conjecture,
% 2.61/0.99      ( v2_funct_1(sK2) ),
% 2.61/0.99      inference(cnf_transformation,[],[f80]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_41,plain,
% 2.61/0.99      ( v2_funct_1(sK2) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_29,negated_conjecture,
% 2.61/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) ),
% 2.61/0.99      inference(cnf_transformation,[],[f78]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1093,plain,
% 2.61/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1134,plain,
% 2.61/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) = iProver_top ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_1093,c_409,c_414]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_30,negated_conjecture,
% 2.61/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) ),
% 2.61/0.99      inference(cnf_transformation,[],[f77]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1092,plain,
% 2.61/0.99      ( v1_funct_2(sK2,u1_struct_0(sK0),u1_struct_0(sK1)) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1128,plain,
% 2.61/0.99      ( v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) = iProver_top ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_1092,c_409,c_414]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3078,plain,
% 2.61/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) = iProver_top ),
% 2.61/0.99      inference(global_propositional_subsumption,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_2981,c_38,c_41,c_1134,c_1128]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_11,plain,
% 2.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | k7_relset_1(X1,X2,X0,X1) = k2_relset_1(X1,X2,X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1105,plain,
% 2.61/0.99      ( k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3086,plain,
% 2.61/0.99      ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),k2_struct_0(sK1)) = k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_3078,c_1105]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_8,plain,
% 2.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.61/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1108,plain,
% 2.61/0.99      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3087,plain,
% 2.61/0.99      ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0) = k9_relat_1(k2_funct_1(sK2),X0) ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_3078,c_1108]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1091,plain,
% 2.61/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_6,plain,
% 2.61/0.99      ( ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | ~ v1_relat_1(X0)
% 2.61/0.99      | k9_relat_1(k2_funct_1(X0),X1) = k10_relat_1(X0,X1) ),
% 2.61/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1110,plain,
% 2.61/0.99      ( k9_relat_1(k2_funct_1(X0),X1) = k10_relat_1(X0,X1)
% 2.61/0.99      | v1_funct_1(X0) != iProver_top
% 2.61/0.99      | v2_funct_1(X0) != iProver_top
% 2.61/0.99      | v1_relat_1(X0) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2564,plain,
% 2.61/0.99      ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0)
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1091,c_1110]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1394,plain,
% 2.61/0.99      ( ~ v1_funct_1(sK2)
% 2.61/0.99      | ~ v2_funct_1(sK2)
% 2.61/0.99      | ~ v1_relat_1(sK2)
% 2.61/0.99      | k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
% 2.61/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1395,plain,
% 2.61/0.99      ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0)
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_1394]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1,plain,
% 2.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.61/0.99      | ~ v1_relat_1(X1)
% 2.61/0.99      | v1_relat_1(X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1115,plain,
% 2.61/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.61/0.99      | v1_relat_1(X1) != iProver_top
% 2.61/0.99      | v1_relat_1(X0) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1569,plain,
% 2.61/0.99      ( v1_relat_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1))) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) = iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1134,c_1115]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2,plain,
% 2.61/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.61/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1114,plain,
% 2.61/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1712,plain,
% 2.61/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 2.61/0.99      inference(forward_subsumption_resolution,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_1569,c_1114]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2984,plain,
% 2.61/0.99      ( k9_relat_1(k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
% 2.61/0.99      inference(global_propositional_subsumption,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_2564,c_38,c_41,c_1395,c_1712]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3092,plain,
% 2.61/0.99      ( k7_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2),X0) = k10_relat_1(sK2,X0) ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_3087,c_2984]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3094,plain,
% 2.61/0.99      ( k2_relset_1(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = k10_relat_1(sK2,k2_struct_0(sK1)) ),
% 2.61/0.99      inference(demodulation,[status(thm)],[c_3086,c_3092]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_25,plain,
% 2.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | k2_tops_2(X1,X2,X0) = k2_funct_1(X0)
% 2.61/0.99      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.61/0.99      inference(cnf_transformation,[],[f72]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1095,plain,
% 2.61/0.99      ( k2_tops_2(X0,X1,X2) = k2_funct_1(X2)
% 2.61/0.99      | k2_relset_1(X0,X1,X2) != X1
% 2.61/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.61/0.99      | v1_funct_1(X2) != iProver_top
% 2.61/0.99      | v2_funct_1(X2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3447,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = k2_funct_1(k2_funct_1(sK2))
% 2.61/0.99      | k10_relat_1(sK2,k2_struct_0(sK1)) != k2_struct_0(sK0)
% 2.61/0.99      | v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) != iProver_top
% 2.61/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.61/0.99      | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_3094,c_1095]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_7,plain,
% 2.61/0.99      ( ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | ~ v1_relat_1(X0)
% 2.61/0.99      | k2_funct_1(k2_funct_1(X0)) = X0 ),
% 2.61/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1109,plain,
% 2.61/0.99      ( k2_funct_1(k2_funct_1(X0)) = X0
% 2.61/0.99      | v1_funct_1(X0) != iProver_top
% 2.61/0.99      | v2_funct_1(X0) != iProver_top
% 2.61/0.99      | v1_relat_1(X0) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2043,plain,
% 2.61/0.99      ( k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1091,c_1109]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1390,plain,
% 2.61/0.99      ( ~ v1_funct_1(sK2)
% 2.61/0.99      | ~ v2_funct_1(sK2)
% 2.61/0.99      | ~ v1_relat_1(sK2)
% 2.61/0.99      | k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 2.61/0.99      inference(instantiation,[status(thm)],[c_7]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1391,plain,
% 2.61/0.99      ( k2_funct_1(k2_funct_1(sK2)) = sK2
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_1390]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2155,plain,
% 2.61/0.99      ( k2_funct_1(k2_funct_1(sK2)) = sK2 ),
% 2.61/0.99      inference(global_propositional_subsumption,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_2043,c_38,c_41,c_1391,c_1712]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3454,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = sK2
% 2.61/0.99      | k10_relat_1(sK2,k2_struct_0(sK1)) != k2_struct_0(sK0)
% 2.61/0.99      | v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK1),k2_struct_0(sK0)))) != iProver_top
% 2.61/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.61/0.99      | v2_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_3447,c_2155]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_0,plain,
% 2.61/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_24,plain,
% 2.61/0.99      ( v2_struct_0(X0)
% 2.61/0.99      | ~ l1_struct_0(X0)
% 2.61/0.99      | ~ v1_xboole_0(k2_struct_0(X0)) ),
% 2.61/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_381,plain,
% 2.61/0.99      ( v2_struct_0(X0)
% 2.61/0.99      | ~ l1_struct_0(X0)
% 2.61/0.99      | k2_struct_0(X0) != k1_xboole_0 ),
% 2.61/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_24]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_33,negated_conjecture,
% 2.61/0.99      ( ~ v2_struct_0(sK1) ),
% 2.61/0.99      inference(cnf_transformation,[],[f74]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_399,plain,
% 2.61/0.99      ( ~ l1_struct_0(X0) | k2_struct_0(X0) != k1_xboole_0 | sK1 != X0 ),
% 2.61/0.99      inference(resolution_lifted,[status(thm)],[c_381,c_33]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_400,plain,
% 2.61/0.99      ( ~ l1_struct_0(sK1) | k2_struct_0(sK1) != k1_xboole_0 ),
% 2.61/0.99      inference(unflattening,[status(thm)],[c_399]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3,plain,
% 2.61/0.99      ( ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | v2_funct_1(k2_funct_1(X0))
% 2.61/0.99      | ~ v1_relat_1(X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1364,plain,
% 2.61/0.99      ( ~ v1_funct_1(sK2)
% 2.61/0.99      | v2_funct_1(k2_funct_1(sK2))
% 2.61/0.99      | ~ v2_funct_1(sK2)
% 2.61/0.99      | ~ v1_relat_1(sK2) ),
% 2.61/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1365,plain,
% 2.61/0.99      ( v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_1364]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_4,plain,
% 2.61/0.99      ( ~ v1_funct_1(X0)
% 2.61/0.99      | v1_funct_1(k2_funct_1(X0))
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | ~ v1_relat_1(X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1367,plain,
% 2.61/0.99      ( v1_funct_1(k2_funct_1(sK2))
% 2.61/0.99      | ~ v1_funct_1(sK2)
% 2.61/0.99      | ~ v2_funct_1(sK2)
% 2.61/0.99      | ~ v1_relat_1(sK2) ),
% 2.61/0.99      inference(instantiation,[status(thm)],[c_4]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1368,plain,
% 2.61/0.99      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top
% 2.61/0.99      | v1_relat_1(sK2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_1367]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_21,plain,
% 2.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.61/0.99      | v1_funct_2(k2_funct_1(X0),X2,X1)
% 2.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | ~ v1_funct_1(X0)
% 2.61/0.99      | ~ v2_funct_1(X0)
% 2.61/0.99      | k2_relset_1(X1,X2,X0) != X2 ),
% 2.61/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1097,plain,
% 2.61/0.99      ( k2_relset_1(X0,X1,X2) != X1
% 2.61/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.61/0.99      | v1_funct_2(k2_funct_1(X2),X1,X0) = iProver_top
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.61/0.99      | v1_funct_1(X2) != iProver_top
% 2.61/0.99      | v2_funct_1(X2) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2705,plain,
% 2.61/0.99      ( v1_funct_2(k2_funct_1(sK2),k2_struct_0(sK1),k2_struct_0(sK0)) = iProver_top
% 2.61/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1131,c_1097]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_17,plain,
% 2.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.61/0.99      | k1_xboole_0 = X2 ),
% 2.61/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1099,plain,
% 2.61/0.99      ( k1_relset_1(X0,X1,X2) = X0
% 2.61/0.99      | k1_xboole_0 = X1
% 2.61/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2920,plain,
% 2.61/0.99      ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_struct_0(sK0)
% 2.61/0.99      | k2_struct_0(sK1) = k1_xboole_0
% 2.61/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1134,c_1099]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_10,plain,
% 2.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
% 2.61/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1106,plain,
% 2.61/0.99      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1969,plain,
% 2.61/0.99      ( k8_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,k2_struct_0(sK1)) = k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1134,c_1106]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_9,plain,
% 2.61/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 2.61/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1107,plain,
% 2.61/0.99      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 2.61/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1574,plain,
% 2.61/0.99      ( k8_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2,X0) = k10_relat_1(sK2,X0) ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1134,c_1107]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1970,plain,
% 2.61/0.99      ( k1_relset_1(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k10_relat_1(sK2,k2_struct_0(sK1)) ),
% 2.61/0.99      inference(demodulation,[status(thm)],[c_1969,c_1574]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_2921,plain,
% 2.61/0.99      ( k10_relat_1(sK2,k2_struct_0(sK1)) = k2_struct_0(sK0)
% 2.61/0.99      | k2_struct_0(sK1) = k1_xboole_0
% 2.61/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top ),
% 2.61/0.99      inference(demodulation,[status(thm)],[c_2920,c_1970]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3973,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) = sK2 ),
% 2.61/0.99      inference(global_propositional_subsumption,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_3454,c_32,c_38,c_41,c_400,c_1134,c_1128,c_1365,c_1368,
% 2.61/0.99                 c_1712,c_2705,c_2921,c_2981]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_18,plain,
% 2.61/0.99      ( r2_funct_2(X0,X1,X2,X2)
% 2.61/0.99      | ~ v1_funct_2(X2,X0,X1)
% 2.61/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.61/0.99      | ~ v1_funct_1(X2) ),
% 2.61/0.99      inference(cnf_transformation,[],[f87]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_26,negated_conjecture,
% 2.61/0.99      ( ~ r2_funct_2(u1_struct_0(sK0),u1_struct_0(sK1),k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),sK2) ),
% 2.61/0.99      inference(cnf_transformation,[],[f81]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_422,plain,
% 2.61/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.61/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.61/0.99      | ~ v1_funct_1(X0)
% 2.61/0.99      | k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) != X0
% 2.61/0.99      | u1_struct_0(sK1) != X2
% 2.61/0.99      | u1_struct_0(sK0) != X1
% 2.61/0.99      | sK2 != X0 ),
% 2.61/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_26]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_423,plain,
% 2.61/0.99      ( ~ v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1))
% 2.61/0.99      | ~ m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1))))
% 2.61/0.99      | ~ v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)))
% 2.61/0.99      | sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)) ),
% 2.61/0.99      inference(unflattening,[status(thm)],[c_422]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1090,plain,
% 2.61/0.99      ( sK2 != k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))
% 2.61/0.99      | v1_funct_2(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),u1_struct_0(sK0),u1_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK0),u1_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(k2_tops_2(u1_struct_0(sK1),u1_struct_0(sK0),k2_tops_2(u1_struct_0(sK0),u1_struct_0(sK1),sK2))) != iProver_top ),
% 2.61/0.99      inference(predicate_to_equality,[status(thm)],[c_423]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1289,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)) != sK2
% 2.61/0.99      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2))) != iProver_top ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_1090,c_409,c_414]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1515,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2)
% 2.61/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top
% 2.61/0.99      | v2_funct_1(sK2) != iProver_top ),
% 2.61/0.99      inference(superposition,[status(thm)],[c_1131,c_1095]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1641,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK0),k2_struct_0(sK1),sK2) = k2_funct_1(sK2) ),
% 2.61/0.99      inference(global_propositional_subsumption,
% 2.61/0.99                [status(thm)],
% 2.61/0.99                [c_1515,c_38,c_41,c_1134,c_1128]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1663,plain,
% 2.61/0.99      ( k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)) != sK2
% 2.61/0.99      | v1_funct_2(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2)),k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(k2_tops_2(k2_struct_0(sK1),k2_struct_0(sK0),k2_funct_1(sK2))) != iProver_top ),
% 2.61/0.99      inference(light_normalisation,[status(thm)],[c_1289,c_1641]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_3976,plain,
% 2.61/0.99      ( sK2 != sK2
% 2.61/0.99      | v1_funct_2(sK2,k2_struct_0(sK0),k2_struct_0(sK1)) != iProver_top
% 2.61/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(k2_struct_0(sK0),k2_struct_0(sK1)))) != iProver_top
% 2.61/0.99      | v1_funct_1(sK2) != iProver_top ),
% 2.61/0.99      inference(demodulation,[status(thm)],[c_3973,c_1663]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_621,plain,( X0 = X0 ),theory(equality) ).
% 2.61/0.99  
% 2.61/0.99  cnf(c_1559,plain,
% 2.61/0.99      ( sK2 = sK2 ),
% 2.61/0.99      inference(instantiation,[status(thm)],[c_621]) ).
% 2.61/0.99  
% 2.61/0.99  cnf(contradiction,plain,
% 2.61/0.99      ( $false ),
% 2.61/0.99      inference(minisat,[status(thm)],[c_3976,c_1559,c_1128,c_1134,c_38]) ).
% 2.61/0.99  
% 2.61/0.99  
% 2.61/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.61/0.99  
% 2.61/0.99  ------                               Statistics
% 2.61/0.99  
% 2.61/0.99  ------ General
% 2.61/0.99  
% 2.61/0.99  abstr_ref_over_cycles:                  0
% 2.61/1.00  abstr_ref_under_cycles:                 0
% 2.61/1.00  gc_basic_clause_elim:                   0
% 2.61/1.00  forced_gc_time:                         0
% 2.61/1.00  parsing_time:                           0.009
% 2.61/1.00  unif_index_cands_time:                  0.
% 2.61/1.00  unif_index_add_time:                    0.
% 2.61/1.00  orderings_time:                         0.
% 2.61/1.00  out_proof_time:                         0.01
% 2.61/1.00  total_time:                             0.151
% 2.61/1.00  num_of_symbols:                         56
% 2.61/1.00  num_of_terms:                           3499
% 2.61/1.00  
% 2.61/1.00  ------ Preprocessing
% 2.61/1.00  
% 2.61/1.00  num_of_splits:                          0
% 2.61/1.00  num_of_split_atoms:                     0
% 2.61/1.00  num_of_reused_defs:                     0
% 2.61/1.00  num_eq_ax_congr_red:                    39
% 2.61/1.00  num_of_sem_filtered_clauses:            1
% 2.61/1.00  num_of_subtypes:                        0
% 2.61/1.00  monotx_restored_types:                  0
% 2.61/1.00  sat_num_of_epr_types:                   0
% 2.61/1.00  sat_num_of_non_cyclic_types:            0
% 2.61/1.00  sat_guarded_non_collapsed_types:        0
% 2.61/1.00  num_pure_diseq_elim:                    0
% 2.61/1.00  simp_replaced_by:                       0
% 2.61/1.00  res_preprocessed:                       158
% 2.61/1.00  prep_upred:                             0
% 2.61/1.00  prep_unflattend:                        10
% 2.61/1.00  smt_new_axioms:                         0
% 2.61/1.00  pred_elim_cands:                        5
% 2.61/1.00  pred_elim:                              4
% 2.61/1.00  pred_elim_cl:                           5
% 2.61/1.00  pred_elim_cycles:                       6
% 2.61/1.00  merged_defs:                            0
% 2.61/1.00  merged_defs_ncl:                        0
% 2.61/1.00  bin_hyper_res:                          0
% 2.61/1.00  prep_cycles:                            4
% 2.61/1.00  pred_elim_time:                         0.002
% 2.61/1.00  splitting_time:                         0.
% 2.61/1.00  sem_filter_time:                        0.
% 2.61/1.00  monotx_time:                            0.001
% 2.61/1.00  subtype_inf_time:                       0.
% 2.61/1.00  
% 2.61/1.00  ------ Problem properties
% 2.61/1.00  
% 2.61/1.00  clauses:                                30
% 2.61/1.00  conjectures:                            5
% 2.61/1.00  epr:                                    2
% 2.61/1.00  horn:                                   26
% 2.61/1.00  ground:                                 9
% 2.61/1.00  unary:                                  9
% 2.61/1.00  binary:                                 4
% 2.61/1.00  lits:                                   89
% 2.61/1.00  lits_eq:                                25
% 2.61/1.00  fd_pure:                                0
% 2.61/1.00  fd_pseudo:                              0
% 2.61/1.00  fd_cond:                                3
% 2.61/1.00  fd_pseudo_cond:                         0
% 2.61/1.00  ac_symbols:                             0
% 2.61/1.00  
% 2.61/1.00  ------ Propositional Solver
% 2.61/1.00  
% 2.61/1.00  prop_solver_calls:                      28
% 2.61/1.00  prop_fast_solver_calls:                 1136
% 2.61/1.00  smt_solver_calls:                       0
% 2.61/1.00  smt_fast_solver_calls:                  0
% 2.61/1.00  prop_num_of_clauses:                    1198
% 2.61/1.00  prop_preprocess_simplified:             5437
% 2.61/1.00  prop_fo_subsumed:                       39
% 2.61/1.00  prop_solver_time:                       0.
% 2.61/1.00  smt_solver_time:                        0.
% 2.61/1.00  smt_fast_solver_time:                   0.
% 2.61/1.00  prop_fast_solver_time:                  0.
% 2.61/1.00  prop_unsat_core_time:                   0.
% 2.61/1.00  
% 2.61/1.00  ------ QBF
% 2.61/1.00  
% 2.61/1.00  qbf_q_res:                              0
% 2.61/1.00  qbf_num_tautologies:                    0
% 2.61/1.00  qbf_prep_cycles:                        0
% 2.61/1.00  
% 2.61/1.00  ------ BMC1
% 2.61/1.00  
% 2.61/1.00  bmc1_current_bound:                     -1
% 2.61/1.00  bmc1_last_solved_bound:                 -1
% 2.61/1.00  bmc1_unsat_core_size:                   -1
% 2.61/1.00  bmc1_unsat_core_parents_size:           -1
% 2.61/1.00  bmc1_merge_next_fun:                    0
% 2.61/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.61/1.00  
% 2.61/1.00  ------ Instantiation
% 2.61/1.00  
% 2.61/1.00  inst_num_of_clauses:                    421
% 2.61/1.00  inst_num_in_passive:                    162
% 2.61/1.00  inst_num_in_active:                     241
% 2.61/1.00  inst_num_in_unprocessed:                18
% 2.61/1.00  inst_num_of_loops:                      270
% 2.61/1.00  inst_num_of_learning_restarts:          0
% 2.61/1.00  inst_num_moves_active_passive:          26
% 2.61/1.00  inst_lit_activity:                      0
% 2.61/1.00  inst_lit_activity_moves:                0
% 2.61/1.00  inst_num_tautologies:                   0
% 2.61/1.00  inst_num_prop_implied:                  0
% 2.61/1.00  inst_num_existing_simplified:           0
% 2.61/1.00  inst_num_eq_res_simplified:             0
% 2.61/1.00  inst_num_child_elim:                    0
% 2.61/1.00  inst_num_of_dismatching_blockings:      58
% 2.61/1.00  inst_num_of_non_proper_insts:           323
% 2.61/1.00  inst_num_of_duplicates:                 0
% 2.61/1.00  inst_inst_num_from_inst_to_res:         0
% 2.61/1.00  inst_dismatching_checking_time:         0.
% 2.61/1.00  
% 2.61/1.00  ------ Resolution
% 2.61/1.00  
% 2.61/1.00  res_num_of_clauses:                     0
% 2.61/1.00  res_num_in_passive:                     0
% 2.61/1.00  res_num_in_active:                      0
% 2.61/1.00  res_num_of_loops:                       162
% 2.61/1.00  res_forward_subset_subsumed:            32
% 2.61/1.00  res_backward_subset_subsumed:           2
% 2.61/1.00  res_forward_subsumed:                   0
% 2.61/1.00  res_backward_subsumed:                  0
% 2.61/1.00  res_forward_subsumption_resolution:     0
% 2.61/1.00  res_backward_subsumption_resolution:    0
% 2.61/1.00  res_clause_to_clause_subsumption:       106
% 2.61/1.00  res_orphan_elimination:                 0
% 2.61/1.00  res_tautology_del:                      33
% 2.61/1.00  res_num_eq_res_simplified:              0
% 2.61/1.00  res_num_sel_changes:                    0
% 2.61/1.00  res_moves_from_active_to_pass:          0
% 2.61/1.00  
% 2.61/1.00  ------ Superposition
% 2.61/1.00  
% 2.61/1.00  sup_time_total:                         0.
% 2.61/1.00  sup_time_generating:                    0.
% 2.61/1.00  sup_time_sim_full:                      0.
% 2.61/1.00  sup_time_sim_immed:                     0.
% 2.61/1.00  
% 2.61/1.00  sup_num_of_clauses:                     58
% 2.61/1.00  sup_num_in_active:                      50
% 2.61/1.00  sup_num_in_passive:                     8
% 2.61/1.00  sup_num_of_loops:                       52
% 2.61/1.00  sup_fw_superposition:                   33
% 2.61/1.00  sup_bw_superposition:                   14
% 2.61/1.00  sup_immediate_simplified:               27
% 2.61/1.00  sup_given_eliminated:                   0
% 2.61/1.00  comparisons_done:                       0
% 2.61/1.00  comparisons_avoided:                    0
% 2.61/1.00  
% 2.61/1.00  ------ Simplifications
% 2.61/1.00  
% 2.61/1.00  
% 2.61/1.00  sim_fw_subset_subsumed:                 4
% 2.61/1.00  sim_bw_subset_subsumed:                 0
% 2.61/1.00  sim_fw_subsumed:                        3
% 2.61/1.00  sim_bw_subsumed:                        0
% 2.61/1.00  sim_fw_subsumption_res:                 1
% 2.61/1.00  sim_bw_subsumption_res:                 0
% 2.61/1.00  sim_tautology_del:                      0
% 2.61/1.00  sim_eq_tautology_del:                   11
% 2.61/1.00  sim_eq_res_simp:                        0
% 2.61/1.00  sim_fw_demodulated:                     5
% 2.61/1.00  sim_bw_demodulated:                     2
% 2.61/1.00  sim_light_normalised:                   23
% 2.61/1.00  sim_joinable_taut:                      0
% 2.61/1.00  sim_joinable_simp:                      0
% 2.61/1.00  sim_ac_normalised:                      0
% 2.61/1.00  sim_smt_subsumption:                    0
% 2.61/1.00  
%------------------------------------------------------------------------------
