%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Tsmx7w4pN5

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:48:37 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   40 (  47 expanded)
%              Number of leaves         :   18 (  23 expanded)
%              Depth                    :    9
%              Number of atoms          :  199 ( 280 expanded)
%              Number of equality atoms :   14 (  16 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(t4_relset_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) )
     => ( ( r1_tarski @ A @ D )
       => ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) )
       => ( ( r1_tarski @ A @ D )
         => ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t4_relset_1])).

thf('0',plain,(
    ~ ( m1_subset_1 @ sk_A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('2',plain,(
    ! [X11: $i,X12: $i] :
      ( ( r1_tarski @ X11 @ X12 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('3',plain,(
    r1_tarski @ sk_D @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r1_tarski @ sk_A @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('5',plain,(
    ! [X2: $i,X4: $i] :
      ( ( ( k4_xboole_0 @ X2 @ X4 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('6',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['4','5'])).

thf(t39_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('7',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k2_xboole_0 @ X9 @ ( k4_xboole_0 @ X10 @ X9 ) )
      = ( k2_xboole_0 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t39_xboole_1])).

thf('8',plain,
    ( ( k2_xboole_0 @ sk_D @ k1_xboole_0 )
    = ( k2_xboole_0 @ sk_D @ sk_A ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf(commutativity_k2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k2_xboole_0 @ B @ A ) ) )).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf(t1_boole,axiom,(
    ! [A: $i] :
      ( ( k2_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('11',plain,(
    ! [X8: $i] :
      ( ( k2_xboole_0 @ X8 @ k1_xboole_0 )
      = X8 ) ),
    inference(cnf,[status(esa)],[t1_boole])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ k1_xboole_0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_xboole_0])).

thf('14',plain,
    ( sk_D
    = ( k2_xboole_0 @ sk_A @ sk_D ) ),
    inference(demod,[status(thm)],['8','9','12','13'])).

thf(t11_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf('15',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X5 @ X7 ) @ X6 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ sk_D @ X0 )
      | ( r1_tarski @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    r1_tarski @ sk_A @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ),
    inference('sup-',[status(thm)],['3','16'])).

thf('18',plain,(
    ! [X11: $i,X13: $i] :
      ( ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ X13 ) )
      | ~ ( r1_tarski @ X11 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('19',plain,(
    m1_subset_1 @ sk_A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_B @ sk_C ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    $false ),
    inference(demod,[status(thm)],['0','19'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Tsmx7w4pN5
% 0.14/0.35  % Computer   : n011.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 17:49:57 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 42 iterations in 0.014s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.47  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.47  thf(t4_relset_1, conjecture,
% 0.21/0.47    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.47     ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) =>
% 0.21/0.47       ( ( r1_tarski @ A @ D ) =>
% 0.21/0.47         ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.47        ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) =>
% 0.21/0.47          ( ( r1_tarski @ A @ D ) =>
% 0.21/0.47            ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ B @ C ) ) ) ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t4_relset_1])).
% 0.21/0.47  thf('0', plain,
% 0.21/0.47      (~ (m1_subset_1 @ sk_A @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(t3_subset, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (![X11 : $i, X12 : $i]:
% 0.21/0.47         ((r1_tarski @ X11 @ X12) | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X12)))),
% 0.21/0.47      inference('cnf', [status(esa)], [t3_subset])).
% 0.21/0.47  thf('3', plain, ((r1_tarski @ sk_D @ (k2_zfmisc_1 @ sk_B @ sk_C))),
% 0.21/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.21/0.47  thf('4', plain, ((r1_tarski @ sk_A @ sk_D)),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(l32_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.21/0.47  thf('5', plain,
% 0.21/0.47      (![X2 : $i, X4 : $i]:
% 0.21/0.47         (((k4_xboole_0 @ X2 @ X4) = (k1_xboole_0)) | ~ (r1_tarski @ X2 @ X4))),
% 0.21/0.47      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.21/0.47  thf('6', plain, (((k4_xboole_0 @ sk_A @ sk_D) = (k1_xboole_0))),
% 0.21/0.47      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.47  thf(t39_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.21/0.47  thf('7', plain,
% 0.21/0.47      (![X9 : $i, X10 : $i]:
% 0.21/0.47         ((k2_xboole_0 @ X9 @ (k4_xboole_0 @ X10 @ X9))
% 0.21/0.47           = (k2_xboole_0 @ X9 @ X10))),
% 0.21/0.47      inference('cnf', [status(esa)], [t39_xboole_1])).
% 0.21/0.47  thf('8', plain,
% 0.21/0.47      (((k2_xboole_0 @ sk_D @ k1_xboole_0) = (k2_xboole_0 @ sk_D @ sk_A))),
% 0.21/0.47      inference('sup+', [status(thm)], ['6', '7'])).
% 0.21/0.47  thf(commutativity_k2_xboole_0, axiom,
% 0.21/0.47    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ B ) = ( k2_xboole_0 @ B @ A ) ))).
% 0.21/0.47  thf('9', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.21/0.47      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 0.21/0.47  thf('10', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.21/0.47      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 0.21/0.47  thf(t1_boole, axiom,
% 0.21/0.47    (![A:$i]: ( ( k2_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.21/0.47  thf('11', plain, (![X8 : $i]: ((k2_xboole_0 @ X8 @ k1_xboole_0) = (X8))),
% 0.21/0.47      inference('cnf', [status(esa)], [t1_boole])).
% 0.21/0.47  thf('12', plain, (![X0 : $i]: ((k2_xboole_0 @ k1_xboole_0 @ X0) = (X0))),
% 0.21/0.47      inference('sup+', [status(thm)], ['10', '11'])).
% 0.21/0.47  thf('13', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.21/0.47      inference('cnf', [status(esa)], [commutativity_k2_xboole_0])).
% 0.21/0.47  thf('14', plain, (((sk_D) = (k2_xboole_0 @ sk_A @ sk_D))),
% 0.21/0.47      inference('demod', [status(thm)], ['8', '9', '12', '13'])).
% 0.21/0.47  thf(t11_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i,C:$i]:
% 0.21/0.47     ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C ) => ( r1_tarski @ A @ C ) ))).
% 0.21/0.47  thf('15', plain,
% 0.21/0.47      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.47         ((r1_tarski @ X5 @ X6) | ~ (r1_tarski @ (k2_xboole_0 @ X5 @ X7) @ X6))),
% 0.21/0.47      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.21/0.47  thf('16', plain,
% 0.21/0.47      (![X0 : $i]: (~ (r1_tarski @ sk_D @ X0) | (r1_tarski @ sk_A @ X0))),
% 0.21/0.47      inference('sup-', [status(thm)], ['14', '15'])).
% 0.21/0.47  thf('17', plain, ((r1_tarski @ sk_A @ (k2_zfmisc_1 @ sk_B @ sk_C))),
% 0.21/0.47      inference('sup-', [status(thm)], ['3', '16'])).
% 0.21/0.47  thf('18', plain,
% 0.21/0.47      (![X11 : $i, X13 : $i]:
% 0.21/0.47         ((m1_subset_1 @ X11 @ (k1_zfmisc_1 @ X13)) | ~ (r1_tarski @ X11 @ X13))),
% 0.21/0.47      inference('cnf', [status(esa)], [t3_subset])).
% 0.21/0.47  thf('19', plain,
% 0.21/0.47      ((m1_subset_1 @ sk_A @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_B @ sk_C)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['17', '18'])).
% 0.21/0.47  thf('20', plain, ($false), inference('demod', [status(thm)], ['0', '19'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
