Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DA428679C
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:44:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEQI-0001tJ-4B; Wed, 07 Oct 2020 18:44:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kQEQH-0001t9-2f
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dG6Pgx/Z9y+pOCfqUIFqdfuAZFEij0fF75ctt2BQqBk=; b=b3VdyNBmVK4MHSSKpm4h8gMj1t
 JFy4+EybxMV53uBl3sk8kfNz9NsBCPtZVXZ5edUCI6h70s7DSDdsQXa/gfrQXvNwLSiad8joRxBMZ
 BJEEaCA7EOusriFdwO54YWi/m9rNz3WVMJiDUqjVZ/LeMLpzZIp/LEQE3tYfX/RLH090=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dG6Pgx/Z9y+pOCfqUIFqdfuAZFEij0fF75ctt2BQqBk=; b=M4v4GW7GmRKMcA/kCSP0OebUtp
 1CgRZPGbXRmveeg8GuZuzkLVcnlmJyaV3yyY6PMCXYkJOhWLHioJk1WKeJ+X85SARANeZcDXKDOR+
 9nAgL5tJS41xZXxHOQ/cclrOvBZyma5xNDhHA5UdyXWvpZ7S1k5AtzkNkraW4rOJ+L3k=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQEQC-002NIc-1M
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:44:21 +0000
Received: by mail-pl1-f195.google.com with SMTP id o8so1459465pll.4
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Oct 2020 11:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dG6Pgx/Z9y+pOCfqUIFqdfuAZFEij0fF75ctt2BQqBk=;
 b=a7iDeZjsKaTEY/BiOzObBqqX9n3Dzzfs/KHGqaicIMR3Vbh1OhdAioF5svR2RzoUKd
 nOsreW5t5/4lueFad8DoK3CGPmzEXTYEy4p9DLX1h3Lzr0AFXS2BEZa3YRX00EAAyEHq
 XyE19Vebvee8aWMkPoFILYFpR0e3zNEucAAwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dG6Pgx/Z9y+pOCfqUIFqdfuAZFEij0fF75ctt2BQqBk=;
 b=aRRJ2gx2vCgZbg2EX5H1CsJjF4o7zGaHEFXkSF9bazOEJLWNhT3Kx0cZAUnkN7+yyq
 XWj5srW3O5pVOsmn/nqRYFjZNoy0Wi25j5aU9rGDHz6u0K7uo5Sa9xClvcfQIuZqrkkt
 yNDuBY1IROvz5KPQUHsybcwPTioCnNQSpaEcJbBljL7I8N6WiyskTTZU/K3EPWSl9uL5
 /8wBNZcCr+3Tx87yaSY0LEB5o0/77qnqHVMHs9ollCXTLMNW+8KrQL8HTVObY0Xjgw1W
 4MU02WNfFu8JpGFAYekkCBbegaH65jPxQTdGr4WtpmEnChzTnObBA7cQJInsSuBk8J1u
 KJGw==
X-Gm-Message-State: AOAM532DhwvzsGmCJdP2ghHT0Hcd1EbnfrZQN+7QyrF8vauQVQp5Rl8X
 mUJcCFKdIgC7BznDAgRddM1nhGzZQaOUkuai
X-Google-Smtp-Source: ABdhPJwx5SPC2AB77nIV2f5dVxirmq93hteJVobZaULnIUZ810ab0rDWkEpGuoPBMumBkRsJ7ak9GQ==
X-Received: by 2002:a17:902:b191:b029:d2:6277:3898 with SMTP id
 s17-20020a170902b191b02900d262773898mr4105693plr.10.1602094890958; 
 Wed, 07 Oct 2020 11:21:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m13sm3299757pjl.45.2020.10.07.11.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 11:21:29 -0700 (PDT)
Date: Wed, 7 Oct 2020 11:21:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <202010071121.1BA120D@keescook>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
 <46fcf1d28532868abd1c2dedaab221be56736db9.1602011710.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46fcf1d28532868abd1c2dedaab221be56736db9.1602011710.git.skhan@linuxfoundation.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kQEQC-002NIc-1M
Subject: Re: [Openipmi-developer] [PATCH v2 09/11] drivers/char/ipmi:
 convert stats to use counter_atomic32
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Corey Minyard <cminyard@mvista.com>, minyard@acm.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 06, 2020 at 02:44:40PM -0600, Shuah Khan wrote:
> counter_atomic* is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic* variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> atomic_t variables used for stats are atomic counters. Overflow will
> wrap around and reset the stats and no change with the conversion.
> 
> Convert them to use counter_atomic32.
> 
> Reviewed-by: Corey Minyard <cminyard@mvista.com>
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
