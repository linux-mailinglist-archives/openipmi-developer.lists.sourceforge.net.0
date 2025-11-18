Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3824C6B47A
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Nov 2025 19:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UJP+QWKjX5OgPOO2KFxT00zJ7a5y5wDUYLjlPc1y1HE=; b=KExJGtpiBYRT1Bd5WVaNUhKuOt
	+l1rUfCuimOSOFF5J6Vu71GMlF3ZRiyVoUzcPPtYT5XRs4pwTdIUjNyNm/dvjWo44Bck5cH+Xzssu
	oPdeslI24QYDLdFHz/3PpozruoG3Cl2a0nY450aI4I3x1oUzyUZv6Aacoxkx4Jtk4yMA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLQmm-0002yv-Dv;
	Tue, 18 Nov 2025 18:50:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <olteanv@gmail.com>) id 1vLQml-0002yp-IF
 for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 18:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=; b=j9Sd8rtS2fCC6TuhRzaaaRHA2q
 EauZBRqPm1ObAy3+LUE0Wn7TOwyjyK9nWTNRooZkZK/W9m+/iW5czazY7oB6tq4Z+PWGd4urg6dwN
 47G49S/7gVj5fAClu8l1H+J2UxD+m+K7OkIgAAAiDcz7zeKPiQr6ategKO+zXx9IjyZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=; b=MCRS+lTxnXb+FYPm6+GiRBGQuO
 +Xv3uPPL7adt0PkW9Dmyb5Nbj+CSuD2pRNUMEo59ky6G9GdUUM/IWiDBsnY6Vpv1VntzeAUZpzqX2
 XjAOuVaOv8kqZmpbnv+du287E/d91PIQUwUfrAkCOBWAQwHGaqjqQ4rUYjjkwchbcoK8=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vLQml-0003DZ-7S for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 18:50:39 +0000
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-4779fd615a3so2277545e9.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Nov 2025 10:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763491828; x=1764096628; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
 b=NsVCx5XNOVJ4lY/FNnVQPWrRrVA1l7ejrx2GeO4r6aVfQngLBUysXmCL/t2eBzaHjV
 byBYN5w/oxZIl2rCbNneZbIe1UaYxJJjPdgS3UEbIQdi1dB3tbqw7lWDk2zbWDtMo5WC
 uQ0HFR/9H/Vdfgjf1byXD6ClrCQVRiEyDN+lZTvNO2orKuORsaOEZ5UlwWgox2mWso1c
 +2kl/bvHxHsI7W5EQgbTerwN83lRDMP6RrEqVmVeNEZx5SlXqpWKENWQh1FMQvwCmMc5
 iYXJoOuUK+yotQU7spPD0D9TXGtYtbEgJupXL/3WMGTXRH9tLdG3f5vKNx2GM8rRirhk
 2Yqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763491828; x=1764096628;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/xelqTh0MJxdYizhebw3VTy7C2C4gWnDlrkViLNdgoU=;
 b=gOYGN4nYhGdWBeMOuSmouL89PU8NvAFSWTGjeBnUL+8KF2RXcRaR3i1VlUI68mqIDj
 bbKfFcbg1VH6650YRLR2NpQUM8KWYw8Q5Lso7y6r6wp+3LlK4xJ5+Dwx431C1ohHDQIS
 h6Lgagcftu8ekxv2asQS7txqbJps/LPvm8KhTiJn+Tz3dLWlh6Tl5lHAbQ3Wn4RpCuFC
 8qbH82CbjB2IlU9CG2rJQwkS3KNfZPNIXxPHD1IchXvz7hHUAgah6+w5lDhpTuqgnBUU
 KteCOgksWPtX5tHQPYACpUB5WDREcx/abDZwDEcbtFz2gPa1o1yrPpCJ6RvkZxJYli2e
 ucmA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU98Ymw0qSV89rODGbIHZK9ufcWPqH7VGg8dQm8+i/2/6j0iDKF5qPclAwYsftAOh6uh5cIuSrt1a7BCb+JXfviXl8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz/g69Do0dnk1Zg4wITZffoySsEB2oKKh9VtC0e8LLsoeBTikNN
 QLdcY6f/Nq+dcQi0m1h4zVf3EXppuTszVkxUt2cMNXnHyKzKa3BYAEIY
X-Gm-Gg: ASbGnctViuqj5RCwwdK9BZf7PoyEuPI1lAKFJvUiEwOPnaQWRxwJCbD52fW7eONcIS1
 RzKDQHX67Rm4EXOC+wduh1qgrpKkrmEPNMj2JOMKQahXHtDbPMr170WiNr3uAsNS++7UHPbUREN
 WwelX0401FafYR75/sECzyaNqShEJb3y5PzlU8NCAsw7R9pOOntTsJDAPkIk5T+QoENMzBQETF9
 +CFvTPrFybP/kA7hb4ZkbCWEWqznEkvsBBnxQRoXCu6CQDel93oKELmVqVMRT86kkm8ktM1y67U
 BSrvRapIyr2mj3vL0J+R8WHNQ8pjykF6GZRSRjep4NQTWoB7M9vQdpkKcWeU/NyljASq2ETZSBp
 yFgqtm6GiDC/t7OSnZ5QjMvrildI5xQ/CYnKjBgDGQo+5L8SxZvW+593AHrt12nkBndxaKYzJMZ
 WfyVg4fQ7/AwCS
X-Google-Smtp-Source: AGHT+IHx6i4VYWR6pSTcXtSoFlN4Y9U/3Z/PI54PVyQA5JnsfbBaJwpdM3LzkIBKtiuh5JtXbYxanA==
X-Received: by 2002:a05:600c:1547:b0:477:5c70:e14e with SMTP id
 5b1f17b1804b1-4778feabadamr87966605e9.5.1763491827278; 
 Tue, 18 Nov 2025 10:50:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:9ac1:9a91:7d1:a813])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-477a9df99d3sm22110705e9.12.2025.11.18.10.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Nov 2025 10:50:23 -0800 (PST)
Date: Tue, 18 Nov 2025 20:50:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20251118185017.kk7binsumhh27n7x@skbuf>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-15-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy, On Thu, Nov 13, 2025 at 03:32:28PM +0100,
 Andy Shevchenko
 wrote: > Use %ptSp instead of open coded variants to print content of > struct
 timespec64 in human readable format. > > Reviewed-by: Aleksandr [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [olteanv(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
X-Headers-End: 1vLQml-0003DZ-7S
Subject: Re: [Openipmi-developer] [PATCH v3 14/21] net: dsa: sja1105: Switch
 to use %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, dri-devel@lists.freedesktop.org,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Corey Minyard <corey@minyard.net>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Andy,

On Thu, Nov 13, 2025 at 03:32:28PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Acked-by: Vladimir Oltean <olteanv@gmail.com>
Tested-by: Vladimir Oltean <olteanv@gmail.com>

Thanks!

This is a rarely modified portion of the SJA1105 driver, and it doesn't
conflict with other changes that I have planned, so from my PoV there is
no problem with the patch being picked up via other trees.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
