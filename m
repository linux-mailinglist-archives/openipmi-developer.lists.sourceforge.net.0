Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE3C5D713
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Nov 2025 14:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o/WyyF/ketoYJGwdehyDBpMPKPAuDsHmlczr43GxV8s=; b=cltIn/ZevJxxOOVSBNH4KkV5oT
	1i8KPbhEjWLOE64p0NxpLjfURD7yeSNWlUKI0I/bbdFVP07rrL8EcdZ71Uo5QQRYFlaWG/IfLxbMY
	yptHjNTAWQFGI4BrBw0w0REIPClo0GiCQYH6ijqVIjdI8YJowoBypFqbw5BsGrVwal5o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJuFu-0001Se-E7;
	Fri, 14 Nov 2025 13:54:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.baryshkov@oss.qualcomm.com>)
 id 1vJlz4-0001cn-KO for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Nov 2025 05:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=; b=D4GK2PThcrPfPKRFGRxPZgDmzk
 4UorHIeOX3eB/jbZZsHb2JVIv9eSki5dWipoXqQKdQr2XsNQKyU7CGUvah0BifLRiUOuP4jDMNmUy
 tGjMhVHvZ7QQ/PO8C9ht9Y3I0U379Vpu1JqORwEvSis9uLni4ob9CTpyZttWG44pFLIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=; b=RRoKFPFZgEktZOc76+uv+nsTcf
 sBacx6PrL7mHNWwhpyRKZyMCk9y73qrUMz4rBKB6eqcN2ibTJIzFNxvUGGDW+6idFd68OmRTtKmIo
 qIQmcm++g9UOd/nnakVx1rJfCON5c2m3YlHuraVVTiH81JZ6Zh47FqVDcyLQMzz+10LQ=;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJlz5-0001Kk-0I for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Nov 2025 05:04:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5ADMb3OS1590811
 for <openipmi-developer@lists.sourceforge.net>; Fri, 14 Nov 2025 04:12:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=l9FUBbeUidxIV00pdQyQahKH
 PpoxkuEk9fyNczKyhZ4=; b=WcdvIvc3sMDYJHBly1X7GlPj50GGKCEK4vrDj8k0
 5eaZ80++Ws3b6M4a/w2eVgp5fBZPqpReXJ6xcZvCuGqlyHQVAUPNMJplXDtRkmjR
 y6847o+zGxT2XJUEtVt8QOs1dNpy77MXiVZuOJgYMs0BamIgUtjw2hTVBYrDWjPI
 ByZ746JdSL8Gv5MgaoTNMk2yzeUNW4jCf/D2j643Vd/vNt+46rBlvy+jz4Ihw0Z+
 fTd/SLbn6SPCPWVriGZp93nSNSFJRad1vxT6ksE51c5WW0OqhiOxjWbi0pFY79Eh
 201wVoknTjIeNpA4GWGoZTCf94s18YBclqS5YUrFYMV7Vg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9frs4v-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Nov 2025 04:12:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-8b26bc4984bso784566085a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Nov 2025 20:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1763093552; x=1763698352;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=;
 b=EGE8CxEkRBgCB5xNrL2NtTctFUAIisSPliX9Qdp8P2jNPzFAs7C4LIUmay7Kdevxev
 LI8BWwHD41ruKhW5yGfQhdvFK16yO8c9F+1hCJK8HyzSw1YY2S1LEWSHbRHIoBVu71HM
 4L17J+hqCXepJjnF5TiJUMxavOKPC92g6E1RXNWqgsS7ltWkLjjnVkEy30lmcaExAIgy
 qbI8lJET6qlGtGhl7JvqlAtvf5JYssJUe5aCWPc4XdA8U2JR+oGUpMTHQeX7+Os7fdVX
 f1qcMfZZRTUhWZzFcz1k/hjeza12egQXH3+zWyjf1GRPOWXPtoBRtf58dIkzMNbOIEKM
 UjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763093552; x=1763698352;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=;
 b=p+gBNLCxR0nZa2V8Qe2YEvEeavxFObpKC0uPKoA+6esSvvpSpT3jXb5hhBvOEwQXyk
 r8OZyFhjVe1i4ZN/rRmpDIHfiqO34ps+jmiXevXCWmUEL5Q3GQ2c6AB75z3/qwL9vmpq
 g6zOgb8x3te3RmWb+PTr3Zm1qWfsx+gMPHaE08yYIeV4aMR/4oTAJzjtyI60cKZr33SL
 kfEKVT5lRCPBwgZHxUcrdsSLQvtUpgrSugX86JXnb3etPfbbjEfGWnQlHha9wUrhKqoE
 OaAumPR1Do8lHXTMscuIEPsi2n0u4TjuP+1C+/ii2Ltlyp4KMVc6sZj4ORZcQLNmVFH2
 A0YA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmmpZ0TCfJCbWh0F8ubw5ZAPq62XdbFO0zsQOrsxrZV4TM7/RPK9gPtGxvCNPbN4k+RWbAJiR5hEONxu6ocZgmWNI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwzfhVS0m5j6jaXdL0Y1Yt+pgtcUtEj1FTA/0Rl+ixJaPN+0ccs
 VfcIGJmnd4LlMWNFyzBkwXyDzjgcTCZ+8gV3ScTYGUNaXKatShHl+GLCPGfZWL2WifKNALbWpRj
 Cd8eQK1ZJyLF/9r6S5HDe4khFsAE/tYN9etDHcJwK4T6nnY3XlgC3ilG4vdAoN0AGJ/cYnz3BHn
 78RycE+uU=
X-Gm-Gg: ASbGncuHnta4p/rft66QiBhICAxD1dl7bg/htFbLzNBkQl9PJg2AX89gs0JSrLVlN6h
 UEk6UQTmEl9u8SBsLH+QUtHdQ0fHHaGIUdgJz5llBoGHfUkc6yPEhRbpXcSyQ720jCQD4aDXauv
 mdqqBAfqcaHHWpkJUCsKpE+VVsnaqQOivXl3tTCl25o2hknQgjqOz0Cc6RrpQlZ51v0o3Ad8h0d
 w0LmQVRqFEdEfJQboxHJMLt2uJus0pPqvcMpeYuZnGVyrAIzQJXNRn6VlRzVdtwF1laRLoLpkCR
 uVEx25+Y7385Hb2jjdSHuggMN7oEO31bbthvCz/5pssu8n4OklGMRLrZYKG80rL287sUxMwxr4L
 Scsz589ma++15+RGAoRYbBgbSGWQI6HvejChd7/Da8/PHEjn+gX9aAKxkjU/MFx3AUGjZ2Uo8Wf
 9v24gJdlA3xZJt
X-Received: by 2002:a05:620a:4628:b0:8b1:ed55:e4f1 with SMTP id
 af79cd13be357-8b2c3175d59mr235426485a.39.1763093551868; 
 Thu, 13 Nov 2025 20:12:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRBRFxxiAD30mEJm55HBtKCBqJwVeb/nqEO1wa7PZ+U+vRFrL3SI4k/Rw4EJ92OxtkmKQ+nw==
X-Received: by 2002:a05:620a:4628:b0:8b1:ed55:e4f1 with SMTP id
 af79cd13be357-8b2c3175d59mr235424485a.39.1763093551352; 
 Thu, 13 Nov 2025 20:12:31 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59580405a4esm784867e87.95.2025.11.13.20.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Nov 2025 20:12:30 -0800 (PST)
Date: Fri, 14 Nov 2025 06:12:28 +0200
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <ngzyqzrjg2msv6odahkirdipjizbpaecfscfgnic3su5fl6hs7@qgdb53svq64p>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-7-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-7-andriy.shevchenko@linux.intel.com>
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=6916ac30 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=JNz3O4sEs4oywJvo4n4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: PFqTwGr3wnKgk8n3DLVrDrlVzD7osHo_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDAyOSBTYWx0ZWRfXydIK2xOO/yWQ
 yz1F2aJFYi7sZthMR8OKGkvq175gi4+dTth4EbngMaTWVQkkqBG/PrHC2cqAXGyzBp03LV09Y8K
 lQQEH4cq4m1emGe/evD1Zae4aUNfvxAez2LLJuKQ0cu5n6wrZqACfBl5g6NHP4sva28F1uaEBeu
 TemXBl8/FJaUnweQb7+LXdcEcZBuChmtvsDqZIRGbxHww5sc2VVfe4rltVw5OU1o7762mIg29B/
 PnNKvQ8m5zQp6KdpuOWwTMCa0ARyI0j8ZS4no0kYWGkULXBQhcz2KPoD5tf6XRTd/CcmKBxu1M/
 tIidsi4k9IRToqtUgZ2bTl3740+lTwTyiTzw24ynWdICGrKLIfJOxQdWSDFXRiOgN0hJa8B7DLL
 ZLsUAArsTlf1UOlBNk5qVBy3e1ZQhQ==
X-Proofpoint-ORIG-GUID: PFqTwGr3wnKgk8n3DLVrDrlVzD7osHo_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140029
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 13, 2025 at 03:32:20PM +0100, Andy Shevchenko
 wrote: > Use %ptSp instead of open coded variants to print content of > struct
 timespec64 in human readable format. > > Signed-off-by: Andy Sh [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.180.131 listed in wl.mailspike.net]
X-Headers-End: 1vJlz5-0001Kk-0I
X-Mailman-Approved-At: Fri, 14 Nov 2025 13:54:24 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 06/21] drm/msm: Switch to use
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
From: Dmitry Baryshkov via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
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
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Nov 13, 2025 at 03:32:20PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c | 3 +--
>  drivers/gpu/drm/msm/msm_gpu.c                     | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
