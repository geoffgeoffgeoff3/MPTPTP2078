%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.lhfRs1TxWC

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:56:06 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   46 (  71 expanded)
%              Number of leaves         :   22 (  31 expanded)
%              Depth                    :   11
%              Number of atoms          :  239 ( 497 expanded)
%              Number of equality atoms :   23 (  48 expanded)
%              Maximal formula depth    :   19 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k7_relset_1_type,type,(
    k7_relset_1: $i > $i > $i > $i > $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(t59_funct_2,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( v1_funct_2 @ C @ k1_xboole_0 @ A )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ A ) ) ) )
     => ( ( k7_relset_1 @ k1_xboole_0 @ A @ C @ B )
        = k1_xboole_0 ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_funct_1 @ C )
          & ( v1_funct_2 @ C @ k1_xboole_0 @ A )
          & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ A ) ) ) )
       => ( ( k7_relset_1 @ k1_xboole_0 @ A @ C @ B )
          = k1_xboole_0 ) ) ),
    inference('cnf.neg',[status(esa)],[t59_funct_2])).

thf('0',plain,(
    ( k7_relset_1 @ k1_xboole_0 @ sk_A @ sk_C @ sk_B_1 )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t6_mcart_1,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ! [C: $i,D: $i,E: $i,F: $i,G: $i] :
                  ( ( ( r2_hidden @ C @ D )
                    & ( r2_hidden @ D @ E )
                    & ( r2_hidden @ E @ F )
                    & ( r2_hidden @ F @ G )
                    & ( r2_hidden @ G @ B ) )
                 => ( r1_xboole_0 @ C @ A ) ) ) ) )).

thf('1',plain,(
    ! [X11: $i] :
      ( ( X11 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X11 ) @ X11 ) ) ),
    inference(cnf,[status(esa)],[t6_mcart_1])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t113_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k2_zfmisc_1 @ A @ B )
        = k1_xboole_0 )
    <=> ( ( A = k1_xboole_0 )
        | ( B = k1_xboole_0 ) ) ) )).

thf('3',plain,(
    ! [X1: $i,X2: $i] :
      ( ( ( k2_zfmisc_1 @ X1 @ X2 )
        = k1_xboole_0 )
      | ( X1 != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t113_zfmisc_1])).

thf('4',plain,(
    ! [X2: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X2 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['2','4'])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('6',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r2_hidden @ X3 @ X4 )
      | ~ ( v1_xboole_0 @ X5 )
      | ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ k1_xboole_0 )
      | ~ ( r2_hidden @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('8',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('9',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ sk_C ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,(
    sk_C = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','9'])).

thf('11',plain,(
    ( k7_relset_1 @ k1_xboole_0 @ sk_A @ k1_xboole_0 @ sk_B_1 )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['0','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['2','4'])).

thf('13',plain,(
    sk_C = k1_xboole_0 ),
    inference('sup-',[status(thm)],['1','9'])).

thf('14',plain,(
    m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ k1_xboole_0 ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X2: $i] :
      ( ( k2_zfmisc_1 @ k1_xboole_0 @ X2 )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['3'])).

thf(redefinition_k7_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k7_relset_1 @ A @ B @ C @ D )
        = ( k9_relat_1 @ C @ D ) ) ) )).

thf('16',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X8 @ X9 ) ) )
      | ( ( k7_relset_1 @ X8 @ X9 @ X7 @ X10 )
        = ( k9_relat_1 @ X7 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_relset_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ k1_xboole_0 ) )
      | ( ( k7_relset_1 @ k1_xboole_0 @ X0 @ X1 @ X2 )
        = ( k9_relat_1 @ X1 @ X2 ) ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k7_relset_1 @ k1_xboole_0 @ X1 @ k1_xboole_0 @ X0 )
      = ( k9_relat_1 @ k1_xboole_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','17'])).

thf(t150_relat_1,axiom,(
    ! [A: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ A )
      = k1_xboole_0 ) )).

thf('19',plain,(
    ! [X6: $i] :
      ( ( k9_relat_1 @ k1_xboole_0 @ X6 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t150_relat_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k7_relset_1 @ k1_xboole_0 @ X1 @ k1_xboole_0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['18','19'])).

thf('21',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['11','20'])).

thf('22',plain,(
    $false ),
    inference(simplify,[status(thm)],['21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.lhfRs1TxWC
% 0.13/0.34  % Computer   : n010.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:29:14 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.42  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.42  % Solved by: fo/fo7.sh
% 0.20/0.42  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.42  % done 25 iterations in 0.009s
% 0.20/0.42  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.42  % SZS output start Refutation
% 0.20/0.42  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.42  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.42  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.42  thf(k7_relset_1_type, type, k7_relset_1: $i > $i > $i > $i > $i).
% 0.20/0.42  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.42  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.42  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.20/0.42  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.42  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.42  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.42  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.42  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.42  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.42  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.42  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.42  thf(t59_funct_2, conjecture,
% 0.20/0.42    (![A:$i,B:$i,C:$i]:
% 0.20/0.42     ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ k1_xboole_0 @ A ) & 
% 0.20/0.42         ( m1_subset_1 @
% 0.20/0.42           C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ A ) ) ) ) =>
% 0.20/0.42       ( ( k7_relset_1 @ k1_xboole_0 @ A @ C @ B ) = ( k1_xboole_0 ) ) ))).
% 0.20/0.42  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.42    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.42        ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ k1_xboole_0 @ A ) & 
% 0.20/0.42            ( m1_subset_1 @
% 0.20/0.42              C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ k1_xboole_0 @ A ) ) ) ) =>
% 0.20/0.42          ( ( k7_relset_1 @ k1_xboole_0 @ A @ C @ B ) = ( k1_xboole_0 ) ) ) )),
% 0.20/0.42    inference('cnf.neg', [status(esa)], [t59_funct_2])).
% 0.20/0.42  thf('0', plain,
% 0.20/0.42      (((k7_relset_1 @ k1_xboole_0 @ sk_A @ sk_C @ sk_B_1) != (k1_xboole_0))),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf(t6_mcart_1, axiom,
% 0.20/0.42    (![A:$i]:
% 0.20/0.42     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 0.20/0.42          ( ![B:$i]:
% 0.20/0.42            ( ~( ( r2_hidden @ B @ A ) & 
% 0.20/0.42                 ( ![C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.20/0.42                   ( ( ( r2_hidden @ C @ D ) & ( r2_hidden @ D @ E ) & 
% 0.20/0.42                       ( r2_hidden @ E @ F ) & ( r2_hidden @ F @ G ) & 
% 0.20/0.42                       ( r2_hidden @ G @ B ) ) =>
% 0.20/0.42                     ( r1_xboole_0 @ C @ A ) ) ) ) ) ) ) ))).
% 0.20/0.42  thf('1', plain,
% 0.20/0.42      (![X11 : $i]:
% 0.20/0.42         (((X11) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X11) @ X11))),
% 0.20/0.42      inference('cnf', [status(esa)], [t6_mcart_1])).
% 0.20/0.42  thf('2', plain,
% 0.20/0.42      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ k1_xboole_0 @ sk_A)))),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf(t113_zfmisc_1, axiom,
% 0.20/0.42    (![A:$i,B:$i]:
% 0.20/0.42     ( ( ( k2_zfmisc_1 @ A @ B ) = ( k1_xboole_0 ) ) <=>
% 0.20/0.42       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) ) ))).
% 0.20/0.42  thf('3', plain,
% 0.20/0.42      (![X1 : $i, X2 : $i]:
% 0.20/0.42         (((k2_zfmisc_1 @ X1 @ X2) = (k1_xboole_0)) | ((X1) != (k1_xboole_0)))),
% 0.20/0.42      inference('cnf', [status(esa)], [t113_zfmisc_1])).
% 0.20/0.42  thf('4', plain,
% 0.20/0.42      (![X2 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X2) = (k1_xboole_0))),
% 0.20/0.42      inference('simplify', [status(thm)], ['3'])).
% 0.20/0.42  thf('5', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['2', '4'])).
% 0.20/0.42  thf(t5_subset, axiom,
% 0.20/0.42    (![A:$i,B:$i,C:$i]:
% 0.20/0.42     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.20/0.42          ( v1_xboole_0 @ C ) ) ))).
% 0.20/0.42  thf('6', plain,
% 0.20/0.42      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.42         (~ (r2_hidden @ X3 @ X4)
% 0.20/0.42          | ~ (v1_xboole_0 @ X5)
% 0.20/0.42          | ~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5)))),
% 0.20/0.42      inference('cnf', [status(esa)], [t5_subset])).
% 0.20/0.42  thf('7', plain,
% 0.20/0.42      (![X0 : $i]: (~ (v1_xboole_0 @ k1_xboole_0) | ~ (r2_hidden @ X0 @ sk_C))),
% 0.20/0.42      inference('sup-', [status(thm)], ['5', '6'])).
% 0.20/0.42  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.20/0.42  thf('8', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.20/0.42      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.20/0.42  thf('9', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ sk_C)),
% 0.20/0.42      inference('demod', [status(thm)], ['7', '8'])).
% 0.20/0.42  thf('10', plain, (((sk_C) = (k1_xboole_0))),
% 0.20/0.42      inference('sup-', [status(thm)], ['1', '9'])).
% 0.20/0.42  thf('11', plain,
% 0.20/0.42      (((k7_relset_1 @ k1_xboole_0 @ sk_A @ k1_xboole_0 @ sk_B_1)
% 0.20/0.42         != (k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['0', '10'])).
% 0.20/0.42  thf('12', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['2', '4'])).
% 0.20/0.42  thf('13', plain, (((sk_C) = (k1_xboole_0))),
% 0.20/0.42      inference('sup-', [status(thm)], ['1', '9'])).
% 0.20/0.42  thf('14', plain, ((m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['12', '13'])).
% 0.20/0.42  thf('15', plain,
% 0.20/0.42      (![X2 : $i]: ((k2_zfmisc_1 @ k1_xboole_0 @ X2) = (k1_xboole_0))),
% 0.20/0.42      inference('simplify', [status(thm)], ['3'])).
% 0.20/0.42  thf(redefinition_k7_relset_1, axiom,
% 0.20/0.42    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.42     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.20/0.42       ( ( k7_relset_1 @ A @ B @ C @ D ) = ( k9_relat_1 @ C @ D ) ) ))).
% 0.20/0.42  thf('16', plain,
% 0.20/0.42      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.42         (~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X8 @ X9)))
% 0.20/0.42          | ((k7_relset_1 @ X8 @ X9 @ X7 @ X10) = (k9_relat_1 @ X7 @ X10)))),
% 0.20/0.42      inference('cnf', [status(esa)], [redefinition_k7_relset_1])).
% 0.20/0.42  thf('17', plain,
% 0.20/0.42      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.42         (~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ k1_xboole_0))
% 0.20/0.42          | ((k7_relset_1 @ k1_xboole_0 @ X0 @ X1 @ X2)
% 0.20/0.42              = (k9_relat_1 @ X1 @ X2)))),
% 0.20/0.42      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.42  thf('18', plain,
% 0.20/0.42      (![X0 : $i, X1 : $i]:
% 0.20/0.42         ((k7_relset_1 @ k1_xboole_0 @ X1 @ k1_xboole_0 @ X0)
% 0.20/0.42           = (k9_relat_1 @ k1_xboole_0 @ X0))),
% 0.20/0.42      inference('sup-', [status(thm)], ['14', '17'])).
% 0.20/0.42  thf(t150_relat_1, axiom,
% 0.20/0.42    (![A:$i]: ( ( k9_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ))).
% 0.20/0.42  thf('19', plain,
% 0.20/0.42      (![X6 : $i]: ((k9_relat_1 @ k1_xboole_0 @ X6) = (k1_xboole_0))),
% 0.20/0.42      inference('cnf', [status(esa)], [t150_relat_1])).
% 0.20/0.42  thf('20', plain,
% 0.20/0.42      (![X0 : $i, X1 : $i]:
% 0.20/0.42         ((k7_relset_1 @ k1_xboole_0 @ X1 @ k1_xboole_0 @ X0) = (k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['18', '19'])).
% 0.20/0.42  thf('21', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.20/0.42      inference('demod', [status(thm)], ['11', '20'])).
% 0.20/0.43  thf('22', plain, ($false), inference('simplify', [status(thm)], ['21'])).
% 0.20/0.43  
% 0.20/0.43  % SZS output end Refutation
% 0.20/0.43  
% 0.20/0.43  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
