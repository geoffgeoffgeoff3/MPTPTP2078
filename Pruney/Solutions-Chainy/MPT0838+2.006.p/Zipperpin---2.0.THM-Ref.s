%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.r8G3jeIwFu

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:49:59 EST 2020

% Result     : Theorem 0.24s
% Output     : Refutation 0.24s
% Verified   : 
% Statistics : Number of formulae       :   66 (  81 expanded)
%              Number of leaves         :   30 (  37 expanded)
%              Depth                    :   13
%              Number of atoms          :  353 ( 675 expanded)
%              Number of equality atoms :   14 (  26 expanded)
%              Maximal formula depth    :   17 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relset_1_type,type,(
    k1_relset_1: $i > $i > $i > $i )).

thf(k2_relset_1_type,type,(
    k2_relset_1: $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('0',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ X2 )
      | ( r2_hidden @ ( sk_B @ X2 ) @ X2 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf(t49_relset_1,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
             => ~ ( ( ( k1_relset_1 @ A @ B @ C )
                   != k1_xboole_0 )
                  & ! [D: $i] :
                      ( ( m1_subset_1 @ D @ B )
                     => ~ ( r2_hidden @ D @ ( k2_relset_1 @ A @ B @ C ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
               => ~ ( ( ( k1_relset_1 @ A @ B @ C )
                     != k1_xboole_0 )
                    & ! [D: $i] :
                        ( ( m1_subset_1 @ D @ B )
                       => ~ ( r2_hidden @ D @ ( k2_relset_1 @ A @ B @ C ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t49_relset_1])).

thf('1',plain,(
    ! [X26: $i] :
      ( ~ ( r2_hidden @ X26 @ ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_C ) )
      | ~ ( m1_subset_1 @ X26 @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k2_relset_1 @ A @ B @ C )
        = ( k2_relat_1 @ C ) ) ) )).

thf('3',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( ( k2_relset_1 @ X24 @ X25 @ X23 )
        = ( k2_relat_1 @ X23 ) )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X24 @ X25 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_relset_1])).

thf('4',plain,
    ( ( k2_relset_1 @ sk_A @ sk_B_1 @ sk_C )
    = ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X26: $i] :
      ( ~ ( r2_hidden @ X26 @ ( k2_relat_1 @ sk_C ) )
      | ~ ( m1_subset_1 @ X26 @ sk_B_1 ) ) ),
    inference(demod,[status(thm)],['1','4'])).

thf('6',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('7',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ( v5_relat_1 @ X17 @ X19 )
      | ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X18 @ X19 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('8',plain,(
    v5_relat_1 @ sk_C @ sk_B_1 ),
    inference('sup-',[status(thm)],['6','7'])).

thf(d19_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( v5_relat_1 @ B @ A )
      <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('9',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( v5_relat_1 @ X10 @ X11 )
      | ( r1_tarski @ ( k2_relat_1 @ X10 ) @ X11 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[d19_relat_1])).

thf('10',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ( r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('12',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( v1_relat_1 @ X14 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X15 @ X16 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('13',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    r1_tarski @ ( k2_relat_1 @ sk_C ) @ sk_B_1 ),
    inference(demod,[status(thm)],['10','13'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('15',plain,(
    ! [X4: $i,X6: $i] :
      ( ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X6 ) )
      | ~ ( r1_tarski @ X4 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('16',plain,(
    m1_subset_1 @ ( k2_relat_1 @ sk_C ) @ ( k1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('17',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( r2_hidden @ X7 @ X8 )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ X9 ) )
      | ( m1_subset_1 @ X7 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ sk_B_1 )
      | ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X26: $i] :
      ~ ( r2_hidden @ X26 @ ( k2_relat_1 @ sk_C ) ) ),
    inference(clc,[status(thm)],['5','18'])).

thf('20',plain,(
    v1_xboole_0 @ ( k2_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['0','19'])).

thf(fc9_relat_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( v1_relat_1 @ A ) )
     => ~ ( v1_xboole_0 @ ( k2_relat_1 @ A ) ) ) )).

thf('21',plain,(
    ! [X13: $i] :
      ( ~ ( v1_xboole_0 @ ( k2_relat_1 @ X13 ) )
      | ~ ( v1_relat_1 @ X13 )
      | ( v1_xboole_0 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc9_relat_1])).

thf('22',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_C ),
    inference('sup-',[status(thm)],['11','12'])).

thf('24',plain,(
    v1_xboole_0 @ sk_C ),
    inference(demod,[status(thm)],['22','23'])).

thf(fc10_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_xboole_0 @ ( k1_relat_1 @ A ) ) ) )).

thf('25',plain,(
    ! [X12: $i] :
      ( ( v1_xboole_0 @ ( k1_relat_1 @ X12 ) )
      | ~ ( v1_xboole_0 @ X12 ) ) ),
    inference(cnf,[status(esa)],[fc10_relat_1])).

thf(l13_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( A = k1_xboole_0 ) ) )).

thf('26',plain,(
    ! [X3: $i] :
      ( ( X3 = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X3 ) ) ),
    inference(cnf,[status(esa)],[l13_xboole_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ( ( k1_relat_1 @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,
    ( ( k1_relat_1 @ sk_C )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['24','27'])).

thf('29',plain,(
    ( k1_relset_1 @ sk_A @ sk_B_1 @ sk_C )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_A @ sk_B_1 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( k1_relset_1 @ A @ B @ C )
        = ( k1_relat_1 @ C ) ) ) )).

thf('31',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( ( k1_relset_1 @ X21 @ X22 @ X20 )
        = ( k1_relat_1 @ X20 ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k1_relset_1])).

thf('32',plain,
    ( ( k1_relset_1 @ sk_A @ sk_B_1 @ sk_C )
    = ( k1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    ( k1_relat_1 @ sk_C )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['29','32'])).

thf('34',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['28','33'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.15  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.16  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.r8G3jeIwFu
% 0.16/0.39  % Computer   : n006.cluster.edu
% 0.16/0.39  % Model      : x86_64 x86_64
% 0.16/0.39  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.16/0.39  % Memory     : 8042.1875MB
% 0.16/0.39  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.16/0.39  % CPULimit   : 60
% 0.16/0.39  % DateTime   : Tue Dec  1 11:39:23 EST 2020
% 0.16/0.39  % CPUTime    : 
% 0.16/0.39  % Running portfolio for 600 s
% 0.16/0.39  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.16/0.39  % Number of cores: 8
% 0.16/0.39  % Python version: Python 3.6.8
% 0.16/0.40  % Running in FO mode
% 0.24/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.24/0.53  % Solved by: fo/fo7.sh
% 0.24/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.24/0.53  % done 60 iterations in 0.025s
% 0.24/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.24/0.53  % SZS output start Refutation
% 0.24/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.24/0.53  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.24/0.53  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.24/0.53  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.24/0.53  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.24/0.53  thf(sk_B_type, type, sk_B: $i > $i).
% 0.24/0.53  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.24/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.24/0.53  thf(k1_relset_1_type, type, k1_relset_1: $i > $i > $i > $i).
% 0.24/0.53  thf(k2_relset_1_type, type, k2_relset_1: $i > $i > $i > $i).
% 0.24/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.24/0.53  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.24/0.53  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.24/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.24/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.24/0.53  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.24/0.53  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.24/0.53  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.24/0.53  thf(d1_xboole_0, axiom,
% 0.24/0.53    (![A:$i]:
% 0.24/0.53     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.24/0.53  thf('0', plain,
% 0.24/0.53      (![X2 : $i]: ((v1_xboole_0 @ X2) | (r2_hidden @ (sk_B @ X2) @ X2))),
% 0.24/0.53      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.24/0.53  thf(t49_relset_1, conjecture,
% 0.24/0.53    (![A:$i]:
% 0.24/0.53     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.24/0.53       ( ![B:$i]:
% 0.24/0.53         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.24/0.53           ( ![C:$i]:
% 0.24/0.53             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53               ( ~( ( ( k1_relset_1 @ A @ B @ C ) != ( k1_xboole_0 ) ) & 
% 0.24/0.53                    ( ![D:$i]:
% 0.24/0.53                      ( ( m1_subset_1 @ D @ B ) =>
% 0.24/0.53                        ( ~( r2_hidden @ D @ ( k2_relset_1 @ A @ B @ C ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.24/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.24/0.53    (~( ![A:$i]:
% 0.24/0.53        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.24/0.53          ( ![B:$i]:
% 0.24/0.53            ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.24/0.53              ( ![C:$i]:
% 0.24/0.53                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53                  ( ~( ( ( k1_relset_1 @ A @ B @ C ) != ( k1_xboole_0 ) ) & 
% 0.24/0.53                       ( ![D:$i]:
% 0.24/0.53                         ( ( m1_subset_1 @ D @ B ) =>
% 0.24/0.53                           ( ~( r2_hidden @ D @ ( k2_relset_1 @ A @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.24/0.53    inference('cnf.neg', [status(esa)], [t49_relset_1])).
% 0.24/0.53  thf('1', plain,
% 0.24/0.53      (![X26 : $i]:
% 0.24/0.53         (~ (r2_hidden @ X26 @ (k2_relset_1 @ sk_A @ sk_B_1 @ sk_C))
% 0.24/0.53          | ~ (m1_subset_1 @ X26 @ sk_B_1))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf('2', plain,
% 0.24/0.53      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf(redefinition_k2_relset_1, axiom,
% 0.24/0.53    (![A:$i,B:$i,C:$i]:
% 0.24/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53       ( ( k2_relset_1 @ A @ B @ C ) = ( k2_relat_1 @ C ) ) ))).
% 0.24/0.53  thf('3', plain,
% 0.24/0.53      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.24/0.53         (((k2_relset_1 @ X24 @ X25 @ X23) = (k2_relat_1 @ X23))
% 0.24/0.53          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X24 @ X25))))),
% 0.24/0.53      inference('cnf', [status(esa)], [redefinition_k2_relset_1])).
% 0.24/0.53  thf('4', plain,
% 0.24/0.53      (((k2_relset_1 @ sk_A @ sk_B_1 @ sk_C) = (k2_relat_1 @ sk_C))),
% 0.24/0.53      inference('sup-', [status(thm)], ['2', '3'])).
% 0.24/0.53  thf('5', plain,
% 0.24/0.53      (![X26 : $i]:
% 0.24/0.53         (~ (r2_hidden @ X26 @ (k2_relat_1 @ sk_C))
% 0.24/0.53          | ~ (m1_subset_1 @ X26 @ sk_B_1))),
% 0.24/0.53      inference('demod', [status(thm)], ['1', '4'])).
% 0.24/0.53  thf('6', plain,
% 0.24/0.53      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf(cc2_relset_1, axiom,
% 0.24/0.53    (![A:$i,B:$i,C:$i]:
% 0.24/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.24/0.53  thf('7', plain,
% 0.24/0.53      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.24/0.53         ((v5_relat_1 @ X17 @ X19)
% 0.24/0.53          | ~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X18 @ X19))))),
% 0.24/0.53      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.24/0.53  thf('8', plain, ((v5_relat_1 @ sk_C @ sk_B_1)),
% 0.24/0.53      inference('sup-', [status(thm)], ['6', '7'])).
% 0.24/0.53  thf(d19_relat_1, axiom,
% 0.24/0.53    (![A:$i,B:$i]:
% 0.24/0.53     ( ( v1_relat_1 @ B ) =>
% 0.24/0.53       ( ( v5_relat_1 @ B @ A ) <=> ( r1_tarski @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.24/0.53  thf('9', plain,
% 0.24/0.53      (![X10 : $i, X11 : $i]:
% 0.24/0.53         (~ (v5_relat_1 @ X10 @ X11)
% 0.24/0.53          | (r1_tarski @ (k2_relat_1 @ X10) @ X11)
% 0.24/0.53          | ~ (v1_relat_1 @ X10))),
% 0.24/0.53      inference('cnf', [status(esa)], [d19_relat_1])).
% 0.24/0.53  thf('10', plain,
% 0.24/0.53      ((~ (v1_relat_1 @ sk_C) | (r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B_1))),
% 0.24/0.53      inference('sup-', [status(thm)], ['8', '9'])).
% 0.24/0.53  thf('11', plain,
% 0.24/0.53      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf(cc1_relset_1, axiom,
% 0.24/0.53    (![A:$i,B:$i,C:$i]:
% 0.24/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53       ( v1_relat_1 @ C ) ))).
% 0.24/0.53  thf('12', plain,
% 0.24/0.53      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.24/0.53         ((v1_relat_1 @ X14)
% 0.24/0.53          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X15 @ X16))))),
% 0.24/0.53      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.24/0.53  thf('13', plain, ((v1_relat_1 @ sk_C)),
% 0.24/0.53      inference('sup-', [status(thm)], ['11', '12'])).
% 0.24/0.53  thf('14', plain, ((r1_tarski @ (k2_relat_1 @ sk_C) @ sk_B_1)),
% 0.24/0.53      inference('demod', [status(thm)], ['10', '13'])).
% 0.24/0.53  thf(t3_subset, axiom,
% 0.24/0.53    (![A:$i,B:$i]:
% 0.24/0.53     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.24/0.53  thf('15', plain,
% 0.24/0.53      (![X4 : $i, X6 : $i]:
% 0.24/0.53         ((m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X6)) | ~ (r1_tarski @ X4 @ X6))),
% 0.24/0.53      inference('cnf', [status(esa)], [t3_subset])).
% 0.24/0.53  thf('16', plain,
% 0.24/0.53      ((m1_subset_1 @ (k2_relat_1 @ sk_C) @ (k1_zfmisc_1 @ sk_B_1))),
% 0.24/0.53      inference('sup-', [status(thm)], ['14', '15'])).
% 0.24/0.53  thf(t4_subset, axiom,
% 0.24/0.53    (![A:$i,B:$i,C:$i]:
% 0.24/0.53     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.24/0.53       ( m1_subset_1 @ A @ C ) ))).
% 0.24/0.53  thf('17', plain,
% 0.24/0.53      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.24/0.53         (~ (r2_hidden @ X7 @ X8)
% 0.24/0.53          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ X9))
% 0.24/0.53          | (m1_subset_1 @ X7 @ X9))),
% 0.24/0.53      inference('cnf', [status(esa)], [t4_subset])).
% 0.24/0.53  thf('18', plain,
% 0.24/0.53      (![X0 : $i]:
% 0.24/0.53         ((m1_subset_1 @ X0 @ sk_B_1)
% 0.24/0.53          | ~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_C)))),
% 0.24/0.53      inference('sup-', [status(thm)], ['16', '17'])).
% 0.24/0.53  thf('19', plain, (![X26 : $i]: ~ (r2_hidden @ X26 @ (k2_relat_1 @ sk_C))),
% 0.24/0.53      inference('clc', [status(thm)], ['5', '18'])).
% 0.24/0.53  thf('20', plain, ((v1_xboole_0 @ (k2_relat_1 @ sk_C))),
% 0.24/0.53      inference('sup-', [status(thm)], ['0', '19'])).
% 0.24/0.53  thf(fc9_relat_1, axiom,
% 0.24/0.53    (![A:$i]:
% 0.24/0.53     ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_relat_1 @ A ) ) =>
% 0.24/0.53       ( ~( v1_xboole_0 @ ( k2_relat_1 @ A ) ) ) ))).
% 0.24/0.53  thf('21', plain,
% 0.24/0.53      (![X13 : $i]:
% 0.24/0.53         (~ (v1_xboole_0 @ (k2_relat_1 @ X13))
% 0.24/0.53          | ~ (v1_relat_1 @ X13)
% 0.24/0.53          | (v1_xboole_0 @ X13))),
% 0.24/0.53      inference('cnf', [status(esa)], [fc9_relat_1])).
% 0.24/0.53  thf('22', plain, (((v1_xboole_0 @ sk_C) | ~ (v1_relat_1 @ sk_C))),
% 0.24/0.53      inference('sup-', [status(thm)], ['20', '21'])).
% 0.24/0.53  thf('23', plain, ((v1_relat_1 @ sk_C)),
% 0.24/0.53      inference('sup-', [status(thm)], ['11', '12'])).
% 0.24/0.53  thf('24', plain, ((v1_xboole_0 @ sk_C)),
% 0.24/0.53      inference('demod', [status(thm)], ['22', '23'])).
% 0.24/0.53  thf(fc10_relat_1, axiom,
% 0.24/0.53    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_xboole_0 @ ( k1_relat_1 @ A ) ) ))).
% 0.24/0.53  thf('25', plain,
% 0.24/0.53      (![X12 : $i]:
% 0.24/0.53         ((v1_xboole_0 @ (k1_relat_1 @ X12)) | ~ (v1_xboole_0 @ X12))),
% 0.24/0.53      inference('cnf', [status(esa)], [fc10_relat_1])).
% 0.24/0.53  thf(l13_xboole_0, axiom,
% 0.24/0.53    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( ( A ) = ( k1_xboole_0 ) ) ))).
% 0.24/0.53  thf('26', plain,
% 0.24/0.53      (![X3 : $i]: (((X3) = (k1_xboole_0)) | ~ (v1_xboole_0 @ X3))),
% 0.24/0.53      inference('cnf', [status(esa)], [l13_xboole_0])).
% 0.24/0.53  thf('27', plain,
% 0.24/0.53      (![X0 : $i]: (~ (v1_xboole_0 @ X0) | ((k1_relat_1 @ X0) = (k1_xboole_0)))),
% 0.24/0.53      inference('sup-', [status(thm)], ['25', '26'])).
% 0.24/0.53  thf('28', plain, (((k1_relat_1 @ sk_C) = (k1_xboole_0))),
% 0.24/0.53      inference('sup-', [status(thm)], ['24', '27'])).
% 0.24/0.53  thf('29', plain, (((k1_relset_1 @ sk_A @ sk_B_1 @ sk_C) != (k1_xboole_0))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf('30', plain,
% 0.24/0.53      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_A @ sk_B_1)))),
% 0.24/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.53  thf(redefinition_k1_relset_1, axiom,
% 0.24/0.53    (![A:$i,B:$i,C:$i]:
% 0.24/0.53     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.24/0.53       ( ( k1_relset_1 @ A @ B @ C ) = ( k1_relat_1 @ C ) ) ))).
% 0.24/0.53  thf('31', plain,
% 0.24/0.53      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.24/0.53         (((k1_relset_1 @ X21 @ X22 @ X20) = (k1_relat_1 @ X20))
% 0.24/0.53          | ~ (m1_subset_1 @ X20 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X21 @ X22))))),
% 0.24/0.53      inference('cnf', [status(esa)], [redefinition_k1_relset_1])).
% 0.24/0.53  thf('32', plain,
% 0.24/0.53      (((k1_relset_1 @ sk_A @ sk_B_1 @ sk_C) = (k1_relat_1 @ sk_C))),
% 0.24/0.53      inference('sup-', [status(thm)], ['30', '31'])).
% 0.24/0.53  thf('33', plain, (((k1_relat_1 @ sk_C) != (k1_xboole_0))),
% 0.24/0.53      inference('demod', [status(thm)], ['29', '32'])).
% 0.24/0.53  thf('34', plain, ($false),
% 0.24/0.53      inference('simplify_reflect-', [status(thm)], ['28', '33'])).
% 0.24/0.53  
% 0.24/0.53  % SZS output end Refutation
% 0.24/0.53  
% 0.24/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
