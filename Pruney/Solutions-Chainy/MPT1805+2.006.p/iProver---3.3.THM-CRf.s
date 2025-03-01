%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:24:13 EST 2020

% Result     : Theorem 2.22s
% Output     : CNFRefutation 2.22s
% Verified   : 
% Statistics : Number of formulae       :  222 (4054 expanded)
%              Number of clauses        :  140 ( 913 expanded)
%              Number of leaves         :   16 (1082 expanded)
%              Depth                    :   29
%              Number of atoms          : 1226 (31390 expanded)
%              Number of equality atoms :  234 (1576 expanded)
%              Maximal formula depth    :   16 (   7 average)
%              Maximal clause size      :   18 (   4 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( ( l1_pre_topc(X2)
                & v2_pre_topc(X2)
                & v1_pre_topc(X2) )
             => ( k8_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                   => ( u1_struct_0(X1) = X3
                     => k6_tmap_1(X0,X3) = X2 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k8_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( k6_tmap_1(X0,X3) = X2
                    | u1_struct_0(X1) != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ l1_pre_topc(X2)
              | ~ v2_pre_topc(X2)
              | ~ v1_pre_topc(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k8_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( k6_tmap_1(X0,X3) = X2
                    | u1_struct_0(X1) != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ l1_pre_topc(X2)
              | ~ v2_pre_topc(X2)
              | ~ v1_pre_topc(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k8_tmap_1(X0,X1) = X2
                  | ? [X3] :
                      ( k6_tmap_1(X0,X3) != X2
                      & u1_struct_0(X1) = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X3] :
                      ( k6_tmap_1(X0,X3) = X2
                      | u1_struct_0(X1) != X3
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k8_tmap_1(X0,X1) != X2 ) )
              | ~ l1_pre_topc(X2)
              | ~ v2_pre_topc(X2)
              | ~ v1_pre_topc(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k8_tmap_1(X0,X1) = X2
                  | ? [X3] :
                      ( k6_tmap_1(X0,X3) != X2
                      & u1_struct_0(X1) = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( k6_tmap_1(X0,X4) = X2
                      | u1_struct_0(X1) != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k8_tmap_1(X0,X1) != X2 ) )
              | ~ l1_pre_topc(X2)
              | ~ v2_pre_topc(X2)
              | ~ v1_pre_topc(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f37])).

fof(f39,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( k6_tmap_1(X0,X3) != X2
          & u1_struct_0(X1) = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( k6_tmap_1(X0,sK0(X0,X1,X2)) != X2
        & u1_struct_0(X1) = sK0(X0,X1,X2)
        & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k8_tmap_1(X0,X1) = X2
                  | ( k6_tmap_1(X0,sK0(X0,X1,X2)) != X2
                    & u1_struct_0(X1) = sK0(X0,X1,X2)
                    & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( k6_tmap_1(X0,X4) = X2
                      | u1_struct_0(X1) != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k8_tmap_1(X0,X1) != X2 ) )
              | ~ l1_pre_topc(X2)
              | ~ v2_pre_topc(X2)
              | ~ v1_pre_topc(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f38,f39])).

fof(f52,plain,(
    ! [X4,X2,X0,X1] :
      ( k6_tmap_1(X0,X4) = X2
      | u1_struct_0(X1) != X4
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
      | k8_tmap_1(X0,X1) != X2
      | ~ l1_pre_topc(X2)
      | ~ v2_pre_topc(X2)
      | ~ v1_pre_topc(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( k6_tmap_1(X0,u1_struct_0(X1)) = X2
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | k8_tmap_1(X0,X1) != X2
      | ~ l1_pre_topc(X2)
      | ~ v2_pre_topc(X2)
      | ~ v1_pre_topc(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f52])).

fof(f84,plain,(
    ! [X0,X1] :
      ( k8_tmap_1(X0,X1) = k6_tmap_1(X0,u1_struct_0(X1))
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(k8_tmap_1(X0,X1))
      | ~ v2_pre_topc(k8_tmap_1(X0,X1))
      | ~ v1_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f83])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f75,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( m1_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( l1_pre_topc(k8_tmap_1(X0,X1))
        & v2_pre_topc(k8_tmap_1(X0,X1))
        & v1_pre_topc(k8_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f63,plain,(
    ! [X0,X1] :
      ( v1_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f64,plain,(
    ! [X0,X1] :
      ( v2_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f65,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f12,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ( m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
            & v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
            & v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
            & v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_pre_topc(X1,X0)
              & ~ v2_struct_0(X1) )
           => ( m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
              & v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
              & v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
              & v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
            | ~ v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
            | ~ v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
            | ~ v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
            | ~ v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
            | ~ v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
            | ~ v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f46,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
            | ~ v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
            | ~ v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
            | ~ v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) )
          & m1_pre_topc(X1,X0)
          & ~ v2_struct_0(X1) )
     => ( ( ~ m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(X0,sK3)))))
          | ~ v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),sK3,k8_tmap_1(X0,sK3))
          | ~ v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(X0,sK3)))
          | ~ v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3)) )
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1))
              | ~ v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)) )
            & m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(sK2,X1)))))
            | ~ v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),X1,k8_tmap_1(sK2,X1))
            | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(sK2,X1)))
            | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1)) )
          & m1_pre_topc(X1,sK2)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( ( ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
      | ~ v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3))
      | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)) )
    & m1_pre_topc(sK3,sK2)
    & ~ v2_struct_0(sK3)
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f35,f46,f45])).

fof(f80,plain,(
    m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f76,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f77,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f78,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))))
        & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
        & v1_funct_1(k7_tmap_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))))
        & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
        & v1_funct_1(k7_tmap_1(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))))
        & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
        & v1_funct_1(k7_tmap_1(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f62,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ( ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( u1_struct_0(X1) = X2
                 => u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) ) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ! [X2] :
                ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ! [X2] :
                ( u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2)
                | u1_struct_0(X1) != X2
                | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f73,plain,(
    ! [X0,X1] :
      ( u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f79,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
                & v1_funct_1(X2) )
             => ( k9_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                   => ( u1_struct_0(X1) = X3
                     => r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k9_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
                    | u1_struct_0(X1) != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k9_tmap_1(X0,X1) = X2
              <=> ! [X3] :
                    ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
                    | u1_struct_0(X1) != X3
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k9_tmap_1(X0,X1) = X2
                  | ? [X3] :
                      ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
                      & u1_struct_0(X1) = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X3] :
                      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
                      | u1_struct_0(X1) != X3
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k9_tmap_1(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k9_tmap_1(X0,X1) = X2
                  | ? [X3] :
                      ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
                      & u1_struct_0(X1) = X3
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4))
                      | u1_struct_0(X1) != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k9_tmap_1(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f41])).

fof(f43,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))
          & u1_struct_0(X1) = X3
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,sK1(X0,X1,X2))),X2,k7_tmap_1(X0,sK1(X0,X1,X2)))
        & u1_struct_0(X1) = sK1(X0,X1,X2)
        & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k9_tmap_1(X0,X1) = X2
                  | ( ~ r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,sK1(X0,X1,X2))),X2,k7_tmap_1(X0,sK1(X0,X1,X2)))
                    & u1_struct_0(X1) = sK1(X0,X1,X2)
                    & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))) ) )
                & ( ! [X4] :
                      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4))
                      | u1_struct_0(X1) != X4
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) )
                  | k9_tmap_1(X0,X1) != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
              | ~ v1_funct_1(X2) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f42,f43])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( k9_tmap_1(X0,X1) = X2
      | u1_struct_0(X1) = sK1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_2(X5,X2,X3)
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X4,X0,X1)
        & v1_funct_1(X4)
        & ~ v1_xboole_0(X3)
        & ~ v1_xboole_0(X1) )
     => ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
      <=> X4 = X5 )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f17])).

fof(f36,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( ( r1_funct_2(X0,X1,X2,X3,X4,X5)
          | X4 != X5 )
        & ( X4 = X5
          | ~ r1_funct_2(X0,X1,X2,X3,X4,X5) ) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f50,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X4 = X5
      | ~ r1_funct_2(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_2(X5,X2,X3)
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X4,X0,X1)
      | ~ v1_funct_1(X4)
      | v1_xboole_0(X3)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_pre_topc(X1,X0)
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
        & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
        & v1_funct_1(k9_tmap_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
        & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
        & v1_funct_1(k9_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
        & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
        & v1_funct_1(k9_tmap_1(X0,X1)) )
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f68,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f66,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k9_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f56,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4))
      | u1_struct_0(X1) != X4
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
      | k9_tmap_1(X0,X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f85,plain,(
    ! [X2,X0,X1] :
      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),X2,k7_tmap_1(X0,u1_struct_0(X1)))
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | k9_tmap_1(X0,X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f56])).

fof(f86,plain,(
    ! [X0,X1] :
      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
      | ~ v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
      | ~ v1_funct_1(k9_tmap_1(X0,X1))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f85])).

fof(f67,plain,(
    ! [X0,X1] :
      ( v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f48,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f15])).

fof(f49,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f60,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k7_tmap_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f61,plain,(
    ! [X0,X1] :
      ( v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ( u1_struct_0(X2) = X1
               => ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))))
                  & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1))
                  & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))
                  & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2)) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))))
                & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1))
                & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))
                & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2)) )
              | u1_struct_0(X2) != X1
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))))
                & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1))
                & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))
                & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2)) )
              | u1_struct_0(X2) != X1
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1))
      | u1_struct_0(X2) != X1
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f88,plain,(
    ! [X2,X0] :
      ( v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),X2,k6_tmap_1(X0,u1_struct_0(X2)))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f71])).

fof(f81,plain,
    ( ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3))
    | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)) ),
    inference(cnf_transformation,[],[f47])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2))
      | u1_struct_0(X2) != X1
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f90,plain,(
    ! [X2,X0] :
      ( v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f69])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))))
      | u1_struct_0(X2) != X1
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f87,plain,(
    ! [X2,X0] :
      ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X2))))))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f72])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1)))
      | u1_struct_0(X2) != X1
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f89,plain,(
    ! [X2,X0] :
      ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X2))))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f70])).

cnf(c_7,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v1_pre_topc(k8_tmap_1(X1,X0))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(k8_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(k8_tmap_1(X1,X0))
    | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_27,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_17,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v1_pre_topc(k8_tmap_1(X1,X0))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_16,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v2_pre_topc(k8_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_15,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(k8_tmap_1(X1,X0)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_243,plain,
    ( ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_7,c_27,c_17,c_16,c_15])).

cnf(c_244,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
    inference(renaming,[status(thm)],[c_243])).

cnf(c_29,negated_conjecture,
    ( m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_882,plain,
    ( ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | k6_tmap_1(X0,u1_struct_0(X1)) = k8_tmap_1(X0,X1)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_244,c_29])).

cnf(c_883,plain,
    ( ~ v2_pre_topc(sK2)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_882])).

cnf(c_33,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_32,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_31,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_885,plain,
    ( k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_883,c_33,c_32,c_31])).

cnf(c_3040,plain,
    ( k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_885])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k7_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X1,X0)))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1286,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k7_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X1,X0)))))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_32])).

cnf(c_1287,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k7_tmap_1(sK2,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_1286])).

cnf(c_1291,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k7_tmap_1(sK2,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0))))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1287,c_33,c_31])).

cnf(c_3026,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k7_tmap_1(sK2,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))))) ),
    inference(subtyping,[status(esa)],[c_1291])).

cnf(c_3502,plain,
    ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(k7_tmap_1(sK2,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3026])).

cnf(c_4100,plain,
    ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) = iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3040,c_3502])).

cnf(c_26,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_935,plain,
    ( ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | u1_struct_0(k8_tmap_1(X0,X1)) = u1_struct_0(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_29])).

cnf(c_936,plain,
    ( ~ v2_pre_topc(sK2)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_935])).

cnf(c_30,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_938,plain,
    ( u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_936,c_33,c_32,c_31,c_30])).

cnf(c_3034,plain,
    ( u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
    inference(subtyping,[status(esa)],[c_938])).

cnf(c_4101,plain,
    ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) = iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4100,c_3034])).

cnf(c_36,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_920,plain,
    ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | sK3 != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_29])).

cnf(c_921,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_920])).

cnf(c_922,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_921])).

cnf(c_4104,plain,
    ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4101,c_36,c_922])).

cnf(c_9,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))))
    | ~ v2_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | sK1(X1,X2,X0) = u1_struct_0(X2)
    | k9_tmap_1(X1,X2) = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1110,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))))
    | ~ v2_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | sK1(X1,X2,X0) = u1_struct_0(X2)
    | k9_tmap_1(X1,X2) = X0
    | sK3 != X2
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_29])).

cnf(c_1111,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v2_pre_topc(sK2)
    | ~ v1_funct_1(X0)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0 ),
    inference(unflattening,[status(thm)],[c_1110])).

cnf(c_1115,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ v1_funct_1(X0)
    | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1111,c_33,c_32,c_31])).

cnf(c_1116,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(X0)
    | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0 ),
    inference(renaming,[status(thm)],[c_1115])).

cnf(c_3030,plain,
    ( ~ v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(X0_54)
    | sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0_54 ),
    inference(subtyping,[status(esa)],[c_1116])).

cnf(c_3498,plain,
    ( sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0_54
    | v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))) != iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) != iProver_top
    | v1_funct_1(X0_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3030])).

cnf(c_3575,plain,
    ( sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
    | k9_tmap_1(sK2,sK3) = X0_54
    | v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(X0_54) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3498,c_3034])).

cnf(c_4300,plain,
    ( sK1(sK2,sK3,k7_tmap_1(sK2,u1_struct_0(sK3))) = u1_struct_0(sK3)
    | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
    | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4104,c_3575])).

cnf(c_3,plain,
    ( ~ r1_funct_2(X0,X1,X2,X3,X4,X5)
    | ~ v1_funct_2(X5,X2,X3)
    | ~ v1_funct_2(X4,X0,X1)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X5)
    | ~ v1_funct_1(X4)
    | v1_xboole_0(X1)
    | v1_xboole_0(X3)
    | X4 = X5 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_18,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(k9_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X0)))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_956,plain,
    ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_29])).

cnf(c_957,plain,
    ( m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v2_pre_topc(sK2)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_956])).

cnf(c_959,plain,
    ( m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_957,c_33,c_32,c_31])).

cnf(c_20,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v1_funct_1(k9_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_943,plain,
    ( ~ v2_pre_topc(X0)
    | v1_funct_1(k9_tmap_1(X0,X1))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_29])).

cnf(c_944,plain,
    ( ~ v2_pre_topc(sK2)
    | v1_funct_1(k9_tmap_1(sK2,sK3))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_943])).

cnf(c_946,plain,
    ( v1_funct_1(k9_tmap_1(sK2,sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_944,c_33,c_32,c_31])).

cnf(c_923,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_921,c_31])).

cnf(c_11,plain,
    ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
    | ~ v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k9_tmap_1(X0,X1))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_19,plain,
    ( v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
    | ~ m1_pre_topc(X1,X0)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_233,plain,
    ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k9_tmap_1(X0,X1))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_11,c_19])).

cnf(c_810,plain,
    ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
    | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k9_tmap_1(X0,X1))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_233,c_29])).

cnf(c_811,plain,
    ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_pre_topc(sK2)
    | ~ v1_funct_1(k9_tmap_1(sK2,sK3))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_810])).

cnf(c_813,plain,
    ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_811,c_33,c_32,c_31])).

cnf(c_814,plain,
    ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
    inference(renaming,[status(thm)],[c_813])).

cnf(c_930,plain,
    ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_923,c_814])).

cnf(c_953,plain,
    ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_946,c_930])).

cnf(c_966,plain,
    ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3))) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_959,c_953])).

cnf(c_1552,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X5)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | v1_xboole_0(X2)
    | v1_xboole_0(X5)
    | X3 = X0
    | k7_tmap_1(sK2,u1_struct_0(sK3)) != X3
    | k9_tmap_1(sK2,sK3) != X0
    | u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))) != X5
    | u1_struct_0(k8_tmap_1(sK2,sK3)) != X2
    | u1_struct_0(sK2) != X4
    | u1_struct_0(sK2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_966])).

cnf(c_1553,plain,
    ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ v1_funct_2(k9_tmap_1(sK2,sK3),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
    | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ v1_funct_1(k9_tmap_1(sK2,sK3))
    | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
    | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_1552])).

cnf(c_844,plain,
    ( v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_29])).

cnf(c_845,plain,
    ( v1_funct_2(k9_tmap_1(sK2,sK3),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ v2_pre_topc(sK2)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_844])).

cnf(c_1555,plain,
    ( ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
    | ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
    | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
    | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1553,c_33,c_32,c_31,c_845,c_944,c_957])).

cnf(c_1556,plain,
    ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
    | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
    | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
    | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
    inference(renaming,[status(thm)],[c_1555])).

cnf(c_3020,plain,
    ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
    | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
    | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
    | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_1556])).

cnf(c_3508,plain,
    ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
    | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) != iProver_top
    | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) != iProver_top
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top
    | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) = iProver_top
    | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3020])).

cnf(c_3604,plain,
    ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
    | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3508,c_3034,c_3040])).

cnf(c_0,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_417,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_0,c_1])).

cnf(c_1367,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_417,c_31])).

cnf(c_1368,plain,
    ( v2_struct_0(sK2)
    | ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_1367])).

cnf(c_1370,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1368,c_33])).

cnf(c_3023,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_1370])).

cnf(c_3505,plain,
    ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3023])).

cnf(c_3610,plain,
    ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
    | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3604,c_3505])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | v1_funct_1(k7_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1268,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v1_funct_1(k7_tmap_1(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_32])).

cnf(c_1269,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_funct_1(k7_tmap_1(sK2,X0))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_1268])).

cnf(c_1273,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_funct_1(k7_tmap_1(sK2,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1269,c_33,c_31])).

cnf(c_3027,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_funct_1(k7_tmap_1(sK2,X0_54)) ),
    inference(subtyping,[status(esa)],[c_1273])).

cnf(c_3698,plain,
    ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) ),
    inference(instantiation,[status(thm)],[c_3027])).

cnf(c_3699,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3698])).

cnf(c_13,plain,
    ( v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1229,plain,
    ( v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_32])).

cnf(c_1230,plain,
    ( v1_funct_2(k7_tmap_1(sK2,X0),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_1229])).

cnf(c_1234,plain,
    ( v1_funct_2(k7_tmap_1(sK2,X0),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1230,c_33,c_31])).

cnf(c_3029,plain,
    ( v1_funct_2(k7_tmap_1(sK2,X0_54),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54)))
    | ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_1234])).

cnf(c_3499,plain,
    ( v1_funct_2(k7_tmap_1(sK2,X0_54),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))) = iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3029])).

cnf(c_3796,plain,
    ( v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))) = iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3040,c_3499])).

cnf(c_3797,plain,
    ( v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) = iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3796,c_3034])).

cnf(c_4419,plain,
    ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4300,c_36,c_922,c_3610,c_3699,c_3797,c_4101])).

cnf(c_22,plain,
    ( v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),X1,k6_tmap_1(X0,u1_struct_0(X1)))
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_28,negated_conjecture,
    ( ~ v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3))
    | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_435,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X1,u1_struct_0(X0)) != k8_tmap_1(sK2,sK3)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_28])).

cnf(c_436,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_pre_topc(sK3,X0)
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(X0)
    | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_435])).

cnf(c_440,plain,
    ( v2_struct_0(X0)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | ~ v2_pre_topc(X0)
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_pre_topc(sK3,X0)
    | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ l1_pre_topc(X0)
    | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_436,c_30])).

cnf(c_441,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_pre_topc(sK3,X0)
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
    inference(renaming,[status(thm)],[c_440])).

cnf(c_464,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_pre_topc(sK3,X0)
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_441,c_27])).

cnf(c_1137,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v2_pre_topc(X0)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3)
    | sK3 != sK3
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_29,c_464])).

cnf(c_1138,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v2_pre_topc(sK2)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | k6_tmap_1(sK2,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_1137])).

cnf(c_1140,plain,
    ( k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1138,c_33,c_32,c_31,c_883])).

cnf(c_1141,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
    | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
    inference(renaming,[status(thm)],[c_1140])).

cnf(c_24,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_208,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_24,c_27])).

cnf(c_209,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_208])).

cnf(c_901,plain,
    ( ~ v2_pre_topc(X0)
    | v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_209,c_29])).

cnf(c_902,plain,
    ( ~ v2_pre_topc(sK2)
    | v1_funct_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3))
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_901])).

cnf(c_904,plain,
    ( v1_funct_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_902,c_33,c_32,c_31,c_30])).

cnf(c_1840,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
    inference(resolution_lifted,[status(thm)],[c_1141,c_904])).

cnf(c_3019,plain,
    ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
    | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
    | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
    inference(subtyping,[status(esa)],[c_1840])).

cnf(c_3509,plain,
    ( k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))) != iProver_top
    | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3019])).

cnf(c_3597,plain,
    ( k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3509,c_3034,c_3040])).

cnf(c_4423,plain,
    ( k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
    | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4419,c_3597])).

cnf(c_4435,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_4423])).

cnf(c_21,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_217,plain,
    ( m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
    | ~ m1_pre_topc(X0,X1)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_21,c_27])).

cnf(c_218,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_217])).

cnf(c_890,plain,
    ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_218,c_29])).

cnf(c_891,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
    | ~ v2_pre_topc(sK2)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_890])).

cnf(c_893,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_891,c_33,c_32,c_31,c_30])).

cnf(c_3039,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) ),
    inference(subtyping,[status(esa)],[c_893])).

cnf(c_3491,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3039])).

cnf(c_3547,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3491,c_3034,c_3040])).

cnf(c_4426,plain,
    ( m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4419,c_3547])).

cnf(c_23,plain,
    ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))
    | ~ m1_pre_topc(X1,X0)
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_830,plain,
    ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))
    | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X0)
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_29])).

cnf(c_831,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v2_pre_topc(sK2)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_830])).

cnf(c_833,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
    | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_831,c_33,c_32,c_31,c_30])).

cnf(c_931,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_923,c_833])).

cnf(c_3035,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) ),
    inference(subtyping,[status(esa)],[c_931])).

cnf(c_3494,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3035])).

cnf(c_3540,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3494,c_3034,c_3040])).

cnf(c_4427,plain,
    ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4419,c_3540])).

cnf(c_4438,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4435,c_4426,c_4427])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:22:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.22/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.22/1.00  
% 2.22/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.22/1.00  
% 2.22/1.00  ------  iProver source info
% 2.22/1.00  
% 2.22/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.22/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.22/1.00  git: non_committed_changes: false
% 2.22/1.00  git: last_make_outside_of_git: false
% 2.22/1.00  
% 2.22/1.00  ------ 
% 2.22/1.00  
% 2.22/1.00  ------ Input Options
% 2.22/1.00  
% 2.22/1.00  --out_options                           all
% 2.22/1.00  --tptp_safe_out                         true
% 2.22/1.00  --problem_path                          ""
% 2.22/1.00  --include_path                          ""
% 2.22/1.00  --clausifier                            res/vclausify_rel
% 2.22/1.00  --clausifier_options                    --mode clausify
% 2.22/1.00  --stdin                                 false
% 2.22/1.00  --stats_out                             all
% 2.22/1.00  
% 2.22/1.00  ------ General Options
% 2.22/1.00  
% 2.22/1.00  --fof                                   false
% 2.22/1.00  --time_out_real                         305.
% 2.22/1.00  --time_out_virtual                      -1.
% 2.22/1.00  --symbol_type_check                     false
% 2.22/1.00  --clausify_out                          false
% 2.22/1.00  --sig_cnt_out                           false
% 2.22/1.00  --trig_cnt_out                          false
% 2.22/1.00  --trig_cnt_out_tolerance                1.
% 2.22/1.00  --trig_cnt_out_sk_spl                   false
% 2.22/1.00  --abstr_cl_out                          false
% 2.22/1.00  
% 2.22/1.00  ------ Global Options
% 2.22/1.00  
% 2.22/1.00  --schedule                              default
% 2.22/1.00  --add_important_lit                     false
% 2.22/1.00  --prop_solver_per_cl                    1000
% 2.22/1.00  --min_unsat_core                        false
% 2.22/1.00  --soft_assumptions                      false
% 2.22/1.00  --soft_lemma_size                       3
% 2.22/1.00  --prop_impl_unit_size                   0
% 2.22/1.00  --prop_impl_unit                        []
% 2.22/1.00  --share_sel_clauses                     true
% 2.22/1.00  --reset_solvers                         false
% 2.22/1.00  --bc_imp_inh                            [conj_cone]
% 2.22/1.00  --conj_cone_tolerance                   3.
% 2.22/1.00  --extra_neg_conj                        none
% 2.22/1.00  --large_theory_mode                     true
% 2.22/1.00  --prolific_symb_bound                   200
% 2.22/1.00  --lt_threshold                          2000
% 2.22/1.00  --clause_weak_htbl                      true
% 2.22/1.00  --gc_record_bc_elim                     false
% 2.22/1.00  
% 2.22/1.00  ------ Preprocessing Options
% 2.22/1.00  
% 2.22/1.00  --preprocessing_flag                    true
% 2.22/1.00  --time_out_prep_mult                    0.1
% 2.22/1.00  --splitting_mode                        input
% 2.22/1.00  --splitting_grd                         true
% 2.22/1.00  --splitting_cvd                         false
% 2.22/1.00  --splitting_cvd_svl                     false
% 2.22/1.00  --splitting_nvd                         32
% 2.22/1.00  --sub_typing                            true
% 2.22/1.00  --prep_gs_sim                           true
% 2.22/1.00  --prep_unflatten                        true
% 2.22/1.00  --prep_res_sim                          true
% 2.22/1.00  --prep_upred                            true
% 2.22/1.00  --prep_sem_filter                       exhaustive
% 2.22/1.00  --prep_sem_filter_out                   false
% 2.22/1.00  --pred_elim                             true
% 2.22/1.00  --res_sim_input                         true
% 2.22/1.00  --eq_ax_congr_red                       true
% 2.22/1.00  --pure_diseq_elim                       true
% 2.22/1.00  --brand_transform                       false
% 2.22/1.00  --non_eq_to_eq                          false
% 2.22/1.00  --prep_def_merge                        true
% 2.22/1.00  --prep_def_merge_prop_impl              false
% 2.22/1.00  --prep_def_merge_mbd                    true
% 2.22/1.00  --prep_def_merge_tr_red                 false
% 2.22/1.00  --prep_def_merge_tr_cl                  false
% 2.22/1.00  --smt_preprocessing                     true
% 2.22/1.00  --smt_ac_axioms                         fast
% 2.22/1.00  --preprocessed_out                      false
% 2.22/1.00  --preprocessed_stats                    false
% 2.22/1.00  
% 2.22/1.00  ------ Abstraction refinement Options
% 2.22/1.00  
% 2.22/1.00  --abstr_ref                             []
% 2.22/1.00  --abstr_ref_prep                        false
% 2.22/1.00  --abstr_ref_until_sat                   false
% 2.22/1.00  --abstr_ref_sig_restrict                funpre
% 2.22/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.22/1.00  --abstr_ref_under                       []
% 2.22/1.00  
% 2.22/1.00  ------ SAT Options
% 2.22/1.00  
% 2.22/1.00  --sat_mode                              false
% 2.22/1.00  --sat_fm_restart_options                ""
% 2.22/1.00  --sat_gr_def                            false
% 2.22/1.00  --sat_epr_types                         true
% 2.22/1.00  --sat_non_cyclic_types                  false
% 2.22/1.00  --sat_finite_models                     false
% 2.22/1.00  --sat_fm_lemmas                         false
% 2.22/1.00  --sat_fm_prep                           false
% 2.22/1.00  --sat_fm_uc_incr                        true
% 2.22/1.00  --sat_out_model                         small
% 2.22/1.00  --sat_out_clauses                       false
% 2.22/1.00  
% 2.22/1.00  ------ QBF Options
% 2.22/1.00  
% 2.22/1.00  --qbf_mode                              false
% 2.22/1.00  --qbf_elim_univ                         false
% 2.22/1.00  --qbf_dom_inst                          none
% 2.22/1.00  --qbf_dom_pre_inst                      false
% 2.22/1.00  --qbf_sk_in                             false
% 2.22/1.00  --qbf_pred_elim                         true
% 2.22/1.00  --qbf_split                             512
% 2.22/1.00  
% 2.22/1.00  ------ BMC1 Options
% 2.22/1.00  
% 2.22/1.00  --bmc1_incremental                      false
% 2.22/1.00  --bmc1_axioms                           reachable_all
% 2.22/1.00  --bmc1_min_bound                        0
% 2.22/1.00  --bmc1_max_bound                        -1
% 2.22/1.00  --bmc1_max_bound_default                -1
% 2.22/1.00  --bmc1_symbol_reachability              true
% 2.22/1.00  --bmc1_property_lemmas                  false
% 2.22/1.00  --bmc1_k_induction                      false
% 2.22/1.00  --bmc1_non_equiv_states                 false
% 2.22/1.00  --bmc1_deadlock                         false
% 2.22/1.00  --bmc1_ucm                              false
% 2.22/1.00  --bmc1_add_unsat_core                   none
% 2.22/1.00  --bmc1_unsat_core_children              false
% 2.22/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.22/1.00  --bmc1_out_stat                         full
% 2.22/1.00  --bmc1_ground_init                      false
% 2.22/1.00  --bmc1_pre_inst_next_state              false
% 2.22/1.00  --bmc1_pre_inst_state                   false
% 2.22/1.00  --bmc1_pre_inst_reach_state             false
% 2.22/1.00  --bmc1_out_unsat_core                   false
% 2.22/1.00  --bmc1_aig_witness_out                  false
% 2.22/1.00  --bmc1_verbose                          false
% 2.22/1.00  --bmc1_dump_clauses_tptp                false
% 2.22/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.22/1.00  --bmc1_dump_file                        -
% 2.22/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.22/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.22/1.00  --bmc1_ucm_extend_mode                  1
% 2.22/1.00  --bmc1_ucm_init_mode                    2
% 2.22/1.00  --bmc1_ucm_cone_mode                    none
% 2.22/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.22/1.00  --bmc1_ucm_relax_model                  4
% 2.22/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.22/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.22/1.00  --bmc1_ucm_layered_model                none
% 2.22/1.00  --bmc1_ucm_max_lemma_size               10
% 2.22/1.00  
% 2.22/1.00  ------ AIG Options
% 2.22/1.00  
% 2.22/1.00  --aig_mode                              false
% 2.22/1.00  
% 2.22/1.00  ------ Instantiation Options
% 2.22/1.00  
% 2.22/1.00  --instantiation_flag                    true
% 2.22/1.00  --inst_sos_flag                         false
% 2.22/1.00  --inst_sos_phase                        true
% 2.22/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.22/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.22/1.00  --inst_lit_sel_side                     num_symb
% 2.22/1.00  --inst_solver_per_active                1400
% 2.22/1.00  --inst_solver_calls_frac                1.
% 2.22/1.00  --inst_passive_queue_type               priority_queues
% 2.22/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.22/1.00  --inst_passive_queues_freq              [25;2]
% 2.22/1.00  --inst_dismatching                      true
% 2.22/1.00  --inst_eager_unprocessed_to_passive     true
% 2.22/1.00  --inst_prop_sim_given                   true
% 2.22/1.00  --inst_prop_sim_new                     false
% 2.22/1.00  --inst_subs_new                         false
% 2.22/1.00  --inst_eq_res_simp                      false
% 2.22/1.00  --inst_subs_given                       false
% 2.22/1.00  --inst_orphan_elimination               true
% 2.22/1.00  --inst_learning_loop_flag               true
% 2.22/1.00  --inst_learning_start                   3000
% 2.22/1.00  --inst_learning_factor                  2
% 2.22/1.00  --inst_start_prop_sim_after_learn       3
% 2.22/1.00  --inst_sel_renew                        solver
% 2.22/1.00  --inst_lit_activity_flag                true
% 2.22/1.00  --inst_restr_to_given                   false
% 2.22/1.00  --inst_activity_threshold               500
% 2.22/1.00  --inst_out_proof                        true
% 2.22/1.00  
% 2.22/1.00  ------ Resolution Options
% 2.22/1.00  
% 2.22/1.00  --resolution_flag                       true
% 2.22/1.00  --res_lit_sel                           adaptive
% 2.22/1.00  --res_lit_sel_side                      none
% 2.22/1.00  --res_ordering                          kbo
% 2.22/1.00  --res_to_prop_solver                    active
% 2.22/1.00  --res_prop_simpl_new                    false
% 2.22/1.00  --res_prop_simpl_given                  true
% 2.22/1.00  --res_passive_queue_type                priority_queues
% 2.22/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.22/1.00  --res_passive_queues_freq               [15;5]
% 2.22/1.00  --res_forward_subs                      full
% 2.22/1.00  --res_backward_subs                     full
% 2.22/1.00  --res_forward_subs_resolution           true
% 2.22/1.00  --res_backward_subs_resolution          true
% 2.22/1.00  --res_orphan_elimination                true
% 2.22/1.00  --res_time_limit                        2.
% 2.22/1.00  --res_out_proof                         true
% 2.22/1.00  
% 2.22/1.00  ------ Superposition Options
% 2.22/1.00  
% 2.22/1.00  --superposition_flag                    true
% 2.22/1.00  --sup_passive_queue_type                priority_queues
% 2.22/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.22/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.22/1.00  --demod_completeness_check              fast
% 2.22/1.00  --demod_use_ground                      true
% 2.22/1.00  --sup_to_prop_solver                    passive
% 2.22/1.00  --sup_prop_simpl_new                    true
% 2.22/1.00  --sup_prop_simpl_given                  true
% 2.22/1.00  --sup_fun_splitting                     false
% 2.22/1.00  --sup_smt_interval                      50000
% 2.22/1.00  
% 2.22/1.00  ------ Superposition Simplification Setup
% 2.22/1.00  
% 2.22/1.00  --sup_indices_passive                   []
% 2.22/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.22/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.00  --sup_full_bw                           [BwDemod]
% 2.22/1.00  --sup_immed_triv                        [TrivRules]
% 2.22/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.22/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.00  --sup_immed_bw_main                     []
% 2.22/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.22/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.22/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.22/1.00  
% 2.22/1.00  ------ Combination Options
% 2.22/1.00  
% 2.22/1.00  --comb_res_mult                         3
% 2.22/1.00  --comb_sup_mult                         2
% 2.22/1.00  --comb_inst_mult                        10
% 2.22/1.00  
% 2.22/1.00  ------ Debug Options
% 2.22/1.00  
% 2.22/1.00  --dbg_backtrace                         false
% 2.22/1.00  --dbg_dump_prop_clauses                 false
% 2.22/1.00  --dbg_dump_prop_clauses_file            -
% 2.22/1.00  --dbg_out_stat                          false
% 2.22/1.00  ------ Parsing...
% 2.22/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.22/1.00  
% 2.22/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 2.22/1.00  
% 2.22/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.22/1.00  
% 2.22/1.00  ------ Preprocessing... sf_s  rm: 6 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.22/1.00  ------ Proving...
% 2.22/1.00  ------ Problem Properties 
% 2.22/1.00  
% 2.22/1.00  
% 2.22/1.00  clauses                                 25
% 2.22/1.00  conjectures                             2
% 2.22/1.00  EPR                                     2
% 2.22/1.00  Horn                                    18
% 2.22/1.00  unary                                   13
% 2.22/1.00  binary                                  4
% 2.22/1.00  lits                                    58
% 2.22/1.00  lits eq                                 10
% 2.22/1.00  fd_pure                                 0
% 2.22/1.00  fd_pseudo                               0
% 2.22/1.00  fd_cond                                 3
% 2.22/1.00  fd_pseudo_cond                          0
% 2.22/1.00  AC symbols                              0
% 2.22/1.00  
% 2.22/1.00  ------ Schedule dynamic 5 is on 
% 2.22/1.00  
% 2.22/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.22/1.00  
% 2.22/1.00  
% 2.22/1.00  ------ 
% 2.22/1.00  Current options:
% 2.22/1.00  ------ 
% 2.22/1.00  
% 2.22/1.00  ------ Input Options
% 2.22/1.00  
% 2.22/1.00  --out_options                           all
% 2.22/1.00  --tptp_safe_out                         true
% 2.22/1.00  --problem_path                          ""
% 2.22/1.00  --include_path                          ""
% 2.22/1.00  --clausifier                            res/vclausify_rel
% 2.22/1.00  --clausifier_options                    --mode clausify
% 2.22/1.00  --stdin                                 false
% 2.22/1.00  --stats_out                             all
% 2.22/1.00  
% 2.22/1.00  ------ General Options
% 2.22/1.00  
% 2.22/1.00  --fof                                   false
% 2.22/1.00  --time_out_real                         305.
% 2.22/1.00  --time_out_virtual                      -1.
% 2.22/1.00  --symbol_type_check                     false
% 2.22/1.00  --clausify_out                          false
% 2.22/1.00  --sig_cnt_out                           false
% 2.22/1.00  --trig_cnt_out                          false
% 2.22/1.00  --trig_cnt_out_tolerance                1.
% 2.22/1.00  --trig_cnt_out_sk_spl                   false
% 2.22/1.00  --abstr_cl_out                          false
% 2.22/1.00  
% 2.22/1.00  ------ Global Options
% 2.22/1.00  
% 2.22/1.00  --schedule                              default
% 2.22/1.00  --add_important_lit                     false
% 2.22/1.00  --prop_solver_per_cl                    1000
% 2.22/1.00  --min_unsat_core                        false
% 2.22/1.00  --soft_assumptions                      false
% 2.22/1.00  --soft_lemma_size                       3
% 2.22/1.00  --prop_impl_unit_size                   0
% 2.22/1.00  --prop_impl_unit                        []
% 2.22/1.00  --share_sel_clauses                     true
% 2.22/1.00  --reset_solvers                         false
% 2.22/1.00  --bc_imp_inh                            [conj_cone]
% 2.22/1.00  --conj_cone_tolerance                   3.
% 2.22/1.00  --extra_neg_conj                        none
% 2.22/1.00  --large_theory_mode                     true
% 2.22/1.00  --prolific_symb_bound                   200
% 2.22/1.00  --lt_threshold                          2000
% 2.22/1.00  --clause_weak_htbl                      true
% 2.22/1.00  --gc_record_bc_elim                     false
% 2.22/1.00  
% 2.22/1.00  ------ Preprocessing Options
% 2.22/1.00  
% 2.22/1.00  --preprocessing_flag                    true
% 2.22/1.00  --time_out_prep_mult                    0.1
% 2.22/1.00  --splitting_mode                        input
% 2.22/1.00  --splitting_grd                         true
% 2.22/1.00  --splitting_cvd                         false
% 2.22/1.00  --splitting_cvd_svl                     false
% 2.22/1.00  --splitting_nvd                         32
% 2.22/1.00  --sub_typing                            true
% 2.22/1.00  --prep_gs_sim                           true
% 2.22/1.00  --prep_unflatten                        true
% 2.22/1.00  --prep_res_sim                          true
% 2.22/1.00  --prep_upred                            true
% 2.22/1.00  --prep_sem_filter                       exhaustive
% 2.22/1.00  --prep_sem_filter_out                   false
% 2.22/1.00  --pred_elim                             true
% 2.22/1.00  --res_sim_input                         true
% 2.22/1.00  --eq_ax_congr_red                       true
% 2.22/1.00  --pure_diseq_elim                       true
% 2.22/1.00  --brand_transform                       false
% 2.22/1.00  --non_eq_to_eq                          false
% 2.22/1.00  --prep_def_merge                        true
% 2.22/1.00  --prep_def_merge_prop_impl              false
% 2.22/1.00  --prep_def_merge_mbd                    true
% 2.22/1.00  --prep_def_merge_tr_red                 false
% 2.22/1.00  --prep_def_merge_tr_cl                  false
% 2.22/1.00  --smt_preprocessing                     true
% 2.22/1.00  --smt_ac_axioms                         fast
% 2.22/1.00  --preprocessed_out                      false
% 2.22/1.00  --preprocessed_stats                    false
% 2.22/1.00  
% 2.22/1.00  ------ Abstraction refinement Options
% 2.22/1.00  
% 2.22/1.00  --abstr_ref                             []
% 2.22/1.00  --abstr_ref_prep                        false
% 2.22/1.00  --abstr_ref_until_sat                   false
% 2.22/1.00  --abstr_ref_sig_restrict                funpre
% 2.22/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.22/1.00  --abstr_ref_under                       []
% 2.22/1.00  
% 2.22/1.00  ------ SAT Options
% 2.22/1.00  
% 2.22/1.00  --sat_mode                              false
% 2.22/1.00  --sat_fm_restart_options                ""
% 2.22/1.00  --sat_gr_def                            false
% 2.22/1.00  --sat_epr_types                         true
% 2.22/1.00  --sat_non_cyclic_types                  false
% 2.22/1.00  --sat_finite_models                     false
% 2.22/1.00  --sat_fm_lemmas                         false
% 2.22/1.00  --sat_fm_prep                           false
% 2.22/1.00  --sat_fm_uc_incr                        true
% 2.22/1.00  --sat_out_model                         small
% 2.22/1.00  --sat_out_clauses                       false
% 2.22/1.00  
% 2.22/1.00  ------ QBF Options
% 2.22/1.00  
% 2.22/1.00  --qbf_mode                              false
% 2.22/1.00  --qbf_elim_univ                         false
% 2.22/1.00  --qbf_dom_inst                          none
% 2.22/1.00  --qbf_dom_pre_inst                      false
% 2.22/1.00  --qbf_sk_in                             false
% 2.22/1.00  --qbf_pred_elim                         true
% 2.22/1.00  --qbf_split                             512
% 2.22/1.00  
% 2.22/1.00  ------ BMC1 Options
% 2.22/1.00  
% 2.22/1.00  --bmc1_incremental                      false
% 2.22/1.00  --bmc1_axioms                           reachable_all
% 2.22/1.00  --bmc1_min_bound                        0
% 2.22/1.00  --bmc1_max_bound                        -1
% 2.22/1.00  --bmc1_max_bound_default                -1
% 2.22/1.00  --bmc1_symbol_reachability              true
% 2.22/1.00  --bmc1_property_lemmas                  false
% 2.22/1.00  --bmc1_k_induction                      false
% 2.22/1.00  --bmc1_non_equiv_states                 false
% 2.22/1.00  --bmc1_deadlock                         false
% 2.22/1.00  --bmc1_ucm                              false
% 2.22/1.00  --bmc1_add_unsat_core                   none
% 2.22/1.00  --bmc1_unsat_core_children              false
% 2.22/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.22/1.00  --bmc1_out_stat                         full
% 2.22/1.00  --bmc1_ground_init                      false
% 2.22/1.00  --bmc1_pre_inst_next_state              false
% 2.22/1.00  --bmc1_pre_inst_state                   false
% 2.22/1.00  --bmc1_pre_inst_reach_state             false
% 2.22/1.00  --bmc1_out_unsat_core                   false
% 2.22/1.00  --bmc1_aig_witness_out                  false
% 2.22/1.00  --bmc1_verbose                          false
% 2.22/1.00  --bmc1_dump_clauses_tptp                false
% 2.22/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.22/1.00  --bmc1_dump_file                        -
% 2.22/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.22/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.22/1.00  --bmc1_ucm_extend_mode                  1
% 2.22/1.00  --bmc1_ucm_init_mode                    2
% 2.22/1.00  --bmc1_ucm_cone_mode                    none
% 2.22/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.22/1.00  --bmc1_ucm_relax_model                  4
% 2.22/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.22/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.22/1.00  --bmc1_ucm_layered_model                none
% 2.22/1.00  --bmc1_ucm_max_lemma_size               10
% 2.22/1.00  
% 2.22/1.00  ------ AIG Options
% 2.22/1.00  
% 2.22/1.00  --aig_mode                              false
% 2.22/1.00  
% 2.22/1.00  ------ Instantiation Options
% 2.22/1.00  
% 2.22/1.00  --instantiation_flag                    true
% 2.22/1.00  --inst_sos_flag                         false
% 2.22/1.00  --inst_sos_phase                        true
% 2.22/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.22/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.22/1.00  --inst_lit_sel_side                     none
% 2.22/1.00  --inst_solver_per_active                1400
% 2.22/1.00  --inst_solver_calls_frac                1.
% 2.22/1.00  --inst_passive_queue_type               priority_queues
% 2.22/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.22/1.01  --inst_passive_queues_freq              [25;2]
% 2.22/1.01  --inst_dismatching                      true
% 2.22/1.01  --inst_eager_unprocessed_to_passive     true
% 2.22/1.01  --inst_prop_sim_given                   true
% 2.22/1.01  --inst_prop_sim_new                     false
% 2.22/1.01  --inst_subs_new                         false
% 2.22/1.01  --inst_eq_res_simp                      false
% 2.22/1.01  --inst_subs_given                       false
% 2.22/1.01  --inst_orphan_elimination               true
% 2.22/1.01  --inst_learning_loop_flag               true
% 2.22/1.01  --inst_learning_start                   3000
% 2.22/1.01  --inst_learning_factor                  2
% 2.22/1.01  --inst_start_prop_sim_after_learn       3
% 2.22/1.01  --inst_sel_renew                        solver
% 2.22/1.01  --inst_lit_activity_flag                true
% 2.22/1.01  --inst_restr_to_given                   false
% 2.22/1.01  --inst_activity_threshold               500
% 2.22/1.01  --inst_out_proof                        true
% 2.22/1.01  
% 2.22/1.01  ------ Resolution Options
% 2.22/1.01  
% 2.22/1.01  --resolution_flag                       false
% 2.22/1.01  --res_lit_sel                           adaptive
% 2.22/1.01  --res_lit_sel_side                      none
% 2.22/1.01  --res_ordering                          kbo
% 2.22/1.01  --res_to_prop_solver                    active
% 2.22/1.01  --res_prop_simpl_new                    false
% 2.22/1.01  --res_prop_simpl_given                  true
% 2.22/1.01  --res_passive_queue_type                priority_queues
% 2.22/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.22/1.01  --res_passive_queues_freq               [15;5]
% 2.22/1.01  --res_forward_subs                      full
% 2.22/1.01  --res_backward_subs                     full
% 2.22/1.01  --res_forward_subs_resolution           true
% 2.22/1.01  --res_backward_subs_resolution          true
% 2.22/1.01  --res_orphan_elimination                true
% 2.22/1.01  --res_time_limit                        2.
% 2.22/1.01  --res_out_proof                         true
% 2.22/1.01  
% 2.22/1.01  ------ Superposition Options
% 2.22/1.01  
% 2.22/1.01  --superposition_flag                    true
% 2.22/1.01  --sup_passive_queue_type                priority_queues
% 2.22/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.22/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.22/1.01  --demod_completeness_check              fast
% 2.22/1.01  --demod_use_ground                      true
% 2.22/1.01  --sup_to_prop_solver                    passive
% 2.22/1.01  --sup_prop_simpl_new                    true
% 2.22/1.01  --sup_prop_simpl_given                  true
% 2.22/1.01  --sup_fun_splitting                     false
% 2.22/1.01  --sup_smt_interval                      50000
% 2.22/1.01  
% 2.22/1.01  ------ Superposition Simplification Setup
% 2.22/1.01  
% 2.22/1.01  --sup_indices_passive                   []
% 2.22/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.22/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.22/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.01  --sup_full_bw                           [BwDemod]
% 2.22/1.01  --sup_immed_triv                        [TrivRules]
% 2.22/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.22/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.01  --sup_immed_bw_main                     []
% 2.22/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.22/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.22/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.22/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.22/1.01  
% 2.22/1.01  ------ Combination Options
% 2.22/1.01  
% 2.22/1.01  --comb_res_mult                         3
% 2.22/1.01  --comb_sup_mult                         2
% 2.22/1.01  --comb_inst_mult                        10
% 2.22/1.01  
% 2.22/1.01  ------ Debug Options
% 2.22/1.01  
% 2.22/1.01  --dbg_backtrace                         false
% 2.22/1.01  --dbg_dump_prop_clauses                 false
% 2.22/1.01  --dbg_dump_prop_clauses_file            -
% 2.22/1.01  --dbg_out_stat                          false
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  ------ Proving...
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  % SZS status Theorem for theBenchmark.p
% 2.22/1.01  
% 2.22/1.01   Resolution empty clause
% 2.22/1.01  
% 2.22/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.22/1.01  
% 2.22/1.01  fof(f4,axiom,(
% 2.22/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : ((l1_pre_topc(X2) & v2_pre_topc(X2) & v1_pre_topc(X2)) => (k8_tmap_1(X0,X1) = X2 <=> ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X3 => k6_tmap_1(X0,X3) = X2))))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f19,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : ((k8_tmap_1(X0,X1) = X2 <=> ! [X3] : ((k6_tmap_1(X0,X3) = X2 | u1_struct_0(X1) != X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | (~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f4])).
% 2.22/1.01  
% 2.22/1.01  fof(f20,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : ((k8_tmap_1(X0,X1) = X2 <=> ! [X3] : (k6_tmap_1(X0,X3) = X2 | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f19])).
% 2.22/1.01  
% 2.22/1.01  fof(f37,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k8_tmap_1(X0,X1) = X2 | ? [X3] : (k6_tmap_1(X0,X3) != X2 & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (k6_tmap_1(X0,X3) = X2 | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | k8_tmap_1(X0,X1) != X2)) | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(nnf_transformation,[],[f20])).
% 2.22/1.01  
% 2.22/1.01  fof(f38,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k8_tmap_1(X0,X1) = X2 | ? [X3] : (k6_tmap_1(X0,X3) != X2 & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (k6_tmap_1(X0,X4) = X2 | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | k8_tmap_1(X0,X1) != X2)) | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(rectify,[],[f37])).
% 2.22/1.01  
% 2.22/1.01  fof(f39,plain,(
% 2.22/1.01    ! [X2,X1,X0] : (? [X3] : (k6_tmap_1(X0,X3) != X2 & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (k6_tmap_1(X0,sK0(X0,X1,X2)) != X2 & u1_struct_0(X1) = sK0(X0,X1,X2) & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.22/1.01    introduced(choice_axiom,[])).
% 2.22/1.01  
% 2.22/1.01  fof(f40,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k8_tmap_1(X0,X1) = X2 | (k6_tmap_1(X0,sK0(X0,X1,X2)) != X2 & u1_struct_0(X1) = sK0(X0,X1,X2) & m1_subset_1(sK0(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (k6_tmap_1(X0,X4) = X2 | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | k8_tmap_1(X0,X1) != X2)) | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f38,f39])).
% 2.22/1.01  
% 2.22/1.01  fof(f52,plain,(
% 2.22/1.01    ( ! [X4,X2,X0,X1] : (k6_tmap_1(X0,X4) = X2 | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | k8_tmap_1(X0,X1) != X2 | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f40])).
% 2.22/1.01  
% 2.22/1.01  fof(f83,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (k6_tmap_1(X0,u1_struct_0(X1)) = X2 | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | k8_tmap_1(X0,X1) != X2 | ~l1_pre_topc(X2) | ~v2_pre_topc(X2) | ~v1_pre_topc(X2) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f52])).
% 2.22/1.01  
% 2.22/1.01  fof(f84,plain,(
% 2.22/1.01    ( ! [X0,X1] : (k8_tmap_1(X0,X1) = k6_tmap_1(X0,u1_struct_0(X1)) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(k8_tmap_1(X0,X1)) | ~v2_pre_topc(k8_tmap_1(X0,X1)) | ~v1_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f83])).
% 2.22/1.01  
% 2.22/1.01  fof(f11,axiom,(
% 2.22/1.01    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f33,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.22/1.01    inference(ennf_transformation,[],[f11])).
% 2.22/1.01  
% 2.22/1.01  fof(f75,plain,(
% 2.22/1.01    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f33])).
% 2.22/1.01  
% 2.22/1.01  fof(f7,axiom,(
% 2.22/1.01    ! [X0,X1] : ((m1_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f25,plain,(
% 2.22/1.01    ! [X0,X1] : ((l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))) | (~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f7])).
% 2.22/1.01  
% 2.22/1.01  fof(f26,plain,(
% 2.22/1.01    ! [X0,X1] : ((l1_pre_topc(k8_tmap_1(X0,X1)) & v2_pre_topc(k8_tmap_1(X0,X1)) & v1_pre_topc(k8_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f25])).
% 2.22/1.01  
% 2.22/1.01  fof(f63,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v1_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f26])).
% 2.22/1.01  
% 2.22/1.01  fof(f64,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v2_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f26])).
% 2.22/1.01  
% 2.22/1.01  fof(f65,plain,(
% 2.22/1.01    ( ! [X0,X1] : (l1_pre_topc(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f26])).
% 2.22/1.01  
% 2.22/1.01  fof(f12,conjecture,(
% 2.22/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => (m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) & v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) & v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f13,negated_conjecture,(
% 2.22/1.01    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => (m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) & v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) & v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1)))))),
% 2.22/1.01    inference(negated_conjecture,[],[f12])).
% 2.22/1.01  
% 2.22/1.01  fof(f34,plain,(
% 2.22/1.01    ? [X0] : (? [X1] : ((~m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) | ~v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1))) & (m1_pre_topc(X1,X0) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f13])).
% 2.22/1.01  
% 2.22/1.01  fof(f35,plain,(
% 2.22/1.01    ? [X0] : (? [X1] : ((~m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) | ~v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f34])).
% 2.22/1.01  
% 2.22/1.01  fof(f46,plain,(
% 2.22/1.01    ( ! [X0] : (? [X1] : ((~m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) | ~v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ((~m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(X0,sK3))))) | ~v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),sK3,k8_tmap_1(X0,sK3)) | ~v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(X0,sK3))) | ~v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,sK3),k9_tmap_1(X0,sK3),sK3))) & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 2.22/1.01    introduced(choice_axiom,[])).
% 2.22/1.01  
% 2.22/1.01  fof(f45,plain,(
% 2.22/1.01    ? [X0] : (? [X1] : ((~m1_subset_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v5_pre_topc(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),X1,k8_tmap_1(X0,X1)) | ~v1_funct_2(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(k2_tmap_1(X0,k8_tmap_1(X0,X1),k9_tmap_1(X0,X1),X1))) & m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((~m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(sK2,X1))))) | ~v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),X1,k8_tmap_1(sK2,X1)) | ~v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1),u1_struct_0(X1),u1_struct_0(k8_tmap_1(sK2,X1))) | ~v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,X1),k9_tmap_1(sK2,X1),X1))) & m1_pre_topc(X1,sK2) & ~v2_struct_0(X1)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 2.22/1.01    introduced(choice_axiom,[])).
% 2.22/1.01  
% 2.22/1.01  fof(f47,plain,(
% 2.22/1.01    ((~m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) | ~v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3)) | ~v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))) | ~v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))) & m1_pre_topc(sK3,sK2) & ~v2_struct_0(sK3)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 2.22/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f35,f46,f45])).
% 2.22/1.01  
% 2.22/1.01  fof(f80,plain,(
% 2.22/1.01    m1_pre_topc(sK3,sK2)),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f76,plain,(
% 2.22/1.01    ~v2_struct_0(sK2)),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f77,plain,(
% 2.22/1.01    v2_pre_topc(sK2)),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f78,plain,(
% 2.22/1.01    l1_pre_topc(sK2)),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f6,axiom,(
% 2.22/1.01    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))))) & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k7_tmap_1(X0,X1))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f23,plain,(
% 2.22/1.01    ! [X0,X1] : ((m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))))) & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k7_tmap_1(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f6])).
% 2.22/1.01  
% 2.22/1.01  fof(f24,plain,(
% 2.22/1.01    ! [X0,X1] : ((m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))))) & v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k7_tmap_1(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f23])).
% 2.22/1.01  
% 2.22/1.01  fof(f62,plain,(
% 2.22/1.01    ( ! [X0,X1] : (m1_subset_1(k7_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f24])).
% 2.22/1.01  
% 2.22/1.01  fof(f10,axiom,(
% 2.22/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f31,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : ((! [X2] : ((u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))) | (~m1_pre_topc(X1,X0) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f10])).
% 2.22/1.01  
% 2.22/1.01  fof(f32,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : ((! [X2] : (u1_pre_topc(k8_tmap_1(X0,X1)) = k5_tmap_1(X0,X2) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f31])).
% 2.22/1.01  
% 2.22/1.01  fof(f73,plain,(
% 2.22/1.01    ( ! [X0,X1] : (u1_struct_0(X0) = u1_struct_0(k8_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f32])).
% 2.22/1.01  
% 2.22/1.01  fof(f79,plain,(
% 2.22/1.01    ~v2_struct_0(sK3)),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f5,axiom,(
% 2.22/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(X2)) => (k9_tmap_1(X0,X1) = X2 <=> ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X3 => r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3))))))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f21,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : ((k9_tmap_1(X0,X1) = X2 <=> ! [X3] : ((r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) | u1_struct_0(X1) != X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f5])).
% 2.22/1.01  
% 2.22/1.01  fof(f22,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : ((k9_tmap_1(X0,X1) = X2 <=> ! [X3] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f21])).
% 2.22/1.01  
% 2.22/1.01  fof(f41,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k9_tmap_1(X0,X1) = X2 | ? [X3] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X3] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) | u1_struct_0(X1) != X3 | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | k9_tmap_1(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(nnf_transformation,[],[f22])).
% 2.22/1.01  
% 2.22/1.01  fof(f42,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k9_tmap_1(X0,X1) = X2 | ? [X3] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4)) | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | k9_tmap_1(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(rectify,[],[f41])).
% 2.22/1.01  
% 2.22/1.01  fof(f43,plain,(
% 2.22/1.01    ! [X2,X1,X0] : (? [X3] : (~r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X3)),X2,k7_tmap_1(X0,X3)) & u1_struct_0(X1) = X3 & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,sK1(X0,X1,X2))),X2,k7_tmap_1(X0,sK1(X0,X1,X2))) & u1_struct_0(X1) = sK1(X0,X1,X2) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.22/1.01    introduced(choice_axiom,[])).
% 2.22/1.01  
% 2.22/1.01  fof(f44,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((k9_tmap_1(X0,X1) = X2 | (~r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,sK1(X0,X1,X2))),X2,k7_tmap_1(X0,sK1(X0,X1,X2))) & u1_struct_0(X1) = sK1(X0,X1,X2) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X4] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4)) | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))) | k9_tmap_1(X0,X1) != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f42,f43])).
% 2.22/1.01  
% 2.22/1.01  fof(f58,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (k9_tmap_1(X0,X1) = X2 | u1_struct_0(X1) = sK1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f44])).
% 2.22/1.01  
% 2.22/1.01  fof(f3,axiom,(
% 2.22/1.01    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_2(X5,X2,X3) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X4,X0,X1) & v1_funct_1(X4) & ~v1_xboole_0(X3) & ~v1_xboole_0(X1)) => (r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f17,plain,(
% 2.22/1.01    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)))),
% 2.22/1.01    inference(ennf_transformation,[],[f3])).
% 2.22/1.01  
% 2.22/1.01  fof(f18,plain,(
% 2.22/1.01    ! [X0,X1,X2,X3,X4,X5] : ((r1_funct_2(X0,X1,X2,X3,X4,X5) <=> X4 = X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 2.22/1.01    inference(flattening,[],[f17])).
% 2.22/1.01  
% 2.22/1.01  fof(f36,plain,(
% 2.22/1.01    ! [X0,X1,X2,X3,X4,X5] : (((r1_funct_2(X0,X1,X2,X3,X4,X5) | X4 != X5) & (X4 = X5 | ~r1_funct_2(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1))),
% 2.22/1.01    inference(nnf_transformation,[],[f18])).
% 2.22/1.01  
% 2.22/1.01  fof(f50,plain,(
% 2.22/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (X4 = X5 | ~r1_funct_2(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_2(X5,X2,X3) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X4,X0,X1) | ~v1_funct_1(X4) | v1_xboole_0(X3) | v1_xboole_0(X1)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f36])).
% 2.22/1.01  
% 2.22/1.01  fof(f8,axiom,(
% 2.22/1.01    ! [X0,X1] : ((m1_pre_topc(X1,X0) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(k9_tmap_1(X0,X1))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f27,plain,(
% 2.22/1.01    ! [X0,X1] : ((m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(k9_tmap_1(X0,X1))) | (~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f8])).
% 2.22/1.01  
% 2.22/1.01  fof(f28,plain,(
% 2.22/1.01    ! [X0,X1] : ((m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) & v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) & v1_funct_1(k9_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f27])).
% 2.22/1.01  
% 2.22/1.01  fof(f68,plain,(
% 2.22/1.01    ( ! [X0,X1] : (m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f28])).
% 2.22/1.01  
% 2.22/1.01  fof(f66,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v1_funct_1(k9_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f28])).
% 2.22/1.01  
% 2.22/1.01  fof(f56,plain,(
% 2.22/1.01    ( ! [X4,X2,X0,X1] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X4)),X2,k7_tmap_1(X0,X4)) | u1_struct_0(X1) != X4 | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | k9_tmap_1(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f44])).
% 2.22/1.01  
% 2.22/1.01  fof(f85,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),X2,k7_tmap_1(X0,u1_struct_0(X1))) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | k9_tmap_1(X0,X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(X2) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f56])).
% 2.22/1.01  
% 2.22/1.01  fof(f86,plain,(
% 2.22/1.01    ( ! [X0,X1] : (r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1))) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))))) | ~v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~v1_funct_1(k9_tmap_1(X0,X1)) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f85])).
% 2.22/1.01  
% 2.22/1.01  fof(f67,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f28])).
% 2.22/1.01  
% 2.22/1.01  fof(f1,axiom,(
% 2.22/1.01    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f14,plain,(
% 2.22/1.01    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.22/1.01    inference(ennf_transformation,[],[f1])).
% 2.22/1.01  
% 2.22/1.01  fof(f48,plain,(
% 2.22/1.01    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f14])).
% 2.22/1.01  
% 2.22/1.01  fof(f2,axiom,(
% 2.22/1.01    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f15,plain,(
% 2.22/1.01    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f2])).
% 2.22/1.01  
% 2.22/1.01  fof(f16,plain,(
% 2.22/1.01    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f15])).
% 2.22/1.01  
% 2.22/1.01  fof(f49,plain,(
% 2.22/1.01    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f16])).
% 2.22/1.01  
% 2.22/1.01  fof(f60,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v1_funct_1(k7_tmap_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f24])).
% 2.22/1.01  
% 2.22/1.01  fof(f61,plain,(
% 2.22/1.01    ( ! [X0,X1] : (v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f24])).
% 2.22/1.01  
% 2.22/1.01  fof(f9,axiom,(
% 2.22/1.01    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (u1_struct_0(X2) = X1 => (m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))))) & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1)) & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2)))))))),
% 2.22/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.22/1.01  
% 2.22/1.01  fof(f29,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : (((m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))))) & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1)) & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2))) | u1_struct_0(X2) != X1) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.22/1.01    inference(ennf_transformation,[],[f9])).
% 2.22/1.01  
% 2.22/1.01  fof(f30,plain,(
% 2.22/1.01    ! [X0] : (! [X1] : (! [X2] : ((m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))))) & v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1)) & v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))) & v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2))) | u1_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.22/1.01    inference(flattening,[],[f29])).
% 2.22/1.01  
% 2.22/1.01  fof(f71,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),X2,k6_tmap_1(X0,X1)) | u1_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f30])).
% 2.22/1.01  
% 2.22/1.01  fof(f88,plain,(
% 2.22/1.01    ( ! [X2,X0] : (v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),X2,k6_tmap_1(X0,u1_struct_0(X2))) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f71])).
% 2.22/1.01  
% 2.22/1.01  fof(f81,plain,(
% 2.22/1.01    ~m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) | ~v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3)) | ~v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))) | ~v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))),
% 2.22/1.01    inference(cnf_transformation,[],[f47])).
% 2.22/1.01  
% 2.22/1.01  fof(f69,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2)) | u1_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f30])).
% 2.22/1.01  
% 2.22/1.01  fof(f90,plain,(
% 2.22/1.01    ( ! [X2,X0] : (v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f69])).
% 2.22/1.01  
% 2.22/1.01  fof(f72,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))))) | u1_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f30])).
% 2.22/1.01  
% 2.22/1.01  fof(f87,plain,(
% 2.22/1.01    ( ! [X2,X0] : (m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X2)))))) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f72])).
% 2.22/1.01  
% 2.22/1.01  fof(f70,plain,(
% 2.22/1.01    ( ! [X2,X0,X1] : (v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,X1),k7_tmap_1(X0,X1),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,X1))) | u1_struct_0(X2) != X1 | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(cnf_transformation,[],[f30])).
% 2.22/1.01  
% 2.22/1.01  fof(f89,plain,(
% 2.22/1.01    ( ! [X2,X0] : (v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X2)),k7_tmap_1(X0,u1_struct_0(X2)),X2),u1_struct_0(X2),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X2)))) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.22/1.01    inference(equality_resolution,[],[f70])).
% 2.22/1.01  
% 2.22/1.01  cnf(c_7,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ v1_pre_topc(k8_tmap_1(X1,X0))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | ~ v2_pre_topc(k8_tmap_1(X1,X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | ~ l1_pre_topc(k8_tmap_1(X1,X0))
% 2.22/1.01      | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f84]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_27,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f75]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_17,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | v1_pre_topc(k8_tmap_1(X1,X0))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f63]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_16,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_pre_topc(k8_tmap_1(X1,X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f64]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_15,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | l1_pre_topc(k8_tmap_1(X1,X0)) ),
% 2.22/1.01      inference(cnf_transformation,[],[f65]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_243,plain,
% 2.22/1.01      ( ~ l1_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_7,c_27,c_17,c_16,c_15]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_244,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | k6_tmap_1(X1,u1_struct_0(X0)) = k8_tmap_1(X1,X0) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_243]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_29,negated_conjecture,
% 2.22/1.01      ( m1_pre_topc(sK3,sK2) ),
% 2.22/1.01      inference(cnf_transformation,[],[f80]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_882,plain,
% 2.22/1.01      ( ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(X1)) = k8_tmap_1(X0,X1)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_244,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_883,plain,
% 2.22/1.01      ( ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2)
% 2.22/1.01      | k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_882]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_33,negated_conjecture,
% 2.22/1.01      ( ~ v2_struct_0(sK2) ),
% 2.22/1.01      inference(cnf_transformation,[],[f76]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_32,negated_conjecture,
% 2.22/1.01      ( v2_pre_topc(sK2) ),
% 2.22/1.01      inference(cnf_transformation,[],[f77]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_31,negated_conjecture,
% 2.22/1.01      ( l1_pre_topc(sK2) ),
% 2.22/1.01      inference(cnf_transformation,[],[f78]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_885,plain,
% 2.22/1.01      ( k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_883,c_33,c_32,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3040,plain,
% 2.22/1.01      ( k6_tmap_1(sK2,u1_struct_0(sK3)) = k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_885]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_12,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | m1_subset_1(k7_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X1,X0)))))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f62]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1286,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | m1_subset_1(k7_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X1,X0)))))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | sK2 != X1 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_12,c_32]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1287,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1286]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1291,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0))))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1287,c_33,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3026,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))))) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1291]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3502,plain,
% 2.22/1.01      ( m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,X0_54),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))))) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3026]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4100,plain,
% 2.22/1.01      ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) = iProver_top
% 2.22/1.01      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.22/1.01      inference(superposition,[status(thm)],[c_3040,c_3502]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_26,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | u1_struct_0(k8_tmap_1(X1,X0)) = u1_struct_0(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f73]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_935,plain,
% 2.22/1.01      ( ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | u1_struct_0(k8_tmap_1(X0,X1)) = u1_struct_0(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_26,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_936,plain,
% 2.22/1.01      ( ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK3)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2)
% 2.22/1.01      | u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_935]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_30,negated_conjecture,
% 2.22/1.01      ( ~ v2_struct_0(sK3) ),
% 2.22/1.01      inference(cnf_transformation,[],[f79]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_938,plain,
% 2.22/1.01      ( u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_936,c_33,c_32,c_31,c_30]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3034,plain,
% 2.22/1.01      ( u1_struct_0(k8_tmap_1(sK2,sK3)) = u1_struct_0(sK2) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_938]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4101,plain,
% 2.22/1.01      ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) = iProver_top
% 2.22/1.01      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_4100,c_3034]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_36,plain,
% 2.22/1.01      ( l1_pre_topc(sK2) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_920,plain,
% 2.22/1.01      ( m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | sK3 != X0
% 2.22/1.01      | sK2 != X1 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_27,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_921,plain,
% 2.22/1.01      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_920]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_922,plain,
% 2.22/1.01      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
% 2.22/1.01      | l1_pre_topc(sK2) != iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_921]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4104,plain,
% 2.22/1.01      ( m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) = iProver_top ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_4101,c_36,c_922]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_9,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))
% 2.22/1.01      | ~ m1_pre_topc(X2,X1)
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | sK1(X1,X2,X0) = u1_struct_0(X2)
% 2.22/1.01      | k9_tmap_1(X1,X2) = X0 ),
% 2.22/1.01      inference(cnf_transformation,[],[f58]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1110,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X2)))))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | sK1(X1,X2,X0) = u1_struct_0(X2)
% 2.22/1.01      | k9_tmap_1(X1,X2) = X0
% 2.22/1.01      | sK3 != X2
% 2.22/1.01      | sK2 != X1 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_9,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1111,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2)
% 2.22/1.01      | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0 ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1110]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1115,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0 ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1111,c_33,c_32,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1116,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | sK1(sK2,sK3,X0) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0 ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_1115]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3030,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(X0_54)
% 2.22/1.01      | sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0_54 ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1116]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3498,plain,
% 2.22/1.01      ( sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0_54
% 2.22/1.01      | v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))) != iProver_top
% 2.22/1.01      | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) != iProver_top
% 2.22/1.01      | v1_funct_1(X0_54) != iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3030]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3575,plain,
% 2.22/1.01      ( sK1(sK2,sK3,X0_54) = u1_struct_0(sK3)
% 2.22/1.01      | k9_tmap_1(sK2,sK3) = X0_54
% 2.22/1.01      | v1_funct_2(X0_54,u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
% 2.22/1.01      | v1_funct_1(X0_54) != iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3498,c_3034]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4300,plain,
% 2.22/1.01      ( sK1(sK2,sK3,k7_tmap_1(sK2,u1_struct_0(sK3))) = u1_struct_0(sK3)
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
% 2.22/1.01      | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top ),
% 2.22/1.01      inference(superposition,[status(thm)],[c_4104,c_3575]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3,plain,
% 2.22/1.01      ( ~ r1_funct_2(X0,X1,X2,X3,X4,X5)
% 2.22/1.01      | ~ v1_funct_2(X5,X2,X3)
% 2.22/1.01      | ~ v1_funct_2(X4,X0,X1)
% 2.22/1.01      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.22/1.01      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.22/1.01      | ~ v1_funct_1(X5)
% 2.22/1.01      | ~ v1_funct_1(X4)
% 2.22/1.01      | v1_xboole_0(X1)
% 2.22/1.01      | v1_xboole_0(X3)
% 2.22/1.01      | X4 = X5 ),
% 2.22/1.01      inference(cnf_transformation,[],[f50]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_18,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | m1_subset_1(k9_tmap_1(X1,X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k8_tmap_1(X1,X0)))))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f68]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_956,plain,
% 2.22/1.01      ( m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_957,plain,
% 2.22/1.01      ( m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_956]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_959,plain,
% 2.22/1.01      ( m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_957,c_33,c_32,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_20,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v1_funct_1(k9_tmap_1(X1,X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f66]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_943,plain,
% 2.22/1.01      ( ~ v2_pre_topc(X0)
% 2.22/1.01      | v1_funct_1(k9_tmap_1(X0,X1))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_20,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_944,plain,
% 2.22/1.01      ( ~ v2_pre_topc(sK2)
% 2.22/1.01      | v1_funct_1(k9_tmap_1(sK2,sK3))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_943]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_946,plain,
% 2.22/1.01      ( v1_funct_1(k9_tmap_1(sK2,sK3)) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_944,c_33,c_32,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_923,plain,
% 2.22/1.01      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_921,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_11,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
% 2.22/1.01      | ~ v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
% 2.22/1.01      | ~ m1_pre_topc(X1,X0)
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(X0,X1))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f86]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_19,plain,
% 2.22/1.01      ( v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
% 2.22/1.01      | ~ m1_pre_topc(X1,X0)
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f67]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_233,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
% 2.22/1.01      | ~ m1_pre_topc(X1,X0)
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(X0,X1))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_11,c_19]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_810,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))),k9_tmap_1(X0,X1),k7_tmap_1(X0,u1_struct_0(X1)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(X0,X1))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_233,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_811,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(sK2,sK3))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_810]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_813,plain,
% 2.22/1.01      ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_811,c_33,c_32,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_814,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_813]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_930,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(sK2,sK3)) ),
% 2.22/1.01      inference(backward_subsumption_resolution,[status(thm)],[c_923,c_814]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_953,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
% 2.22/1.01      inference(backward_subsumption_resolution,[status(thm)],[c_946,c_930]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_966,plain,
% 2.22/1.01      ( r1_funct_2(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))),k9_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3))) ),
% 2.22/1.01      inference(backward_subsumption_resolution,[status(thm)],[c_959,c_953]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1552,plain,
% 2.22/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 2.22/1.01      | ~ v1_funct_2(X3,X4,X5)
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.22/1.01      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 2.22/1.01      | ~ v1_funct_1(X0)
% 2.22/1.01      | ~ v1_funct_1(X3)
% 2.22/1.01      | v1_xboole_0(X2)
% 2.22/1.01      | v1_xboole_0(X5)
% 2.22/1.01      | X3 = X0
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) != X3
% 2.22/1.01      | k9_tmap_1(sK2,sK3) != X0
% 2.22/1.01      | u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))) != X5
% 2.22/1.01      | u1_struct_0(k8_tmap_1(sK2,sK3)) != X2
% 2.22/1.01      | u1_struct_0(sK2) != X4
% 2.22/1.01      | u1_struct_0(sK2) != X1 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_3,c_966]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1553,plain,
% 2.22/1.01      ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ v1_funct_2(k9_tmap_1(sK2,sK3),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
% 2.22/1.01      | ~ m1_subset_1(k9_tmap_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ v1_funct_1(k9_tmap_1(sK2,sK3))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1552]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_844,plain,
% 2.22/1.01      ( v1_funct_2(k9_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k8_tmap_1(X0,X1)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_19,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_845,plain,
% 2.22/1.01      ( v1_funct_2(k9_tmap_1(sK2,sK3),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_844]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1555,plain,
% 2.22/1.01      ( ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1553,c_33,c_32,c_31,c_845,c_944,c_957]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1556,plain,
% 2.22/1.01      ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
% 2.22/1.01      | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_1555]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3020,plain,
% 2.22/1.01      ( ~ v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
% 2.22/1.01      | ~ v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3)))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1556]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3508,plain,
% 2.22/1.01      ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
% 2.22/1.01      | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) != iProver_top
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) != iProver_top
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) = iProver_top
% 2.22/1.01      | v1_xboole_0(u1_struct_0(k8_tmap_1(sK2,sK3))) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3020]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3604,plain,
% 2.22/1.01      ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
% 2.22/1.01      | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top
% 2.22/1.01      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3508,c_3034,c_3040]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_0,plain,
% 2.22/1.01      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f48]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1,plain,
% 2.22/1.01      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | ~ l1_struct_0(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f49]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_417,plain,
% 2.22/1.01      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(resolution,[status(thm)],[c_0,c_1]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1367,plain,
% 2.22/1.01      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_417,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1368,plain,
% 2.22/1.01      ( v2_struct_0(sK2) | ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1367]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1370,plain,
% 2.22/1.01      ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1368,c_33]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3023,plain,
% 2.22/1.01      ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1370]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3505,plain,
% 2.22/1.01      ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3023]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3610,plain,
% 2.22/1.01      ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3)
% 2.22/1.01      | v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(k7_tmap_1(sK2,u1_struct_0(sK3)),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK2)))) != iProver_top
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) != iProver_top ),
% 2.22/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_3604,c_3505]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_14,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v1_funct_1(k7_tmap_1(X1,X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f60]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1268,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | v1_funct_1(k7_tmap_1(X1,X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | sK2 != X1 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_14,c_32]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1269,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,X0))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1268]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1273,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,X0)) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1269,c_33,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3027,plain,
% 2.22/1.01      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,X0_54)) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1273]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3698,plain,
% 2.22/1.01      ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) ),
% 2.22/1.01      inference(instantiation,[status(thm)],[c_3027]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3699,plain,
% 2.22/1.01      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.22/1.01      | v1_funct_1(k7_tmap_1(sK2,u1_struct_0(sK3))) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3698]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_13,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
% 2.22/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f61]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1229,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(X0,X1),u1_struct_0(X0),u1_struct_0(k6_tmap_1(X0,X1)))
% 2.22/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_13,c_32]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1230,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,X0),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1229]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1234,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,X0),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0)))
% 2.22/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1230,c_33,c_31]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3029,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,X0_54),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54)))
% 2.22/1.01      | ~ m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1234]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3499,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,X0_54),u1_struct_0(sK2),u1_struct_0(k6_tmap_1(sK2,X0_54))) = iProver_top
% 2.22/1.01      | m1_subset_1(X0_54,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3029]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3796,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(k8_tmap_1(sK2,sK3))) = iProver_top
% 2.22/1.01      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.22/1.01      inference(superposition,[status(thm)],[c_3040,c_3499]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3797,plain,
% 2.22/1.01      ( v1_funct_2(k7_tmap_1(sK2,u1_struct_0(sK3)),u1_struct_0(sK2),u1_struct_0(sK2)) = iProver_top
% 2.22/1.01      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3796,c_3034]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4419,plain,
% 2.22/1.01      ( k7_tmap_1(sK2,u1_struct_0(sK3)) = k9_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_4300,c_36,c_922,c_3610,c_3699,c_3797,c_4101]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_22,plain,
% 2.22/1.01      ( v5_pre_topc(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),X1,k6_tmap_1(X0,u1_struct_0(X1)))
% 2.22/1.01      | ~ m1_pre_topc(X1,X0)
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f88]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_28,negated_conjecture,
% 2.22/1.01      ( ~ v5_pre_topc(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),sK3,k8_tmap_1(sK2,sK3))
% 2.22/1.01      | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)) ),
% 2.22/1.01      inference(cnf_transformation,[],[f81]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_435,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1)
% 2.22/1.01      | k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X1,u1_struct_0(X0)) != k8_tmap_1(sK2,sK3)
% 2.22/1.01      | sK3 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_22,c_28]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_436,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_pre_topc(sK3,X0)
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(sK3)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_435]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_440,plain,
% 2.22/1.01      ( v2_struct_0(X0)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_pre_topc(sK3,X0)
% 2.22/1.01      | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_436,c_30]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_441,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_pre_topc(sK3,X0)
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_440]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_464,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_pre_topc(sK3,X0)
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_441,c_27]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1137,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(sK3)),k7_tmap_1(X0,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(X0,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3)
% 2.22/1.01      | sK3 != sK3
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_29,c_464]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1138,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2)
% 2.22/1.01      | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | k6_tmap_1(sK2,u1_struct_0(sK3)) != k8_tmap_1(sK2,sK3) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_1137]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1140,plain,
% 2.22/1.01      ( k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_1138,c_33,c_32,c_31,c_883]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1141,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | ~ v1_funct_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3))
% 2.22/1.01      | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_1140]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_24,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f90]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_208,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_24,c_27]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_209,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v1_funct_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0))
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_208]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_901,plain,
% 2.22/1.01      ( ~ v2_pre_topc(X0)
% 2.22/1.01      | v1_funct_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1))
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_209,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_902,plain,
% 2.22/1.01      ( ~ v2_pre_topc(sK2)
% 2.22/1.01      | v1_funct_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3))
% 2.22/1.01      | v2_struct_0(sK3)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_901]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_904,plain,
% 2.22/1.01      ( v1_funct_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3)) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_902,c_33,c_32,c_31,c_30]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_1840,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_1141,c_904]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3019,plain,
% 2.22/1.01      ( ~ v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))
% 2.22/1.01      | ~ m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3)))))
% 2.22/1.01      | k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_1840]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3509,plain,
% 2.22/1.01      ( k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))) != iProver_top
% 2.22/1.01      | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k8_tmap_1(sK2,sK3))))) != iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3019]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3597,plain,
% 2.22/1.01      ( k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3509,c_3034,c_3040]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4423,plain,
% 2.22/1.01      ( k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3) != k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3)
% 2.22/1.01      | v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
% 2.22/1.01      inference(demodulation,[status(thm)],[c_4419,c_3597]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4435,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.22/1.01      | m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top ),
% 2.22/1.01      inference(equality_resolution_simp,[status(thm)],[c_4423]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_21,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(cnf_transformation,[],[f87]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_217,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
% 2.22/1.01      | ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(global_propositional_subsumption,[status(thm)],[c_21,c_27]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_218,plain,
% 2.22/1.01      ( ~ m1_pre_topc(X0,X1)
% 2.22/1.01      | m1_subset_1(k2_tmap_1(X1,k6_tmap_1(X1,u1_struct_0(X0)),k7_tmap_1(X1,u1_struct_0(X0)),X0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(k6_tmap_1(X1,u1_struct_0(X0))))))
% 2.22/1.01      | ~ v2_pre_topc(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X1) ),
% 2.22/1.01      inference(renaming,[status(thm)],[c_217]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_890,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_218,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_891,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK3)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_890]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_893,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_891,c_33,c_32,c_31,c_30]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3039,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_893]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3491,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))))) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3039]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3547,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3491,c_3034,c_3040]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4426,plain,
% 2.22/1.01      ( m1_subset_1(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
% 2.22/1.01      inference(demodulation,[status(thm)],[c_4419,c_3547]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_23,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))
% 2.22/1.01      | ~ m1_pre_topc(X1,X0)
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X0) ),
% 2.22/1.01      inference(cnf_transformation,[],[f89]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_830,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(X0,k6_tmap_1(X0,u1_struct_0(X1)),k7_tmap_1(X0,u1_struct_0(X1)),X1),u1_struct_0(X1),u1_struct_0(k6_tmap_1(X0,u1_struct_0(X1))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.22/1.01      | ~ v2_pre_topc(X0)
% 2.22/1.01      | v2_struct_0(X0)
% 2.22/1.01      | v2_struct_0(X1)
% 2.22/1.01      | ~ l1_pre_topc(X0)
% 2.22/1.01      | sK3 != X1
% 2.22/1.01      | sK2 != X0 ),
% 2.22/1.01      inference(resolution_lifted,[status(thm)],[c_23,c_29]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_831,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.22/1.01      | ~ v2_pre_topc(sK2)
% 2.22/1.01      | v2_struct_0(sK3)
% 2.22/1.01      | v2_struct_0(sK2)
% 2.22/1.01      | ~ l1_pre_topc(sK2) ),
% 2.22/1.01      inference(unflattening,[status(thm)],[c_830]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_833,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3))))
% 2.22/1.01      | ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.22/1.01      inference(global_propositional_subsumption,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_831,c_33,c_32,c_31,c_30]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_931,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) ),
% 2.22/1.01      inference(backward_subsumption_resolution,[status(thm)],[c_923,c_833]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3035,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) ),
% 2.22/1.01      inference(subtyping,[status(esa)],[c_931]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3494,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k6_tmap_1(sK2,u1_struct_0(sK3)),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(k6_tmap_1(sK2,u1_struct_0(sK3)))) = iProver_top ),
% 2.22/1.01      inference(predicate_to_equality,[status(thm)],[c_3035]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_3540,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k7_tmap_1(sK2,u1_struct_0(sK3)),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
% 2.22/1.01      inference(light_normalisation,[status(thm)],[c_3494,c_3034,c_3040]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4427,plain,
% 2.22/1.01      ( v1_funct_2(k2_tmap_1(sK2,k8_tmap_1(sK2,sK3),k9_tmap_1(sK2,sK3),sK3),u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
% 2.22/1.01      inference(demodulation,[status(thm)],[c_4419,c_3540]) ).
% 2.22/1.01  
% 2.22/1.01  cnf(c_4438,plain,
% 2.22/1.01      ( $false ),
% 2.22/1.01      inference(forward_subsumption_resolution,
% 2.22/1.01                [status(thm)],
% 2.22/1.01                [c_4435,c_4426,c_4427]) ).
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.22/1.01  
% 2.22/1.01  ------                               Statistics
% 2.22/1.01  
% 2.22/1.01  ------ General
% 2.22/1.01  
% 2.22/1.01  abstr_ref_over_cycles:                  0
% 2.22/1.01  abstr_ref_under_cycles:                 0
% 2.22/1.01  gc_basic_clause_elim:                   0
% 2.22/1.01  forced_gc_time:                         0
% 2.22/1.01  parsing_time:                           0.016
% 2.22/1.01  unif_index_cands_time:                  0.
% 2.22/1.01  unif_index_add_time:                    0.
% 2.22/1.01  orderings_time:                         0.
% 2.22/1.01  out_proof_time:                         0.017
% 2.22/1.01  total_time:                             0.199
% 2.22/1.01  num_of_symbols:                         64
% 2.22/1.01  num_of_terms:                           4024
% 2.22/1.01  
% 2.22/1.01  ------ Preprocessing
% 2.22/1.01  
% 2.22/1.01  num_of_splits:                          0
% 2.22/1.01  num_of_split_atoms:                     0
% 2.22/1.01  num_of_reused_defs:                     0
% 2.22/1.01  num_eq_ax_congr_red:                    12
% 2.22/1.01  num_of_sem_filtered_clauses:            6
% 2.22/1.01  num_of_subtypes:                        4
% 2.22/1.01  monotx_restored_types:                  0
% 2.22/1.01  sat_num_of_epr_types:                   0
% 2.22/1.01  sat_num_of_non_cyclic_types:            0
% 2.22/1.01  sat_guarded_non_collapsed_types:        1
% 2.22/1.01  num_pure_diseq_elim:                    0
% 2.22/1.01  simp_replaced_by:                       0
% 2.22/1.01  res_preprocessed:                       151
% 2.22/1.01  prep_upred:                             0
% 2.22/1.01  prep_unflattend:                        128
% 2.22/1.01  smt_new_axioms:                         0
% 2.22/1.01  pred_elim_cands:                        5
% 2.22/1.01  pred_elim:                              7
% 2.22/1.01  pred_elim_cl:                           9
% 2.22/1.01  pred_elim_cycles:                       14
% 2.22/1.01  merged_defs:                            0
% 2.22/1.01  merged_defs_ncl:                        0
% 2.22/1.01  bin_hyper_res:                          0
% 2.22/1.01  prep_cycles:                            4
% 2.22/1.01  pred_elim_time:                         0.079
% 2.22/1.01  splitting_time:                         0.
% 2.22/1.01  sem_filter_time:                        0.
% 2.22/1.01  monotx_time:                            0.
% 2.22/1.01  subtype_inf_time:                       0.
% 2.22/1.01  
% 2.22/1.01  ------ Problem properties
% 2.22/1.01  
% 2.22/1.01  clauses:                                25
% 2.22/1.01  conjectures:                            2
% 2.22/1.01  epr:                                    2
% 2.22/1.01  horn:                                   18
% 2.22/1.01  ground:                                 16
% 2.22/1.01  unary:                                  13
% 2.22/1.01  binary:                                 4
% 2.22/1.01  lits:                                   58
% 2.22/1.01  lits_eq:                                10
% 2.22/1.01  fd_pure:                                0
% 2.22/1.01  fd_pseudo:                              0
% 2.22/1.01  fd_cond:                                3
% 2.22/1.01  fd_pseudo_cond:                         0
% 2.22/1.01  ac_symbols:                             0
% 2.22/1.01  
% 2.22/1.01  ------ Propositional Solver
% 2.22/1.01  
% 2.22/1.01  prop_solver_calls:                      26
% 2.22/1.01  prop_fast_solver_calls:                 1751
% 2.22/1.01  smt_solver_calls:                       0
% 2.22/1.01  smt_fast_solver_calls:                  0
% 2.22/1.01  prop_num_of_clauses:                    953
% 2.22/1.01  prop_preprocess_simplified:             4382
% 2.22/1.01  prop_fo_subsumed:                       106
% 2.22/1.01  prop_solver_time:                       0.
% 2.22/1.01  smt_solver_time:                        0.
% 2.22/1.01  smt_fast_solver_time:                   0.
% 2.22/1.01  prop_fast_solver_time:                  0.
% 2.22/1.01  prop_unsat_core_time:                   0.
% 2.22/1.01  
% 2.22/1.01  ------ QBF
% 2.22/1.01  
% 2.22/1.01  qbf_q_res:                              0
% 2.22/1.01  qbf_num_tautologies:                    0
% 2.22/1.01  qbf_prep_cycles:                        0
% 2.22/1.01  
% 2.22/1.01  ------ BMC1
% 2.22/1.01  
% 2.22/1.01  bmc1_current_bound:                     -1
% 2.22/1.01  bmc1_last_solved_bound:                 -1
% 2.22/1.01  bmc1_unsat_core_size:                   -1
% 2.22/1.01  bmc1_unsat_core_parents_size:           -1
% 2.22/1.01  bmc1_merge_next_fun:                    0
% 2.22/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.22/1.01  
% 2.22/1.01  ------ Instantiation
% 2.22/1.01  
% 2.22/1.01  inst_num_of_clauses:                    191
% 2.22/1.01  inst_num_in_passive:                    62
% 2.22/1.01  inst_num_in_active:                     121
% 2.22/1.01  inst_num_in_unprocessed:                8
% 2.22/1.01  inst_num_of_loops:                      130
% 2.22/1.01  inst_num_of_learning_restarts:          0
% 2.22/1.01  inst_num_moves_active_passive:          7
% 2.22/1.01  inst_lit_activity:                      0
% 2.22/1.01  inst_lit_activity_moves:                0
% 2.22/1.01  inst_num_tautologies:                   0
% 2.22/1.01  inst_num_prop_implied:                  0
% 2.22/1.01  inst_num_existing_simplified:           0
% 2.22/1.01  inst_num_eq_res_simplified:             0
% 2.22/1.01  inst_num_child_elim:                    0
% 2.22/1.01  inst_num_of_dismatching_blockings:      10
% 2.22/1.01  inst_num_of_non_proper_insts:           112
% 2.22/1.01  inst_num_of_duplicates:                 0
% 2.22/1.01  inst_inst_num_from_inst_to_res:         0
% 2.22/1.01  inst_dismatching_checking_time:         0.
% 2.22/1.01  
% 2.22/1.01  ------ Resolution
% 2.22/1.01  
% 2.22/1.01  res_num_of_clauses:                     0
% 2.22/1.01  res_num_in_passive:                     0
% 2.22/1.01  res_num_in_active:                      0
% 2.22/1.01  res_num_of_loops:                       155
% 2.22/1.01  res_forward_subset_subsumed:            26
% 2.22/1.01  res_backward_subset_subsumed:           1
% 2.22/1.01  res_forward_subsumed:                   2
% 2.22/1.01  res_backward_subsumed:                  1
% 2.22/1.01  res_forward_subsumption_resolution:     15
% 2.22/1.01  res_backward_subsumption_resolution:    4
% 2.22/1.01  res_clause_to_clause_subsumption:       424
% 2.22/1.01  res_orphan_elimination:                 0
% 2.22/1.01  res_tautology_del:                      39
% 2.22/1.01  res_num_eq_res_simplified:              0
% 2.22/1.01  res_num_sel_changes:                    0
% 2.22/1.01  res_moves_from_active_to_pass:          0
% 2.22/1.01  
% 2.22/1.01  ------ Superposition
% 2.22/1.01  
% 2.22/1.01  sup_time_total:                         0.
% 2.22/1.01  sup_time_generating:                    0.
% 2.22/1.01  sup_time_sim_full:                      0.
% 2.22/1.01  sup_time_sim_immed:                     0.
% 2.22/1.01  
% 2.22/1.01  sup_num_of_clauses:                     20
% 2.22/1.01  sup_num_in_active:                      18
% 2.22/1.01  sup_num_in_passive:                     2
% 2.22/1.01  sup_num_of_loops:                       25
% 2.22/1.01  sup_fw_superposition:                   7
% 2.22/1.01  sup_bw_superposition:                   0
% 2.22/1.01  sup_immediate_simplified:               2
% 2.22/1.01  sup_given_eliminated:                   0
% 2.22/1.01  comparisons_done:                       0
% 2.22/1.01  comparisons_avoided:                    0
% 2.22/1.01  
% 2.22/1.01  ------ Simplifications
% 2.22/1.01  
% 2.22/1.01  
% 2.22/1.01  sim_fw_subset_subsumed:                 0
% 2.22/1.01  sim_bw_subset_subsumed:                 2
% 2.22/1.01  sim_fw_subsumed:                        1
% 2.22/1.01  sim_bw_subsumed:                        0
% 2.22/1.01  sim_fw_subsumption_res:                 4
% 2.22/1.01  sim_bw_subsumption_res:                 0
% 2.22/1.01  sim_tautology_del:                      0
% 2.22/1.01  sim_eq_tautology_del:                   2
% 2.22/1.01  sim_eq_res_simp:                        1
% 2.22/1.01  sim_fw_demodulated:                     0
% 2.22/1.01  sim_bw_demodulated:                     7
% 2.22/1.01  sim_light_normalised:                   16
% 2.22/1.01  sim_joinable_taut:                      0
% 2.22/1.01  sim_joinable_simp:                      0
% 2.22/1.01  sim_ac_normalised:                      0
% 2.22/1.01  sim_smt_subsumption:                    0
% 2.22/1.01  
%------------------------------------------------------------------------------
