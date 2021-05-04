Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD093731B6
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 May 2021 23:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bv2bOkmJppIKvnx4Q5rIBvZ+jwyOhIvlARClw6miFyI=; b=QN5feV3Uc5udJSZPK8fz2NmSV
	UMKiVarFsHlAaP3c6TGvhrJxQK3+X3Z3/YN22FdqXepyJABfCQhcSYd/bH4V3uJOv0hCwUBOGrNoC
	kK6QayHtSNwnvI6jy2M9Y9tYbR3p2ycQ34XjbxhEmvJR13kIBmrqkNoDRUuW2XxauDmxI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1le29O-0004bb-1O; Tue, 04 May 2021 21:00:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <ryanoleary@google.com>) id 1le29L-0004bT-DU
 for openipmi-developer@lists.sourceforge.net; Tue, 04 May 2021 21:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fXrnB7A77MthMH+qvuqv4y5Q6ne9brbsvLGtf21StRk=; b=k9gAmUN0KvP5g6io9HDkXSiPI9
 dzUxg4cYDFoGF+fKkrmDHqxctSoDalJT5+tCWFWjMOAQYbz/Z0Clw7XsfdHSvCqXqI55N/GSTmRyc
 kXtXEU4dywhIkuoSrJUkq4s3otS2nzOSGWyZ35b51qClwYT3Gc/chZvyur9/q1CVfLvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fXrnB7A77MthMH+qvuqv4y5Q6ne9brbsvLGtf21StRk=; b=Qzyrs99EzKa31JYOosdAB43Tht
 3EkPxm8tDH/6aFJ7Z/lFSOvH7WtzwknS3wZ+AyL4qCewYIKgZo5gp4emGOh5Si7XzF9OaytID8E6L
 bShAlCZJfw02ft4Tn5cCzhLi9XlWCx+0b9MTfEur+KT4FZUBF6C1oqpbjY+xOJ8LWmhw=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1le29H-0000e3-Co
 for openipmi-developer@lists.sourceforge.net; Tue, 04 May 2021 21:00:11 +0000
Received: by mail-lj1-f182.google.com with SMTP id p12so12945777ljg.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 04 May 2021 14:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fXrnB7A77MthMH+qvuqv4y5Q6ne9brbsvLGtf21StRk=;
 b=BGG6bENCcoPHJN6XcfDgGM/xFiQ3557x3yOQtYvPX/lSCiBvGG5i52N6UwqxFGk4D/
 sKBNm+2TBurmGRfzojpK8JVYKndXK75Y1ZgPlXF8eRGPa4DMMTqMvO468cA5RoNjdhA7
 8pxmPigg2cr4XuxypTNfQfoDSczB7sBSfthgjW/V2Uy4WyFmNKdhw86Ihwg+LsAJR87Q
 YoCTikVnsCHq5dRcD5CGO5ZORk6V8afIcMIqZC8EgK7d/9BKqqpZCWsURHZXrwCrKhxP
 VyKtpWjc5kCRrKs6VqFOIwLVzY4BVW2rGP4hOz5SOXw65hNuqBB6+XbvA/FYU41QtYW/
 LyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fXrnB7A77MthMH+qvuqv4y5Q6ne9brbsvLGtf21StRk=;
 b=FnvlTd0vZbMynPv3q0dwfRgdwAqQXSoCMFRyBm/ulHTwcEyMH+zzDgYpsPvL7rfAmJ
 YX/O7TZgP7swdmwJJEMIQdqbPcPVH5QS5NpoADVqFrM2mMup2DyvZ+ktINl2DtnwoBSd
 9J+KJFtrvb3aCt4BLCtGUwAMVwWwdrKtAMi/+IyBzVJANQenkIizWD2E4n/yjlQjuYtt
 fXq0V6djNCO2T+iqh5aa5V2KsMEP3jM9AEYnd/STwpxPF6KPchWb3Uiheu/3/no1CpwD
 g83ToOZond3scbrjo+0i8iCq66Z2kDWtM4YOZtBNDiTfN7NJ0NFE068AqtwFxCx4Joa6
 JTBQ==
X-Gm-Message-State: AOAM532sTATYGM3mWJZMzJIPlTpZIPK8i1vbZW4Cdlg8z37UYhyFUBaV
 tXnSx+rBtarCfFtUH96+346hKkdGuh/Nm/QclswBpg==
X-Google-Smtp-Source: ABdhPJzfr6MceoP2Wz/DeQQdydlQmbzNrNnkcQHP8sd4sk+HFQIj5FQ6e4A5LuvJxgIDiO0W7QvmimpUg6QBGRTJ4eQ=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr7166102ljk.461.1620162001033; 
 Tue, 04 May 2021 14:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210317001036.1097763-1-ryanoleary@google.com>
In-Reply-To: <20210317001036.1097763-1-ryanoleary@google.com>
Date: Tue, 4 May 2021 13:59:49 -0700
Message-ID: <CAKVu-U=Om6CQF7DVkzp487=R_a77Qbi_grKQ7J-HPVZ_QR7DfA@mail.gmail.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -14.6 (--------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1le29H-0000e3-Co
Subject: Re: [Openipmi-developer] [PATCH 1/1] ipmi/watchdog: Add
 WDIOC_GETTIMELEFT ioctl
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
From: Ryan O'Leary via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Ryan O'Leary <ryanoleary@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6411865175326559350=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============6411865175326559350==
Content-Type: multipart/alternative; boundary="0000000000008d415c05c1875cfd"

--0000000000008d415c05c1875cfd
Content-Type: text/plain; charset="UTF-8"

Hi, please let me know if there's anything missing for review.

On Tue, Mar 16, 2021 at 5:11 PM Ryan O'Leary <ryanoleary@google.com> wrote:

> This is the same ioctl the rest of the watchdogs support. GETTIMELEFT
> returns the number of seconds in the countdown -- useful for testing
> whether the watchdog is functioning.
>
> Signed-off-by: Ryan O'Leary <ryanoleary@google.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 75 +++++++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
>
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c
> b/drivers/char/ipmi/ipmi_watchdog.c
> index 32c334e34d55..f253c8667395 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -456,6 +456,71 @@ static int ipmi_set_timeout(int do_heartbeat)
>         return rv;
>  }
>
> +static unsigned int __ipmi_get_timeout(struct ipmi_smi_msg  *smi_msg,
> +                                      struct ipmi_recv_msg *recv_msg,
> +                                      int                  *countdown)
> +{
> +       struct kernel_ipmi_msg            msg;
> +       int                               rv = 0;
> +       struct ipmi_system_interface_addr addr;
> +
> +
> +       addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
> +       addr.channel = IPMI_BMC_CHANNEL;
> +       addr.lun = 0;
> +
> +       msg.netfn = 0x06;
> +       msg.cmd = IPMI_WDOG_GET_TIMER;
> +       msg.data = NULL;
> +       msg.data_len = 0;
> +       rv = ipmi_request_supply_msgs(watchdog_user,
> +                                     (struct ipmi_addr *) &addr,
> +                                     0,
> +                                     &msg,
> +                                     NULL,
> +                                     smi_msg,
> +                                     recv_msg,
> +                                     1);
> +       if (rv) {
> +               pr_warn("get timeout error: %d\n", rv);
> +               return rv;
> +       }
> +
> +       wait_for_completion(&msg_wait);
> +
> +       if (recv_msg->msg.data_len < 9) {
> +               pr_warn("get timeout response size: %d (expected 9)\n",
> +                       recv_msg->msg.data_len);
> +               return -EIO;
> +       }
> +
> +       if (recv_msg->msg.data[0] != 0)  {
> +               pr_warn("get timeout completion code error: %d\n",
> +                       recv_msg->msg.data[0]);
> +               return -EIO;
> +       }
> +
> +       *countdown = WDOG_GET_TIMEOUT(recv_msg->msg.data[7],
> recv_msg->msg.data[8]);
> +
> +       return rv;
> +}
> +
> +static int _ipmi_get_timeout(int *countdown)
> +{
> +       int rv;
> +
> +       if (!watchdog_user)
> +               return -ENODEV;
> +
> +       atomic_set(&msg_tofree, 2);
> +
> +       rv = __ipmi_get_timeout(&smi_msg,
> +                               &recv_msg,
> +                               countdown);
> +
> +       return rv;
> +}
> +
>  static atomic_t panic_done_count = ATOMIC_INIT(0);
>
>  static void panic_smi_free(struct ipmi_smi_msg *msg)
> @@ -729,6 +794,16 @@ static int ipmi_ioctl(struct file *file,
>                         return -EFAULT;
>                 return 0;
>
> +       case WDIOC_GETTIMELEFT:
> +               val = 0;
> +               i = _ipmi_get_timeout(&val);
> +               if (i)
> +                       return i;
> +               i = copy_to_user(argp, &val, sizeof(val));
> +               if (i)
> +                       return -EFAULT;
> +               return 0;
> +
>         default:
>                 return -ENOIOCTLCMD;
>         }
> --
> 2.31.0.rc2.261.g7f71774620-goog
>
>

--0000000000008d415c05c1875cfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGksIHBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGVyZSYjMzk7cyBhbnl0
aGluZyBtaXNzaW5nIGZvciByZXZpZXcuPC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3Rl
Ij48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVHVlLCBNYXIgMTYsIDIwMjEg
YXQgNToxMSBQTSBSeWFuIE8mIzM5O0xlYXJ5ICZsdDs8YSBocmVmPSJtYWlsdG86cnlhbm9sZWFy
eUBnb29nbGUuY29tIj5yeWFub2xlYXJ5QGdvb2dsZS5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9k
aXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHgg
MHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmct
bGVmdDoxZXgiPlRoaXMgaXMgdGhlIHNhbWUgaW9jdGwgdGhlIHJlc3Qgb2YgdGhlIHdhdGNoZG9n
cyBzdXBwb3J0LiBHRVRUSU1FTEVGVDxicj4NCnJldHVybnMgdGhlIG51bWJlciBvZiBzZWNvbmRz
IGluIHRoZSBjb3VudGRvd24gLS0gdXNlZnVsIGZvciB0ZXN0aW5nPGJyPg0Kd2hldGhlciB0aGUg
d2F0Y2hkb2cgaXMgZnVuY3Rpb25pbmcuPGJyPg0KPGJyPg0KU2lnbmVkLW9mZi1ieTogUnlhbiBP
JiMzOTtMZWFyeSAmbHQ7PGEgaHJlZj0ibWFpbHRvOnJ5YW5vbGVhcnlAZ29vZ2xlLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPnJ5YW5vbGVhcnlAZ29vZ2xlLmNvbTwvYT4mZ3Q7PGJyPg0KLS0tPGJyPg0K
wqBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3dhdGNoZG9nLmMgfCA3NSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrPGJyPg0KwqAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKTxi
cj4NCjxicj4NCmRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3dhdGNoZG9nLmMg
Yi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3dhdGNoZG9nLmM8YnI+DQppbmRleCAzMmMzMzRlMzRk
NTUuLmYyNTNjODY2NzM5NSAxMDA2NDQ8YnI+DQotLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X3dhdGNoZG9nLmM8YnI+DQorKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3dhdGNoZG9nLmM8
YnI+DQpAQCAtNDU2LDYgKzQ1Niw3MSBAQCBzdGF0aWMgaW50IGlwbWlfc2V0X3RpbWVvdXQoaW50
IGRvX2hlYXJ0YmVhdCk8YnI+DQrCoCDCoCDCoCDCoCByZXR1cm4gcnY7PGJyPg0KwqB9PGJyPg0K
PGJyPg0KK3N0YXRpYyB1bnNpZ25lZCBpbnQgX19pcG1pX2dldF90aW1lb3V0KHN0cnVjdCBpcG1p
X3NtaV9tc2fCoCAqc21pX21zZyw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0IGlwbWlfcmVjdl9tc2cgKnJlY3ZfbXNn
LDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCBpbnTCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqY291bnRkb3duKTxicj4NCit7
PGJyPg0KK8KgIMKgIMKgIMKgc3RydWN0IGtlcm5lbF9pcG1pX21zZ8KgIMKgIMKgIMKgIMKgIMKg
IG1zZzs8YnI+DQorwqAgwqAgwqAgwqBpbnTCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoHJ2ID0gMDs8YnI+DQorwqAgwqAgwqAgwqBzdHJ1Y3QgaXBtaV9zeXN0
ZW1faW50ZXJmYWNlX2FkZHIgYWRkcjs8YnI+DQorPGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoGFk
ZHIuYWRkcl90eXBlID0gSVBNSV9TWVNURU1fSU5URVJGQUNFX0FERFJfVFlQRTs8YnI+DQorwqAg
wqAgwqAgwqBhZGRyLmNoYW5uZWwgPSBJUE1JX0JNQ19DSEFOTkVMOzxicj4NCivCoCDCoCDCoCDC
oGFkZHIubHVuID0gMDs8YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgbXNnLm5ldGZuID0gMHgwNjs8
YnI+DQorwqAgwqAgwqAgwqBtc2cuY21kID0gSVBNSV9XRE9HX0dFVF9USU1FUjs8YnI+DQorwqAg
wqAgwqAgwqBtc2cuZGF0YSA9IE5VTEw7PGJyPg0KK8KgIMKgIMKgIMKgbXNnLmRhdGFfbGVuID0g
MDs8YnI+DQorwqAgwqAgwqAgwqBydiA9IGlwbWlfcmVxdWVzdF9zdXBwbHlfbXNncyh3YXRjaGRv
Z191c2VyLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoChzdHJ1Y3QgaXBtaV9hZGRyICopICZhbXA7YWRkciw8YnI+DQorwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAwLDxicj4N
CivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCZhbXA7bXNnLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoE5VTEwsPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc21pX21zZyw8YnI+DQorwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWN2X21zZyw8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAx
KTs8YnI+DQorwqAgwqAgwqAgwqBpZiAocnYpIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBwcl93YXJuKCZxdW90O2dldCB0aW1lb3V0IGVycm9yOiAlZFxuJnF1b3Q7LCBydik7PGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIHJ2Ozxicj4NCivCoCDCoCDCoCDCoH08YnI+
DQorPGJyPg0KK8KgIMKgIMKgIMKgd2FpdF9mb3JfY29tcGxldGlvbigmYW1wO21zZ193YWl0KTs8
YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgaWYgKHJlY3ZfbXNnLSZndDttc2cuZGF0YV9sZW4gJmx0
OyA5KSB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJfd2FybigmcXVvdDtnZXQgdGlt
ZW91dCByZXNwb25zZSBzaXplOiAlZCAoZXhwZWN0ZWQgOSlcbiZxdW90Oyw8YnI+DQorwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWN2X21zZy0mZ3Q7bXNnLmRhdGFfbGVuKTs8
YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gLUVJTzs8YnI+DQorwqAgwqAgwqAg
wqB9PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoGlmIChyZWN2X21zZy0mZ3Q7bXNnLmRhdGFbMF0g
IT0gMCnCoCB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJfd2FybigmcXVvdDtnZXQg
dGltZW91dCBjb21wbGV0aW9uIGNvZGUgZXJyb3I6ICVkXG4mcXVvdDssPGJyPg0KK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVjdl9tc2ctJmd0O21zZy5kYXRhWzBdKTs8YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gLUVJTzs8YnI+DQorwqAgwqAgwqAgwqB9
PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoCpjb3VudGRvd24gPSBXRE9HX0dFVF9USU1FT1VUKHJl
Y3ZfbXNnLSZndDttc2cuZGF0YVs3XSwgcmVjdl9tc2ctJmd0O21zZy5kYXRhWzhdKTs8YnI+DQor
PGJyPg0KK8KgIMKgIMKgIMKgcmV0dXJuIHJ2Ozxicj4NCit9PGJyPg0KKzxicj4NCitzdGF0aWMg
aW50IF9pcG1pX2dldF90aW1lb3V0KGludCAqY291bnRkb3duKTxicj4NCit7PGJyPg0KK8KgIMKg
IMKgIMKgaW50IHJ2Ozxicj4NCis8YnI+DQorwqAgwqAgwqAgwqBpZiAoIXdhdGNoZG9nX3VzZXIp
PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIC1FTk9ERVY7PGJyPg0KKzxicj4N
CivCoCDCoCDCoCDCoGF0b21pY19zZXQoJmFtcDttc2dfdG9mcmVlLCAyKTs8YnI+DQorPGJyPg0K
K8KgIMKgIMKgIMKgcnYgPSBfX2lwbWlfZ2V0X3RpbWVvdXQoJmFtcDtzbWlfbXNnLDxicj4NCivC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZhbXA7cmVjdl9t
c2csPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
Y291bnRkb3duKTs8YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgcmV0dXJuIHJ2Ozxicj4NCit9PGJy
Pg0KKzxicj4NCsKgc3RhdGljIGF0b21pY190IHBhbmljX2RvbmVfY291bnQgPSBBVE9NSUNfSU5J
VCgwKTs8YnI+DQo8YnI+DQrCoHN0YXRpYyB2b2lkIHBhbmljX3NtaV9mcmVlKHN0cnVjdCBpcG1p
X3NtaV9tc2cgKm1zZyk8YnI+DQpAQCAtNzI5LDYgKzc5NCwxNiBAQCBzdGF0aWMgaW50IGlwbWlf
aW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcmV0dXJuIC1FRkFVTFQ7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0
dXJuIDA7PGJyPg0KPGJyPg0KK8KgIMKgIMKgIMKgY2FzZSBXRElPQ19HRVRUSU1FTEVGVDo8YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB2YWwgPSAwOzxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGkgPSBfaXBtaV9nZXRfdGltZW91dCgmYW1wO3ZhbCk7PGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgaWYgKGkpPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcmV0dXJuIGk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaSA9IGNvcHlfdG9fdXNl
cihhcmdwLCAmYW1wO3ZhbCwgc2l6ZW9mKHZhbCkpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGlmIChpKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVy
biAtRUZBVUxUOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiAwOzxicj4NCis8
YnI+DQrCoCDCoCDCoCDCoCBkZWZhdWx0Ojxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJl
dHVybiAtRU5PSU9DVExDTUQ7PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCi0tIDxicj4NCjIuMzEu
MC5yYzIuMjYxLmc3ZjcxNzc0NjIwLWdvb2c8YnI+DQo8YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+
DQo=
--0000000000008d415c05c1875cfd--


--===============6411865175326559350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6411865175326559350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6411865175326559350==--

