Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DCE358933
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Apr 2021 18:03:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUX7Q-0002eY-6R; Thu, 08 Apr 2021 16:02:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@rasmusvillemoes.dk>) id 1lUUu9-0000Oc-4j
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 13:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMuAklHy/tPt7YPBozpvIQsmWDAIa3a/la6+zoUVcdI=; b=USj0+HPdyysZS02Pq+S6qoVhyi
 JJ89ZtqqaQ6jEhIRr+LYx+QZgt4lrW5PPrPkub/i1bG3VswO7pJdG7L8rxJQEemhIM5W9Nv4AqQxF
 BmmvX31hb4i2RVQPQf3ckG1ekw85Wh7ZNax1r+m04ys4DBdofQga8LQB2A7mk5gp0ANM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UMuAklHy/tPt7YPBozpvIQsmWDAIa3a/la6+zoUVcdI=; b=DT/qyJWO7I6p4g4Aq1KtfVf7Ee
 O3Bba5cwMr9Q09PPSGnrKFMLf75b7gM0fwf2Ajrb9QOjMlO/80sIvz+flkkITYRuOw/omEoN4+5SH
 C0MMllO5e6b0F7LjD371VECjTKjC9coFqDUMiYupRfJDEUAuQNyc6t5db2ulm7wRqJAo=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUUtu-0001Vb-9m
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 13:41:04 +0000
Received: by mail-ej1-f49.google.com with SMTP id l4so3094715ejc.10
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 06:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UMuAklHy/tPt7YPBozpvIQsmWDAIa3a/la6+zoUVcdI=;
 b=JXlbvdv6BKxL2QLt+A6EZMYCjKur7zKVGHA+SPjjhttU3LjU5J8CTsvMPL70CwGYsq
 CUXz1jkKLkBNcttlxCmAirFDD+kjBSkQXhxTFfLF/zDE+suTqi1E02kHIf/SGivtkXXC
 r7MEDlKMlo41vpb3rOrLkq/HnnmBY745AuXsE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UMuAklHy/tPt7YPBozpvIQsmWDAIa3a/la6+zoUVcdI=;
 b=m7YvAtlW8tORRxzYtxASXhV3oKOGRN5XG2kwMlcuXslINlsGkJSkoGlNCme9n/vJV5
 mYaIJUbX9uVVzcZg0zbkx2KItJNgKS2MP7SmLbECzAlrCcPZ5Xz/dRtqibFFuOQQj+TZ
 pqPDLlxuYrkpIch1EWgL9YKyarzr081pIU2SM7NNQg2AUFBvCUCpJ284/CnKL8dDL0MD
 SF8jsBznCoFbAopks7T0lTDTS7qz9qO9kUm8pkVQsJjm07jvNkI/z0uJ51aLdFpci1yc
 dxaNwiD5euHjsDapuIokcg97EfudCfLD4N7Lb1qRYqUisvRMvSoIlIP2eAYIMbFTnMgm
 sSQQ==
X-Gm-Message-State: AOAM530yWU6LpwqAn5jOun1WkUeZ98umw7cB9rbWA+LKMjSHRFzdYv2g
 rSUt+CukN545dDlX/ro4eMssCtzDKnP7iq7s
X-Google-Smtp-Source: ABdhPJwq7QZNDA3D6CGhNZXcz6mj8YzK/fNHfbq7NkBvOdUqzkgcZZF3Ehka2wUefbZcZbtsp6oq8w==
X-Received: by 2002:a17:906:1fd7:: with SMTP id
 e23mr400958ejt.528.1617885914623; 
 Thu, 08 Apr 2021 05:45:14 -0700 (PDT)
Received: from [192.168.1.149] ([80.208.71.248])
 by smtp.gmail.com with ESMTPSA id r4sm14262813ejd.125.2021.04.08.05.45.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Apr 2021 05:45:14 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <jroedel@suse.de>,
 Wei Liu <wei.liu@kernel.org>, Michael Kelley <mikelley@microsoft.com>,
 Mike Rapoport <rppt@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, "Paul E. McKenney" <paulmck@kernel.org>,
 "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-remoteproc@vger.kernel.org, linux-arch@vger.kernel.org,
 kexec@lists.infradead.org, rcu@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <03be4ed9-8e8d-e2c2-611d-ac09c61d84f9@rasmusvillemoes.dk>
Date: Thu, 8 Apr 2021 14:45:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rasmusvillemoes.dk]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.49 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lUUtu-0001Vb-9m
X-Mailman-Approved-At: Thu, 08 Apr 2021 16:02:55 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] kernel.h: Split out panic
 and oops helpers
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Iurii Zaikin <yzaikin@google.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 Joel Fernandes <joel@joelfernandes.org>, Luis Chamberlain <mcgrof@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Eric Biederman <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 06/04/2021 15.31, Andy Shevchenko wrote:
> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.

Yay.

Acked-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>

> At the same time convert users in header and lib folder to use new header.
> Though for time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.

I think it would be good to have some place to note that "This #include
is just for backwards compatibility, it will go away RealSoonNow, so if
you rely on something from linux/panic.h, include that explicitly
yourself TYVM. And if you're looking for a janitorial task, write a
script to check that every file that uses some identifier defined in
panic.h actually includes that file. When all offenders are found and
dealt with, remove the #include and this note.".

> +
> +struct taint_flag {
> +	char c_true;	/* character printed when tainted */
> +	char c_false;	/* character printed when not tainted */
> +	bool module;	/* also show as a per-module taint flag */
> +};
> +
> +extern const struct taint_flag taint_flags[TAINT_FLAGS_COUNT];

While you're doing this, nothing outside of kernel/panic.c cares about
the definition of struct taint_flag or use the taint_flags array, so
could you make the definition private to that file and make the array
static? (Another patch, of course.)

> +enum lockdep_ok {
> +	LOCKDEP_STILL_OK,
> +	LOCKDEP_NOW_UNRELIABLE,
> +};
> +
> +extern const char *print_tainted(void);
> +extern void add_taint(unsigned flag, enum lockdep_ok);
> +extern int test_taint(unsigned flag);
> +extern unsigned long get_taint(void);

I know you're just moving code, but it would be a nice opportunity to
drop the redundant externs.

Rasmus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
