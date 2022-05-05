Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCFD51C8C4
	for <lists+openipmi-developer@lfdr.de>; Thu,  5 May 2022 21:15:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmgx4-00042o-1T; Thu, 05 May 2022 19:15:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hbathini@linux.ibm.com>) id 1nmgf6-0004X2-5q
 for openipmi-developer@lists.sourceforge.net; Thu, 05 May 2022 18:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XNUaK5MXNumQ2GC419CM2tT56hGe0D54FACFQZzubag=; b=j/IguV5/KrhEEbNqNhoeVoAb3S
 ZXD8wl3iBT9ls5FWDviDo1yLq9+rJqtyu1UulrcLMmD3+vS0rwgJXzQ26GyW3jxl+zRG30cq8kSh9
 OL6s1kMI7UiNDpnjKPNp0jMW652brOjpvDCaSpDxTlbqjvCUWyaq3wZs3tlCmNbDVgWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XNUaK5MXNumQ2GC419CM2tT56hGe0D54FACFQZzubag=; b=eolK3HL0RxjbPLDxmbV/9nhaRF
 iHOWo1eHcwIQRr2rKPzNmw93gmpxioMWTjj+4IUu9CsxGi8X/8xccbSk/bMNRIyGIi5bvkEe9TTVz
 FzPS+F32LeqtPraepO9hrql0JC5IJtxw/dfbkPv46smeoZS8f8E0wTdhqcX+3HoKmHhU=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmgf2-0004F0-PE
 for openipmi-developer@lists.sourceforge.net; Thu, 05 May 2022 18:57:16 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 245IsCDC021810;
 Thu, 5 May 2022 18:56:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=XNUaK5MXNumQ2GC419CM2tT56hGe0D54FACFQZzubag=;
 b=gSD1byPqJD9U14RM7yqXNGjhCvGv5EceJcS49ikn+rpVMYCw5l/cE2/RfhpfxgDrdFXF
 bkw+3uP6vU/C7MIPvjf+1/BQcDGTmd58m1jCKBcC75Xc3IwagCsVfPCOPegq8b4MZ3p/
 mQN9mkPuV1Btua3UKzIpudLBdtJkA5WoYucCFThdzTDSpYwo6Nc6tDpcKD+hvfEHi+OM
 CWja8vfEeVW5JzydzGv1uvP94K0n/yjRgwV8RQXFJagBheg9E5Imh/dRMjKSs9LZirwJ
 /CWejco2WiCA9LRB8XRjw7cjAD2OqALQniaNM+6CBO4ZnFoxNe9gtVMrz4B16UghR6hV VA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fvm92012c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 May 2022 18:56:22 +0000
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 245IuAu6029325;
 Thu, 5 May 2022 18:56:21 GMT
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fvm92011f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 May 2022 18:56:21 +0000
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 245IbA58012918;
 Thu, 5 May 2022 18:55:39 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma03ams.nl.ibm.com with ESMTP id 3ftp7fvexe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 May 2022 18:55:39 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 245ItaGm14352888
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 5 May 2022 18:55:36 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8B81D11C05B;
 Thu,  5 May 2022 18:55:36 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6820611C04C;
 Thu,  5 May 2022 18:55:10 +0000 (GMT)
Received: from [9.211.36.212] (unknown [9.211.36.212])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu,  5 May 2022 18:55:10 +0000 (GMT)
Message-ID: <3c34d8e2-6f84-933f-a4ed-338cd300d6b0@linux.ibm.com>
Date: Fri, 6 May 2022 00:25:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-9-gpiccoli@igalia.com>
From: Hari Bathini <hbathini@linux.ibm.com>
In-Reply-To: <20220427224924.592546-9-gpiccoli@igalia.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: FmL43udCg7zOaYTyNU5fYcYIiC3L3tsY
X-Proofpoint-ORIG-GUID: op15TFwB187r4kWWn80Xf8P42QMt9UB1
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-05_08,2022-05-05_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 clxscore=1011 lowpriorityscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205050125
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28/04/22 4:19 am, Guilherme G. Piccoli wrote: > The panic
 notifiers infrastructure is a bit limited in the scope of > the callbacks
 - basically every kind of functionality is dropped > in a list th [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nmgf2-0004F0-PE
X-Mailman-Approved-At: Thu, 05 May 2022 19:15:47 +0000
Subject: Re: [Openipmi-developer] [PATCH 08/30] powerpc/setup:
 Refactor/untangle panic notifiers
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, Nicholas Piggin <npiggin@gmail.com>, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAyOC8wNC8yMiA0OjE5IGFtLCBHdWlsaGVybWUgRy4gUGljY29saSB3cm90ZToKPiBUaGUg
cGFuaWMgbm90aWZpZXJzIGluZnJhc3RydWN0dXJlIGlzIGEgYml0IGxpbWl0ZWQgaW4gdGhlIHNj
b3BlIG9mCj4gdGhlIGNhbGxiYWNrcyAtIGJhc2ljYWxseSBldmVyeSBraW5kIG9mIGZ1bmN0aW9u
YWxpdHkgaXMgZHJvcHBlZAo+IGluIGEgbGlzdCB0aGF0IHJ1bnMgaW4gdGhlIHNhbWUgcG9pbnQg
ZHVyaW5nIHRoZSBrZXJuZWwgcGFuaWMgcGF0aC4KPiBUaGlzIGlzIG5vdCByZWFsbHkgb24gcGFy
IHdpdGggdGhlIGNvbXBsZXhpdGllcyBhbmQgcGFydGljdWxhcml0aWVzCj4gb2YgYXJjaGl0ZWN0
dXJlIC8gaHlwZXJ2aXNvcnMnIG5lZWRzLCBhbmQgYSByZWZhY3RvciBpcyBvbmdvaW5nLgo+IAo+
IEFzIHBhcnQgb2YgdGhpcyByZWZhY3RvciwgaXQgd2FzIG9ic2VydmVkIHRoYXQgcG93ZXJwYyBo
YXMgMiBub3RpZmllcnMsCj4gd2l0aCBtaXhlZCBnb2Fsczogb25lIGlzIGp1c3QgYSBLQVNMUiBv
ZmZzZXQgZHVtcGVyLCB3aGVyZWFzIHRoZSBvdGhlcgo+IGFpbXMgdG8gaGFyZC1kaXNhYmxlIElS
UXMgKG5lY2Vzc2FyeSBvbiBwYW5pYyBwYXRoKSwgd2FybiBmaXJtd2FyZSBvZgo+IHRoZSBwYW5p
YyBldmVudCAoZmFkdW1wKSBhbmQgcnVuIGxvdy1sZXZlbCBwbGF0Zm9ybS1zcGVjaWZpYyBtYWNo
aW5lcnkKPiB0aGF0IG1pZ2h0IHN0b3Aga2VybmVsIGV4ZWN1dGlvbiBhbmQgbmV2ZXIgY29tZSBi
YWNrLgo+IAo+IENsZWFybHksIHRoZSAybmQgbm90aWZpZXIgaGFzIG9wcG9zZWQgZ29hbHM6IGRp
c2FibGUgSVJRcyAvIGZhZHVtcAo+IHNob3VsZCBydW4gZWFybGllciB3aGlsZSBsb3ctbGV2ZWwg
cGxhdGZvcm0gYWN0aW9ucyBzaG91bGQKPiBydW4gbGF0ZSBzaW5jZSBpdCBtaWdodCBub3QgZXZl
biByZXR1cm4uIEhlbmNlLCB0aGlzIHBhdGNoIGRlY291cGxlcwo+IHRoZSBub3RpZmllcnMgc3Bs
aXR0aW5nIHRoZW0gaW4gdGhyZWU6Cj4gCj4gLSBGaXJzdCBvbmUgaXMgcmVzcG9uc2libGUgZm9y
IGhhcmQtZGlzYWJsZSBJUlFzIGFuZCBmYWR1bXAsCj4gc2hvdWxkIHJ1biBlYXJseTsKPiAKPiAt
IFRoZSBrZXJuZWwgS0FTTFIgb2Zmc2V0IGR1bXBlciBpcyByZWFsbHkgYW4gaW5mb3JtYXRpdmUg
bm90aWZpZXIsCj4gaGFybWxlc3MgYW5kIG1heSBydW4gYXQgYW55IG1vbWVudCBpbiB0aGUgcGFu
aWMgcGF0aDsKPiAKPiAtIFRoZSBsYXN0IG5vdGlmaWVyIHNob3VsZCBydW4gbGFzdCwgc2luY2Ug
aXQgYWltcyB0byBwZXJmb3JtCj4gbG93LWxldmVsIGFjdGlvbnMgZm9yIHNwZWNpZmljIHBsYXRm
b3JtcywgYW5kIG1pZ2h0IG5ldmVyIHJldHVybi4KPiBJdCBpcyBhbHNvIG9ubHkgcmVnaXN0ZXJl
ZCBmb3IgMiBwbGF0Zm9ybXMsIHBzZXJpZXMgYW5kIHBzMy4KPiAKPiBUaGUgcGF0Y2ggYmV0dGVy
IGRvY3VtZW50cyB0aGUgbm90aWZpZXJzIGFuZCBjbGVhcnMgdGhlIGNvZGUgdG9vLAo+IGFsc28g
cmVtb3ZpbmcgYSB1c2VsZXNzIGhlYWRlci4KPiAKPiBDdXJyZW50bHkgbm8gZnVuY3Rpb25hbGl0
eSBjaGFuZ2Ugc2hvdWxkIGJlIG9ic2VydmVkLCBidXQgYWZ0ZXIKPiB0aGUgcGxhbm5lZCBwYW5p
YyByZWZhY3RvciB3ZSBzaG91bGQgZXhwZWN0IG1vcmUgcGFuaWMgcmVsaWFiaWxpdHkKPiB3aXRo
IHRoaXMgcGF0Y2guCj4gCj4gQ2M6IEJlbmphbWluIEhlcnJlbnNjaG1pZHQgPGJlbmhAa2VybmVs
LmNyYXNoaW5nLm9yZz4KPiBDYzogSGFyaSBCYXRoaW5pIDxoYmF0aGluaUBsaW51eC5pYm0uY29t
Pgo+IENjOiBNaWNoYWVsIEVsbGVybWFuIDxtcGVAZWxsZXJtYW4uaWQuYXU+Cj4gQ2M6IE5pY2hv
bGFzIFBpZ2dpbiA8bnBpZ2dpbkBnbWFpbC5jb20+Cj4gQ2M6IFBhdWwgTWFja2VycmFzIDxwYXVs
dXNAc2FtYmEub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGlj
Y29saUBpZ2FsaWEuY29tPgoKVGhlIGNoYW5nZSBsb29rcyBnb29kLiBJIGhhdmUgdGVzdGVkIGl0
IG9uIGFuIExQQVIgKHBwYzY0KS4KClJldmlld2VkLWJ5OiBIYXJpIEJhdGhpbmkgPGhiYXRoaW5p
QGxpbnV4LmlibS5jb20+Cgo+IC0tLQo+IAo+IFdlJ2QgbGlrZSB0byB0aGFua3Mgc3BlY2lhbGx5
IHRoZSBNaW5pQ2xvdWQgaW5mcmFzdHJ1Y3R1cmUgWzBdIG1haW50YWluZXJzLAo+IHRoYXQgYWxs
b3cgdXMgdG8gdGVzdCBQb3dlclBDIGNvZGUgaW4gYSB2ZXJ5IGNvbXBsZXRlLCBmdW5jdGlvbmFs
IGFuZCBGUkVFCj4gZW52aXJvbm1lbnQgKHRoZXJlJ3Mgbm8gbmVlZCBldmVuIGZvciBhZGRpbmcg
YSBjcmVkaXQgY2FyZCwgbGlrZSBtYW55ICJmcmVlIgo+IGNsb3VkcyByZXF1aXJlIMKswqwgKS4K
PiAKPiBbMF0gaHR0cHM6Ly9vcGVucG93ZXIuaWMudW5pY2FtcC5ici9taW5pY2xvdWQKPiAKPiAg
IGFyY2gvcG93ZXJwYy9rZXJuZWwvc2V0dXAtY29tbW9uLmMgfCA3NCArKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAyMCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL2tlcm5lbC9zZXR1cC1j
b21tb24uYyBiL2FyY2gvcG93ZXJwYy9rZXJuZWwvc2V0dXAtY29tbW9uLmMKPiBpbmRleCA1MThh
ZTVhYTk0MTAuLjUyZjk2YjIwOWE5NiAxMDA2NDQKPiAtLS0gYS9hcmNoL3Bvd2VycGMva2VybmVs
L3NldHVwLWNvbW1vbi5jCj4gKysrIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9zZXR1cC1jb21tb24u
Ywo+IEBAIC0yMyw3ICsyMyw2IEBACj4gICAjaW5jbHVkZSA8bGludXgvY29uc29sZS5oPgo+ICAg
I2luY2x1ZGUgPGxpbnV4L3NjcmVlbl9pbmZvLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvcm9vdF9k
ZXYuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L25vdGlmaWVyLmg+Cj4gICAjaW5jbHVkZSA8bGludXgv
Y3B1Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvdW5pc3RkLmg+Cj4gICAjaW5jbHVkZSA8bGludXgv
c2VyaWFsLmg+Cj4gQEAgLTY4MCw4ICs2NzksMjUgQEAgaW50IGNoZWNrX2xlZ2FjeV9pb3BvcnQo
dW5zaWduZWQgbG9uZyBiYXNlX3BvcnQpCj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MKGNoZWNrX2xl
Z2FjeV9pb3BvcnQpOwo+ICAgCj4gLXN0YXRpYyBpbnQgcHBjX3BhbmljX2V2ZW50KHN0cnVjdCBu
b3RpZmllcl9ibG9jayAqdGhpcywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBsb25nIGV2ZW50LCB2b2lkICpwdHIpCj4gKy8qCj4gKyAqIFBhbmljIG5vdGlmaWVycyBz
ZXR1cAo+ICsgKgo+ICsgKiBXZSBoYXZlIDMgbm90aWZpZXJzIGZvciBwb3dlcnBjLCBlYWNoIG9u
ZSBmcm9tIGEgZGlmZmVyZW50ICJuYXR1cmUiOgo+ICsgKgo+ICsgKiAtIHBwY19wYW5pY19mYWR1
bXBfaGFuZGxlcigpIGlzIGEgaHlwZXJ2aXNvciBub3RpZmllciwgd2hpY2ggaGFyZC1kaXNhYmxl
cwo+ICsgKiAgIElSUXMgYW5kIGRlYWwgd2l0aCB0aGUgRmlybXdhcmUtQXNzaXN0ZWQgZHVtcCwg
d2hlbiBpdCBpcyBjb25maWd1cmVkOwo+ICsgKiAgIHNob3VsZCBydW4gZWFybHkgaW4gdGhlIHBh
bmljIHBhdGguCj4gKyAqCj4gKyAqIC0gZHVtcF9rZXJuZWxfb2Zmc2V0KCkgaXMgYW4gaW5mb3Jt
YXRpdmUgbm90aWZpZXIsIGp1c3Qgc2hvd2luZyB0aGUgS0FTTFIKPiArICogICBvZmZzZXQgaWYg
d2UgaGF2ZSBSQU5ET01JWkVfQkFTRSBzZXQuCj4gKyAqCj4gKyAqIC0gcHBjX3BhbmljX3BsYXRm
b3JtX2hhbmRsZXIoKSBpcyBhIGxvdy1sZXZlbCBoYW5kbGVyIHRoYXQncyByZWdpc3RlcmVkCj4g
KyAqICAgb25seSBpZiB0aGUgcGxhdGZvcm0gd2lzaGVzIHRvIHBlcmZvcm0gZmluYWwgYWN0aW9u
cyBpbiB0aGUgcGFuaWMgcGF0aCwKPiArICogICBoZW5jZSBpdCBzaG91bGQgcnVuIGxhdGUgYW5k
IG1pZ2h0IG5vdCBldmVuIHJldHVybi4gQ3VycmVudGx5LCBvbmx5Cj4gKyAqICAgcHNlcmllcyBh
bmQgcHMzIHBsYXRmb3JtcyByZWdpc3RlciBjYWxsYmFja3MuCj4gKyAqLwo+ICtzdGF0aWMgaW50
IHBwY19wYW5pY19mYWR1bXBfaGFuZGxlcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnRoaXMsCj4g
KwkJCQkgICAgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyKQo+ICAgewo+ICAgCS8qCj4g
ICAJICogcGFuaWMgZG9lcyBhIGxvY2FsX2lycV9kaXNhYmxlLCBidXQgd2UgcmVhbGx5Cj4gQEAg
LTY5MSw0NSArNzA3LDYzIEBAIHN0YXRpYyBpbnQgcHBjX3BhbmljX2V2ZW50KHN0cnVjdCBub3Rp
Zmllcl9ibG9jayAqdGhpcywKPiAgIAo+ICAgCS8qCj4gICAJICogSWYgZmlybXdhcmUtYXNzaXN0
ZWQgZHVtcCBoYXMgYmVlbiByZWdpc3RlcmVkIHRoZW4gdHJpZ2dlcgo+IC0JICogZmlybXdhcmUt
YXNzaXN0ZWQgZHVtcCBhbmQgbGV0IGZpcm13YXJlIGhhbmRsZSBldmVyeXRoaW5nIGVsc2UuCj4g
KwkgKiBpdHMgY2FsbGJhY2sgYW5kIGxldCB0aGUgZmlybXdhcmUgaGFuZGxlcyBldmVyeXRoaW5n
IGVsc2UuCj4gICAJICovCj4gICAJY3Jhc2hfZmFkdW1wKE5VTEwsIHB0cik7Cj4gLQlpZiAocHBj
X21kLnBhbmljKQo+IC0JCXBwY19tZC5wYW5pYyhwdHIpOyAgLyogTWF5IG5vdCByZXR1cm4gKi8K
PiArCj4gICAJcmV0dXJuIE5PVElGWV9ET05FOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBzdHJ1Y3Qg
bm90aWZpZXJfYmxvY2sgcHBjX3BhbmljX2Jsb2NrID0gewo+IC0JLm5vdGlmaWVyX2NhbGwgPSBw
cGNfcGFuaWNfZXZlbnQsCj4gLQkucHJpb3JpdHkgPSBJTlRfTUlOIC8qIG1heSBub3QgcmV0dXJu
OyBtdXN0IGJlIGRvbmUgbGFzdCAqLwo+IC19Owo+IC0KPiAtLyoKPiAtICogRHVtcCBvdXQga2Vy
bmVsIG9mZnNldCBpbmZvcm1hdGlvbiBvbiBwYW5pYy4KPiAtICovCj4gICBzdGF0aWMgaW50IGR1
bXBfa2VybmVsX29mZnNldChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnNlbGYsIHVuc2lnbmVkIGxv
bmcgdiwKPiAgIAkJCSAgICAgIHZvaWQgKnApCj4gICB7Cj4gICAJcHJfZW1lcmcoIktlcm5lbCBP
ZmZzZXQ6IDB4JWx4IGZyb20gMHglbHhcbiIsCj4gICAJCSBrYXNscl9vZmZzZXQoKSwgS0VSTkVM
QkFTRSk7Cj4gICAKPiAtCXJldHVybiAwOwo+ICsJcmV0dXJuIE5PVElGWV9ET05FOwo+ICAgfQo+
ICAgCj4gK3N0YXRpYyBpbnQgcHBjX3BhbmljX3BsYXRmb3JtX2hhbmRsZXIoc3RydWN0IG5vdGlm
aWVyX2Jsb2NrICp0aGlzLAo+ICsJCQkJICAgICAgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAq
cHRyKQo+ICt7Cj4gKwkvKgo+ICsJICogVGhpcyBoYW5kbGVyIGlzIG9ubHkgcmVnaXN0ZXJlZCBp
ZiB3ZSBoYXZlIGEgcGFuaWMgY2FsbGJhY2sKPiArCSAqIG9uIHBwY19tZCwgaGVuY2UgTlVMTCBj
aGVjayBpcyBub3QgbmVlZGVkLgo+ICsJICogQWxzbywgaXQgbWF5IG5vdCByZXR1cm4sIHNvIGl0
IHJ1bnMgcmVhbGx5IGxhdGUgb24gcGFuaWMgcGF0aC4KPiArCSAqLwo+ICsJcHBjX21kLnBhbmlj
KHB0cik7Cj4gKwo+ICsJcmV0dXJuIE5PVElGWV9ET05FOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3Ry
dWN0IG5vdGlmaWVyX2Jsb2NrIHBwY19mYWR1bXBfYmxvY2sgPSB7Cj4gKwkubm90aWZpZXJfY2Fs
bCA9IHBwY19wYW5pY19mYWR1bXBfaGFuZGxlciwKPiArCS5wcmlvcml0eSA9IElOVF9NQVgsIC8q
IHJ1biBlYXJseSwgdG8gbm90aWZ5IHRoZSBmaXJtd2FyZSBBU0FQICovCj4gK307Cj4gKwo+ICAg
c3RhdGljIHN0cnVjdCBub3RpZmllcl9ibG9jayBrZXJuZWxfb2Zmc2V0X25vdGlmaWVyID0gewo+
IC0JLm5vdGlmaWVyX2NhbGwgPSBkdW1wX2tlcm5lbF9vZmZzZXQKPiArCS5ub3RpZmllcl9jYWxs
ID0gZHVtcF9rZXJuZWxfb2Zmc2V0LAo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBub3RpZmll
cl9ibG9jayBwcGNfcGFuaWNfYmxvY2sgPSB7Cj4gKwkubm90aWZpZXJfY2FsbCA9IHBwY19wYW5p
Y19wbGF0Zm9ybV9oYW5kbGVyLAo+ICsJLnByaW9yaXR5ID0gSU5UX01JTiwgLyogbWF5IG5vdCBy
ZXR1cm47IG11c3QgYmUgZG9uZSBsYXN0ICovCj4gICB9Owo+ICAgCj4gICB2b2lkIF9faW5pdCBz
ZXR1cF9wYW5pYyh2b2lkKQo+ICAgewo+ICsJLyogSGFyZC1kaXNhYmxlcyBJUlFzICsgZGVhbCB3
aXRoIEZXLWFzc2lzdGVkIGR1bXAgKGZhZHVtcCkgKi8KPiArCWF0b21pY19ub3RpZmllcl9jaGFp
bl9yZWdpc3RlcigmcGFuaWNfbm90aWZpZXJfbGlzdCwKPiArCQkJCSAgICAgICAmcHBjX2ZhZHVt
cF9ibG9jayk7Cj4gKwo+ICAgCWlmIChJU19FTkFCTEVEKENPTkZJR19SQU5ET01JWkVfQkFTRSkg
JiYga2FzbHJfb2Zmc2V0KCkgPiAwKQo+ICAgCQlhdG9taWNfbm90aWZpZXJfY2hhaW5fcmVnaXN0
ZXIoJnBhbmljX25vdGlmaWVyX2xpc3QsCj4gICAJCQkJCSAgICAgICAma2VybmVsX29mZnNldF9u
b3RpZmllcik7Cj4gICAKPiAtCS8qIFBQQzY0IGFsd2F5cyBkb2VzIGEgaGFyZCBpcnEgZGlzYWJs
ZSBpbiBpdHMgcGFuaWMgaGFuZGxlciAqLwo+IC0JaWYgKCFJU19FTkFCTEVEKENPTkZJR19QUEM2
NCkgJiYgIXBwY19tZC5wYW5pYykKPiAtCQlyZXR1cm47Cj4gLQlhdG9taWNfbm90aWZpZXJfY2hh
aW5fcmVnaXN0ZXIoJnBhbmljX25vdGlmaWVyX2xpc3QsICZwcGNfcGFuaWNfYmxvY2spOwo+ICsJ
LyogTG93LWxldmVsIHBsYXRmb3JtLXNwZWNpZmljIHJvdXRpbmVzIHRoYXQgc2hvdWxkIHJ1biBv
biBwYW5pYyAqLwo+ICsJaWYgKHBwY19tZC5wYW5pYykKPiArCQlhdG9taWNfbm90aWZpZXJfY2hh
aW5fcmVnaXN0ZXIoJnBhbmljX25vdGlmaWVyX2xpc3QsCj4gKwkJCQkJICAgICAgICZwcGNfcGFu
aWNfYmxvY2spOwo+ICAgfQo+ICAgCj4gICAjaWZkZWYgQ09ORklHX0NIRUNLX0NBQ0hFX0NPSEVS
RU5DWQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9w
ZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIK
