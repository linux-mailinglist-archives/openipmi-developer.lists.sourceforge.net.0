Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3086651282B
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFX-0005Ma-Ay; Thu, 28 Apr 2022 00:43:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr0L-0002er-Re
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/cdg0sKCsuwzrOmixxbC1Q4JQ/fbIS+o0nd/6r3SqdQ=; b=kMfqu2rNombxizaT+DkIig9ypw
 btqiSa4bd8LMi2T98LDB/kAf2SLokhUq2Rw4kNKoMLvz0ojQ5UofLnWeQjj59vNPp0wwDREyh9eME
 5ivLDbdemrw4tum0aynOH10X/0LAorlNBkcKgajEZ4FIdudqg8Dky2Do7u/kob8A2j4Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/cdg0sKCsuwzrOmixxbC1Q4JQ/fbIS+o0nd/6r3SqdQ=; b=iXBn/OVLUenmZfuvM+E8qcHVUa
 w3uaocrKINuJsouP1aZR17zpNMq0uE/NJ7fz7RUw3DfOYa3PBN+LV9Zl4st+0UDxAVKeg9iJq4AcG
 okZTXEKCwmgvLdJWd4slefx0iqMsZI1lG0MGp2Vgcs2zqW9QJzKzAZheOeuFttpISXYo=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr0K-00C9wN-5Z
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/cdg0sKCsuwzrOmixxbC1Q4JQ/fbIS+o0nd/6r3SqdQ=; b=Ms53zbjgbkvE/VbvvERWDhiSlK
 xnfSZ26duHs4sJGmX9AjyiOpVrZ24qlvncFPTQgx0Ak1/K+qg/q6M3lNqtXBQSywskWJGGXxxZsyH
 0ZCt9ADqjTi/3V+XCpSLOfo1kVbAL88rsa3CWloXQYrPcKcjm0fr5wkBOKZGIirx4MPHlXEq/lSP6
 Wauj7ki9eqiIN/DWOEVCrOIQ5CDDEHA0P4AiVRkbPc3MLQuGkkZQLCDxyedC8rV+CPmlMqMLZGK7O
 pj27Q1YpHqsziDeg78TsiM6RPMIm39rOPoY53108P/vAvRYTx1t1bv7hv+1+u3acH1fsI00wIEzlf
 mvZOITKg==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqVm-00026W-Rl; Thu, 28 Apr 2022 00:51:55 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:02 -0300
Message-Id: <20220427224924.592546-9-gpiccoli@igalia.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427224924.592546-1-gpiccoli@igalia.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The panic notifiers infrastructure is a bit limited in the
 scope of the callbacks - basically every kind of functionality is dropped
 in a list that runs in the same point during the kernel panic path. [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1njr0K-00C9wN-5Z
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:09 +0000
Subject: [Openipmi-developer] [PATCH 08/30] powerpc/setup: Refactor/untangle
 panic notifiers
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
 bcm-kernel-feedback-list@broadcom.com, Hari Bathini <hbathini@linux.ibm.com>,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 senozhatsky@chromium.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIHBhbmljIG5vdGlmaWVycyBpbmZyYXN0cnVjdHVyZSBpcyBhIGJpdCBsaW1pdGVkIGluIHRo
ZSBzY29wZSBvZgp0aGUgY2FsbGJhY2tzIC0gYmFzaWNhbGx5IGV2ZXJ5IGtpbmQgb2YgZnVuY3Rp
b25hbGl0eSBpcyBkcm9wcGVkCmluIGEgbGlzdCB0aGF0IHJ1bnMgaW4gdGhlIHNhbWUgcG9pbnQg
ZHVyaW5nIHRoZSBrZXJuZWwgcGFuaWMgcGF0aC4KVGhpcyBpcyBub3QgcmVhbGx5IG9uIHBhciB3
aXRoIHRoZSBjb21wbGV4aXRpZXMgYW5kIHBhcnRpY3VsYXJpdGllcwpvZiBhcmNoaXRlY3R1cmUg
LyBoeXBlcnZpc29ycycgbmVlZHMsIGFuZCBhIHJlZmFjdG9yIGlzIG9uZ29pbmcuCgpBcyBwYXJ0
IG9mIHRoaXMgcmVmYWN0b3IsIGl0IHdhcyBvYnNlcnZlZCB0aGF0IHBvd2VycGMgaGFzIDIgbm90
aWZpZXJzLAp3aXRoIG1peGVkIGdvYWxzOiBvbmUgaXMganVzdCBhIEtBU0xSIG9mZnNldCBkdW1w
ZXIsIHdoZXJlYXMgdGhlIG90aGVyCmFpbXMgdG8gaGFyZC1kaXNhYmxlIElSUXMgKG5lY2Vzc2Fy
eSBvbiBwYW5pYyBwYXRoKSwgd2FybiBmaXJtd2FyZSBvZgp0aGUgcGFuaWMgZXZlbnQgKGZhZHVt
cCkgYW5kIHJ1biBsb3ctbGV2ZWwgcGxhdGZvcm0tc3BlY2lmaWMgbWFjaGluZXJ5CnRoYXQgbWln
aHQgc3RvcCBrZXJuZWwgZXhlY3V0aW9uIGFuZCBuZXZlciBjb21lIGJhY2suCgpDbGVhcmx5LCB0
aGUgMm5kIG5vdGlmaWVyIGhhcyBvcHBvc2VkIGdvYWxzOiBkaXNhYmxlIElSUXMgLyBmYWR1bXAK
c2hvdWxkIHJ1biBlYXJsaWVyIHdoaWxlIGxvdy1sZXZlbCBwbGF0Zm9ybSBhY3Rpb25zIHNob3Vs
ZApydW4gbGF0ZSBzaW5jZSBpdCBtaWdodCBub3QgZXZlbiByZXR1cm4uIEhlbmNlLCB0aGlzIHBh
dGNoIGRlY291cGxlcwp0aGUgbm90aWZpZXJzIHNwbGl0dGluZyB0aGVtIGluIHRocmVlOgoKLSBG
aXJzdCBvbmUgaXMgcmVzcG9uc2libGUgZm9yIGhhcmQtZGlzYWJsZSBJUlFzIGFuZCBmYWR1bXAs
CnNob3VsZCBydW4gZWFybHk7CgotIFRoZSBrZXJuZWwgS0FTTFIgb2Zmc2V0IGR1bXBlciBpcyBy
ZWFsbHkgYW4gaW5mb3JtYXRpdmUgbm90aWZpZXIsCmhhcm1sZXNzIGFuZCBtYXkgcnVuIGF0IGFu
eSBtb21lbnQgaW4gdGhlIHBhbmljIHBhdGg7CgotIFRoZSBsYXN0IG5vdGlmaWVyIHNob3VsZCBy
dW4gbGFzdCwgc2luY2UgaXQgYWltcyB0byBwZXJmb3JtCmxvdy1sZXZlbCBhY3Rpb25zIGZvciBz
cGVjaWZpYyBwbGF0Zm9ybXMsIGFuZCBtaWdodCBuZXZlciByZXR1cm4uCkl0IGlzIGFsc28gb25s
eSByZWdpc3RlcmVkIGZvciAyIHBsYXRmb3JtcywgcHNlcmllcyBhbmQgcHMzLgoKVGhlIHBhdGNo
IGJldHRlciBkb2N1bWVudHMgdGhlIG5vdGlmaWVycyBhbmQgY2xlYXJzIHRoZSBjb2RlIHRvbywK
YWxzbyByZW1vdmluZyBhIHVzZWxlc3MgaGVhZGVyLgoKQ3VycmVudGx5IG5vIGZ1bmN0aW9uYWxp
dHkgY2hhbmdlIHNob3VsZCBiZSBvYnNlcnZlZCwgYnV0IGFmdGVyCnRoZSBwbGFubmVkIHBhbmlj
IHJlZmFjdG9yIHdlIHNob3VsZCBleHBlY3QgbW9yZSBwYW5pYyByZWxpYWJpbGl0eQp3aXRoIHRo
aXMgcGF0Y2guCgpDYzogQmVuamFtaW4gSGVycmVuc2NobWlkdCA8YmVuaEBrZXJuZWwuY3Jhc2hp
bmcub3JnPgpDYzogSGFyaSBCYXRoaW5pIDxoYmF0aGluaUBsaW51eC5pYm0uY29tPgpDYzogTWlj
aGFlbCBFbGxlcm1hbiA8bXBlQGVsbGVybWFuLmlkLmF1PgpDYzogTmljaG9sYXMgUGlnZ2luIDxu
cGlnZ2luQGdtYWlsLmNvbT4KQ2M6IFBhdWwgTWFja2VycmFzIDxwYXVsdXNAc2FtYmEub3JnPgpT
aWduZWQtb2ZmLWJ5OiBHdWlsaGVybWUgRy4gUGljY29saSA8Z3BpY2NvbGlAaWdhbGlhLmNvbT4K
LS0tCgpXZSdkIGxpa2UgdG8gdGhhbmtzIHNwZWNpYWxseSB0aGUgTWluaUNsb3VkIGluZnJhc3Ry
dWN0dXJlIFswXSBtYWludGFpbmVycywKdGhhdCBhbGxvdyB1cyB0byB0ZXN0IFBvd2VyUEMgY29k
ZSBpbiBhIHZlcnkgY29tcGxldGUsIGZ1bmN0aW9uYWwgYW5kIEZSRUUKZW52aXJvbm1lbnQgKHRo
ZXJlJ3Mgbm8gbmVlZCBldmVuIGZvciBhZGRpbmcgYSBjcmVkaXQgY2FyZCwgbGlrZSBtYW55ICJm
cmVlIgpjbG91ZHMgcmVxdWlyZSDCrMKsICkuCgpbMF0gaHR0cHM6Ly9vcGVucG93ZXIuaWMudW5p
Y2FtcC5ici9taW5pY2xvdWQKCiBhcmNoL3Bvd2VycGMva2VybmVsL3NldHVwLWNvbW1vbi5jIHwg
NzQgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTQgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL2tl
cm5lbC9zZXR1cC1jb21tb24uYyBiL2FyY2gvcG93ZXJwYy9rZXJuZWwvc2V0dXAtY29tbW9uLmMK
aW5kZXggNTE4YWU1YWE5NDEwLi41MmY5NmIyMDlhOTYgMTAwNjQ0Ci0tLSBhL2FyY2gvcG93ZXJw
Yy9rZXJuZWwvc2V0dXAtY29tbW9uLmMKKysrIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC9zZXR1cC1j
b21tb24uYwpAQCAtMjMsNyArMjMsNiBAQAogI2luY2x1ZGUgPGxpbnV4L2NvbnNvbGUuaD4KICNp
bmNsdWRlIDxsaW51eC9zY3JlZW5faW5mby5oPgogI2luY2x1ZGUgPGxpbnV4L3Jvb3RfZGV2Lmg+
Ci0jaW5jbHVkZSA8bGludXgvbm90aWZpZXIuaD4KICNpbmNsdWRlIDxsaW51eC9jcHUuaD4KICNp
bmNsdWRlIDxsaW51eC91bmlzdGQuaD4KICNpbmNsdWRlIDxsaW51eC9zZXJpYWwuaD4KQEAgLTY4
MCw4ICs2NzksMjUgQEAgaW50IGNoZWNrX2xlZ2FjeV9pb3BvcnQodW5zaWduZWQgbG9uZyBiYXNl
X3BvcnQpCiB9CiBFWFBPUlRfU1lNQk9MKGNoZWNrX2xlZ2FjeV9pb3BvcnQpOwogCi1zdGF0aWMg
aW50IHBwY19wYW5pY19ldmVudChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnRoaXMsCi0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgZXZlbnQsIHZvaWQgKnB0cikKKy8q
CisgKiBQYW5pYyBub3RpZmllcnMgc2V0dXAKKyAqCisgKiBXZSBoYXZlIDMgbm90aWZpZXJzIGZv
ciBwb3dlcnBjLCBlYWNoIG9uZSBmcm9tIGEgZGlmZmVyZW50ICJuYXR1cmUiOgorICoKKyAqIC0g
cHBjX3BhbmljX2ZhZHVtcF9oYW5kbGVyKCkgaXMgYSBoeXBlcnZpc29yIG5vdGlmaWVyLCB3aGlj
aCBoYXJkLWRpc2FibGVzCisgKiAgIElSUXMgYW5kIGRlYWwgd2l0aCB0aGUgRmlybXdhcmUtQXNz
aXN0ZWQgZHVtcCwgd2hlbiBpdCBpcyBjb25maWd1cmVkOworICogICBzaG91bGQgcnVuIGVhcmx5
IGluIHRoZSBwYW5pYyBwYXRoLgorICoKKyAqIC0gZHVtcF9rZXJuZWxfb2Zmc2V0KCkgaXMgYW4g
aW5mb3JtYXRpdmUgbm90aWZpZXIsIGp1c3Qgc2hvd2luZyB0aGUgS0FTTFIKKyAqICAgb2Zmc2V0
IGlmIHdlIGhhdmUgUkFORE9NSVpFX0JBU0Ugc2V0LgorICoKKyAqIC0gcHBjX3BhbmljX3BsYXRm
b3JtX2hhbmRsZXIoKSBpcyBhIGxvdy1sZXZlbCBoYW5kbGVyIHRoYXQncyByZWdpc3RlcmVkCisg
KiAgIG9ubHkgaWYgdGhlIHBsYXRmb3JtIHdpc2hlcyB0byBwZXJmb3JtIGZpbmFsIGFjdGlvbnMg
aW4gdGhlIHBhbmljIHBhdGgsCisgKiAgIGhlbmNlIGl0IHNob3VsZCBydW4gbGF0ZSBhbmQgbWln
aHQgbm90IGV2ZW4gcmV0dXJuLiBDdXJyZW50bHksIG9ubHkKKyAqICAgcHNlcmllcyBhbmQgcHMz
IHBsYXRmb3JtcyByZWdpc3RlciBjYWxsYmFja3MuCisgKi8KK3N0YXRpYyBpbnQgcHBjX3Bhbmlj
X2ZhZHVtcF9oYW5kbGVyKHN0cnVjdCBub3RpZmllcl9ibG9jayAqdGhpcywKKwkJCQkgICAgdW5z
aWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyKQogewogCS8qCiAJICogcGFuaWMgZG9lcyBhIGxv
Y2FsX2lycV9kaXNhYmxlLCBidXQgd2UgcmVhbGx5CkBAIC02OTEsNDUgKzcwNyw2MyBAQCBzdGF0
aWMgaW50IHBwY19wYW5pY19ldmVudChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnRoaXMsCiAKIAkv
KgogCSAqIElmIGZpcm13YXJlLWFzc2lzdGVkIGR1bXAgaGFzIGJlZW4gcmVnaXN0ZXJlZCB0aGVu
IHRyaWdnZXIKLQkgKiBmaXJtd2FyZS1hc3Npc3RlZCBkdW1wIGFuZCBsZXQgZmlybXdhcmUgaGFu
ZGxlIGV2ZXJ5dGhpbmcgZWxzZS4KKwkgKiBpdHMgY2FsbGJhY2sgYW5kIGxldCB0aGUgZmlybXdh
cmUgaGFuZGxlcyBldmVyeXRoaW5nIGVsc2UuCiAJICovCiAJY3Jhc2hfZmFkdW1wKE5VTEwsIHB0
cik7Ci0JaWYgKHBwY19tZC5wYW5pYykKLQkJcHBjX21kLnBhbmljKHB0cik7ICAvKiBNYXkgbm90
IHJldHVybiAqLworCiAJcmV0dXJuIE5PVElGWV9ET05FOwogfQogCi1zdGF0aWMgc3RydWN0IG5v
dGlmaWVyX2Jsb2NrIHBwY19wYW5pY19ibG9jayA9IHsKLQkubm90aWZpZXJfY2FsbCA9IHBwY19w
YW5pY19ldmVudCwKLQkucHJpb3JpdHkgPSBJTlRfTUlOIC8qIG1heSBub3QgcmV0dXJuOyBtdXN0
IGJlIGRvbmUgbGFzdCAqLwotfTsKLQotLyoKLSAqIER1bXAgb3V0IGtlcm5lbCBvZmZzZXQgaW5m
b3JtYXRpb24gb24gcGFuaWMuCi0gKi8KIHN0YXRpYyBpbnQgZHVtcF9rZXJuZWxfb2Zmc2V0KHN0
cnVjdCBub3RpZmllcl9ibG9jayAqc2VsZiwgdW5zaWduZWQgbG9uZyB2LAogCQkJICAgICAgdm9p
ZCAqcCkKIHsKIAlwcl9lbWVyZygiS2VybmVsIE9mZnNldDogMHglbHggZnJvbSAweCVseFxuIiwK
IAkJIGthc2xyX29mZnNldCgpLCBLRVJORUxCQVNFKTsKIAotCXJldHVybiAwOworCXJldHVybiBO
T1RJRllfRE9ORTsKIH0KIAorc3RhdGljIGludCBwcGNfcGFuaWNfcGxhdGZvcm1faGFuZGxlcihz
dHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnRoaXMsCisJCQkJICAgICAgdW5zaWduZWQgbG9uZyBldmVu
dCwgdm9pZCAqcHRyKQoreworCS8qCisJICogVGhpcyBoYW5kbGVyIGlzIG9ubHkgcmVnaXN0ZXJl
ZCBpZiB3ZSBoYXZlIGEgcGFuaWMgY2FsbGJhY2sKKwkgKiBvbiBwcGNfbWQsIGhlbmNlIE5VTEwg
Y2hlY2sgaXMgbm90IG5lZWRlZC4KKwkgKiBBbHNvLCBpdCBtYXkgbm90IHJldHVybiwgc28gaXQg
cnVucyByZWFsbHkgbGF0ZSBvbiBwYW5pYyBwYXRoLgorCSAqLworCXBwY19tZC5wYW5pYyhwdHIp
OworCisJcmV0dXJuIE5PVElGWV9ET05FOworfQorCitzdGF0aWMgc3RydWN0IG5vdGlmaWVyX2Js
b2NrIHBwY19mYWR1bXBfYmxvY2sgPSB7CisJLm5vdGlmaWVyX2NhbGwgPSBwcGNfcGFuaWNfZmFk
dW1wX2hhbmRsZXIsCisJLnByaW9yaXR5ID0gSU5UX01BWCwgLyogcnVuIGVhcmx5LCB0byBub3Rp
ZnkgdGhlIGZpcm13YXJlIEFTQVAgKi8KK307CisKIHN0YXRpYyBzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sga2VybmVsX29mZnNldF9ub3RpZmllciA9IHsKLQkubm90aWZpZXJfY2FsbCA9IGR1bXBfa2Vy
bmVsX29mZnNldAorCS5ub3RpZmllcl9jYWxsID0gZHVtcF9rZXJuZWxfb2Zmc2V0LAorfTsKKwor
c3RhdGljIHN0cnVjdCBub3RpZmllcl9ibG9jayBwcGNfcGFuaWNfYmxvY2sgPSB7CisJLm5vdGlm
aWVyX2NhbGwgPSBwcGNfcGFuaWNfcGxhdGZvcm1faGFuZGxlciwKKwkucHJpb3JpdHkgPSBJTlRf
TUlOLCAvKiBtYXkgbm90IHJldHVybjsgbXVzdCBiZSBkb25lIGxhc3QgKi8KIH07CiAKIHZvaWQg
X19pbml0IHNldHVwX3BhbmljKHZvaWQpCiB7CisJLyogSGFyZC1kaXNhYmxlcyBJUlFzICsgZGVh
bCB3aXRoIEZXLWFzc2lzdGVkIGR1bXAgKGZhZHVtcCkgKi8KKwlhdG9taWNfbm90aWZpZXJfY2hh
aW5fcmVnaXN0ZXIoJnBhbmljX25vdGlmaWVyX2xpc3QsCisJCQkJICAgICAgICZwcGNfZmFkdW1w
X2Jsb2NrKTsKKwogCWlmIChJU19FTkFCTEVEKENPTkZJR19SQU5ET01JWkVfQkFTRSkgJiYga2Fz
bHJfb2Zmc2V0KCkgPiAwKQogCQlhdG9taWNfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoJnBhbmlj
X25vdGlmaWVyX2xpc3QsCiAJCQkJCSAgICAgICAma2VybmVsX29mZnNldF9ub3RpZmllcik7CiAK
LQkvKiBQUEM2NCBhbHdheXMgZG9lcyBhIGhhcmQgaXJxIGRpc2FibGUgaW4gaXRzIHBhbmljIGhh
bmRsZXIgKi8KLQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX1BQQzY0KSAmJiAhcHBjX21kLnBhbmlj
KQotCQlyZXR1cm47Ci0JYXRvbWljX25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKCZwYW5pY19ub3Rp
Zmllcl9saXN0LCAmcHBjX3BhbmljX2Jsb2NrKTsKKwkvKiBMb3ctbGV2ZWwgcGxhdGZvcm0tc3Bl
Y2lmaWMgcm91dGluZXMgdGhhdCBzaG91bGQgcnVuIG9uIHBhbmljICovCisJaWYgKHBwY19tZC5w
YW5pYykKKwkJYXRvbWljX25vdGlmaWVyX2NoYWluX3JlZ2lzdGVyKCZwYW5pY19ub3RpZmllcl9s
aXN0LAorCQkJCQkgICAgICAgJnBwY19wYW5pY19ibG9jayk7CiB9CiAKICNpZmRlZiBDT05GSUdf
Q0hFQ0tfQ0FDSEVfQ09IRVJFTkNZCi0tIAoyLjM2LjAKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
