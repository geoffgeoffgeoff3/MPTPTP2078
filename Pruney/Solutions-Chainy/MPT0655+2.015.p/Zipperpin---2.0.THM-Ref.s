%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.mQwfsJup0p

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:45:36 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   34 (  41 expanded)
%              Number of leaves         :   14 (  18 expanded)
%              Depth                    :   11
%              Number of atoms          :  301 ( 365 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_funct_1_type,type,(
    k2_funct_1: $i > $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v2_funct_1_type,type,(
    v2_funct_1: $i > $o )).

thf(dt_k2_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v1_relat_1 @ ( k2_funct_1 @ A ) )
        & ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )).

thf('0',plain,(
    ! [X0: $i] :
      ( ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf('1',plain,(
    ! [X0: $i] :
      ( ( v1_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_funct_1])).

thf(t55_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k2_relat_1 @ A )
            = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) )
          & ( ( k1_relat_1 @ A )
            = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X3: $i] :
      ( ~ ( v2_funct_1 @ X3 )
      | ( ( k2_relat_1 @ X3 )
        = ( k1_relat_1 @ ( k2_funct_1 @ X3 ) ) )
      | ~ ( v1_funct_1 @ X3 )
      | ~ ( v1_relat_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t55_funct_1])).

thf(t61_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) )
            = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) )
          & ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A )
            = ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ) )).

thf('3',plain,(
    ! [X4: $i] :
      ( ~ ( v2_funct_1 @ X4 )
      | ( ( k5_relat_1 @ ( k2_funct_1 @ X4 ) @ X4 )
        = ( k6_relat_1 @ ( k2_relat_1 @ X4 ) ) )
      | ~ ( v1_funct_1 @ X4 )
      | ~ ( v1_relat_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t61_funct_1])).

thf(t53_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ? [B: $i] :
            ( ( ( k5_relat_1 @ A @ B )
              = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) )
            & ( v1_funct_1 @ B )
            & ( v1_relat_1 @ B ) )
       => ( v2_funct_1 @ A ) ) ) )).

thf('4',plain,(
    ! [X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k5_relat_1 @ X2 @ X1 )
       != ( k6_relat_1 @ ( k1_relat_1 @ X2 ) ) )
      | ( v2_funct_1 @ X2 )
      | ~ ( v1_funct_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t53_funct_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( ( k6_relat_1 @ ( k2_relat_1 @ X0 ) )
       != ( k6_relat_1 @ ( k1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ( v2_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( v2_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ( ( k6_relat_1 @ ( k2_relat_1 @ X0 ) )
       != ( k6_relat_1 @ ( k1_relat_1 @ ( k2_funct_1 @ X0 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( ( k6_relat_1 @ ( k2_relat_1 @ X0 ) )
       != ( k6_relat_1 @ ( k2_relat_1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ( v2_funct_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['2','6'])).

thf('8',plain,(
    ! [X0: $i] :
      ( ( v2_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ( v2_funct_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['1','8'])).

thf('10',plain,(
    ! [X0: $i] :
      ( ( v2_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v1_relat_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v2_funct_1 @ X0 )
      | ( v2_funct_1 @ ( k2_funct_1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['0','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( v2_funct_1 @ ( k2_funct_1 @ X0 ) )
      | ~ ( v2_funct_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['11'])).

thf(t62_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_funct_1 @ A )
       => ( v2_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ( ( v2_funct_1 @ A )
         => ( v2_funct_1 @ ( k2_funct_1 @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t62_funct_1])).

thf('13',plain,(
    ~ ( v2_funct_1 @ ( k2_funct_1 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ~ ( v1_funct_1 @ sk_A )
    | ~ ( v2_funct_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    v2_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    $false ),
    inference(demod,[status(thm)],['14','15','16','17'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.mQwfsJup0p
% 0.14/0.33  % Computer   : n003.cluster.edu
% 0.14/0.33  % Model      : x86_64 x86_64
% 0.14/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.33  % Memory     : 8042.1875MB
% 0.14/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.33  % CPULimit   : 60
% 0.14/0.33  % DateTime   : Tue Dec  1 20:47:57 EST 2020
% 0.14/0.33  % CPUTime    : 
% 0.14/0.33  % Running portfolio for 600 s
% 0.14/0.33  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.33  % Number of cores: 8
% 0.14/0.34  % Python version: Python 3.6.8
% 0.14/0.34  % Running in FO mode
% 0.20/0.43  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.43  % Solved by: fo/fo7.sh
% 0.20/0.43  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.43  % done 15 iterations in 0.014s
% 0.20/0.43  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.43  % SZS output start Refutation
% 0.20/0.43  thf(k2_funct_1_type, type, k2_funct_1: $i > $i).
% 0.20/0.43  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.20/0.43  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.43  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.20/0.43  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.20/0.43  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.43  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.43  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.43  thf(v2_funct_1_type, type, v2_funct_1: $i > $o).
% 0.20/0.43  thf(dt_k2_funct_1, axiom,
% 0.20/0.43    (![A:$i]:
% 0.20/0.43     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43       ( ( v1_relat_1 @ ( k2_funct_1 @ A ) ) & 
% 0.20/0.43         ( v1_funct_1 @ ( k2_funct_1 @ A ) ) ) ))).
% 0.20/0.43  thf('0', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.20/0.43  thf('1', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v1_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('cnf', [status(esa)], [dt_k2_funct_1])).
% 0.20/0.43  thf(t55_funct_1, axiom,
% 0.20/0.43    (![A:$i]:
% 0.20/0.43     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43       ( ( v2_funct_1 @ A ) =>
% 0.20/0.43         ( ( ( k2_relat_1 @ A ) = ( k1_relat_1 @ ( k2_funct_1 @ A ) ) ) & 
% 0.20/0.43           ( ( k1_relat_1 @ A ) = ( k2_relat_1 @ ( k2_funct_1 @ A ) ) ) ) ) ))).
% 0.20/0.43  thf('2', plain,
% 0.20/0.43      (![X3 : $i]:
% 0.20/0.43         (~ (v2_funct_1 @ X3)
% 0.20/0.43          | ((k2_relat_1 @ X3) = (k1_relat_1 @ (k2_funct_1 @ X3)))
% 0.20/0.43          | ~ (v1_funct_1 @ X3)
% 0.20/0.43          | ~ (v1_relat_1 @ X3))),
% 0.20/0.43      inference('cnf', [status(esa)], [t55_funct_1])).
% 0.20/0.43  thf(t61_funct_1, axiom,
% 0.20/0.43    (![A:$i]:
% 0.20/0.43     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43       ( ( v2_funct_1 @ A ) =>
% 0.20/0.43         ( ( ( k5_relat_1 @ A @ ( k2_funct_1 @ A ) ) =
% 0.20/0.43             ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) & 
% 0.20/0.43           ( ( k5_relat_1 @ ( k2_funct_1 @ A ) @ A ) =
% 0.20/0.43             ( k6_relat_1 @ ( k2_relat_1 @ A ) ) ) ) ) ))).
% 0.20/0.43  thf('3', plain,
% 0.20/0.43      (![X4 : $i]:
% 0.20/0.43         (~ (v2_funct_1 @ X4)
% 0.20/0.43          | ((k5_relat_1 @ (k2_funct_1 @ X4) @ X4)
% 0.20/0.43              = (k6_relat_1 @ (k2_relat_1 @ X4)))
% 0.20/0.43          | ~ (v1_funct_1 @ X4)
% 0.20/0.43          | ~ (v1_relat_1 @ X4))),
% 0.20/0.43      inference('cnf', [status(esa)], [t61_funct_1])).
% 0.20/0.43  thf(t53_funct_1, axiom,
% 0.20/0.43    (![A:$i]:
% 0.20/0.43     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43       ( ( ?[B:$i]:
% 0.20/0.43           ( ( ( k5_relat_1 @ A @ B ) = ( k6_relat_1 @ ( k1_relat_1 @ A ) ) ) & 
% 0.20/0.43             ( v1_funct_1 @ B ) & ( v1_relat_1 @ B ) ) ) =>
% 0.20/0.43         ( v2_funct_1 @ A ) ) ))).
% 0.20/0.43  thf('4', plain,
% 0.20/0.43      (![X1 : $i, X2 : $i]:
% 0.20/0.43         (~ (v1_relat_1 @ X1)
% 0.20/0.43          | ~ (v1_funct_1 @ X1)
% 0.20/0.43          | ((k5_relat_1 @ X2 @ X1) != (k6_relat_1 @ (k1_relat_1 @ X2)))
% 0.20/0.43          | (v2_funct_1 @ X2)
% 0.20/0.43          | ~ (v1_funct_1 @ X2)
% 0.20/0.43          | ~ (v1_relat_1 @ X2))),
% 0.20/0.43      inference('cnf', [status(esa)], [t53_funct_1])).
% 0.20/0.43  thf('5', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         (((k6_relat_1 @ (k2_relat_1 @ X0))
% 0.20/0.43            != (k6_relat_1 @ (k1_relat_1 @ (k2_funct_1 @ X0))))
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | (v2_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.43  thf('6', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v2_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ((k6_relat_1 @ (k2_relat_1 @ X0))
% 0.20/0.43              != (k6_relat_1 @ (k1_relat_1 @ (k2_funct_1 @ X0)))))),
% 0.20/0.43      inference('simplify', [status(thm)], ['5'])).
% 0.20/0.43  thf('7', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         (((k6_relat_1 @ (k2_relat_1 @ X0)) != (k6_relat_1 @ (k2_relat_1 @ X0)))
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | (v2_funct_1 @ (k2_funct_1 @ X0)))),
% 0.20/0.43      inference('sup-', [status(thm)], ['2', '6'])).
% 0.20/0.43  thf('8', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v2_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('simplify', [status(thm)], ['7'])).
% 0.20/0.43  thf('9', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         (~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | (v2_funct_1 @ (k2_funct_1 @ X0)))),
% 0.20/0.43      inference('sup-', [status(thm)], ['1', '8'])).
% 0.20/0.43  thf('10', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v2_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v1_relat_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('simplify', [status(thm)], ['9'])).
% 0.20/0.43  thf('11', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         (~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | (v2_funct_1 @ (k2_funct_1 @ X0)))),
% 0.20/0.43      inference('sup-', [status(thm)], ['0', '10'])).
% 0.20/0.43  thf('12', plain,
% 0.20/0.43      (![X0 : $i]:
% 0.20/0.43         ((v2_funct_1 @ (k2_funct_1 @ X0))
% 0.20/0.43          | ~ (v2_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_funct_1 @ X0)
% 0.20/0.43          | ~ (v1_relat_1 @ X0))),
% 0.20/0.43      inference('simplify', [status(thm)], ['11'])).
% 0.20/0.43  thf(t62_funct_1, conjecture,
% 0.20/0.43    (![A:$i]:
% 0.20/0.43     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43       ( ( v2_funct_1 @ A ) => ( v2_funct_1 @ ( k2_funct_1 @ A ) ) ) ))).
% 0.20/0.43  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.43    (~( ![A:$i]:
% 0.20/0.43        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.43          ( ( v2_funct_1 @ A ) => ( v2_funct_1 @ ( k2_funct_1 @ A ) ) ) ) )),
% 0.20/0.43    inference('cnf.neg', [status(esa)], [t62_funct_1])).
% 0.20/0.43  thf('13', plain, (~ (v2_funct_1 @ (k2_funct_1 @ sk_A))),
% 0.20/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.43  thf('14', plain,
% 0.20/0.43      ((~ (v1_relat_1 @ sk_A) | ~ (v1_funct_1 @ sk_A) | ~ (v2_funct_1 @ sk_A))),
% 0.20/0.43      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.43  thf('15', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.43  thf('16', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.43  thf('17', plain, ((v2_funct_1 @ sk_A)),
% 0.20/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.43  thf('18', plain, ($false),
% 0.20/0.43      inference('demod', [status(thm)], ['14', '15', '16', '17'])).
% 0.20/0.43  
% 0.20/0.43  % SZS output end Refutation
% 0.20/0.43  
% 0.20/0.44  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
