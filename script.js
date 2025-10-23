// script.js - shared simple auth/profile logic (localStorage)
function signUp() {
  const u = document.getElementById('signupUser').value?.trim();
  const p = document.getElementById('signupPass').value?.trim();
  if (!u || !p) return alert('Fill all fields');
  // store simple user (demo only)
  localStorage.setItem('lgt_user', u);
  localStorage.setItem('lgt_pass', p);
  alert('Account created. Now sign in.');
  window.location.href = 'signin.html';
}

function signIn() {
  const u = document.getElementById('signinUser').value?.trim();
  const p = document.getElementById('signinPass').value?.trim();
  const su = localStorage.getItem('lgt_user');
  const sp = localStorage.getItem('lgt_pass');
  if (u === su && p === sp) {
    localStorage.setItem('lgt_current', u);
    window.location.href = 'profile.html';
  } else {
    alert('Invalid username or password.');
  }
}

function requireAuth() {
  const cur = localStorage.getItem('lgt_current');
  if (!cur) {
    window.location.href = 'signin.html';
    return null;
  }
  return cur;
}

function signOut() {
  localStorage.removeItem('lgt_current');
  // do not remove stored profile image or account
  window.location.href = 'signin.html';
}
