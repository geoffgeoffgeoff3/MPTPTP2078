%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hGVau6BHBT

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:31:48 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   43 (  62 expanded)
%              Number of leaves         :   17 (  27 expanded)
%              Depth                    :    8
%              Number of atoms          :  233 ( 380 expanded)
%              Number of equality atoms :   20 (  36 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(t45_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) @ B )
     => ( r2_hidden @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( r1_tarski @ ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) @ B )
       => ( r2_hidden @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t45_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B ) @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k3_xboole_0 @ X2 @ X3 )
        = X2 )
      | ~ ( r1_tarski @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('3',plain,
    ( ( k3_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B ) @ sk_B )
    = ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('5',plain,
    ( ( k3_xboole_0 @ sk_B @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B ) )
    = ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['3','4'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('6',plain,(
    ! [X6: $i,X7: $i] :
      ( ( k2_tarski @ X7 @ X6 )
      = ( k2_tarski @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('7',plain,(
    ! [X36: $i,X37: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X36 @ X37 ) )
      = ( k2_xboole_0 @ X36 @ X37 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X36: $i,X37: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X36 @ X37 ) )
      = ( k2_xboole_0 @ X36 @ X37 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('11',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ X4 @ ( k2_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('12',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k3_xboole_0 @ X2 @ X3 )
        = X2 )
      | ~ ( r1_tarski @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ ( k2_xboole_0 @ X1 @ X0 ) )
      = X1 ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('15',plain,
    ( sk_B
    = ( k2_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['5','10','13','14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('17',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ X4 @ ( k2_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['16','17'])).

thf('19',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ sk_B ),
    inference('sup+',[status(thm)],['15','18'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('20',plain,(
    ! [X8: $i] :
      ( ( k2_tarski @ X8 @ X8 )
      = ( k1_tarski @ X8 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('21',plain,(
    ! [X38: $i,X39: $i,X40: $i] :
      ( ( r2_hidden @ X38 @ X39 )
      | ~ ( r1_tarski @ ( k2_tarski @ X38 @ X40 ) @ X39 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference('sup-',[status(thm)],['19','22'])).

thf('24',plain,(
    $false ),
    inference(demod,[status(thm)],['0','23'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hGVau6BHBT
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:28:17 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.48  % Solved by: fo/fo7.sh
% 0.20/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.48  % done 60 iterations in 0.029s
% 0.20/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.48  % SZS output start Refutation
% 0.20/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.48  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.20/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.48  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.48  thf(t45_zfmisc_1, conjecture,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( r1_tarski @ ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) @ B ) =>
% 0.20/0.48       ( r2_hidden @ A @ B ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i,B:$i]:
% 0.20/0.48        ( ( r1_tarski @ ( k2_xboole_0 @ ( k1_tarski @ A ) @ B ) @ B ) =>
% 0.20/0.48          ( r2_hidden @ A @ B ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t45_zfmisc_1])).
% 0.20/0.48  thf('0', plain, (~ (r2_hidden @ sk_A @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('1', plain,
% 0.20/0.48      ((r1_tarski @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B) @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t28_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.20/0.48  thf('2', plain,
% 0.20/0.48      (![X2 : $i, X3 : $i]:
% 0.20/0.48         (((k3_xboole_0 @ X2 @ X3) = (X2)) | ~ (r1_tarski @ X2 @ X3))),
% 0.20/0.48      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.20/0.48  thf('3', plain,
% 0.20/0.48      (((k3_xboole_0 @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B) @ sk_B)
% 0.20/0.48         = (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.48  thf(commutativity_k3_xboole_0, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.20/0.48  thf('4', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.20/0.48      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.20/0.48  thf('5', plain,
% 0.20/0.48      (((k3_xboole_0 @ sk_B @ (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B))
% 0.20/0.48         = (k2_xboole_0 @ (k1_tarski @ sk_A) @ sk_B))),
% 0.20/0.48      inference('demod', [status(thm)], ['3', '4'])).
% 0.20/0.48  thf(commutativity_k2_tarski, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.20/0.48  thf('6', plain,
% 0.20/0.48      (![X6 : $i, X7 : $i]: ((k2_tarski @ X7 @ X6) = (k2_tarski @ X6 @ X7))),
% 0.20/0.48      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.20/0.48  thf(l51_zfmisc_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.20/0.48  thf('7', plain,
% 0.20/0.48      (![X36 : $i, X37 : $i]:
% 0.20/0.48         ((k3_tarski @ (k2_tarski @ X36 @ X37)) = (k2_xboole_0 @ X36 @ X37))),
% 0.20/0.48      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         ((k3_tarski @ (k2_tarski @ X1 @ X0)) = (k2_xboole_0 @ X0 @ X1))),
% 0.20/0.48      inference('sup+', [status(thm)], ['6', '7'])).
% 0.20/0.48  thf('9', plain,
% 0.20/0.48      (![X36 : $i, X37 : $i]:
% 0.20/0.48         ((k3_tarski @ (k2_tarski @ X36 @ X37)) = (k2_xboole_0 @ X36 @ X37))),
% 0.20/0.48      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.20/0.48  thf('10', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.20/0.48      inference('sup+', [status(thm)], ['8', '9'])).
% 0.20/0.48  thf(t7_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.20/0.48  thf('11', plain,
% 0.20/0.48      (![X4 : $i, X5 : $i]: (r1_tarski @ X4 @ (k2_xboole_0 @ X4 @ X5))),
% 0.20/0.48      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.20/0.48  thf('12', plain,
% 0.20/0.48      (![X2 : $i, X3 : $i]:
% 0.20/0.48         (((k3_xboole_0 @ X2 @ X3) = (X2)) | ~ (r1_tarski @ X2 @ X3))),
% 0.20/0.48      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.20/0.48  thf('13', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         ((k3_xboole_0 @ X1 @ (k2_xboole_0 @ X1 @ X0)) = (X1))),
% 0.20/0.48      inference('sup-', [status(thm)], ['11', '12'])).
% 0.20/0.48  thf('14', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.20/0.48      inference('sup+', [status(thm)], ['8', '9'])).
% 0.20/0.48  thf('15', plain, (((sk_B) = (k2_xboole_0 @ sk_B @ (k1_tarski @ sk_A)))),
% 0.20/0.48      inference('demod', [status(thm)], ['5', '10', '13', '14'])).
% 0.20/0.48  thf('16', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.20/0.48      inference('sup+', [status(thm)], ['8', '9'])).
% 0.20/0.48  thf('17', plain,
% 0.20/0.48      (![X4 : $i, X5 : $i]: (r1_tarski @ X4 @ (k2_xboole_0 @ X4 @ X5))),
% 0.20/0.48      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.20/0.48  thf('18', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]: (r1_tarski @ X0 @ (k2_xboole_0 @ X1 @ X0))),
% 0.20/0.48      inference('sup+', [status(thm)], ['16', '17'])).
% 0.20/0.48  thf('19', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ sk_B)),
% 0.20/0.48      inference('sup+', [status(thm)], ['15', '18'])).
% 0.20/0.48  thf(t69_enumset1, axiom,
% 0.20/0.48    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.48  thf('20', plain, (![X8 : $i]: ((k2_tarski @ X8 @ X8) = (k1_tarski @ X8))),
% 0.20/0.48      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.48  thf(t38_zfmisc_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.20/0.48       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.20/0.48  thf('21', plain,
% 0.20/0.48      (![X38 : $i, X39 : $i, X40 : $i]:
% 0.20/0.48         ((r2_hidden @ X38 @ X39)
% 0.20/0.48          | ~ (r1_tarski @ (k2_tarski @ X38 @ X40) @ X39))),
% 0.20/0.48      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.20/0.48  thf('22', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (~ (r1_tarski @ (k1_tarski @ X0) @ X1) | (r2_hidden @ X0 @ X1))),
% 0.20/0.48      inference('sup-', [status(thm)], ['20', '21'])).
% 0.20/0.48  thf('23', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.20/0.48      inference('sup-', [status(thm)], ['19', '22'])).
% 0.20/0.48  thf('24', plain, ($false), inference('demod', [status(thm)], ['0', '23'])).
% 0.20/0.48  
% 0.20/0.48  % SZS output end Refutation
% 0.20/0.48  
% 0.20/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
