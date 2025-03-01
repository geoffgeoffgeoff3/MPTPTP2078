%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JhFzkWoNeW

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:05:11 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   39 (  46 expanded)
%              Number of leaves         :   19 (  23 expanded)
%              Depth                    :    7
%              Number of atoms          :  271 ( 389 expanded)
%              Number of equality atoms :   25 (  38 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k7_setfam_1_type,type,(
    k7_setfam_1: $i > $i > $i )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k7_subset_1_type,type,(
    k7_subset_1: $i > $i > $i > $i )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(k6_setfam_1_type,type,(
    k6_setfam_1: $i > $i > $i )).

thf(k5_setfam_1_type,type,(
    k5_setfam_1: $i > $i > $i )).

thf(t11_tops_2,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( B != k1_xboole_0 )
       => ( ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) )
          = ( k3_subset_1 @ A @ ( k5_setfam_1 @ A @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
       => ( ( B != k1_xboole_0 )
         => ( ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) )
            = ( k3_subset_1 @ A @ ( k5_setfam_1 @ A @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t11_tops_2])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t47_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( B != k1_xboole_0 )
       => ( ( k7_subset_1 @ A @ ( k2_subset_1 @ A ) @ ( k5_setfam_1 @ A @ B ) )
          = ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) ) ) ) ) )).

thf('1',plain,(
    ! [X9: $i,X10: $i] :
      ( ( X9 = k1_xboole_0 )
      | ( ( k7_subset_1 @ X10 @ ( k2_subset_1 @ X10 ) @ ( k5_setfam_1 @ X10 @ X9 ) )
        = ( k6_setfam_1 @ X10 @ ( k7_setfam_1 @ X10 @ X9 ) ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[t47_setfam_1])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('2',plain,(
    ! [X0: $i] :
      ( ( k2_subset_1 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf(dt_k2_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ) )).

thf('3',plain,(
    ! [X3: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ X3 ) @ ( k1_zfmisc_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_subset_1])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( k2_subset_1 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('5',plain,(
    ! [X3: $i] :
      ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X3 ) ) ),
    inference(demod,[status(thm)],['3','4'])).

thf(redefinition_k7_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k7_subset_1 @ A @ B @ C )
        = ( k4_xboole_0 @ B @ C ) ) ) )).

thf('6',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) )
      | ( ( k7_subset_1 @ X5 @ X4 @ X6 )
        = ( k4_xboole_0 @ X4 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k7_subset_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k7_subset_1 @ X0 @ X0 @ X1 )
      = ( k4_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X9: $i,X10: $i] :
      ( ( X9 = k1_xboole_0 )
      | ( ( k4_xboole_0 @ X10 @ ( k5_setfam_1 @ X10 @ X9 ) )
        = ( k6_setfam_1 @ X10 @ ( k7_setfam_1 @ X10 @ X9 ) ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X10 ) ) ) ) ),
    inference(demod,[status(thm)],['1','2','7'])).

thf('9',plain,
    ( ( ( k4_xboole_0 @ sk_A @ ( k5_setfam_1 @ sk_A @ sk_B ) )
      = ( k6_setfam_1 @ sk_A @ ( k7_setfam_1 @ sk_A @ sk_B ) ) )
    | ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['0','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k5_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( m1_subset_1 @ ( k5_setfam_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('11',plain,(
    ! [X7: $i,X8: $i] :
      ( ( m1_subset_1 @ ( k5_setfam_1 @ X7 @ X8 ) @ ( k1_zfmisc_1 @ X7 ) )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X7 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_setfam_1])).

thf('12',plain,(
    m1_subset_1 @ ( k5_setfam_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(d5_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ B )
        = ( k4_xboole_0 @ A @ B ) ) ) )).

thf('13',plain,(
    ! [X1: $i,X2: $i] :
      ( ( ( k3_subset_1 @ X1 @ X2 )
        = ( k4_xboole_0 @ X1 @ X2 ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('14',plain,
    ( ( k3_subset_1 @ sk_A @ ( k5_setfam_1 @ sk_A @ sk_B ) )
    = ( k4_xboole_0 @ sk_A @ ( k5_setfam_1 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,
    ( ( ( k3_subset_1 @ sk_A @ ( k5_setfam_1 @ sk_A @ sk_B ) )
      = ( k6_setfam_1 @ sk_A @ ( k7_setfam_1 @ sk_A @ sk_B ) ) )
    | ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['9','14'])).

thf('16',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    ( k6_setfam_1 @ sk_A @ ( k7_setfam_1 @ sk_A @ sk_B ) )
 != ( k3_subset_1 @ sk_A @ ( k5_setfam_1 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['15','16','17'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.JhFzkWoNeW
% 0.14/0.37  % Computer   : n001.cluster.edu
% 0.14/0.37  % Model      : x86_64 x86_64
% 0.14/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.37  % Memory     : 8042.1875MB
% 0.14/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.37  % CPULimit   : 60
% 0.14/0.37  % DateTime   : Tue Dec  1 13:18:45 EST 2020
% 0.14/0.37  % CPUTime    : 
% 0.14/0.37  % Running portfolio for 600 s
% 0.14/0.37  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.38  % Number of cores: 8
% 0.14/0.38  % Python version: Python 3.6.8
% 0.14/0.38  % Running in FO mode
% 0.23/0.46  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.46  % Solved by: fo/fo7.sh
% 0.23/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.46  % done 21 iterations in 0.017s
% 0.23/0.46  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.46  % SZS output start Refutation
% 0.23/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.23/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.23/0.46  thf(k7_setfam_1_type, type, k7_setfam_1: $i > $i > $i).
% 0.23/0.46  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.23/0.46  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.23/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.23/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.23/0.46  thf(k7_subset_1_type, type, k7_subset_1: $i > $i > $i > $i).
% 0.23/0.46  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.23/0.46  thf(k6_setfam_1_type, type, k6_setfam_1: $i > $i > $i).
% 0.23/0.46  thf(k5_setfam_1_type, type, k5_setfam_1: $i > $i > $i).
% 0.23/0.46  thf(t11_tops_2, conjecture,
% 0.23/0.46    (![A:$i,B:$i]:
% 0.23/0.46     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.23/0.47       ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.23/0.47         ( ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) ) =
% 0.23/0.47           ( k3_subset_1 @ A @ ( k5_setfam_1 @ A @ B ) ) ) ) ))).
% 0.23/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.47    (~( ![A:$i,B:$i]:
% 0.23/0.47        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.23/0.47          ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.23/0.47            ( ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) ) =
% 0.23/0.47              ( k3_subset_1 @ A @ ( k5_setfam_1 @ A @ B ) ) ) ) ) )),
% 0.23/0.47    inference('cnf.neg', [status(esa)], [t11_tops_2])).
% 0.23/0.47  thf('0', plain,
% 0.23/0.47      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.23/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.47  thf(t47_setfam_1, axiom,
% 0.23/0.47    (![A:$i,B:$i]:
% 0.23/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.23/0.47       ( ( ( B ) != ( k1_xboole_0 ) ) =>
% 0.23/0.47         ( ( k7_subset_1 @ A @ ( k2_subset_1 @ A ) @ ( k5_setfam_1 @ A @ B ) ) =
% 0.23/0.47           ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) ) ) ) ))).
% 0.23/0.47  thf('1', plain,
% 0.23/0.47      (![X9 : $i, X10 : $i]:
% 0.23/0.47         (((X9) = (k1_xboole_0))
% 0.23/0.47          | ((k7_subset_1 @ X10 @ (k2_subset_1 @ X10) @ 
% 0.23/0.47              (k5_setfam_1 @ X10 @ X9))
% 0.23/0.47              = (k6_setfam_1 @ X10 @ (k7_setfam_1 @ X10 @ X9)))
% 0.23/0.47          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ X10))))),
% 0.23/0.47      inference('cnf', [status(esa)], [t47_setfam_1])).
% 0.23/0.47  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.23/0.47  thf('2', plain, (![X0 : $i]: ((k2_subset_1 @ X0) = (X0))),
% 0.23/0.47      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.23/0.47  thf(dt_k2_subset_1, axiom,
% 0.23/0.47    (![A:$i]: ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ))).
% 0.23/0.47  thf('3', plain,
% 0.23/0.47      (![X3 : $i]: (m1_subset_1 @ (k2_subset_1 @ X3) @ (k1_zfmisc_1 @ X3))),
% 0.23/0.47      inference('cnf', [status(esa)], [dt_k2_subset_1])).
% 0.23/0.47  thf('4', plain, (![X0 : $i]: ((k2_subset_1 @ X0) = (X0))),
% 0.23/0.47      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.23/0.47  thf('5', plain, (![X3 : $i]: (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X3))),
% 0.23/0.47      inference('demod', [status(thm)], ['3', '4'])).
% 0.23/0.47  thf(redefinition_k7_subset_1, axiom,
% 0.23/0.47    (![A:$i,B:$i,C:$i]:
% 0.23/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.23/0.47       ( ( k7_subset_1 @ A @ B @ C ) = ( k4_xboole_0 @ B @ C ) ) ))).
% 0.23/0.47  thf('6', plain,
% 0.23/0.47      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.23/0.47         (~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5))
% 0.23/0.47          | ((k7_subset_1 @ X5 @ X4 @ X6) = (k4_xboole_0 @ X4 @ X6)))),
% 0.23/0.47      inference('cnf', [status(esa)], [redefinition_k7_subset_1])).
% 0.23/0.47  thf('7', plain,
% 0.23/0.47      (![X0 : $i, X1 : $i]:
% 0.23/0.47         ((k7_subset_1 @ X0 @ X0 @ X1) = (k4_xboole_0 @ X0 @ X1))),
% 0.23/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.23/0.47  thf('8', plain,
% 0.23/0.47      (![X9 : $i, X10 : $i]:
% 0.23/0.47         (((X9) = (k1_xboole_0))
% 0.23/0.47          | ((k4_xboole_0 @ X10 @ (k5_setfam_1 @ X10 @ X9))
% 0.23/0.47              = (k6_setfam_1 @ X10 @ (k7_setfam_1 @ X10 @ X9)))
% 0.23/0.47          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ X10))))),
% 0.23/0.47      inference('demod', [status(thm)], ['1', '2', '7'])).
% 0.23/0.47  thf('9', plain,
% 0.23/0.47      ((((k4_xboole_0 @ sk_A @ (k5_setfam_1 @ sk_A @ sk_B))
% 0.23/0.47          = (k6_setfam_1 @ sk_A @ (k7_setfam_1 @ sk_A @ sk_B)))
% 0.23/0.47        | ((sk_B) = (k1_xboole_0)))),
% 0.23/0.47      inference('sup-', [status(thm)], ['0', '8'])).
% 0.23/0.47  thf('10', plain,
% 0.23/0.47      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ sk_A)))),
% 0.23/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.47  thf(dt_k5_setfam_1, axiom,
% 0.23/0.47    (![A:$i,B:$i]:
% 0.23/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.23/0.47       ( m1_subset_1 @ ( k5_setfam_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.23/0.47  thf('11', plain,
% 0.23/0.47      (![X7 : $i, X8 : $i]:
% 0.23/0.47         ((m1_subset_1 @ (k5_setfam_1 @ X7 @ X8) @ (k1_zfmisc_1 @ X7))
% 0.23/0.47          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ X7))))),
% 0.23/0.47      inference('cnf', [status(esa)], [dt_k5_setfam_1])).
% 0.23/0.47  thf('12', plain,
% 0.23/0.47      ((m1_subset_1 @ (k5_setfam_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.23/0.47      inference('sup-', [status(thm)], ['10', '11'])).
% 0.23/0.47  thf(d5_subset_1, axiom,
% 0.23/0.47    (![A:$i,B:$i]:
% 0.23/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.23/0.47       ( ( k3_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ) ))).
% 0.23/0.47  thf('13', plain,
% 0.23/0.47      (![X1 : $i, X2 : $i]:
% 0.23/0.47         (((k3_subset_1 @ X1 @ X2) = (k4_xboole_0 @ X1 @ X2))
% 0.23/0.47          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X1)))),
% 0.23/0.47      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.23/0.47  thf('14', plain,
% 0.23/0.47      (((k3_subset_1 @ sk_A @ (k5_setfam_1 @ sk_A @ sk_B))
% 0.23/0.47         = (k4_xboole_0 @ sk_A @ (k5_setfam_1 @ sk_A @ sk_B)))),
% 0.23/0.47      inference('sup-', [status(thm)], ['12', '13'])).
% 0.23/0.47  thf('15', plain,
% 0.23/0.47      ((((k3_subset_1 @ sk_A @ (k5_setfam_1 @ sk_A @ sk_B))
% 0.23/0.47          = (k6_setfam_1 @ sk_A @ (k7_setfam_1 @ sk_A @ sk_B)))
% 0.23/0.47        | ((sk_B) = (k1_xboole_0)))),
% 0.23/0.47      inference('demod', [status(thm)], ['9', '14'])).
% 0.23/0.47  thf('16', plain, (((sk_B) != (k1_xboole_0))),
% 0.23/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.47  thf('17', plain,
% 0.23/0.47      (((k6_setfam_1 @ sk_A @ (k7_setfam_1 @ sk_A @ sk_B))
% 0.23/0.47         != (k3_subset_1 @ sk_A @ (k5_setfam_1 @ sk_A @ sk_B)))),
% 0.23/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.47  thf('18', plain, ($false),
% 0.23/0.47      inference('simplify_reflect-', [status(thm)], ['15', '16', '17'])).
% 0.23/0.47  
% 0.23/0.47  % SZS output end Refutation
% 0.23/0.47  
% 0.23/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
