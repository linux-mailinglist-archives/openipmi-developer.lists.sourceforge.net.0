Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6962C355C91
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Apr 2021 21:54:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lTrm6-0003ZL-RO; Tue, 06 Apr 2021 19:54:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <bjorn.andersson@linaro.org>) id 1lTnkO-00080q-8u
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 15:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQuAvIyYNagg9JyQzFat1nJUGgDzxw1aFC3YiFQyaP8=; b=KmBeTQRe0XonAv6XgwYQzTqdAg
 Pqi2U9W+TOsNFiMFQZu/wGDe00Xif/F5b1XbumUM8Qh7QSZii/IK/g3N2ePt8HXrGUAqAWrglkkLz
 JAuyvX7apb1HxPdoEqDX/ZyyhQErHhxec8OX3FtQfRBIMPsN8p5cV6tyQ5e1naVJTPME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hQuAvIyYNagg9JyQzFat1nJUGgDzxw1aFC3YiFQyaP8=; b=Jm+8zAQHBb0UE+O64tnSE7dUYd
 zDajQUVmQbZk+XeY0BbQqffOyle/MHbLG8OUehgZU1s+4fxzcB9QpYXahj6Ot0EpzM3M4iiUaZ82I
 /yMAHTYC3IzktqVgm5MH48Vfj9zZBiF+LLHEF62RBzAusROLnJQZBbs5OFK7UF1L0gwE=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lTnk6-0008OX-9b
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 15:36:07 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 l12-20020a9d6a8c0000b0290238e0f9f0d8so15000268otq.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Apr 2021 08:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hQuAvIyYNagg9JyQzFat1nJUGgDzxw1aFC3YiFQyaP8=;
 b=r0xxTuGtRNzYKu8nqiDI+DB5zSPkGLUpbLgQNQaGLGkgiwpw5MLANjpcq8MYaU0Hq2
 X8hOUDV1/oX/57fSmkTii8Bi2YNGL51y3lk4KSq6YfYCl9xD99P2sRCmzVmEG58kiwA4
 O05ho4ncMEJoZb938OZlbjiRKlK/EjE9hdYwjEFKVhW8aa5VjYe3kTtXHut1plKroA5I
 LK8jHR4u1E1zwzgU3jfR/e97UySNVfA6xtYPZDw8iliqxhEF4hMoTSEYpSrDe0cNmIoT
 5uGPRIzoOUAtKfyfQyD6S4s1F14OHjawgvJvGlkrf0GyIfoE+3kDp/xK61HSyY5bjF7+
 zvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hQuAvIyYNagg9JyQzFat1nJUGgDzxw1aFC3YiFQyaP8=;
 b=YMvy4W3QLgPoaZzqtOLEkDiJaFD+PlI943pawlms8uRcd6HvruNVH+qXs64rYarHmz
 pIvpUcpuuyQ1rjGuIB1I42ozRXICS8dAEjWHTe5dsHTOM+uvIUT/rjQ+weejqpaZJ5kW
 qq45JMyDs735aSX8BC16mqPyuzkZhIJEKZ2pTns7djQgIludqkytbRMKxL7N7/xvstQK
 XeobmFvpVQS+DaLLHoo5CaABl20W6+dmSerNhCPe3gTfdZEa2ERGckNzx52O9DvlEAdm
 B+pmk9AP0rD4CSXQQxCEZj0EC9Vm59b2M9pCUdC90WkwGK6Sd6dZDEfiGMIWhG33KiwE
 Gshw==
X-Gm-Message-State: AOAM530Kq5L/d1fKdRAShEg6BmXt/O+f6uo45RYogA2f1VggwyWbFioC
 qCHKB/sfPqqGgGZ1lsCheHm2GJJlOEz43w==
X-Google-Smtp-Source: ABdhPJwoj/Chr5jtxoWPmUxeZgdomq36W/mf+NaHAUUL9Ola9ZGgZLXjYEl5wLxRYiH8O3M4xb6gkw==
X-Received: by 2002:a05:6830:309d:: with SMTP id
 f29mr26342263ots.225.1617719396349; 
 Tue, 06 Apr 2021 07:29:56 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id d13sm4689185otk.74.2021.04.06.07.29.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 07:29:55 -0700 (PDT)
Date: Tue, 6 Apr 2021 09:29:52 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210406142952.GG904837@yoga>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lTnk6-0008OX-9b
X-Mailman-Approved-At: Tue, 06 Apr 2021 17:06:23 +0000
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
Cc: Corey Minyard <cminyard@mvista.com>, linux-hyperv@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arch@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Vlastimil Babka <vbabka@suse.cz>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biederman <ebiederm@xmission.com>, linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue 06 Apr 08:31 CDT 2021, Andy Shevchenko wrote:

> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.
> 
> At the same time convert users in header and lib folder to use new header.
> Though for time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
