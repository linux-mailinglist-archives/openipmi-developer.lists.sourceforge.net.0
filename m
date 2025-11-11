Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDE1C4EA1E
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 15:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4FNG1andiu7+olZJ2v8ZefykXb8K+oV23VeIokRnPxs=; b=Y9suVJWBtxT3rhTD6Uh4eRKWyn
	oM4FqETwRESIAS1rzCaJSPdD3EAcD2J/8YGdvPY0FpfnBhTpk/SCw8Ad21QoRFXv1LZvm7BaaicPQ
	Tzy91VMSfwSXFLJl6ocL2Kz1KigBDEeO0cuq0dJm3adaqwwapoGIqo4QZW8B7FyX1+FU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIpoi-0001xL-P6;
	Tue, 11 Nov 2025 14:57:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sumit.semwal@linaro.org>) id 1vIpbb-0000ch-FN
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 14:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=; b=Q08gv8oe+CodRSYW6GMMKO551S
 1jchfObLg/x3MgM54VEU+vc4tC/Js/E4wwwfIJao39Xx5McqPuay/6+XdRspF6urYaWPb7UB4DsVv
 NjezyEyQUPamBub7trgd9THyGIE02VSUXpTxh7mEhYFSFFR6NGq56S8QG2DL/ecNaxYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=; b=ICX3DKtufQFI2WD2xno5EgC+si
 pdAedSvIQavcbA42PiZO+2tsEmQ/G31S4Nlaf3MaAmgqZ4F2QDnAph3s+AZK9yNdBMQbybkSjGhjI
 vWVGcOBSfbS9/kjpnRyslDYuzzfHaVyp1qRJMRcRphQ+ZT0dyDUQIUqdwy8jAS+fT2f8=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIpbb-000331-0y for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 14:44:23 +0000
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-640b4a52950so6319158a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Nov 2025 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1762872251; x=1763477051; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=;
 b=PaMYSf3KRKdEgb2VRftRPQX5R9tixuu4BE51emssxnmgOTfO5McDzp93aEPFc9G0pk
 7iL3+QNZI7kZEIFh0y7O7E7EGRt80L8D7DzSNrczXOajTdcdKqM5w6s36Qkc2H2p9vyP
 ftqrlCfXpiA03jqtJaf5uArK8zCPE1ecVYHdBhNudkaWDba9d9tHgY9Ndo9OHsOZanA7
 XiwcCMpbSNQm/Lzr39YV2yMg0tcOUr/p2AFbP1CFYugoilPrKnrWxv6ilJFdJHpfMbza
 czf8c7KexqmksYuoMLeOmMhz/Kv8IlVZ5Cb+nyk9Ya8apqhcbyWiu/YsH/EDDKSZ+cbC
 eitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762872251; x=1763477051;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=;
 b=afXrxhk29gSAgPhEkV6U6fZcbcyDUI3yUrJHvLLjFnlcqsshz/VyR2t7cmBSuXuYbA
 rkRbuZMKm4SxN3Sb74xUpkTU0uRQsKbdW1Yeht+TWNCsyiBJ85M/woQyzhff3bmCNPub
 FoubUk9hQu3zIHhbMe8dW9IotrU3FAMh7dqnbBNKPfjzAhqRZCshOil3CSxr1fhMLo7I
 ECUZnnRBpupP0d8FufsQTVe470NnQOUTnV4brIOManVQ5CGBz8Vow0H5EFxwIXjBtxG0
 ihh/VxgqXU0SkVXVdXF45lrqX0OP3pNWOYiKmLkobLkzcd9rO/bGdnMKj1VyTkTLJxjv
 YEhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjfRppoxWR9JzJZ5QVtONUef5sT5T7ifuGJ3FEInIHTVBcyBiGdaiDoWmqLaGczPVNx287agVW7E5lhviLnbLoy+g=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzV3w3QEVLq3qVV1n7pLYRwtedAgUMvYrEjZ1cRGLraa7ql5jDE
 WleJIev+qSlrnMEKHvB4Oz87z1imil2qjwXs7ac1w7Uo50rFdSgi39OVJpC0YnxTQgOHirImYs2
 /Vok93HOhQzNAVMtlBEbFu+twn1u+9ltXl7aOiAFbqw==
X-Gm-Gg: ASbGncuCHf4gLR3isr7CPxkQ/udSaHNZ+g0+WDZa/UZXGQGkjgT/5vu1cafCJRpL1SL
 bFNIz2KnaXxB6NgUa0AWTI2EXHcGs5LderDrjl6cxXlPytECTuU3cvXMqymMGAKrYyXiaI8S2mO
 BoqKHfEqTfPSnITeUZ+rXDz8ep1LyYQ/NX13L6xdcAXJbjvnOer7aSMP+PTAKyOfb+DJ+MbA6Sv
 c5dk5JvOiCvDRyii2ppJzm+rPPyo/erJroPK9PJ+h0vFXURysdxapRNIC1cFZiv+VDo49i9YPM6
 TbakKPVRr2dN/EyEOCVJ1Ur4uTQ=
X-Google-Smtp-Source: AGHT+IHMY6SoKSk0VgpDlYvVT6P+glN4Yq9XXIqVKd9jfwRPr/K5XWhLNKItsuRhohz/IcTpClBme4+jDstH4cTCaYk=
X-Received: by 2002:a17:907:7ea4:b0:b70:b5ce:e66e with SMTP id
 a640c23a62f3a-b72e02db993mr1289989566b.21.1762872251327; Tue, 11 Nov 2025
 06:44:11 -0800 (PST)
MIME-Version: 1.0
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
 <20251111122735.880607-5-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251111122735.880607-5-andriy.shevchenko@linux.intel.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 11 Nov 2025 20:13:59 +0530
X-Gm-Features: AWmQ_bnAE43qdt9uTp5GKOPhntYFEAk4L2mYcClIlF1B_9-TbeBvnkuEckfJGvA
Message-ID: <CAO_48GE5LK7hD-KJHHoD-XCRjTPcZWApE2MVvs4OgVdr1=u+rg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Andy, On Tue, 11 Nov 2025 at 17:57, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> wrote: > > Use %ptSp instead of open coded
 variants to print content of > struct timespec64 in human readable format.
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.49 listed in wl.mailspike.net]
X-Headers-End: 1vIpbb-000331-0y
X-Mailman-Approved-At: Tue, 11 Nov 2025 14:57:55 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 04/21] dma-buf: Switch to use
 %ptSp
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
 Alexander Gordeev <agordeev@linux.ibm.com>, ceph-devel@vger.kernel.org,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>,
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
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
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGVsbG8gQW5keSwKCgpPbiBUdWUsIDExIE5vdiAyMDI1IGF0IDE3OjU3LCBBbmR5IFNoZXZjaGVu
a28KPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBVc2UgJXB0
U3AgaW5zdGVhZCBvZiBvcGVuIGNvZGVkIHZhcmlhbnRzIHRvIHByaW50IGNvbnRlbnQgb2YKPiBz
dHJ1Y3QgdGltZXNwZWM2NCBpbiBodW1hbiByZWFkYWJsZSBmb3JtYXQuCj4KPiBSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29t
PgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCkZXSVcsIHBsZWFzZSBmZWVsIGZyZWUgdG8gYWRkCkFj
a2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgoKQmVzdCwKU3Vt
aXQuCj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1
Zy5jCj4gaW5kZXggNjdjZDY5NTUxZTQyLi45ZTVkNjYyY2Q0ZTggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Rl
YnVnLmMKPiBAQCAtNTksNyArNTksNyBAQCBzdGF0aWMgdm9pZCBzeW5jX3ByaW50X2ZlbmNlKHN0
cnVjdCBzZXFfZmlsZSAqcywKPiAgICAgICAgICAgICAgICAgc3RydWN0IHRpbWVzcGVjNjQgdHM2
NCA9Cj4gICAgICAgICAgICAgICAgICAgICAgICAga3RpbWVfdG9fdGltZXNwZWM2NChmZW5jZS0+
dGltZXN0YW1wKTsKPgo+IC0gICAgICAgICAgICAgICBzZXFfcHJpbnRmKHMsICJAJWxsZC4lMDls
ZCIsIChzNjQpdHM2NC50dl9zZWMsIHRzNjQudHZfbnNlYyk7Cj4gKyAgICAgICAgICAgICAgIHNl
cV9wcmludGYocywgIkAlcHRTcCIsICZ0czY0KTsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgc2Vx
X3ByaW50ZihzLCAiOiAlbGxkIiwgZmVuY2UtPnNlcW5vKTsKPiAtLQo+IDIuNTAuMQo+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1p
LWRldmVsb3Blcgo=
