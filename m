Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 594A6C4E8CB
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 15:44:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n/dnyYEzNsl0iGlS9wFQRaj/Ke1KZEJ0lulqgoEMLKs=; b=Z6e+N3/NmYR2VOcDRsulhH8Vg7
	1MW6xCj+QGTAdDBkKWTn2ZYeGli0xYBGIjS1wR945e4vrXtdgGaEjXmeZWcH0dP72jm5ekBCliGq0
	mTwFFO5TnXYzixainDqNk3QSifYOX2IBTd0gqc/WVehRC+YOSy+OLO4JroCZYUdi9i0g=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpbg-0000l5-8N;
	Tue, 11 Nov 2025 14:44:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vIpbc-0000kf-Fp
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 14:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=; b=WhFY9iiKACYJ77IzdtXdRK1BVl
 ioDzAFuXEtQH/d4u0/uNewEYZRDjp5ZJ7cCPudvvIMU+cShpwjWkfFUG4+SuHz8oStmUDJI819aYl
 sNkY6BpzspYbt6yOLybeD5GHq5a1Q+cPhcv9emrT7JC5+Vcl+c+Qlb48fgWWMKoWwwco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=; b=Tlt1EXfZa+ZVynwr2MW0gf7hZL
 fjh5X7qczB0H6NpbTjYrYo35hM3BrVLwkoaLHtoQ8o6j/8rIPaGUkgCEPyWJCC/Sw6TkulLHLhj2t
 F4HiJvGo5XSyEWSyjbuS3X23wY1BXW43HVhGiQHzpNSN1liSC+Z4ZUYuDpJLPIOBWEPo=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIpbc-00033A-Sb for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 14:44:25 +0000
Received: by mail-qk1-f194.google.com with SMTP id
 af79cd13be357-8b2627269d5so333013685a.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Nov 2025 06:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762872259; x=1763477059;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
 b=Fj0qsdx/hAfaUqA2gyEJH2C3NIbvaguNo7a8cryk0zPbGPIxnDTeSf/nfq4egPMUcL
 8pGHFn0Chdm51m71yQa1wegTduKLrtIkRd7/0qPTxOPstugYvPE9i04cujCcK2Z44LwO
 E2zMl/AYXFNiGlK0YJqKMblJqxp3GOosy9W+GjGeCXkFJjvtJpRMjM/bcHX/uRDGSxat
 7Kv1xQdmFlqOgsKs/on8uNuQttHYO0RAn1RXbV7LxeVxg5pj6dFiHa+Jz+7IKZZmf0uU
 0Qku0qpWoyMViwABCKwuOkdMbXkEXLf78jKaMaR7lGj/9CJ7PEYYRZBwPGVKKuMJ/LZT
 wfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762872259; x=1763477059;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sI/Bx88S/ljGSNn+PL5Rjkz6jNPZ9Ne5hLvzfkx+saI=;
 b=hTTrSq2CmrCG/8J4aWKQ1k3LnR7Rhn1JfxJ8pqkkNQSmUELkLYqz9epgCaABh3x37b
 wxER8evaKATN2qmRyCcvySDErLE1Jimkm95TXA+BKfXM4vBYsH2bGVNM50N0zpOmg933
 x/f1H2ztBh5tI6YdUAJYJNAKRyLcPk8L1O31xm8j4PoSSGZk1/K65SlEw+b9n9FTWDYY
 d+hkJQno94PW8ysISlH7f3BkbGFf8r9quw2NJ+qvfsaMkuQrwEIlBGD2ldktpTmOQJSX
 dGnl8PRtGYE2GFPj+LCtOB6fNpH0t/hIilZ8TBYJSjc/eUihqe/vI8tfQeJSeHvJG4/J
 87bQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1F2xpmZmcZzndrYqCRkLp9oJ9lIv3+tyEpRtQoPH4Bx4gk9dNQVuftiv7BcfKq9exckAl7oyHhHGE3rVDEwleiZc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxR7Pi/vRBsMuRcWNyTdTekQe8BXwqGZ2AOj2qI8GO4Vn5n32SF
 xRvRItHdfjiwiIL0pP4AInbpxOnBcLjumAbMKDnlocK3O7XDPZOEVZlIh3XshL5yWZjF4pPqfuU
 Va4oc
X-Gm-Gg: ASbGncsC9k5KofkXMFWZK4x7kp4XLBaov1euXsEEvKlbgdJ3xfDVJPryqLBeh/deXWW
 sscijNVzVcbmEhqUCAHPsdXiIHtn7OXTACaLEORZXv23P/rn06eAE0Cm0mmUoHD7lBHGo0/5zAP
 DaV1jKjvaY8x9DzbJguXTF2d1smkwhB6gGG5xr654jF8RaKwAXUdyP3svFaEufRtuLcW1l+o8e0
 ooWtxR9yTc7cz7pU0m81q+nqVeY6CtTrwLBhfmdz0WLve5xWWxZc3Op+cdhcufJBFFXk6tqEmCa
 J+DqCwtW7h+YOcYdSjXcmB3HMoVeyqQJfUoT9VXj+6IvfbM0PRIpjy6KwTKOem1I0fsapGt5cs5
 5XpusPynbZLvE3mV3y1mQbGJiuqNzZ4Fb80Ctorg0Va9FxGEOyAs7F9dij7PAVMpklvHzbIvK8L
 m2w0PXyBbvDnSL7A==
X-Google-Smtp-Source: AGHT+IFusuA/Ax3anjd0HIltuToxJUS02/udclYoHdoDI29Kk3VNxq4/rhyMyYWudQr5f0WcO3jkBQ==
X-Received: by 2002:a05:6870:4792:b0:3e7:f4a9:588b with SMTP id
 586e51a60fabf-3e7f4a9b0bcmr4110818fac.15.1762871849590; 
 Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b4e9:19a3:cdaf:7174])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3e7d6f7a27dsm4861066fac.0.2025.11.11.06.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 06:37:29 -0800 (PST)
Date: Tue, 11 Nov 2025 08:37:24 -0600
From: Corey Minyard <corey@minyard.net>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Message-ID: <aRNKJIyk2ne39ScE@mail.minyard.net>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-13-andriy.shevchenko@linux.intel.com>
 <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pvjnjwm25ogu7khrpg5ttxylwnxazwxxb4jpvxhw7ysvqzkkpa@ucekjrrppaqm>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 11, 2025 at 05:08:25PM +0900, Sergey Senozhatsky
 wrote: > On (25/11/10 19:40),
 Andy Shevchenko wrote: > [..] > > + dev_dbg(smi_info->io.dev, 
 "**%s: %ptSp\n", msg, &t); > > Strictly speakin [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
X-Headers-End: 1vIpbc-00033A-Sb
Subject: Re: [Openipmi-developer] [PATCH v1 12/23] ipmi: Switch to use %ptSp
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
Reply-To: corey@minyard.net
Cc: Andrew Lunn <andrew@lunn.ch>, Takashi Iwai <tiwai@suse.de>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof Wilczy??ski <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-sound@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Christian K??nig <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas Hellstr??m <thomas.hellstrom@linux.intel.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 11, 2025 at 05:08:25PM +0900, Sergey Senozhatsky wrote:
> On (25/11/10 19:40), Andy Shevchenko wrote:
> [..]
> > +	dev_dbg(smi_info->io.dev, "**%s: %ptSp\n", msg, &t);
> 
> Strictly speaking, this is not exactly equivalent to %lld.%9.9ld
> or %lld.%6.6ld but I don't know if that's of any importance.
> 

Dang it, I'm traveling and used the wrong way to send the previous response.
Sorry.

Anyway, yes, it's not equivalent, but it's not important.  It's better
to use a standard output format.  Thanks for pointing this out.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
