%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:06:25 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   96 (71012 expanded)
%              Number of clauses        :   73 (29205 expanded)
%              Number of leaves         :   11 (17446 expanded)
%              Depth                    :   18
%              Number of atoms          :  352 (354926 expanded)
%              Number of equality atoms :  127 (94071 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   32 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t113_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X1,X2)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
         => ( ! [X5] :
                ( m1_subset_1(X5,X1)
               => k1_funct_1(X3,X5) = k1_funct_1(X4,X5) )
           => r2_relset_1(X1,X2,X3,X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_funct_2)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( k1_relat_1(X1) = k1_relat_1(X2)
              & ! [X3] :
                  ( r2_hidden(X3,k1_relat_1(X1))
                 => k1_funct_1(X1,X3) = k1_funct_1(X2,X3) ) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t9_funct_1)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset)).

fof(d3_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ! [X4] :
          ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => ( r2_relset_1(X1,X2,X3,X4)
          <=> ! [X5] :
                ( m1_subset_1(X5,X1)
               => ! [X6] :
                    ( m1_subset_1(X6,X2)
                   => ( r2_hidden(k4_tarski(X5,X6),X3)
                    <=> r2_hidden(k4_tarski(X5,X6),X4) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_relset_1)).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_funct_2(X4,X1,X2)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
           => ( ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => k1_funct_1(X3,X5) = k1_funct_1(X4,X5) )
             => r2_relset_1(X1,X2,X3,X4) ) ) ) ),
    inference(assume_negation,[status(cth)],[t113_funct_2])).

fof(c_0_12,plain,(
    ! [X14,X15] :
      ( ( ~ m1_subset_1(X14,k1_zfmisc_1(X15))
        | r1_tarski(X14,X15) )
      & ( ~ r1_tarski(X14,X15)
        | m1_subset_1(X14,k1_zfmisc_1(X15)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_13,negated_conjecture,(
    ! [X43] :
      ( v1_funct_1(esk6_0)
      & v1_funct_2(esk6_0,esk4_0,esk5_0)
      & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))
      & v1_funct_1(esk7_0)
      & v1_funct_2(esk7_0,esk4_0,esk5_0)
      & m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))
      & ( ~ m1_subset_1(X43,esk4_0)
        | k1_funct_1(esk6_0,X43) = k1_funct_1(esk7_0,X43) )
      & ~ r2_relset_1(esk4_0,esk5_0,esk6_0,esk7_0) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])])).

fof(c_0_14,plain,(
    ! [X33,X34,X35] :
      ( ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))
      | k1_relset_1(X33,X34,X35) = k1_relat_1(X35) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_15,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_16,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_18,plain,(
    ! [X36,X37,X38] :
      ( ( ~ v1_funct_2(X38,X36,X37)
        | X36 = k1_relset_1(X36,X37,X38)
        | X37 = k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( X36 != k1_relset_1(X36,X37,X38)
        | v1_funct_2(X38,X36,X37)
        | X37 = k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( ~ v1_funct_2(X38,X36,X37)
        | X36 = k1_relset_1(X36,X37,X38)
        | X36 != k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( X36 != k1_relset_1(X36,X37,X38)
        | v1_funct_2(X38,X36,X37)
        | X36 != k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( ~ v1_funct_2(X38,X36,X37)
        | X38 = k1_xboole_0
        | X36 = k1_xboole_0
        | X37 != k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) )
      & ( X38 != k1_xboole_0
        | v1_funct_2(X38,X36,X37)
        | X36 = k1_xboole_0
        | X37 != k1_xboole_0
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_19,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_21,plain,(
    ! [X9,X10] :
      ( ( k2_zfmisc_1(X9,X10) != k1_xboole_0
        | X9 = k1_xboole_0
        | X10 = k1_xboole_0 )
      & ( X9 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_22,plain,(
    ! [X11] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X11)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

cnf(c_0_23,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(esk6_0,k2_zfmisc_1(esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_25,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( v1_funct_2(esk7_0,esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_27,negated_conjecture,
    ( k1_relset_1(esk4_0,esk5_0,esk7_0) = k1_relat_1(esk7_0) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_28,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_30,plain,(
    ! [X22,X23,X24] :
      ( ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))
      | v1_relat_1(X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_31,negated_conjecture,
    ( r1_tarski(esk7_0,k2_zfmisc_1(esk4_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_20])).

cnf(c_0_32,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = esk6_0
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk5_0),esk6_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_33,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk4_0
    | esk5_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_20])]),c_0_27])).

cnf(c_0_34,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_35,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_29])).

fof(c_0_36,plain,(
    ! [X19,X20] :
      ( ( r2_hidden(esk1_2(X19,X20),k1_relat_1(X19))
        | k1_relat_1(X19) != k1_relat_1(X20)
        | X19 = X20
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20)
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19) )
      & ( k1_funct_1(X19,esk1_2(X19,X20)) != k1_funct_1(X20,esk1_2(X19,X20))
        | k1_relat_1(X19) != k1_relat_1(X20)
        | X19 = X20
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20)
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t9_funct_1])])])])])).

cnf(c_0_37,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_38,plain,(
    ! [X16,X17,X18] :
      ( ~ r2_hidden(X16,X17)
      | ~ m1_subset_1(X17,k1_zfmisc_1(X18))
      | m1_subset_1(X16,X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

cnf(c_0_39,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = esk7_0
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk5_0),esk7_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_31])).

cnf(c_0_40,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_41,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk4_0
    | esk6_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_42,plain,
    ( X1 = X2
    | k1_funct_1(X1,esk1_2(X1,X2)) != k1_funct_1(X2,esk1_2(X1,X2))
    | k1_relat_1(X1) != k1_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_43,negated_conjecture,
    ( k1_funct_1(esk6_0,X1) = k1_funct_1(esk7_0,X1)
    | ~ m1_subset_1(X1,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_44,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_17])).

cnf(c_0_45,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_46,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_47,plain,
    ( r2_hidden(esk1_2(X1,X2),k1_relat_1(X1))
    | X1 = X2
    | k1_relat_1(X1) != k1_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_48,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk4_0
    | esk7_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_33]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_49,negated_conjecture,
    ( v1_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_50,negated_conjecture,
    ( v1_relat_1(esk7_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_20])).

cnf(c_0_51,negated_conjecture,
    ( v1_funct_2(esk6_0,esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_52,negated_conjecture,
    ( k1_relset_1(esk4_0,esk5_0,esk6_0) = k1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_19,c_0_17])).

cnf(c_0_53,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk4_0
    | v1_funct_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

fof(c_0_54,plain,(
    ! [X25,X26,X27,X28,X29,X30] :
      ( ( ~ r2_hidden(k4_tarski(X29,X30),X27)
        | r2_hidden(k4_tarski(X29,X30),X28)
        | ~ m1_subset_1(X30,X26)
        | ~ m1_subset_1(X29,X25)
        | ~ r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( ~ r2_hidden(k4_tarski(X29,X30),X28)
        | r2_hidden(k4_tarski(X29,X30),X27)
        | ~ m1_subset_1(X30,X26)
        | ~ m1_subset_1(X29,X25)
        | ~ r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( m1_subset_1(esk2_4(X25,X26,X27,X28),X25)
        | r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( m1_subset_1(esk3_4(X25,X26,X27,X28),X26)
        | r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( ~ r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X27)
        | ~ r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X28)
        | r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) )
      & ( r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X27)
        | r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X28)
        | r2_relset_1(X25,X26,X27,X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))
        | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_relset_1])])])])])).

cnf(c_0_55,negated_conjecture,
    ( X1 = esk6_0
    | k1_funct_1(X1,esk1_2(X1,esk6_0)) != k1_funct_1(esk7_0,esk1_2(X1,esk6_0))
    | k1_relat_1(X1) != k1_relat_1(esk6_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(esk1_2(X1,esk6_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_40])]),c_0_44])])).

cnf(c_0_56,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_57,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | esk7_0 = X1
    | r2_hidden(esk1_2(esk7_0,X1),esk4_0)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_49]),c_0_50])])).

cnf(c_0_58,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_59,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0
    | esk5_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_51]),c_0_17])]),c_0_52])).

cnf(c_0_60,negated_conjecture,
    ( esk7_0 = X1
    | v1_funct_1(k1_xboole_0)
    | r2_hidden(esk1_2(esk7_0,X1),esk4_0)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_53]),c_0_49]),c_0_50])])).

cnf(c_0_61,plain,
    ( r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X3)
    | r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X4)
    | r2_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_62,negated_conjecture,
    ( esk6_0 = esk7_0
    | k1_relat_1(esk6_0) != k1_relat_1(esk7_0)
    | ~ m1_subset_1(esk1_2(esk7_0,esk6_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_55]),c_0_49]),c_0_50])])).

cnf(c_0_63,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | esk7_0 = X1
    | m1_subset_1(esk1_2(esk7_0,X1),X2)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(esk4_0,X2) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_64,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_58])).

cnf(c_0_65,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0
    | esk7_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_59]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_66,negated_conjecture,
    ( esk7_0 = X1
    | v1_funct_1(k1_xboole_0)
    | m1_subset_1(esk1_2(esk7_0,X1),X2)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(esk4_0,X2) ),
    inference(spm,[status(thm)],[c_0_56,c_0_60])).

cnf(c_0_67,negated_conjecture,
    ( r2_relset_1(esk4_0,esk5_0,X1,esk7_0)
    | r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,X1,esk7_0),esk3_4(esk4_0,esk5_0,X1,esk7_0)),esk7_0)
    | r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,X1,esk7_0),esk3_4(esk4_0,esk5_0,X1,esk7_0)),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))) ),
    inference(spm,[status(thm)],[c_0_61,c_0_20])).

cnf(c_0_68,negated_conjecture,
    ( ~ r2_relset_1(esk4_0,esk5_0,esk6_0,esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_69,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | esk6_0 = esk7_0
    | k1_relat_1(esk6_0) != k1_relat_1(esk7_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_40]),c_0_44]),c_0_64])]),c_0_65])).

cnf(c_0_70,negated_conjecture,
    ( esk6_0 = esk7_0
    | v1_funct_1(k1_xboole_0)
    | k1_relat_1(esk6_0) != k1_relat_1(esk7_0)
    | k1_relat_1(esk6_0) != esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_66]),c_0_40]),c_0_44]),c_0_64])])).

cnf(c_0_71,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0
    | esk6_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_59]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_72,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,esk7_0),esk3_4(esk4_0,esk5_0,esk6_0,esk7_0)),esk6_0)
    | r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,esk7_0),esk3_4(esk4_0,esk5_0,esk6_0,esk7_0)),esk7_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_17]),c_0_68])).

cnf(c_0_73,negated_conjecture,
    ( esk6_0 = esk7_0
    | esk7_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_65]),c_0_48])).

cnf(c_0_74,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | esk6_0 = esk7_0
    | v1_funct_1(k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_71]),c_0_53])).

cnf(c_0_75,negated_conjecture,
    ( esk6_0 = X1
    | k1_funct_1(esk7_0,esk1_2(esk6_0,X1)) != k1_funct_1(X1,esk1_2(esk6_0,X1))
    | k1_relat_1(esk6_0) != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(esk1_2(esk6_0,X1),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_40])]),c_0_44])])).

cnf(c_0_76,plain,
    ( r2_relset_1(X1,X2,X3,X4)
    | ~ r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X3)
    | ~ r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_77,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk7_0,esk7_0),esk3_4(esk4_0,esk5_0,esk7_0,esk7_0)),esk7_0) ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_78,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | ~ r2_relset_1(esk4_0,esk5_0,esk7_0,esk7_0) ),
    inference(spm,[status(thm)],[c_0_68,c_0_73])).

cnf(c_0_79,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | v1_funct_1(k1_xboole_0)
    | esk7_0 != k1_xboole_0 ),
    inference(ef,[status(thm)],[c_0_74])).

cnf(c_0_80,negated_conjecture,
    ( esk6_0 = esk7_0
    | k1_relat_1(esk6_0) != k1_relat_1(esk7_0)
    | ~ m1_subset_1(esk1_2(esk6_0,esk7_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_75]),c_0_49]),c_0_50])])).

cnf(c_0_81,negated_conjecture,
    ( esk7_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77]),c_0_20])]),c_0_77]),c_0_78])).

cnf(c_0_82,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | esk6_0 = X1
    | r2_hidden(esk1_2(esk6_0,X1),esk4_0)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_71]),c_0_40]),c_0_44])])).

cnf(c_0_83,negated_conjecture,
    ( v1_funct_1(k1_xboole_0)
    | esk7_0 != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_40,c_0_79])).

cnf(c_0_84,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | k1_relat_1(esk6_0) != k1_relat_1(k1_xboole_0)
    | ~ m1_subset_1(esk1_2(esk6_0,k1_xboole_0),esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_80,c_0_81]),c_0_81]),c_0_81])).

cnf(c_0_85,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | esk6_0 = X1
    | m1_subset_1(esk1_2(esk6_0,X1),X2)
    | esk4_0 != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(esk4_0,X2) ),
    inference(spm,[status(thm)],[c_0_56,c_0_82])).

cnf(c_0_86,negated_conjecture,
    ( v1_funct_1(k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_83,c_0_81])])).

cnf(c_0_87,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_29])).

cnf(c_0_88,negated_conjecture,
    ( esk4_0 = k1_relat_1(k1_xboole_0)
    | esk6_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_41,c_0_81])).

cnf(c_0_89,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | k1_relat_1(esk6_0) != k1_relat_1(k1_xboole_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_86]),c_0_87]),c_0_64])]),c_0_88])).

cnf(c_0_90,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,esk6_0,k1_xboole_0)),k1_xboole_0)
    | r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,esk6_0,k1_xboole_0)),esk6_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72,c_0_81]),c_0_81]),c_0_81]),c_0_81]),c_0_81])).

cnf(c_0_91,negated_conjecture,
    ( esk6_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_71]),c_0_88])).

cnf(c_0_92,negated_conjecture,
    ( ~ r2_relset_1(esk4_0,esk5_0,esk6_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_68,c_0_81])).

cnf(c_0_93,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0)),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_90,c_0_91]),c_0_91]),c_0_91]),c_0_91]),c_0_91])])).

cnf(c_0_94,negated_conjecture,
    ( ~ r2_relset_1(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_92,c_0_91])).

cnf(c_0_95,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_93]),c_0_93]),c_0_29])]),c_0_94]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n023.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:45:20 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.21/0.41  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S5PRR_S0Y
% 0.21/0.41  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.21/0.41  #
% 0.21/0.41  # Preprocessing time       : 0.029 s
% 0.21/0.41  # Presaturation interreduction done
% 0.21/0.41  
% 0.21/0.41  # Proof found!
% 0.21/0.41  # SZS status Theorem
% 0.21/0.41  # SZS output start CNFRefutation
% 0.21/0.41  fof(t113_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(![X5]:(m1_subset_1(X5,X1)=>k1_funct_1(X3,X5)=k1_funct_1(X4,X5))=>r2_relset_1(X1,X2,X3,X4)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_funct_2)).
% 0.21/0.41  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.21/0.41  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.21/0.41  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.21/0.41  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.21/0.41  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.21/0.41  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset_1)).
% 0.21/0.41  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.21/0.41  fof(t9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((k1_relat_1(X1)=k1_relat_1(X2)&![X3]:(r2_hidden(X3,k1_relat_1(X1))=>k1_funct_1(X1,X3)=k1_funct_1(X2,X3)))=>X1=X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t9_funct_1)).
% 0.21/0.41  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset)).
% 0.21/0.41  fof(d3_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r2_relset_1(X1,X2,X3,X4)<=>![X5]:(m1_subset_1(X5,X1)=>![X6]:(m1_subset_1(X6,X2)=>(r2_hidden(k4_tarski(X5,X6),X3)<=>r2_hidden(k4_tarski(X5,X6),X4))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_relset_1)).
% 0.21/0.41  fof(c_0_11, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(![X5]:(m1_subset_1(X5,X1)=>k1_funct_1(X3,X5)=k1_funct_1(X4,X5))=>r2_relset_1(X1,X2,X3,X4))))), inference(assume_negation,[status(cth)],[t113_funct_2])).
% 0.21/0.41  fof(c_0_12, plain, ![X14, X15]:((~m1_subset_1(X14,k1_zfmisc_1(X15))|r1_tarski(X14,X15))&(~r1_tarski(X14,X15)|m1_subset_1(X14,k1_zfmisc_1(X15)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.21/0.41  fof(c_0_13, negated_conjecture, ![X43]:(((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,esk4_0,esk5_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))))&(((v1_funct_1(esk7_0)&v1_funct_2(esk7_0,esk4_0,esk5_0))&m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))))&((~m1_subset_1(X43,esk4_0)|k1_funct_1(esk6_0,X43)=k1_funct_1(esk7_0,X43))&~r2_relset_1(esk4_0,esk5_0,esk6_0,esk7_0)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])])).
% 0.21/0.41  fof(c_0_14, plain, ![X33, X34, X35]:(~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))|k1_relset_1(X33,X34,X35)=k1_relat_1(X35)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.21/0.41  fof(c_0_15, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.21/0.41  cnf(c_0_16, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.41  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  fof(c_0_18, plain, ![X36, X37, X38]:((((~v1_funct_2(X38,X36,X37)|X36=k1_relset_1(X36,X37,X38)|X37=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))))&(X36!=k1_relset_1(X36,X37,X38)|v1_funct_2(X38,X36,X37)|X37=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))))&((~v1_funct_2(X38,X36,X37)|X36=k1_relset_1(X36,X37,X38)|X36!=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))))&(X36!=k1_relset_1(X36,X37,X38)|v1_funct_2(X38,X36,X37)|X36!=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))))))&((~v1_funct_2(X38,X36,X37)|X38=k1_xboole_0|X36=k1_xboole_0|X37!=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37))))&(X38!=k1_xboole_0|v1_funct_2(X38,X36,X37)|X36=k1_xboole_0|X37!=k1_xboole_0|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.21/0.41  cnf(c_0_19, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.21/0.41  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  fof(c_0_21, plain, ![X9, X10]:((k2_zfmisc_1(X9,X10)!=k1_xboole_0|(X9=k1_xboole_0|X10=k1_xboole_0))&((X9!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0)&(X10!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.21/0.41  fof(c_0_22, plain, ![X11]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X11)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.21/0.41  cnf(c_0_23, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.41  cnf(c_0_24, negated_conjecture, (r1_tarski(esk6_0,k2_zfmisc_1(esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.21/0.41  cnf(c_0_25, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.21/0.41  cnf(c_0_26, negated_conjecture, (v1_funct_2(esk7_0,esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_27, negated_conjecture, (k1_relset_1(esk4_0,esk5_0,esk7_0)=k1_relat_1(esk7_0)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.21/0.41  cnf(c_0_28, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.21/0.41  cnf(c_0_29, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.41  fof(c_0_30, plain, ![X22, X23, X24]:(~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))|v1_relat_1(X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.21/0.41  cnf(c_0_31, negated_conjecture, (r1_tarski(esk7_0,k2_zfmisc_1(esk4_0,esk5_0))), inference(spm,[status(thm)],[c_0_16, c_0_20])).
% 0.21/0.41  cnf(c_0_32, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=esk6_0|~r1_tarski(k2_zfmisc_1(esk4_0,esk5_0),esk6_0)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.21/0.41  cnf(c_0_33, negated_conjecture, (k1_relat_1(esk7_0)=esk4_0|esk5_0=k1_xboole_0), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_20])]), c_0_27])).
% 0.21/0.41  cnf(c_0_34, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_28])).
% 0.21/0.41  cnf(c_0_35, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_16, c_0_29])).
% 0.21/0.41  fof(c_0_36, plain, ![X19, X20]:((r2_hidden(esk1_2(X19,X20),k1_relat_1(X19))|k1_relat_1(X19)!=k1_relat_1(X20)|X19=X20|(~v1_relat_1(X20)|~v1_funct_1(X20))|(~v1_relat_1(X19)|~v1_funct_1(X19)))&(k1_funct_1(X19,esk1_2(X19,X20))!=k1_funct_1(X20,esk1_2(X19,X20))|k1_relat_1(X19)!=k1_relat_1(X20)|X19=X20|(~v1_relat_1(X20)|~v1_funct_1(X20))|(~v1_relat_1(X19)|~v1_funct_1(X19)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t9_funct_1])])])])])).
% 0.21/0.41  cnf(c_0_37, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.41  fof(c_0_38, plain, ![X16, X17, X18]:(~r2_hidden(X16,X17)|~m1_subset_1(X17,k1_zfmisc_1(X18))|m1_subset_1(X16,X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.21/0.41  cnf(c_0_39, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=esk7_0|~r1_tarski(k2_zfmisc_1(esk4_0,esk5_0),esk7_0)), inference(spm,[status(thm)],[c_0_23, c_0_31])).
% 0.21/0.41  cnf(c_0_40, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_41, negated_conjecture, (k1_relat_1(esk7_0)=esk4_0|esk6_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34]), c_0_34]), c_0_35])])).
% 0.21/0.41  cnf(c_0_42, plain, (X1=X2|k1_funct_1(X1,esk1_2(X1,X2))!=k1_funct_1(X2,esk1_2(X1,X2))|k1_relat_1(X1)!=k1_relat_1(X2)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.21/0.41  cnf(c_0_43, negated_conjecture, (k1_funct_1(esk6_0,X1)=k1_funct_1(esk7_0,X1)|~m1_subset_1(X1,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_44, negated_conjecture, (v1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_37, c_0_17])).
% 0.21/0.41  cnf(c_0_45, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.21/0.41  cnf(c_0_46, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.21/0.41  cnf(c_0_47, plain, (r2_hidden(esk1_2(X1,X2),k1_relat_1(X1))|X1=X2|k1_relat_1(X1)!=k1_relat_1(X2)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.21/0.41  cnf(c_0_48, negated_conjecture, (k1_relat_1(esk7_0)=esk4_0|esk7_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_33]), c_0_34]), c_0_34]), c_0_35])])).
% 0.21/0.41  cnf(c_0_49, negated_conjecture, (v1_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_50, negated_conjecture, (v1_relat_1(esk7_0)), inference(spm,[status(thm)],[c_0_37, c_0_20])).
% 0.21/0.41  cnf(c_0_51, negated_conjecture, (v1_funct_2(esk6_0,esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_52, negated_conjecture, (k1_relset_1(esk4_0,esk5_0,esk6_0)=k1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_19, c_0_17])).
% 0.21/0.41  cnf(c_0_53, negated_conjecture, (k1_relat_1(esk7_0)=esk4_0|v1_funct_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.21/0.41  fof(c_0_54, plain, ![X25, X26, X27, X28, X29, X30]:(((~r2_hidden(k4_tarski(X29,X30),X27)|r2_hidden(k4_tarski(X29,X30),X28)|~m1_subset_1(X30,X26)|~m1_subset_1(X29,X25)|~r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))&(~r2_hidden(k4_tarski(X29,X30),X28)|r2_hidden(k4_tarski(X29,X30),X27)|~m1_subset_1(X30,X26)|~m1_subset_1(X29,X25)|~r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))))&((m1_subset_1(esk2_4(X25,X26,X27,X28),X25)|r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))&((m1_subset_1(esk3_4(X25,X26,X27,X28),X26)|r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))&((~r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X27)|~r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X28)|r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26))))&(r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X27)|r2_hidden(k4_tarski(esk2_4(X25,X26,X27,X28),esk3_4(X25,X26,X27,X28)),X28)|r2_relset_1(X25,X26,X27,X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(X25,X26)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_relset_1])])])])])).
% 0.21/0.41  cnf(c_0_55, negated_conjecture, (X1=esk6_0|k1_funct_1(X1,esk1_2(X1,esk6_0))!=k1_funct_1(esk7_0,esk1_2(X1,esk6_0))|k1_relat_1(X1)!=k1_relat_1(esk6_0)|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(esk1_2(X1,esk6_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_40])]), c_0_44])])).
% 0.21/0.41  cnf(c_0_56, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.21/0.41  cnf(c_0_57, negated_conjecture, (esk7_0=k1_xboole_0|esk7_0=X1|r2_hidden(esk1_2(esk7_0,X1),esk4_0)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_49]), c_0_50])])).
% 0.21/0.41  cnf(c_0_58, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.41  cnf(c_0_59, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0|esk5_0=k1_xboole_0), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_51]), c_0_17])]), c_0_52])).
% 0.21/0.41  cnf(c_0_60, negated_conjecture, (esk7_0=X1|v1_funct_1(k1_xboole_0)|r2_hidden(esk1_2(esk7_0,X1),esk4_0)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_53]), c_0_49]), c_0_50])])).
% 0.21/0.41  cnf(c_0_61, plain, (r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X3)|r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X4)|r2_relset_1(X1,X2,X3,X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.21/0.41  cnf(c_0_62, negated_conjecture, (esk6_0=esk7_0|k1_relat_1(esk6_0)!=k1_relat_1(esk7_0)|~m1_subset_1(esk1_2(esk7_0,esk6_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_55]), c_0_49]), c_0_50])])).
% 0.21/0.41  cnf(c_0_63, negated_conjecture, (esk7_0=k1_xboole_0|esk7_0=X1|m1_subset_1(esk1_2(esk7_0,X1),X2)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(esk4_0,X2)), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.21/0.41  cnf(c_0_64, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_58])).
% 0.21/0.41  cnf(c_0_65, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0|esk7_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_59]), c_0_34]), c_0_34]), c_0_35])])).
% 0.21/0.41  cnf(c_0_66, negated_conjecture, (esk7_0=X1|v1_funct_1(k1_xboole_0)|m1_subset_1(esk1_2(esk7_0,X1),X2)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(esk4_0,X2)), inference(spm,[status(thm)],[c_0_56, c_0_60])).
% 0.21/0.41  cnf(c_0_67, negated_conjecture, (r2_relset_1(esk4_0,esk5_0,X1,esk7_0)|r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,X1,esk7_0),esk3_4(esk4_0,esk5_0,X1,esk7_0)),esk7_0)|r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,X1,esk7_0),esk3_4(esk4_0,esk5_0,X1,esk7_0)),X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))), inference(spm,[status(thm)],[c_0_61, c_0_20])).
% 0.21/0.41  cnf(c_0_68, negated_conjecture, (~r2_relset_1(esk4_0,esk5_0,esk6_0,esk7_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.21/0.41  cnf(c_0_69, negated_conjecture, (esk7_0=k1_xboole_0|esk6_0=esk7_0|k1_relat_1(esk6_0)!=k1_relat_1(esk7_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_40]), c_0_44]), c_0_64])]), c_0_65])).
% 0.21/0.41  cnf(c_0_70, negated_conjecture, (esk6_0=esk7_0|v1_funct_1(k1_xboole_0)|k1_relat_1(esk6_0)!=k1_relat_1(esk7_0)|k1_relat_1(esk6_0)!=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_66]), c_0_40]), c_0_44]), c_0_64])])).
% 0.21/0.41  cnf(c_0_71, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0|esk6_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_59]), c_0_34]), c_0_34]), c_0_35])])).
% 0.21/0.41  cnf(c_0_72, negated_conjecture, (r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,esk7_0),esk3_4(esk4_0,esk5_0,esk6_0,esk7_0)),esk6_0)|r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,esk7_0),esk3_4(esk4_0,esk5_0,esk6_0,esk7_0)),esk7_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_17]), c_0_68])).
% 0.21/0.41  cnf(c_0_73, negated_conjecture, (esk6_0=esk7_0|esk7_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_65]), c_0_48])).
% 0.21/0.41  cnf(c_0_74, negated_conjecture, (esk6_0=k1_xboole_0|esk6_0=esk7_0|v1_funct_1(k1_xboole_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_71]), c_0_53])).
% 0.21/0.41  cnf(c_0_75, negated_conjecture, (esk6_0=X1|k1_funct_1(esk7_0,esk1_2(esk6_0,X1))!=k1_funct_1(X1,esk1_2(esk6_0,X1))|k1_relat_1(esk6_0)!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~m1_subset_1(esk1_2(esk6_0,X1),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_40])]), c_0_44])])).
% 0.21/0.41  cnf(c_0_76, plain, (r2_relset_1(X1,X2,X3,X4)|~r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X3)|~r2_hidden(k4_tarski(esk2_4(X1,X2,X3,X4),esk3_4(X1,X2,X3,X4)),X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.21/0.41  cnf(c_0_77, negated_conjecture, (esk7_0=k1_xboole_0|r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk7_0,esk7_0),esk3_4(esk4_0,esk5_0,esk7_0,esk7_0)),esk7_0)), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.21/0.41  cnf(c_0_78, negated_conjecture, (esk7_0=k1_xboole_0|~r2_relset_1(esk4_0,esk5_0,esk7_0,esk7_0)), inference(spm,[status(thm)],[c_0_68, c_0_73])).
% 0.21/0.41  cnf(c_0_79, negated_conjecture, (esk6_0=k1_xboole_0|v1_funct_1(k1_xboole_0)|esk7_0!=k1_xboole_0), inference(ef,[status(thm)],[c_0_74])).
% 0.21/0.41  cnf(c_0_80, negated_conjecture, (esk6_0=esk7_0|k1_relat_1(esk6_0)!=k1_relat_1(esk7_0)|~m1_subset_1(esk1_2(esk6_0,esk7_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_75]), c_0_49]), c_0_50])])).
% 0.21/0.41  cnf(c_0_81, negated_conjecture, (esk7_0=k1_xboole_0), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77]), c_0_20])]), c_0_77]), c_0_78])).
% 0.21/0.41  cnf(c_0_82, negated_conjecture, (esk6_0=k1_xboole_0|esk6_0=X1|r2_hidden(esk1_2(esk6_0,X1),esk4_0)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_71]), c_0_40]), c_0_44])])).
% 0.21/0.41  cnf(c_0_83, negated_conjecture, (v1_funct_1(k1_xboole_0)|esk7_0!=k1_xboole_0), inference(spm,[status(thm)],[c_0_40, c_0_79])).
% 0.21/0.41  cnf(c_0_84, negated_conjecture, (esk6_0=k1_xboole_0|k1_relat_1(esk6_0)!=k1_relat_1(k1_xboole_0)|~m1_subset_1(esk1_2(esk6_0,k1_xboole_0),esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_80, c_0_81]), c_0_81]), c_0_81])).
% 0.21/0.41  cnf(c_0_85, negated_conjecture, (esk6_0=k1_xboole_0|esk6_0=X1|m1_subset_1(esk1_2(esk6_0,X1),X2)|esk4_0!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r1_tarski(esk4_0,X2)), inference(spm,[status(thm)],[c_0_56, c_0_82])).
% 0.21/0.41  cnf(c_0_86, negated_conjecture, (v1_funct_1(k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_83, c_0_81])])).
% 0.21/0.41  cnf(c_0_87, plain, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_37, c_0_29])).
% 0.21/0.41  cnf(c_0_88, negated_conjecture, (esk4_0=k1_relat_1(k1_xboole_0)|esk6_0=k1_xboole_0), inference(rw,[status(thm)],[c_0_41, c_0_81])).
% 0.21/0.41  cnf(c_0_89, negated_conjecture, (esk6_0=k1_xboole_0|k1_relat_1(esk6_0)!=k1_relat_1(k1_xboole_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_86]), c_0_87]), c_0_64])]), c_0_88])).
% 0.21/0.41  cnf(c_0_90, negated_conjecture, (r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,esk6_0,k1_xboole_0)),k1_xboole_0)|r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,esk6_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,esk6_0,k1_xboole_0)),esk6_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72, c_0_81]), c_0_81]), c_0_81]), c_0_81]), c_0_81])).
% 0.21/0.41  cnf(c_0_91, negated_conjecture, (esk6_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_71]), c_0_88])).
% 0.21/0.41  cnf(c_0_92, negated_conjecture, (~r2_relset_1(esk4_0,esk5_0,esk6_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_68, c_0_81])).
% 0.21/0.41  cnf(c_0_93, negated_conjecture, (r2_hidden(k4_tarski(esk2_4(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0),esk3_4(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0)),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_90, c_0_91]), c_0_91]), c_0_91]), c_0_91]), c_0_91])])).
% 0.21/0.41  cnf(c_0_94, negated_conjecture, (~r2_relset_1(esk4_0,esk5_0,k1_xboole_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_92, c_0_91])).
% 0.21/0.41  cnf(c_0_95, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_93]), c_0_93]), c_0_29])]), c_0_94]), ['proof']).
% 0.21/0.41  # SZS output end CNFRefutation
% 0.21/0.41  # Proof object total steps             : 96
% 0.21/0.41  # Proof object clause steps            : 73
% 0.21/0.41  # Proof object formula steps           : 23
% 0.21/0.41  # Proof object conjectures             : 57
% 0.21/0.41  # Proof object clause conjectures      : 54
% 0.21/0.41  # Proof object formula conjectures     : 3
% 0.21/0.41  # Proof object initial clauses used    : 22
% 0.21/0.41  # Proof object initial formulas used   : 11
% 0.21/0.41  # Proof object generating inferences   : 42
% 0.21/0.41  # Proof object simplifying inferences  : 92
% 0.21/0.41  # Training examples: 0 positive, 0 negative
% 0.21/0.41  # Parsed axioms                        : 12
% 0.21/0.41  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.41  # Initial clauses                      : 35
% 0.21/0.41  # Removed in clause preprocessing      : 0
% 0.21/0.41  # Initial clauses in saturation        : 35
% 0.21/0.41  # Processed clauses                    : 449
% 0.21/0.41  # ...of these trivial                  : 18
% 0.21/0.41  # ...subsumed                          : 179
% 0.21/0.41  # ...remaining for further processing  : 252
% 0.21/0.41  # Other redundant clauses eliminated   : 9
% 0.21/0.41  # Clauses deleted for lack of memory   : 0
% 0.21/0.41  # Backward-subsumed                    : 7
% 0.21/0.41  # Backward-rewritten                   : 115
% 0.21/0.41  # Generated clauses                    : 934
% 0.21/0.41  # ...of the previous two non-trivial   : 895
% 0.21/0.41  # Contextual simplify-reflections      : 10
% 0.21/0.41  # Paramodulations                      : 922
% 0.21/0.41  # Factorizations                       : 1
% 0.21/0.41  # Equation resolutions                 : 12
% 0.21/0.41  # Propositional unsat checks           : 0
% 0.21/0.41  #    Propositional check models        : 0
% 0.21/0.41  #    Propositional check unsatisfiable : 0
% 0.21/0.41  #    Propositional clauses             : 0
% 0.21/0.41  #    Propositional clauses after purity: 0
% 0.21/0.41  #    Propositional unsat core size     : 0
% 0.21/0.41  #    Propositional preprocessing time  : 0.000
% 0.21/0.41  #    Propositional encoding time       : 0.000
% 0.21/0.41  #    Propositional solver time         : 0.000
% 0.21/0.41  #    Success case prop preproc time    : 0.000
% 0.21/0.41  #    Success case prop encoding time   : 0.000
% 0.21/0.41  #    Success case prop solver time     : 0.000
% 0.21/0.41  # Current number of processed clauses  : 88
% 0.21/0.41  #    Positive orientable unit clauses  : 14
% 0.21/0.41  #    Positive unorientable unit clauses: 0
% 0.21/0.41  #    Negative unit clauses             : 1
% 0.21/0.41  #    Non-unit-clauses                  : 73
% 0.21/0.41  # Current number of unprocessed clauses: 384
% 0.21/0.41  # ...number of literals in the above   : 2630
% 0.21/0.41  # Current number of archived formulas  : 0
% 0.21/0.41  # Current number of archived clauses   : 156
% 0.21/0.41  # Clause-clause subsumption calls (NU) : 8051
% 0.21/0.41  # Rec. Clause-clause subsumption calls : 2375
% 0.21/0.41  # Non-unit clause-clause subsumptions  : 195
% 0.21/0.41  # Unit Clause-clause subsumption calls : 107
% 0.21/0.41  # Rewrite failures with RHS unbound    : 0
% 0.21/0.41  # BW rewrite match attempts            : 27
% 0.21/0.41  # BW rewrite match successes           : 2
% 0.21/0.41  # Condensation attempts                : 0
% 0.21/0.41  # Condensation successes               : 0
% 0.21/0.41  # Termbank termtop insertions          : 23592
% 0.21/0.41  
% 0.21/0.41  # -------------------------------------------------
% 0.21/0.41  # User time                : 0.058 s
% 0.21/0.41  # System time              : 0.008 s
% 0.21/0.41  # Total time               : 0.066 s
% 0.21/0.41  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
