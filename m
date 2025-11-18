Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D4CC6B27F
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Nov 2025 19:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CrDnGXTuu54wLxqEKzxl9tw7LyRr8LANPCubCbpD3V8=; b=PGacB0QsNfu5cK6+GB1RH39ylm
	ADomJeaEeLE6BRCuGQaVlfzcNoIB6PsEmoyUqr2mJnUdWE2NzndVBhskUTgoeKpJyfY/PpK//lYFG
	AGkD+uWwbt+YjOfL4mDaAKW3O1cGtsmMYiECibfpGRZ1kg/txob9QTWXgOWrMhW4wPy0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLQEN-0002Fg-Sk;
	Tue, 18 Nov 2025 18:15:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sth@linux.ibm.com>) id 1vLO7W-0007pV-D9
 for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 15:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b8qR1fNCOUcGmFlXBqf2Jmbglcn0cz6vrnKg5k3I8HY=; b=FMO9j5aARwgZnSM5M3HHokiTJa
 HqrRA/T0/ydG+vZgDzXuQ+g/EhU5oABhqW+NXfc/zOIyoWzCBSrqhGIUIMdCjdRWcGtCQ2immLn3+
 apBsGT9YZnEXVVWeN/a+G4NPCvgenokHV+hQUmrQymNUr0jQkH6i4KxT9gkwOc6Hkj0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b8qR1fNCOUcGmFlXBqf2Jmbglcn0cz6vrnKg5k3I8HY=; b=IhKBXOkTlQ8AIN9D9EYJvpXCqY
 R6yXMEe4YRqrbBoDJWTB2C6f+k+NdXmiOZ5zBXfB964uE4sJKGojhaC8ukb1kqMmHTG9HX0lZGCE2
 /+vzc7PjWt7ZXujp16Ai4m39VsX0zn+Ot1sPzOE3f9V7O0kzi3mzGngPgetbQKfmCjr0=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLO7V-0003IQ-V5 for openipmi-developer@lists.sourceforge.net;
 Tue, 18 Nov 2025 15:59:54 +0000
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AI1tqs7028393;
 Tue, 18 Nov 2025 15:23:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pp1; bh=b8qR1f
 NCOUcGmFlXBqf2Jmbglcn0cz6vrnKg5k3I8HY=; b=mEE4eUYjgklKf8ckwZAhDy
 SemFjclSHph4OIcNgGIRB33yKEvmDkUgpvf4MsjpE3xo0akxzvjylX58YARmSJ5h
 c2Ooip5l5xKCeB+ZszFhhCXGu1T0RI/6rBGNycK4VKLDmLOQLbQF8xC71MwsdRpI
 0oQIclRsJ2BH/z3isyuBtV/G5oGzzxcyO/U8jZGhW63jDjC0GT2rEygs7Nywqf0o
 LKYkHjV4YQgao5GRKh0XTFLZa5uyctdwxj2IR2IjesWo4ulffbUPV3WfYorlMzp9
 3UQws93x7ragECUHS6LnyzjaTYBragG1GGke7RSE/IYNqSxXY5az/LqI4/4Qzsew
 ==
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4aejmsk7vk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 18 Nov 2025 15:23:16 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AICQoFw006967;
 Tue, 18 Nov 2025 15:23:15 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 4af62jbj06-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 18 Nov 2025 15:23:15 +0000
Received: from smtpav02.fra02v.mail.ibm.com (smtpav02.fra02v.mail.ibm.com
 [10.20.54.101])
 by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 5AIFNBfr40042972
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Nov 2025 15:23:12 GMT
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C34CE20040;
 Tue, 18 Nov 2025 15:23:11 +0000 (GMT)
Received: from smtpav02.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9A79420043;
 Tue, 18 Nov 2025 15:23:10 +0000 (GMT)
Received: from [9.152.212.246] (unknown [9.152.212.246])
 by smtpav02.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 18 Nov 2025 15:23:10 +0000 (GMT)
Message-ID: <55871dc5-2467-4558-be5b-0296d478a6d1@linux.ibm.com>
Date: Tue, 18 Nov 2025 16:23:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-19-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
In-Reply-To: <20251113150217.3030010-19-andriy.shevchenko@linux.intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: z5vCIuXQoxQhVWpfGoNnS3CQXWBOkQvm
X-Authority-Analysis: v=2.4 cv=Rv3I7SmK c=1 sm=1 tr=0 ts=691c8f65 cx=c_pps
 a=AfN7/Ok6k8XGzOShvHwTGQ==:117 a=AfN7/Ok6k8XGzOShvHwTGQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=VnNF1IyMAAAA:8 a=JNz3O4sEs4oywJvo4n4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=UhEZJTgQB8St2RibIkdl:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22
 a=QOGEsqRv6VhmHaoFNykA:22
X-Proofpoint-GUID: z5vCIuXQoxQhVWpfGoNnS3CQXWBOkQvm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX7xgDi9VMkHy1
 xY1Kr5CN6JO103EZyDLYmJUVyCiuwKR/4uc3+Lmy/gvg5ECzM4sd6vU0zWqCHklppK8uLUvWjGX
 HwwwwH+Ce8Jw0NQCUNjE3exfborRXuQ4RjSB1HZACxh4RkWbE7BpIzojfb5TKd4SBA0XBh10Euo
 CsCaHasXAGt43yERBXoTQ5hFXFxjF+AK1zNBNgHfBYOInKsNmRYBkGYznwzarJkxLc/UdbEghnq
 kmXAnC8NgaNRASHp2cZtXrz3YttsT408eVXN4mQFU8o8MSMzbwi3Kptdqy/18crsQhyL56cLX4n
 RnZa0fHWW+S36zf2ZHPlGEIVPwtibWxtWTZqXsygWW1T/83Ban6/JWLGXi3iADfuOgd8HUjrRri
 jkkd9Ckpow854pIeK6bG7rGX3zWg/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1011 phishscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510240000 definitions=main-2511150032
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Am 13.11.25 um 15:32 schrieb Andy Shevchenko: > Use %ptSp
 instead of open coded variants to print content of > struct timespec64 in
 human readable format. > > Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> > --- 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vLO7V-0003IQ-V5
X-Mailman-Approved-At: Tue, 18 Nov 2025 18:15:06 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 18/21] s390/dasd: Switch to use
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
From: Stefan Haberland via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Stefan Haberland <sth@linux.ibm.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

QW0gMTMuMTEuMjUgdW0gMTU6MzIgc2NocmllYiBBbmR5IFNoZXZjaGVua286Cgo+IFVzZSAlcHRT
cCBpbnN0ZWFkIG9mIG9wZW4gY29kZWQgdmFyaWFudHMgdG8gcHJpbnQgY29udGVudCBvZgo+IHN0
cnVjdCB0aW1lc3BlYzY0IGluIGh1bWFuIHJlYWRhYmxlIGZvcm1hdC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPgo+
IC0tLQoKVGhhbmtzLCBsb29rcyBnb29kIHRvIG1lLgoKQWNrZWQtYnk6IFN0ZWZhbiBIYWJlcmxh
bmQgPHN0aEBsaW51eC5pYm0uY29tPsKgCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5p
cG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
